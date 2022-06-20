package starling.utils
{
   import flash.geom.Rectangle;
   import starling.errors.AbstractClassError;
   
   public class RectangleUtil
   {
       
      
      public function RectangleUtil()
      {
         super();
         throw new AbstractClassError();
      }
      
      public static function intersect(rect1:Rectangle, rect2:Rectangle, resultRect:Rectangle = null) : Rectangle
      {
         if(resultRect == null)
         {
            resultRect = new Rectangle();
         }
         var left:Number = Math.max(rect1.x,rect2.x);
         var right:Number = Math.min(rect1.x + rect1.width,rect2.x + rect2.width);
         var top:Number = Math.max(rect1.y,rect2.y);
         var bottom:Number = Math.min(rect1.y + rect1.height,rect2.y + rect2.height);
         if(left > right || top > bottom)
         {
            resultRect.setEmpty();
         }
         else
         {
            resultRect.setTo(left,top,right - left,bottom - top);
         }
         return resultRect;
      }
      
      public static function fit(rectangle:Rectangle, into:Rectangle, scaleMode:String = "showAll", pixelPerfect:Boolean = false, resultRect:Rectangle = null) : Rectangle
      {
         if(!ScaleMode.isValid(scaleMode))
         {
            throw new ArgumentError("Invalid scaleMode: " + scaleMode);
         }
         if(resultRect == null)
         {
            resultRect = new Rectangle();
         }
         var width:Number = rectangle.width;
         var height:Number = rectangle.height;
         var factorX:Number = into.width / width;
         var factorY:Number = into.height / height;
         var factor:Number = 1;
         if(scaleMode == ScaleMode.SHOW_ALL)
         {
            factor = factorX < factorY ? Number(factorX) : Number(factorY);
            if(pixelPerfect)
            {
               factor = nextSuitableScaleFactor(factor,false);
            }
         }
         else if(scaleMode == ScaleMode.NO_BORDER)
         {
            factor = factorX > factorY ? Number(factorX) : Number(factorY);
            if(pixelPerfect)
            {
               factor = nextSuitableScaleFactor(factor,true);
            }
         }
         width *= factor;
         height *= factor;
         resultRect.setTo(into.x + (into.width - width) / 2,into.y + (into.height - height) / 2,width,height);
         return resultRect;
      }
      
      private static function nextSuitableScaleFactor(factor:Number, up:Boolean) : Number
      {
         var divisor:Number = 1;
         if(up)
         {
            if(factor >= 0.5)
            {
               return Math.ceil(factor);
            }
            while(1 / (divisor + 1) > factor)
            {
               divisor++;
            }
         }
         else
         {
            if(factor >= 1)
            {
               return Math.floor(factor);
            }
            while(1 / divisor > factor)
            {
               divisor++;
            }
         }
         return 1 / divisor;
      }
   }
}
