package starling.display
{
   import com.adobe.utils.AGALMiniAssembler;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import starling.core.RenderSupport;
   import starling.core.Starling;
   import starling.errors.MissingContextError;
   import starling.events.Event;
   import starling.filters.FragmentFilter;
   import starling.filters.FragmentFilterMode;
   import starling.textures.Texture;
   import starling.utils.MatrixUtil;
   import starling.utils.VertexData;
   
   public class QuadBatch extends DisplayObject
   {
      
      private static const QUAD_PROGRAM_NAME:String = "QB_q";
      
      public static const TEXTURE_SMOOTHING_NONE:int = 0;
      
      public static const TEXTURE_SMOOTHING_BILINEAR:int = 1;
      
      public static const TEXTURE_SMOOTHING_TRILINEAR:int = 2;
      
      private static var sHelperMatrix:Matrix = new Matrix();
      
      private static var sRenderAlpha:Vector.<Number> = new <Number>[1,1,1,1];
      
      private static var sRenderMatrix:Matrix3D = new Matrix3D();
      
      private static var sProgramNameCache:Dictionary = new Dictionary();
       
      
      private var mNumQuads:int;
      
      private var mSyncRequired:Boolean;
      
      private var mTinted:Boolean;
      
      private var mTexture:Texture;
      
      private var mSmoothing:int;
      
      private var mVertexData:VertexData;
      
      private var mVertexBufferPosition:VertexBuffer3D;
      
      private var mVertexBufferColor:VertexBuffer3D;
      
      private var mVertexBufferTexture:VertexBuffer3D;
      
      private var mIndexData:Vector.<uint>;
      
      private var mIndexBuffer:IndexBuffer3D;
      
      public function QuadBatch()
      {
         super();
         this.mVertexData = new VertexData(0,true);
         this.mIndexData = new Vector.<uint>(0);
         this.mNumQuads = 0;
         this.mTinted = false;
         this.mSyncRequired = false;
         Starling.current.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated,false,0,true);
      }
      
      public static function compile(object:DisplayObject, quadBatches:Vector.<QuadBatch>) : void
      {
         compileObject(object,quadBatches,-1,new Matrix());
      }
      
      private static function compileObject(object:DisplayObject, quadBatches:Vector.<QuadBatch>, quadBatchID:int, transformationMatrix:Matrix, alpha:Number = 1.0, blendMode:int = -1, ignoreCurrentFilter:Boolean = false) : int
      {
         var i:int = 0;
         var quadBatch:QuadBatch = null;
         var numChildren:int = 0;
         var childMatrix:Matrix = null;
         var child:DisplayObject = null;
         var childVisible:Boolean = false;
         var childBlendMode:int = 0;
         var texture:Texture = null;
         var smoothing:int = 0;
         var tinted:Boolean = false;
         var numQuads:int = 0;
         var image:Image = null;
         var isRootObject:Boolean = false;
         var objectAlpha:Number = object.alpha;
         var container:DisplayObjectContainer = object as DisplayObjectContainer;
         var quad:Quad = object as Quad;
         var batch:QuadBatch = object as QuadBatch;
         var filter:FragmentFilter = object.filter;
         if(quadBatchID == -1)
         {
            isRootObject = true;
            quadBatchID = 0;
            objectAlpha = 1;
            blendMode = object.blendMode;
            if(quadBatches.length == 0)
            {
               quadBatches.push(new QuadBatch());
            }
            else
            {
               quadBatches[0].reset();
            }
         }
         if(filter && !ignoreCurrentFilter)
         {
            if(filter.mode == FragmentFilterMode.ABOVE)
            {
               quadBatchID = compileObject(object,quadBatches,quadBatchID,transformationMatrix,alpha,blendMode,true);
            }
            quadBatchID = compileObject(filter.compile(object),quadBatches,quadBatchID,transformationMatrix,alpha,blendMode);
            if(filter.mode == FragmentFilterMode.BELOW)
            {
               quadBatchID = compileObject(object,quadBatches,quadBatchID,transformationMatrix,alpha,blendMode,true);
            }
         }
         else if(container)
         {
            numChildren = container.numChildren;
            childMatrix = new Matrix();
            for(i = 0; i < numChildren; i++)
            {
               child = container.getChildAt(i);
               childVisible = child.alpha != 0 && child.visible && child.scaleX != 0 && child.scaleY != 0;
               if(childVisible)
               {
                  childBlendMode = child.blendMode == BlendMode.AUTO ? int(blendMode) : int(child.blendMode);
                  childMatrix.copyFrom(transformationMatrix);
                  RenderSupport.transformMatrixForObject(childMatrix,child);
                  quadBatchID = compileObject(child,quadBatches,quadBatchID,childMatrix,alpha * objectAlpha,childBlendMode);
               }
            }
         }
         else
         {
            if(!(quad || batch))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(object));
            }
            if(quad)
            {
               image = quad as Image;
               texture = !!image ? image.texture : null;
               smoothing = !!image ? int(image.smoothing) : int(Image.TEXTURE_SMOOTHING_BILINEAR);
               tinted = quad.tinted;
               numQuads = quad.quadCount;
            }
            else
            {
               texture = batch.mTexture;
               smoothing = batch.mSmoothing;
               tinted = batch.mTinted;
               numQuads = batch.mNumQuads;
            }
            quadBatch = quadBatches[quadBatchID];
            if(quadBatch.isStateChange(tinted,alpha * objectAlpha,texture,smoothing,blendMode,numQuads))
            {
               quadBatchID++;
               if(quadBatches.length <= quadBatchID)
               {
                  quadBatches.push(new QuadBatch());
               }
               quadBatch = quadBatches[quadBatchID];
               quadBatch.reset();
            }
            if(quad)
            {
               quadBatch.addQuad(quad,alpha,texture,smoothing,transformationMatrix,blendMode);
            }
            else
            {
               quadBatch.addQuadBatch(batch,alpha,transformationMatrix,blendMode);
            }
         }
         if(isRootObject)
         {
            for(i = quadBatches.length - 1; i > quadBatchID; i--)
            {
               quadBatches.pop().dispose();
            }
         }
         return quadBatchID;
      }
      
      private static function registerPrograms() : void
      {
         var vertexProgramCode:String = null;
         var fragmentProgramCode:String = null;
         var tinted:Boolean = false;
         var smoothingTypes:Array = null;
         var formats:Array = null;
         var repeat:Boolean = false;
         var mipmap:Boolean = false;
         var smoothing:int = 0;
         var format:String = null;
         var options:Array = null;
         var target:Starling = Starling.current;
         if(target.hasProgram(QUAD_PROGRAM_NAME))
         {
            return;
         }
         var assembler:AGALMiniAssembler = new AGALMiniAssembler();
         vertexProgramCode = "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n";
         fragmentProgramCode = "mov oc, v0       \n";
         target.registerProgram(QUAD_PROGRAM_NAME,assembler.assemble(Context3DProgramType.VERTEX,vertexProgramCode),assembler.assemble(Context3DProgramType.FRAGMENT,fragmentProgramCode));
         for each(tinted in [true,false])
         {
            vertexProgramCode = !!tinted ? "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n" + "mov v1, va2      \n" : "m44 op, va0, vc1 \n" + "mov v1, va2      \n";
            fragmentProgramCode = !!tinted ? "tex ft1,  v1, fs0 <???> \n" + "mul  oc, ft1,  v0       \n" : "tex  oc,  v1, fs0 <???> \n";
            smoothingTypes = [Image.TEXTURE_SMOOTHING_NONE,Image.TEXTURE_SMOOTHING_BILINEAR,Image.TEXTURE_SMOOTHING_TRILINEAR];
            formats = [Context3DTextureFormat.BGRA,Context3DTextureFormat.COMPRESSED,"compressedAlpha"];
            for each(repeat in [true,false])
            {
               for each(mipmap in [true,false])
               {
                  for each(smoothing in smoothingTypes)
                  {
                     for each(format in formats)
                     {
                        options = ["2d",!!repeat ? "repeat" : "clamp"];
                        if(format == Context3DTextureFormat.COMPRESSED)
                        {
                           options.push("dxt1");
                        }
                        else if(format == "compressedAlpha")
                        {
                           options.push("dxt5");
                        }
                        if(smoothing == Image.TEXTURE_SMOOTHING_NONE)
                        {
                           options.push("nearest",!!mipmap ? "mipnearest" : "mipnone");
                        }
                        else if(smoothing == Image.TEXTURE_SMOOTHING_BILINEAR)
                        {
                           options.push("linear",!!mipmap ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           options.push("linear",!!mipmap ? "miplinear" : "mipnone");
                        }
                        target.registerProgram(getImageProgramName(tinted,mipmap,repeat,format,smoothing),assembler.assemble(Context3DProgramType.VERTEX,vertexProgramCode),assembler.assemble(Context3DProgramType.FRAGMENT,fragmentProgramCode.replace("???",options.join())));
                     }
                  }
               }
            }
         }
      }
      
      private static function getImageProgramName(tinted:Boolean, mipMap:Boolean = true, repeat:Boolean = false, format:String = "bgra", smoothing:int = 1) : String
      {
         var bitField:uint = 0;
         if(tinted)
         {
            bitField |= 1;
         }
         if(mipMap)
         {
            bitField |= 1 << 1;
         }
         if(repeat)
         {
            bitField |= 1 << 2;
         }
         if(smoothing == TEXTURE_SMOOTHING_NONE)
         {
            bitField |= 1 << 3;
         }
         else if(smoothing == TEXTURE_SMOOTHING_TRILINEAR)
         {
            bitField |= 1 << 4;
         }
         if(format == Context3DTextureFormat.COMPRESSED)
         {
            bitField |= 1 << 5;
         }
         else if(format == "compressedAlpha")
         {
            bitField |= 1 << 6;
         }
         var name:String = sProgramNameCache[bitField];
         if(name == null)
         {
            name = "QB_i." + bitField.toString(16);
            sProgramNameCache[bitField] = name;
         }
         return name;
      }
      
      override public function dispose() : void
      {
         Starling.current.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
         if(this.mVertexBufferPosition)
         {
            this.mVertexBufferPosition.dispose();
         }
         if(this.mVertexBufferColor)
         {
            this.mVertexBufferColor.dispose();
         }
         if(this.mVertexBufferTexture)
         {
            this.mVertexBufferTexture.dispose();
         }
         if(this.mIndexBuffer)
         {
            this.mIndexBuffer.dispose();
         }
         super.dispose();
      }
      
      private function onContextCreated(event:Object) : void
      {
         this.createBuffers();
         registerPrograms();
      }
      
      public function clone() : QuadBatch
      {
         var clone:QuadBatch = new QuadBatch();
         clone.mVertexData = this.mVertexData.clone(0,this.mNumQuads * 4);
         clone.mIndexData = this.mIndexData.slice(0,this.mNumQuads * 6);
         clone.mNumQuads = this.mNumQuads;
         clone.mTinted = this.mTinted;
         clone.mTexture = this.mTexture;
         clone.mSmoothing = this.mSmoothing;
         clone.mSyncRequired = true;
         clone.blendMode = blendMode;
         clone.alpha = alpha;
         return clone;
      }
      
      private function expand(newCapacity:int = -1) : void
      {
         var oldCapacity:int = this.capacity;
         if(newCapacity < 0)
         {
            newCapacity = oldCapacity * 2;
         }
         if(newCapacity == 0)
         {
            newCapacity = 16;
         }
         if(newCapacity <= oldCapacity)
         {
            return;
         }
         this.mVertexData.numVertices = newCapacity * 4;
         for(var i:int = oldCapacity; i < newCapacity; i++)
         {
            this.mIndexData[int(i * 6)] = i * 4;
            this.mIndexData[int(i * 6 + 1)] = i * 4 + 1;
            this.mIndexData[int(i * 6 + 2)] = i * 4 + 2;
            this.mIndexData[int(i * 6 + 3)] = i * 4 + 1;
            this.mIndexData[int(i * 6 + 4)] = i * 4 + 3;
            this.mIndexData[int(i * 6 + 5)] = i * 4 + 2;
         }
         this.createBuffers();
         registerPrograms();
      }
      
      private function createBuffers() : void
      {
         var numVertices:int = this.mVertexData.numVertices;
         var numIndices:int = this.mIndexData.length;
         var context:Context3D = Starling.context;
         if(this.mVertexBufferPosition)
         {
            this.mVertexBufferPosition.dispose();
         }
         if(this.mVertexBufferColor)
         {
            this.mVertexBufferColor.dispose();
         }
         if(this.mVertexBufferTexture)
         {
            this.mVertexBufferTexture.dispose();
         }
         if(this.mIndexBuffer)
         {
            this.mIndexBuffer.dispose();
         }
         if(numVertices == 0)
         {
            return;
         }
         if(context == null)
         {
            throw new MissingContextError();
         }
         this.mVertexBufferPosition = context.createVertexBuffer(numVertices,VertexData.ELEMENTS_PER_POSITION_VERTEX);
         this.mVertexBufferPosition.uploadFromVector(this.mVertexData.rawDataPosition,0,numVertices);
         this.mVertexBufferColor = context.createVertexBuffer(numVertices,VertexData.ELEMENTS_PER_COLOR_VERTEX);
         this.mVertexBufferColor.uploadFromVector(this.mVertexData.rawDataColor,0,numVertices);
         this.mVertexBufferTexture = context.createVertexBuffer(numVertices,VertexData.ELEMENTS_PER_TEXTURE_VERTEX);
         this.mVertexBufferTexture.uploadFromVector(this.mVertexData.rawDataTexture,0,numVertices);
         this.mIndexBuffer = context.createIndexBuffer(numIndices);
         this.mIndexBuffer.uploadFromVector(this.mIndexData,0,numIndices);
         this.mSyncRequired = false;
      }
      
      private function syncBuffers() : void
      {
         if(this.mVertexBufferPosition == null)
         {
            this.createBuffers();
         }
         else
         {
            this.mVertexBufferPosition.uploadFromVector(this.mVertexData.rawDataPosition,0,this.mVertexData.numVertices);
            if(this.mTexture == null || this.tinted)
            {
               this.mVertexBufferColor.uploadFromVector(this.mVertexData.rawDataColor,0,this.mVertexData.numVertices);
            }
            if(this.mTexture)
            {
               this.mVertexBufferTexture.uploadFromVector(this.mVertexData.rawDataTexture,0,this.mVertexData.numVertices);
            }
            this.mSyncRequired = false;
         }
      }
      
      public function renderCustom(support:RenderSupport, mvpMatrix:Matrix, parentAlpha:Number = 1.0, blendMode:int = -1) : void
      {
         if(this.mNumQuads == 0)
         {
            return;
         }
         if(this.mSyncRequired)
         {
            this.syncBuffers();
         }
         var context:Context3D = support.context;
         var pma:Boolean = this.mVertexData.premultipliedAlpha;
         var tinted:Boolean = this.mTinted || parentAlpha != 1;
         var programName:String = !!this.mTexture ? getImageProgramName(tinted,this.mTexture.mipMapping,this.mTexture.repeat,this.mTexture.format,this.mSmoothing) : QUAD_PROGRAM_NAME;
         sRenderAlpha[0] = sRenderAlpha[1] = sRenderAlpha[2] = !!pma ? Number(parentAlpha) : Number(1);
         sRenderAlpha[3] = parentAlpha;
         MatrixUtil.convertTo3D(mvpMatrix,sRenderMatrix);
         RenderSupport.setBlendFactors(pma,blendMode != BlendMode.AUTO ? int(blendMode) : int(this.blendMode));
         support.setRenderProgram(Starling.current.getProgram(programName));
         context.setProgramConstantsFromVector(Context3DProgramType.VERTEX,0,sRenderAlpha,1);
         context.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,1,sRenderMatrix,true);
         context.setVertexBufferAt(0,this.mVertexBufferPosition,0,Context3DVertexBufferFormat.FLOAT_2);
         if(this.mTexture == null || tinted)
         {
            context.setVertexBufferAt(1,this.mVertexBufferColor,0,Context3DVertexBufferFormat.FLOAT_4);
         }
         if(this.mTexture)
         {
            context.setTextureAt(0,this.mTexture.getBase(context));
            context.setVertexBufferAt(2,this.mVertexBufferTexture,0,Context3DVertexBufferFormat.FLOAT_2);
         }
         context.drawTriangles(this.mIndexBuffer,0,this.mNumQuads * 2);
         if(this.mTexture)
         {
            context.setTextureAt(0,null);
            context.setVertexBufferAt(2,null);
         }
         if(this.mTexture == null || tinted)
         {
            context.setVertexBufferAt(1,null);
         }
         context.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.mNumQuads = 0;
         this.mTexture = null;
         this.mSmoothing = TEXTURE_SMOOTHING_BILINEAR;
         this.mSyncRequired = true;
      }
      
      public function addImage(image:Image, parentAlpha:Number = 1.0, modelViewMatrix:Matrix = null, blendMode:int = -1) : void
      {
         this.addQuad(image,parentAlpha,image.texture,image.smoothing,modelViewMatrix,blendMode);
      }
      
      public function addQuad(quad:Quad, parentAlpha:Number = 1.0, texture:Texture = null, smoothing:int = 1, modelViewMatrix:Matrix = null, blendMode:int = -1) : void
      {
         if(modelViewMatrix == null)
         {
            modelViewMatrix = quad.transformationMatrix;
         }
         var tinted:Boolean = !!texture ? quad.tinted || parentAlpha != 1 : false;
         var alpha:Number = parentAlpha * quad.alpha;
         var vertexID:int = this.mNumQuads * 4;
         if(this.mNumQuads + quad.quadCount > this.mVertexData.numVertices / 4)
         {
            this.expand();
         }
         if(this.mNumQuads == 0)
         {
            this.blendMode = blendMode >= BlendMode.NONE ? int(blendMode) : int(quad.blendMode);
            this.mTexture = texture;
            this.mTinted = tinted;
            this.mSmoothing = smoothing;
            this.mVertexData.setPremultipliedAlpha(!!texture ? Boolean(texture.premultipliedAlpha) : true,false);
         }
         quad.copyVertexDataTo(this.mVertexData,vertexID,tinted,modelViewMatrix);
         if(alpha != 1)
         {
            this.mVertexData.scaleAlpha(vertexID,alpha,4);
         }
         this.mSyncRequired = true;
         this.mNumQuads += quad.quadCount;
      }
      
      public function addQuadBatch(quadBatch:QuadBatch, parentAlpha:Number = 1.0, modelViewMatrix:Matrix = null, blendMode:int = -1) : void
      {
         if(modelViewMatrix == null)
         {
            modelViewMatrix = quadBatch.transformationMatrix;
         }
         var tinted:Boolean = quadBatch.mTinted || parentAlpha != 1;
         var alpha:Number = parentAlpha * quadBatch.alpha;
         var vertexID:int = this.mNumQuads * 4;
         var numQuads:int = quadBatch.numQuads;
         if(this.mNumQuads + numQuads > this.capacity)
         {
            this.expand(this.mNumQuads + numQuads);
         }
         if(this.mNumQuads == 0)
         {
            this.blendMode = blendMode >= BlendMode.NONE ? int(blendMode) : int(quadBatch.blendMode);
            this.mTexture = quadBatch.mTexture;
            this.mTinted = tinted;
            this.mSmoothing = quadBatch.mSmoothing;
            this.mVertexData.setPremultipliedAlpha(quadBatch.mVertexData.premultipliedAlpha,false);
         }
         quadBatch.mVertexData.copyTo(this.mVertexData,vertexID,0,numQuads * 4,true,tinted || alpha,this.mTexture != null,modelViewMatrix);
         if(alpha != 1)
         {
            this.mVertexData.scaleAlpha(vertexID,alpha,numQuads * 4);
         }
         this.mSyncRequired = true;
         this.mNumQuads += numQuads;
      }
      
      public function isStateChange(tinted:Boolean, parentAlpha:Number, texture:Texture, smoothing:int, blendMode:int, numQuads:int) : Boolean
      {
         if(this.mTexture != null)
         {
            if(texture != null)
            {
               return this.mTexture.root != texture.root || this.mSmoothing != smoothing || this.mTinted != (tinted || parentAlpha != 1) || this.mNumQuads + numQuads > 8192 || this.mTexture.repeat != texture.repeat || this.blendMode != blendMode;
            }
            return true;
         }
         if(texture != null)
         {
            return this.mNumQuads > 0;
         }
         return this.mNumQuads + numQuads > 8192;
      }
      
      override public function getBounds(targetSpace:DisplayObject, resultRect:Rectangle = null) : Rectangle
      {
         if(resultRect == null)
         {
            resultRect = new Rectangle();
         }
         var transformationMatrix:Matrix = targetSpace == this ? null : getTransformationMatrix(targetSpace,sHelperMatrix);
         return this.mVertexData.getBounds(transformationMatrix,0,this.mNumQuads * 4,resultRect);
      }
      
      override public function render(support:RenderSupport, parentAlpha:Number) : void
      {
         if(this.mNumQuads)
         {
            support.finishQuadBatch();
            support.raiseDrawCount();
            this.renderCustom(support,support.mvpMatrix,alpha * parentAlpha,support.blendMode);
         }
      }
      
      public function get numQuads() : int
      {
         return this.mNumQuads;
      }
      
      public function get tinted() : Boolean
      {
         return this.mTinted;
      }
      
      public function get texture() : Texture
      {
         return this.mTexture;
      }
      
      public function get smoothing() : int
      {
         return this.mSmoothing;
      }
      
      private function get capacity() : int
      {
         return this.mVertexData.numVertices / 4;
      }
   }
}
