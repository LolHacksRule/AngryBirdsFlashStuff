package mx.effects.easing
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class Back
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
       
      
      public function Back()
      {
         super();
      }
      
      public static function easeIn(t:Number, b:Number, c:Number, d:Number, s:Number = 0) : Number
      {
         if(!s)
         {
            s = 1.70158;
         }
         return c * (t = t / d) * t * ((s + 1) * t - s) + b;
      }
      
      public static function easeOut(t:Number, b:Number, c:Number, d:Number, s:Number = 0) : Number
      {
         if(!s)
         {
            s = 1.70158;
         }
         return c * ((t = t / d - 1) * t * ((s + 1) * t + s) + 1) + b;
      }
      
      public static function easeInOut(t:Number, b:Number, c:Number, d:Number, s:Number = 0) : Number
      {
         if(!s)
         {
            s = 1.70158;
         }
         if((t = t / (d / 2)) < 1)
         {
            return c / 2 * (t * t * (((s = s * 1.525) + 1) * t - s)) + b;
         }
         return c / 2 * ((t = t - 2) * t * (((s = s * 1.525) + 1) * t + s) + 2) + b;
      }
   }
}
