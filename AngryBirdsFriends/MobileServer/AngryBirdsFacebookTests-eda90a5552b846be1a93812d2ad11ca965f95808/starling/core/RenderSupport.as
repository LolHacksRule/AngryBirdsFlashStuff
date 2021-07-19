package starling.core
{
   import com.adobe.utils.AGALMiniAssembler;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import starling.display.BlendMode;
   import starling.display.DisplayObject;
   import starling.display.Quad;
   import starling.display.QuadBatch;
   import starling.errors.MissingContextError;
   import starling.textures.Texture;
   import starling.utils.Color;
   import starling.utils.MatrixUtil;
   
   public class RenderSupport
   {
      
      public static const TEXTURE_SMOOTHING_NONE:int = 0;
      
      public static const TEXTURE_SMOOTHING_BILINEAR:int = 1;
      
      public static const TEXTURE_SMOOTHING_TRILINEAR:int = 2;
      
      private static var sPoint:Point = new Point();
      
      private static var sRectangle:Rectangle = new Rectangle();
      
      private static var sAssembler:AGALMiniAssembler = new AGALMiniAssembler();
       
      
      private var mProjectionMatrix:Matrix;
      
      private var mModelViewMatrix:Matrix;
      
      private var mMvpMatrix:Matrix;
      
      private var mMvpMatrix3D:Matrix3D;
      
      private var mMatrixStack:Vector.<Matrix>;
      
      private var mMatrixStackSize:int;
      
      private var mDrawCount:int;
      
      private var mBlendMode:int;
      
      private var mRenderTarget:Texture;
      
      private var mBackBufferWidth:int;
      
      private var mBackBufferHeight:int;
      
      private var mScissorRectangle:Rectangle;
      
      private var mQuadBatches:Vector.<QuadBatch>;
      
      private var mCurrentQuadBatchID:int;
      
      private var mCurrentContext:Context3D;
      
      private var mCurrentContextID:int = -1;
      
      private var mProgram:Program3D = null;
      
      private var mProgramLocked:Boolean = false;
      
      private var mBatchSortingEnabled:Boolean = false;
      
      private var mBatchStack:Vector.<BatchInstance>;
      
      private var mBatchStackIndex:int = 0;
      
      public function RenderSupport()
      {
         this.mBatchStack = new Vector.<BatchInstance>();
         super();
         this.mProjectionMatrix = new Matrix();
         this.mModelViewMatrix = new Matrix();
         this.mMvpMatrix = new Matrix();
         this.mMvpMatrix3D = new Matrix3D();
         this.mMatrixStack = new Vector.<Matrix>(0);
         this.mMatrixStackSize = 0;
         this.mDrawCount = 0;
         this.mRenderTarget = null;
         this.mBlendMode = BlendMode.NORMAL;
         this.mScissorRectangle = new Rectangle();
         this.mCurrentQuadBatchID = 0;
         this.mQuadBatches = new <QuadBatch>[new QuadBatch()];
         this.loadIdentity();
         this.setOrthographicProjection(0,0,400,300);
      }
      
      public static function transformMatrixForObject(matrix:Matrix, object:DisplayObject) : void
      {
         MatrixUtil.prependMatrix(matrix,object.transformationMatrix);
      }
      
      public static function setDefaultBlendFactors(premultipliedAlpha:Boolean) : void
      {
         setBlendFactors(premultipliedAlpha);
      }
      
      public static function setBlendFactors(premultipliedAlpha:Boolean, blendMode:int = 0) : void
      {
         var blendFactors:Array = BlendMode.getBlendFactors(blendMode,premultipliedAlpha);
         Starling.context.setBlendFactors(blendFactors[0],blendFactors[1]);
      }
      
      public static function clear(context:Context3D, rgb:uint = 0, alpha:Number = 0.0) : void
      {
         context.clear(Color.getRed(rgb) / 255,Color.getGreen(rgb) / 255,Color.getBlue(rgb) / 255,alpha);
      }
      
      public static function assembleAgal(vertexShader:String, fragmentShader:String, resultProgram:Program3D = null) : Program3D
      {
         var context:Context3D = null;
         if(resultProgram == null)
         {
            context = Starling.context;
            if(context == null)
            {
               throw new MissingContextError();
            }
            resultProgram = context.createProgram();
         }
         resultProgram.upload(sAssembler.assemble(Context3DProgramType.VERTEX,vertexShader),sAssembler.assemble(Context3DProgramType.FRAGMENT,fragmentShader));
         return resultProgram;
      }
      
      public function setContext(context:Context3D, contextID:int) : void
      {
         this.mCurrentContext = context;
         this.mCurrentContextID = contextID;
      }
      
      public function get context() : Context3D
      {
         return this.mCurrentContext;
      }
      
      public function get contextID() : int
      {
         return this.mCurrentContextID;
      }
      
      public function dispose() : void
      {
         var quadBatch:QuadBatch = null;
         for each(quadBatch in this.mQuadBatches)
         {
            quadBatch.dispose();
         }
      }
      
      public function setOrthographicProjection(x:Number, y:Number, width:Number, height:Number) : void
      {
         this.mProjectionMatrix.setTo(2 / width,0,0,-2 / height,-(2 * x + width) / width,(2 * y + height) / height);
      }
      
      public function loadIdentity() : void
      {
         this.mModelViewMatrix.identity();
      }
      
      public function translateMatrix(dx:Number, dy:Number) : void
      {
         MatrixUtil.prependTranslation(this.mModelViewMatrix,dx,dy);
      }
      
      public function rotateMatrix(angle:Number) : void
      {
         MatrixUtil.prependRotation(this.mModelViewMatrix,angle);
      }
      
      public function scaleMatrix(sx:Number, sy:Number) : void
      {
         MatrixUtil.prependScale(this.mModelViewMatrix,sx,sy);
      }
      
      public function prependMatrix(matrix:Matrix) : void
      {
         MatrixUtil.prependMatrix(this.mModelViewMatrix,matrix);
      }
      
      public function transformMatrix(object:DisplayObject) : void
      {
         MatrixUtil.prependMatrix(this.mModelViewMatrix,object.transformationMatrix);
      }
      
      public function pushMatrix() : void
      {
         if(this.mMatrixStack.length < this.mMatrixStackSize + 1)
         {
            this.mMatrixStack.push(new Matrix());
         }
         this.mMatrixStack[int(this.mMatrixStackSize++)].copyFrom(this.mModelViewMatrix);
      }
      
      public function popMatrix() : void
      {
         this.mModelViewMatrix.copyFrom(this.mMatrixStack[int(--this.mMatrixStackSize)]);
      }
      
      public function resetMatrix() : void
      {
         this.mMatrixStackSize = 0;
         this.loadIdentity();
      }
      
      public function get mvpMatrix() : Matrix
      {
         this.mMvpMatrix.copyFrom(this.mModelViewMatrix);
         this.mMvpMatrix.concat(this.mProjectionMatrix);
         return this.mMvpMatrix;
      }
      
      public function get mvpMatrix3D() : Matrix3D
      {
         return MatrixUtil.convertTo3D(this.mvpMatrix,this.mMvpMatrix3D);
      }
      
      public function get modelViewMatrix() : Matrix
      {
         return this.mModelViewMatrix;
      }
      
      public function get projectionMatrix() : Matrix
      {
         return this.mProjectionMatrix;
      }
      
      public function applyBlendMode(premultipliedAlpha:Boolean) : void
      {
         setBlendFactors(premultipliedAlpha,this.mBlendMode);
      }
      
      public function get blendMode() : int
      {
         return this.mBlendMode;
      }
      
      public function set blendMode(value:int) : void
      {
         if(value != BlendMode.AUTO)
         {
            this.mBlendMode = value;
         }
      }
      
      public function get renderTarget() : Texture
      {
         return this.mRenderTarget;
      }
      
      public function set renderTarget(target:Texture) : void
      {
         this.mRenderTarget = target;
         if(target)
         {
            Starling.context.setRenderToTexture(target.getBase(this.context));
         }
         else
         {
            Starling.context.setRenderToBackBuffer();
         }
      }
      
      public function configureBackBuffer(width:int, height:int, antiAlias:int, enableDepthAndStencil:Boolean) : void
      {
         if(Starling.context == null)
         {
            return;
         }
         if(Starling.context.driverInfo == "Disposed")
         {
            return;
         }
         this.mBackBufferWidth = width;
         this.mBackBufferHeight = height;
         Starling.context.configureBackBuffer(width,height,antiAlias,enableDepthAndStencil);
      }
      
      public function get backBufferWidth() : int
      {
         return this.mBackBufferWidth;
      }
      
      public function set backBufferWidth(value:int) : void
      {
         this.mBackBufferWidth = value;
      }
      
      public function get backBufferHeight() : int
      {
         return this.mBackBufferHeight;
      }
      
      public function set backBufferHeight(value:int) : void
      {
         this.mBackBufferHeight = value;
      }
      
      public function get scissorRectangle() : Rectangle
      {
         return !!this.mScissorRectangle.isEmpty() ? null : this.mScissorRectangle;
      }
      
      public function set scissorRectangle(value:Rectangle) : void
      {
         var width:int = 0;
         var height:int = 0;
         if(value)
         {
            this.mScissorRectangle.setTo(value.x,value.y,value.width,value.height);
            width = !!this.mRenderTarget ? int(this.mRenderTarget.root.nativeWidth) : int(this.mBackBufferWidth);
            height = !!this.mRenderTarget ? int(this.mRenderTarget.root.nativeHeight) : int(this.mBackBufferHeight);
            MatrixUtil.transformCoords(this.mProjectionMatrix,value.x,value.y,sPoint);
            sRectangle.x = Math.max(0,(sPoint.x + 1) / 2) * width;
            sRectangle.y = Math.max(0,(-sPoint.y + 1) / 2) * height;
            MatrixUtil.transformCoords(this.mProjectionMatrix,value.right,value.bottom,sPoint);
            sRectangle.right = Math.min(1,(sPoint.x + 1) / 2) * width;
            sRectangle.bottom = Math.min(1,(-sPoint.y + 1) / 2) * height;
            Starling.context.setScissorRectangle(sRectangle);
         }
         else
         {
            this.mScissorRectangle.setEmpty();
            Starling.context.setScissorRectangle(null);
         }
      }
      
      public function batchQuad(quad:Quad, parentAlpha:Number, texture:Texture = null, smoothing:int = 1) : void
      {
         if(!this.mBatchSortingEnabled || quad.sortValue == 0)
         {
            this.batchQuadInternal(quad,parentAlpha,texture,smoothing,this.mModelViewMatrix,this.mBlendMode);
         }
         else
         {
            this.batchQuadSorted(quad,parentAlpha,texture,smoothing,this.mModelViewMatrix,this.mBlendMode);
         }
      }
      
      private function batchQuadInternal(quad:Quad, parentAlpha:Number, texture:Texture, smoothing:int, modelViewMatrix:Matrix, blendMode:int) : void
      {
         if(this.mQuadBatches[this.mCurrentQuadBatchID].isStateChange(quad.tinted,parentAlpha,texture,smoothing,blendMode,quad.quadCount))
         {
            this.finishQuadBatch();
         }
         this.mQuadBatches[this.mCurrentQuadBatchID].addQuad(quad,parentAlpha,texture,smoothing,modelViewMatrix,blendMode);
      }
      
      private function batchQuadSorted(quad:Quad, parentAlpha:Number, texture:Texture, smoothing:int, modelViewMatrix:Matrix, blendMode:int) : void
      {
         if(this.mBatchStackIndex >= this.mBatchStack.length)
         {
            this.mBatchStack.push(new BatchInstance());
         }
         var batchInstance:BatchInstance = this.mBatchStack[this.mBatchStackIndex];
         batchInstance.assign(quad,parentAlpha,texture,smoothing,modelViewMatrix,blendMode);
         ++this.mBatchStackIndex;
      }
      
      public function set batchSortingEnabled(enabled:Boolean) : void
      {
         var list:Array = null;
         var i:int = 0;
         var j:int = 0;
         var bI:BatchInstance = null;
         if(this.mBatchSortingEnabled && !enabled)
         {
            this.mBatchSortingEnabled = false;
            list = [];
            for(i = 0; i < this.mBatchStackIndex; i++)
            {
               list.push(this.mBatchStack[i]);
            }
            list.sortOn("sortValue",Array.NUMERIC | Array.DESCENDING);
            for(j = 0; j < this.mBatchStackIndex; j++)
            {
               bI = list[j];
               this.batchQuadInternal(bI.quad,bI.parentAlpha,bI.texture,bI.smoothing,bI.modelViewMatrix,bI.blendMode);
            }
            this.mBatchStackIndex = 0;
         }
         else
         {
            this.mBatchSortingEnabled = enabled;
         }
      }
      
      public function finishQuadBatch() : void
      {
         if(this.mBatchSortingEnabled)
         {
            this.batchSortingEnabled = false;
         }
         var currentBatch:QuadBatch = this.mQuadBatches[this.mCurrentQuadBatchID];
         if(currentBatch.numQuads != 0)
         {
            currentBatch.renderCustom(this,this.mProjectionMatrix);
            currentBatch.reset();
            ++this.mCurrentQuadBatchID;
            ++this.mDrawCount;
            if(this.mQuadBatches.length <= this.mCurrentQuadBatchID)
            {
               this.mQuadBatches.push(new QuadBatch());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.resetMatrix();
         this.mBlendMode = BlendMode.NORMAL;
         this.mCurrentQuadBatchID = 0;
         this.mDrawCount = 0;
      }
      
      public function finishRendering(context:Context3D) : void
      {
         context.present();
      }
      
      public function clear(context:Context3D, rgb:uint = 0, alpha:Number = 0.0) : void
      {
         RenderSupport.clear(context,rgb,alpha);
      }
      
      public function raiseDrawCount(value:uint = 1) : void
      {
         this.mDrawCount += value;
      }
      
      public function get drawCount() : int
      {
         return this.mDrawCount;
      }
      
      public function setCanvasSize(canvasWidth:int, canvasHeight:int, scaleX:Number, scaleY:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
      
      public function set renderProgramLocked(lock:Boolean) : void
      {
         this.mProgramLocked = lock;
      }
      
      public function get renderProgramLocked() : Boolean
      {
         return this.mProgramLocked;
      }
      
      public function setRenderProgram(program:Program3D) : void
      {
         if(!this.mProgramLocked)
         {
            this.mProgram = program;
            this.context.setProgram(this.mProgram);
         }
      }
   }
}
