package starling.core
{
   import starling.textures.Texture;
   import starling.utils.Color;
   import starling.display.Quad;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class BitmapDataRenderSupport extends RenderSupport
   {
       
      
      private var mCanvas:BitmapData;
      
      private var mCanvasWidth:int = 0;
      
      private var mCanvasHeight:int = 0;
      
      private var mCanvasScaleX:Number = 1.0;
      
      private var mCanvasScaleY:Number = 1.0;
      
      private var mTempBitmap:BitmapData;
      
      private var mMatrixRawData:Vector.<Number>;
      
      private var mMatrix:Matrix;
      
      private var mColorTransform:ColorTransform;
      
      public function BitmapDataRenderSupport()
      {
         this.mMatrixRawData = new Vector.<Number>(16);
         this.mMatrix = new Matrix();
         this.mColorTransform = new ColorTransform();
         super();
         this.mTempBitmap = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.mCanvas;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.mTempBitmap)
         {
            this.mTempBitmap.dispose();
            this.mTempBitmap = null;
         }
      }
      
      override public function batchQuad(param1:Quad, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.mCanvas)
         {
            modelViewMatrix.copyRawDataTo(this.mMatrixRawData,0);
            this.mMatrix.setTo(this.mMatrixRawData[0],this.mMatrixRawData[1],this.mMatrixRawData[4],this.mMatrixRawData[5],this.mMatrixRawData[12],this.mMatrixRawData[13]);
            this.mMatrix.scale(this.mCanvasScaleX,this.mCanvasScaleY);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.mColorTransform).redMultiplier = Color.getRed(_loc5_) / 255;
               _loc6_.greenMultiplier = Color.getGreen(_loc5_) / 255;
               _loc6_.blueMultiplier = Color.getBlue(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.mColorTransform).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.mTempBitmap.setPixel(0,0,param1.color);
               _loc7_ = this.mTempBitmap;
               this.mMatrix.a *= param1.initialWidth;
               this.mMatrix.b *= param1.initialWidth;
               this.mMatrix.c *= param1.initialHeight;
               this.mMatrix.d *= param1.initialHeight;
            }
            this.mCanvas.draw(_loc7_,this.mMatrix,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.mCanvas)
         {
            if(this.mCanvas.width != this.mCanvasWidth || this.mCanvas.height != this.mCanvasHeight)
            {
               this.mCanvas.dispose();
               this.mCanvas = null;
            }
            else
            {
               this.mCanvas.fillRect(this.mCanvas.rect,4278190080 | param2);
            }
         }
         if(this.mCanvas == null && this.mCanvasWidth > 0 && this.mCanvasHeight > 0)
         {
            this.mCanvas = new BitmapData(this.mCanvasWidth,this.mCanvasHeight,true,4278190080 | param2);
         }
         if(this.mCanvas)
         {
            this.mCanvas.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.mCanvas)
         {
            this.mCanvas.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.mCanvasWidth = param1;
         this.mCanvasHeight = param2;
         this.mCanvasScaleX = param3;
         this.mCanvasScaleY = param4;
      }
   }
}
