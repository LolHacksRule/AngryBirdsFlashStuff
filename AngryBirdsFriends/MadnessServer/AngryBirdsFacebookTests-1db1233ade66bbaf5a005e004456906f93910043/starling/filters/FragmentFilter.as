package starling.filters
{
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.Program3D;
   import flash.display3D.VertexBuffer3D;
   import flash.errors.IllegalOperationError;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.utils.getQualifiedClassName;
   import starling.core.RenderSupport;
   import starling.core.Starling;
   import starling.display.BlendMode;
   import starling.display.DisplayObject;
   import starling.display.Image;
   import starling.display.QuadBatch;
   import starling.display.Stage;
   import starling.errors.AbstractClassError;
   import starling.errors.MissingContextError;
   import starling.events.Event;
   import starling.textures.Texture;
   import starling.utils.MatrixUtil;
   import starling.utils.RectangleUtil;
   import starling.utils.VertexData;
   import starling.utils.getNextPowerOfTwo;
   
   public class FragmentFilter
   {
      
      private static var sBounds:Rectangle = new Rectangle();
      
      private static var sStageBounds:Rectangle = new Rectangle();
      
      private static var sTransformationMatrix:Matrix = new Matrix();
       
      
      protected const PMA:Boolean = true;
      
      protected const STD_VERTEX_SHADER:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2      \n";
      
      protected const STD_FRAGMENT_SHADER:String = "tex oc, v0, fs0 <2d, clamp, linear, mipnone>";
      
      private var mVertexPosAtID:int = 0;
      
      private var mTexCoordsAtID:int = 2;
      
      private var mBaseTextureID:int = 0;
      
      private var mMvpConstantID:int = 1;
      
      private var mNumPasses:int;
      
      private var mPassTextures:Vector.<Texture>;
      
      private var mMode:String;
      
      private var mResolution:Number;
      
      private var mMarginX:Number;
      
      private var mMarginY:Number;
      
      private var mOffsetX:Number;
      
      private var mOffsetY:Number;
      
      private var mVertexData:VertexData;
      
      private var mVertexBufferPosition:VertexBuffer3D;
      
      private var mVertexBufferTexture:VertexBuffer3D;
      
      private var mIndexData:Vector.<uint>;
      
      private var mIndexBuffer:IndexBuffer3D;
      
      private var mCacheRequested:Boolean;
      
      private var mCache:QuadBatch;
      
      private var mCurrentTexture:Texture;
      
      private var mProjMatrix:Matrix;
      
      public function FragmentFilter(numPasses:int = 1, resolution:Number = 1.0)
      {
         this.mProjMatrix = new Matrix();
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.filters::FragmentFilter")
         {
            throw new AbstractClassError();
         }
         if(numPasses < 1)
         {
            throw new ArgumentError("At least one pass is required.");
         }
         this.mNumPasses = numPasses;
         this.mMarginX = this.mMarginY = 0;
         this.mOffsetX = this.mOffsetY = 0;
         this.mResolution = resolution;
         this.mMode = FragmentFilterMode.REPLACE;
         this.mVertexData = new VertexData(4);
         this.mVertexData.setTexCoords(0,0,0);
         this.mVertexData.setTexCoords(1,1,0);
         this.mVertexData.setTexCoords(2,0,1);
         this.mVertexData.setTexCoords(3,1,1);
         this.mIndexData = new <uint>[0,1,2,1,3,2];
         this.mIndexData.fixed = true;
         this.createPrograms();
         Starling.current.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated,false,0,true);
      }
      
      public function dispose() : void
      {
         Starling.current.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
         if(this.mVertexBufferPosition)
         {
            this.mVertexBufferPosition.dispose();
         }
         if(this.mVertexBufferTexture)
         {
            this.mVertexBufferTexture.dispose();
         }
         if(this.mIndexBuffer)
         {
            this.mIndexBuffer.dispose();
         }
         this.disposePassTextures();
         this.disposeCache();
      }
      
      private function onContextCreated(event:Object) : void
      {
         this.mVertexBufferPosition = null;
         this.mVertexBufferTexture = null;
         this.mIndexBuffer = null;
         this.mPassTextures = null;
         this.createPrograms();
      }
      
      public function render(object:DisplayObject, support:RenderSupport, parentAlpha:Number) : void
      {
         if(this.mode == FragmentFilterMode.ABOVE)
         {
            object.render(support,parentAlpha);
         }
         if(this.mCacheRequested)
         {
            this.mCacheRequested = false;
            this.mCache = this.renderPasses(object,support,1,true);
            this.disposePassTextures();
         }
         if(this.mCache)
         {
            this.mCache.render(support,parentAlpha);
         }
         else
         {
            this.renderPasses(object,support,parentAlpha,false);
         }
         if(this.mode == FragmentFilterMode.BELOW)
         {
            object.render(support,parentAlpha);
         }
      }
      
      protected function updateBuffersAndTextures(context:Context3D, scale:Number) : void
      {
         this.updateBuffers(context,sBounds);
         this.updatePassTextures(sBounds.width,sBounds.height,this.mResolution * scale,context);
      }
      
      protected function renderDisplayObject(object:DisplayObject, support:RenderSupport, parentAlpha:Number) : void
      {
         var context:Context3D = support.context;
         support.renderTarget = this.mPassTextures[0];
         support.clear(context);
         support.blendMode = BlendMode.NORMAL;
         support.setOrthographicProjection(sBounds.x,sBounds.y,sBounds.width,sBounds.height);
         object.render(support,parentAlpha);
         support.finishQuadBatch();
      }
      
      protected function renderFilter(object:DisplayObject, support:RenderSupport, intoCache:Boolean, scale:Number, previousRenderTarget:Texture) : QuadBatch
      {
         var passTexture:Texture = null;
         var quadBatch:QuadBatch = null;
         var image:Image = null;
         var stage:Stage = null;
         support.raiseDrawCount(this.mNumPasses);
         var context:Context3D = support.context;
         var cacheTexture:Texture = Texture.empty(context,sBounds.width,sBounds.height,this.PMA,true,this.mResolution * scale);
         RenderSupport.setBlendFactors(this.PMA);
         support.loadIdentity();
         context.setVertexBufferAt(this.mVertexPosAtID,this.mVertexBufferPosition,0,Context3DVertexBufferFormat.FLOAT_2);
         context.setVertexBufferAt(this.mTexCoordsAtID,this.mVertexBufferTexture,0,Context3DVertexBufferFormat.FLOAT_2);
         for(var i:int = 0; i < this.mNumPasses; i++)
         {
            if(i < this.mNumPasses - 1)
            {
               support.renderTarget = this.getPassTexture(i + 1);
               support.clear(context);
            }
            else if(intoCache)
            {
               support.renderTarget = cacheTexture;
               support.clear(context);
            }
            else
            {
               support.renderTarget = previousRenderTarget;
               support.projectionMatrix.copyFrom(this.mProjMatrix);
               support.translateMatrix(this.mOffsetX,this.mOffsetY);
               support.blendMode = object.blendMode;
               support.applyBlendMode(this.PMA);
            }
            passTexture = this.getPassTexture(i);
            context.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,this.mMvpConstantID,support.mvpMatrix3D,true);
            context.setTextureAt(this.mBaseTextureID,passTexture.getBase(context));
            this.activate(i,support,passTexture);
            context.drawTriangles(this.mIndexBuffer,0,2);
            this.deactivate(i,support,passTexture);
         }
         context.setVertexBufferAt(this.mVertexPosAtID,null);
         context.setVertexBufferAt(this.mTexCoordsAtID,null);
         context.setTextureAt(this.mBaseTextureID,null);
         if(intoCache)
         {
            support.renderTarget = previousRenderTarget;
            support.projectionMatrix.copyFrom(this.mProjMatrix);
            quadBatch = new QuadBatch();
            image = new Image(cacheTexture);
            stage = object.stage;
            stage.getTransformationMatrix(object,sTransformationMatrix);
            MatrixUtil.prependTranslation(sTransformationMatrix,sBounds.x + this.mOffsetX,sBounds.y + this.mOffsetY);
            quadBatch.addImage(image,1,sTransformationMatrix);
            return quadBatch;
         }
         return null;
      }
      
      private function renderPasses(object:DisplayObject, support:RenderSupport, parentAlpha:Number, intoCache:Boolean = false) : QuadBatch
      {
         var stage:Stage = object.stage;
         var context:Context3D = support.context;
         if(stage == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         if(context == null)
         {
            throw new MissingContextError();
         }
         this.calculateBounds(object,stage,!intoCache,sBounds);
         if(sBounds.isEmpty())
         {
            this.disposePassTextures();
            return !!intoCache ? new QuadBatch() : null;
         }
         support.finishQuadBatch();
         support.pushMatrix();
         var scale:Number = Starling.current.contentScaleFactor;
         this.updateBuffersAndTextures(context,scale);
         this.mProjMatrix.copyFrom(support.projectionMatrix);
         var previousRenderTarget:Texture = support.renderTarget;
         if(previousRenderTarget)
         {
            throw new IllegalOperationError("It\'s currently not possible to stack filters! " + "This limitation will be removed in a future Stage3D version.");
         }
         this.renderDisplayObject(object,support,parentAlpha);
         var result:QuadBatch = this.renderFilter(object,support,intoCache,scale,previousRenderTarget);
         support.popMatrix();
         return result;
      }
      
      private function updateBuffers(context:Context3D, bounds:Rectangle) : void
      {
         this.mVertexData.setPosition(0,bounds.x,bounds.y);
         this.mVertexData.setPosition(1,bounds.right,bounds.y);
         this.mVertexData.setPosition(2,bounds.x,bounds.bottom);
         this.mVertexData.setPosition(3,bounds.right,bounds.bottom);
         if(this.mVertexBufferPosition == null)
         {
            this.mVertexBufferPosition = context.createVertexBuffer(4,VertexData.ELEMENTS_PER_POSITION_VERTEX);
         }
         if(this.mVertexBufferTexture == null)
         {
            this.mVertexBufferTexture = context.createVertexBuffer(4,VertexData.ELEMENTS_PER_TEXTURE_VERTEX);
         }
         if(this.mIndexBuffer == null)
         {
            this.mIndexBuffer = context.createIndexBuffer(6);
            this.mIndexBuffer.uploadFromVector(this.mIndexData,0,6);
         }
         this.mVertexBufferPosition.uploadFromVector(this.mVertexData.rawDataPosition,0,4);
         this.mVertexBufferTexture.uploadFromVector(this.mVertexData.rawDataTexture,0,4);
      }
      
      private function updatePassTextures(width:int, height:int, scale:Number, context:Context3D) : void
      {
         var i:int = 0;
         var texture:Texture = null;
         var numPassTextures:int = this.mNumPasses > 1 ? 2 : 1;
         var needsUpdate:Boolean = this.mPassTextures == null || this.mPassTextures.length != numPassTextures || this.mPassTextures[0].width != width || this.mPassTextures[0].height != height;
         if(needsUpdate)
         {
            if(this.mPassTextures)
            {
               for each(texture in this.mPassTextures)
               {
                  texture.dispose();
               }
               this.mPassTextures.length = numPassTextures;
            }
            else
            {
               this.mPassTextures = new Vector.<Texture>(numPassTextures);
            }
            for(i = 0; i < numPassTextures; i++)
            {
               this.mPassTextures[i] = Texture.empty(context,width,height,this.PMA,true,scale);
            }
         }
      }
      
      private function getPassTexture(pass:int) : Texture
      {
         this.mCurrentTexture = this.mPassTextures[pass % 2];
         return this.mCurrentTexture;
      }
      
      protected function calculateBounds(object:DisplayObject, stage:Stage, intersectWithStage:Boolean, resultRect:Rectangle) : void
      {
         var deltaMargin:Number = NaN;
         if(object == stage || object == Starling.current.root)
         {
            resultRect.setTo(0,0,stage.stageWidth,stage.stageHeight);
         }
         else
         {
            object.getBounds(stage,resultRect);
         }
         if(intersectWithStage)
         {
            sStageBounds.setTo(0,0,stage.stageWidth,stage.stageHeight);
            RectangleUtil.intersect(resultRect,sStageBounds,resultRect);
         }
         if(!resultRect.isEmpty())
         {
            deltaMargin = this.mResolution == 1 ? Number(0) : Number(1 / this.mResolution);
            resultRect.x -= this.mMarginX + deltaMargin;
            resultRect.y -= this.mMarginY + deltaMargin;
            resultRect.width += 2 * (this.mMarginX + deltaMargin);
            resultRect.height += 2 * (this.mMarginY + deltaMargin);
            resultRect.width = getNextPowerOfTwo(resultRect.width * this.mResolution) / this.mResolution;
            resultRect.height = getNextPowerOfTwo(resultRect.height * this.mResolution) / this.mResolution;
         }
      }
      
      private function disposePassTextures() : void
      {
         var texture:Texture = null;
         for each(texture in this.mPassTextures)
         {
            texture.dispose();
         }
         this.mPassTextures = null;
      }
      
      private function disposeCache() : void
      {
         if(this.mCache)
         {
            if(this.mCache.texture)
            {
               this.mCache.texture.dispose();
            }
            this.mCache.dispose();
            this.mCache = null;
         }
      }
      
      protected function createPrograms() : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function activate(pass:int, support:RenderSupport, texture:Texture) : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function deactivate(pass:int, support:RenderSupport, texture:Texture) : void
      {
      }
      
      protected function assembleAgal(fragmentShader:String = null, vertexShader:String = null) : Program3D
      {
         if(fragmentShader == null)
         {
            fragmentShader = this.STD_FRAGMENT_SHADER;
         }
         if(vertexShader == null)
         {
            vertexShader = this.STD_VERTEX_SHADER;
         }
         var context:Context3D = Starling.context;
         if(!context)
         {
            return null;
         }
         return RenderSupport.assembleAgal(vertexShader,fragmentShader);
      }
      
      public function cache() : void
      {
         this.mCacheRequested = true;
         this.disposeCache();
      }
      
      public function clearCache() : void
      {
         this.mCacheRequested = false;
         this.disposeCache();
      }
      
      function compile(object:DisplayObject) : QuadBatch
      {
         var renderSupport:RenderSupport = null;
         var stage:Stage = null;
         if(this.mCache)
         {
            return this.mCache;
         }
         stage = object.stage;
         if(stage == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         renderSupport = new RenderSupport();
         object.getTransformationMatrix(stage,renderSupport.modelViewMatrix);
         return this.renderPasses(object,renderSupport,1,true);
      }
      
      public function get isCached() : Boolean
      {
         return this.mCache != null || this.mCacheRequested;
      }
      
      public function get resolution() : Number
      {
         return this.mResolution;
      }
      
      public function set resolution(value:Number) : void
      {
         if(value <= 0)
         {
            throw new ArgumentError("Resolution must be > 0");
         }
         this.mResolution = value;
      }
      
      public function get mode() : String
      {
         return this.mMode;
      }
      
      public function set mode(value:String) : void
      {
         this.mMode = value;
      }
      
      public function get offsetX() : Number
      {
         return this.mOffsetX;
      }
      
      public function set offsetX(value:Number) : void
      {
         this.mOffsetX = value;
      }
      
      public function get offsetY() : Number
      {
         return this.mOffsetY;
      }
      
      public function set offsetY(value:Number) : void
      {
         this.mOffsetY = value;
      }
      
      protected function get marginX() : Number
      {
         return this.mMarginX;
      }
      
      protected function set marginX(value:Number) : void
      {
         this.mMarginX = value;
      }
      
      protected function get marginY() : Number
      {
         return this.mMarginY;
      }
      
      protected function set marginY(value:Number) : void
      {
         this.mMarginY = value;
      }
      
      protected function set numPasses(value:int) : void
      {
         this.mNumPasses = value;
      }
      
      protected function get numPasses() : int
      {
         return this.mNumPasses;
      }
      
      protected final function get vertexPosAtID() : int
      {
         return this.mVertexPosAtID;
      }
      
      protected final function set vertexPosAtID(value:int) : void
      {
         this.mVertexPosAtID = value;
      }
      
      protected final function get texCoordsAtID() : int
      {
         return this.mTexCoordsAtID;
      }
      
      protected final function set texCoordsAtID(value:int) : void
      {
         this.mTexCoordsAtID = value;
      }
      
      protected final function get baseTextureID() : int
      {
         return this.mBaseTextureID;
      }
      
      protected final function set baseTextureID(value:int) : void
      {
         this.mBaseTextureID = value;
      }
      
      protected final function get mvpConstantID() : int
      {
         return this.mMvpConstantID;
      }
      
      protected final function set mvpConstantID(value:int) : void
      {
         this.mMvpConstantID = value;
      }
      
      protected final function get currentTexture() : Texture
      {
         return this.mCurrentTexture;
      }
   }
}
