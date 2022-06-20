package starling.core
{
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import starling.display.Quad;
   import starling.textures.Texture;
   import starling.utils.Color;
   
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
      
      override public function batchQuad(quad:Quad, alpha:Number, texture:Texture = null, smoothing:int = 0) : void
      {
         var color:uint = 0;
         var colorTransform:ColorTransform = null;
         var bitmapData:BitmapData = null;
         if(this.mCanvas)
         {
            this.mMatrix.copyFrom(modelViewMatrix);
            color = quad.color;
            alpha *= quad.alpha;
            colorTransform = null;
            if(texture && color != 16777215)
            {
               colorTransform = this.mColorTransform;
               colorTransform.redMultiplier = Color.getRed(color) / 255;
               colorTransform.greenMultiplier = Color.getGreen(color) / 255;
               colorTransform.blueMultiplier = Color.getBlue(color) / 255;
               colorTransform.alphaMultiplier = 1;
            }
            if(alpha != 1)
            {
               colorTransform = this.mColorTransform;
               colorTransform.alphaMultiplier = alpha;
            }
            bitmapData = quad.clippedBitmapData;
            if(bitmapData == null)
            {
               this.mTempBitmap.setPixel(0,0,quad.color);
               bitmapData = this.mTempBitmap;
               this.mMatrix.a *= quad.width;
               this.mMatrix.b *= quad.width;
               this.mMatrix.c *= quad.height;
               this.mMatrix.d *= quad.height;
            }
            this.mCanvas.draw(bitmapData,this.mMatrix,colorTransform,null,null,quad.highQuality);
         }
      }
      
      override public function clear(context:Context3D, rgb:uint = 0, alpha:Number = 0.0) : void
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
               this.mCanvas.fillRect(this.mCanvas.rect,4278190080 | rgb);
            }
         }
         if(this.mCanvas == null && this.mCanvasWidth > 0 && this.mCanvasHeight > 0)
         {
            this.mCanvas = new BitmapData(this.mCanvasWidth,this.mCanvasHeight,true,4278190080 | rgb);
         }
         if(this.mCanvas)
         {
            this.mCanvas.lock();
         }
      }
      
      override public function finishRendering(context:Context3D) : void
      {
         if(this.mCanvas)
         {
            this.mCanvas.unlock();
         }
      }
      
      override public function setCanvasSize(canvasWidth:int, canvasHeight:int, scaleX:Number, scaleY:Number) : void
      {
         this.mCanvasWidth = canvasWidth;
         this.mCanvasHeight = canvasHeight;
         this.mCanvasScaleX = scaleX;
         this.mCanvasScaleY = scaleY;
      }
   }
}
