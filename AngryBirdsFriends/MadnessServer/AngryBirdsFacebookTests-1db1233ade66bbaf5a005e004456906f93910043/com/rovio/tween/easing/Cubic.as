package com.rovio.tween.easing
{
   public class Cubic
   {
       
      
      public function Cubic()
      {
         super();
      }
      
      public static function easeIn(t:Number, b:Number, c:Number, d:Number) : Number
      {
         t = t / d - 1;
         return c * t * t * t + b;
      }
      
      public static function easeOut(t:Number, b:Number, c:Number, d:Number) : Number
      {
         t = t / d - 1;
         return c * (t * t * t + 1) + b;
      }
      
      public static function easeInOut(t:Number, b:Number, c:Number, d:Number) : Number
      {
         t /= d / 2;
         var result:Number = 0;
         if(t < 1)
         {
            result = c / 2 * (t * t * t) + b;
         }
         else
         {
            t -= 2;
            result = c / 2 * (t * t * t + 2) + b;
         }
         return result;
      }
   }
}
