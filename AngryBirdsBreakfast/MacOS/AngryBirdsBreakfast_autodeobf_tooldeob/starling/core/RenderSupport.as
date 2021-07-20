package starling.core
{
   import starling.textures.Texture;
   import starling.utils.*;
   import starling.display.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class RenderSupport
   {
      
      private static var smTextures:Array;
      
      private static var smProgram:Program3D;
      
      private static var sMatrixCoords:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var mProjectionMatrix:Matrix3D;
      
      private var mModelViewMatrix:Matrix3D;
      
      private var mMvpMatrix:Matrix3D;
      
      private var mMatrixStack:Vector.<Matrix3D>;
      
      private var mMatrixStackSize:int;
      
      private var mQuadBatches:Vector.<QuadBatch>;
      
      private var mCurrentQuadBatchID:int;
      
      private var mCurrentContext:Context3D;
      
      private var mCurrentContextID:int = -1;
      
      public function RenderSupport()
      {
         super();
         this.mProjectionMatrix = new Matrix3D();
         this.mModelViewMatrix = new Matrix3D();
         this.mMvpMatrix = new Matrix3D();
         this.mMatrixStack = new Vector.<Matrix3D>(0);
         this.mMatrixStackSize = 0;
         this.mCurrentQuadBatchID = 0;
         this.mQuadBatches = new Vector.<QuadBatch>();
         if(smTextures == null)
         {
            smTextures = [];
         }
         this.loadIdentity();
         this.setOrthographicProjection(400,300);
         Starling.current.addEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
      }
      
      public static function transformMatrixForObject(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.transformMatrix(param1);
      }
      
      public static function setDefaultBlendFactors(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(Color.getRed(param2) / 255,Color.getGreen(param2) / 255,Color.getBlue(param2) / 255,param3);
      }
      
      protected function get modelViewMatrix() : Matrix3D
      {
         return this.mModelViewMatrix;
      }
      
      protected function get projectionMatrix() : Matrix3D
      {
         return this.mProjectionMatrix;
      }
      
      public function setContext(param1:Context3D, param2:int) : void
      {
         this.mCurrentContext = param1;
         this.mCurrentContextID = param2;
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
         var _loc1_:QuadBatch = null;
         for each(_loc1_ in this.mQuadBatches)
         {
            _loc1_.dispose();
         }
         if(Starling.current)
         {
            Starling.current.removeEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(Color.getRed(param2) / 255,Color.getGreen(param2) / 255,Color.getBlue(param2) / 255,param3);
      }
      
      private function onContextCreated(param1:Event) : void
      {
         this.mQuadBatches = new <QuadBatch>[new QuadBatch()];
      }
      
      public function setOrthographicProjection(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         sMatrixCoords[0] = 2 / param1;
         sMatrixCoords[1] = sMatrixCoords[2] = sMatrixCoords[3] = sMatrixCoords[4] = 0;
         sMatrixCoords[5] = -2 / param2;
         sMatrixCoords[6] = sMatrixCoords[7] = sMatrixCoords[8] = sMatrixCoords[9] = 0;
         sMatrixCoords[10] = -2 / (param4 - param3);
         sMatrixCoords[11] = 0;
         sMatrixCoords[12] = -1;
         sMatrixCoords[13] = 1;
         sMatrixCoords[14] = -(param4 + param3) / (param4 - param3);
         sMatrixCoords[15] = 1;
         this.mProjectionMatrix.copyRawDataFrom(sMatrixCoords);
      }
      
      public function loadIdentity() : void
      {
         this.mModelViewMatrix.identity();
      }
      
      public function translateMatrix(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.mModelViewMatrix.prependTranslation(param1,param2,param3);
      }
      
      public function rotateMatrix(param1:Number, param2:Vector3D = null) : void
      {
         this.mModelViewMatrix.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function scaleMatrix(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.mModelViewMatrix.prependScale(param1,param2,param3);
      }
      
      public function transformMatrix(param1:DisplayObject) : void
      {
         param1.transformMatrix(this.mModelViewMatrix);
      }
      
      public function pushMatrix() : void
      {
         if(this.mMatrixStack.length < this.mMatrixStackSize + 1)
         {
            this.mMatrixStack.push(new Matrix3D());
         }
         this.mMatrixStack[this.mMatrixStackSize++].copyFrom(this.mModelViewMatrix);
      }
      
      public function popMatrix() : void
      {
         this.mModelViewMatrix.copyFrom(this.mMatrixStack[--this.mMatrixStackSize]);
      }
      
      public function resetMatrix() : void
      {
         this.mMatrixStackSize = 0;
         this.loadIdentity();
      }
      
      public function get mvpMatrix() : Matrix3D
      {
         this.mMvpMatrix.identity();
         this.mMvpMatrix.append(this.mModelViewMatrix);
         this.mMvpMatrix.append(this.mProjectionMatrix);
         return this.mMvpMatrix;
      }
      
      public function batchQuad(param1:Quad, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.currentQuadBatch.isStateChange(param1,param3,param4,param2))
         {
            this.finishQuadBatch();
         }
         this.currentQuadBatch.addQuad(param1,param2,param3,param4,this.mModelViewMatrix);
      }
      
      public function finishQuadBatch() : void
      {
         if(this.currentQuadBatch.numQuads > 0)
         {
            this.currentQuadBatch.render(this.context,this.mProjectionMatrix);
            this.currentQuadBatch.reset();
            ++this.mCurrentQuadBatchID;
            if(this.mQuadBatches.length <= this.mCurrentQuadBatchID)
            {
               this.mQuadBatches.push(new QuadBatch());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.resetMatrix();
         this.mCurrentQuadBatchID = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get currentQuadBatch() : QuadBatch
      {
         return this.mQuadBatches[this.mCurrentQuadBatchID];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != smTextures[param2])
         {
            smTextures[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != smProgram)
         {
            smProgram = param2;
            param1.setProgram(param2);
         }
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
   }
}
