package starling.animation
{
   import flash.utils.Dictionary;
   import starling.errors.AbstractClassError;
   
   public class Transitions
   {
      
      public static const LINEAR:String = "linear";
      
      public static const EASE_IN:String = "easeIn";
      
      public static const EASE_OUT:String = "easeOut";
      
      public static const EASE_IN_OUT:String = "easeInOut";
      
      public static const EASE_OUT_IN:String = "easeOutIn";
      
      public static const EASE_IN_BACK:String = "easeInBack";
      
      public static const EASE_OUT_BACK:String = "easeOutBack";
      
      public static const EASE_IN_OUT_BACK:String = "easeInOutBack";
      
      public static const EASE_OUT_IN_BACK:String = "easeOutInBack";
      
      public static const EASE_IN_ELASTIC:String = "easeInElastic";
      
      public static const EASE_OUT_ELASTIC:String = "easeOutElastic";
      
      public static const EASE_IN_OUT_ELASTIC:String = "easeInOutElastic";
      
      public static const EASE_OUT_IN_ELASTIC:String = "easeOutInElastic";
      
      public static const EASE_IN_BOUNCE:String = "easeInBounce";
      
      public static const EASE_OUT_BOUNCE:String = "easeOutBounce";
      
      public static const EASE_IN_OUT_BOUNCE:String = "easeInOutBounce";
      
      public static const EASE_OUT_IN_BOUNCE:String = "easeOutInBounce";
      
      private static var sTransitions:Dictionary;
       
      
      public function Transitions()
      {
         super();
         throw new AbstractClassError();
      }
      
      public static function getTransition(name:String) : Function
      {
         if(sTransitions == null)
         {
            registerDefaults();
         }
         return sTransitions[name];
      }
      
      public static function register(name:String, func:Function) : void
      {
         if(sTransitions == null)
         {
            registerDefaults();
         }
         sTransitions[name] = func;
      }
      
      private static function registerDefaults() : void
      {
         sTransitions = new Dictionary();
         register(LINEAR,linear);
         register(EASE_IN,easeIn);
         register(EASE_OUT,easeOut);
         register(EASE_IN_OUT,easeInOut);
         register(EASE_OUT_IN,easeOutIn);
         register(EASE_IN_BACK,easeInBack);
         register(EASE_OUT_BACK,easeOutBack);
         register(EASE_IN_OUT_BACK,easeInOutBack);
         register(EASE_OUT_IN_BACK,easeOutInBack);
         register(EASE_IN_ELASTIC,easeInElastic);
         register(EASE_OUT_ELASTIC,easeOutElastic);
         register(EASE_IN_OUT_ELASTIC,easeInOutElastic);
         register(EASE_OUT_IN_ELASTIC,easeOutInElastic);
         register(EASE_IN_BOUNCE,easeInBounce);
         register(EASE_OUT_BOUNCE,easeOutBounce);
         register(EASE_IN_OUT_BOUNCE,easeInOutBounce);
         register(EASE_OUT_IN_BOUNCE,easeOutInBounce);
      }
      
      protected static function linear(ratio:Number) : Number
      {
         return ratio;
      }
      
      protected static function easeIn(ratio:Number) : Number
      {
         return ratio * ratio * ratio;
      }
      
      protected static function easeOut(ratio:Number) : Number
      {
         var invRatio:Number = ratio - 1;
         return invRatio * invRatio * invRatio + 1;
      }
      
      protected static function easeInOut(ratio:Number) : Number
      {
         return easeCombined(easeIn,easeOut,ratio);
      }
      
      protected static function easeOutIn(ratio:Number) : Number
      {
         return easeCombined(easeOut,easeIn,ratio);
      }
      
      protected static function easeInBack(ratio:Number) : Number
      {
         return Math.pow(ratio,2) * ((1.70158 + 1) * ratio - 1.70158);
      }
      
      protected static function easeOutBack(ratio:Number) : Number
      {
         var invRatio:Number = ratio - 1;
         return Math.pow(invRatio,2) * ((1.70158 + 1) * invRatio + 1.70158) + 1;
      }
      
      protected static function easeInOutBack(ratio:Number) : Number
      {
         return easeCombined(easeInBack,easeOutBack,ratio);
      }
      
      protected static function easeOutInBack(ratio:Number) : Number
      {
         return easeCombined(easeOutBack,easeInBack,ratio);
      }
      
      protected static function easeInElastic(ratio:Number) : Number
      {
         var p:Number = NaN;
         var s:Number = NaN;
         var invRatio:Number = NaN;
         if(ratio == 0 || ratio == 1)
         {
            return ratio;
         }
         p = 0.3;
         s = p / 4;
         invRatio = ratio - 1;
         return -1 * Math.pow(2,10 * invRatio) * Math.sin((invRatio - s) * (2 * Math.PI) / p);
      }
      
      protected static function easeOutElastic(ratio:Number) : Number
      {
         var p:Number = NaN;
         var s:Number = NaN;
         if(ratio == 0 || ratio == 1)
         {
            return ratio;
         }
         p = 0.3;
         s = p / 4;
         return Math.pow(2,-10 * ratio) * Math.sin((ratio - s) * (2 * Math.PI) / p) + 1;
      }
      
      protected static function easeInOutElastic(ratio:Number) : Number
      {
         return easeCombined(easeInElastic,easeOutElastic,ratio);
      }
      
      protected static function easeOutInElastic(ratio:Number) : Number
      {
         return easeCombined(easeOutElastic,easeInElastic,ratio);
      }
      
      protected static function easeInBounce(ratio:Number) : Number
      {
         return 1 - easeOutBounce(1 - ratio);
      }
      
      protected static function easeOutBounce(ratio:Number) : Number
      {
         var l:Number = NaN;
         if(ratio < 1 / 2.75)
         {
            l = 7.5625 * Math.pow(ratio,2);
         }
         else if(ratio < 2 / 2.75)
         {
            ratio -= 1.5 / 2.75;
            l = 7.5625 * Math.pow(ratio,2) + 0.75;
         }
         else if(ratio < 2.5 / 2.75)
         {
            ratio -= 2.25 / 2.75;
            l = 7.5625 * Math.pow(ratio,2) + 0.9375;
         }
         else
         {
            ratio -= 2.625 / 2.75;
            l = 7.5625 * Math.pow(ratio,2) + 0.984375;
         }
         return l;
      }
      
      protected static function easeInOutBounce(ratio:Number) : Number
      {
         return easeCombined(easeInBounce,easeOutBounce,ratio);
      }
      
      protected static function easeOutInBounce(ratio:Number) : Number
      {
         return easeCombined(easeOutBounce,easeInBounce,ratio);
      }
      
      protected static function easeCombined(startFunc:Function, endFunc:Function, ratio:Number) : Number
      {
         if(ratio < 0.5)
         {
            return 0.5 * startFunc(ratio * 2);
         }
         return 0.5 * endFunc((ratio - 0.5) * 2) + 0.5;
      }
   }
}
