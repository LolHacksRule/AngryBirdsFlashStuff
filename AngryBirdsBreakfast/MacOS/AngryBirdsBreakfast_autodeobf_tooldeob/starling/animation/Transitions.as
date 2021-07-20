package starling.animation
{
   import starling.errors.AbstractClassError;
   import flash.utils.Dictionary;
   
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
      
      public static function getTransition(param1:String) : Function
      {
         if(sTransitions == null)
         {
            registerDefaultTransitions();
         }
         return sTransitions[param1];
      }
      
      public static function registerTransition(param1:String, param2:Function) : void
      {
         if(sTransitions == null)
         {
            registerDefaultTransitions();
         }
         sTransitions[param1] = param2;
      }
      
      private static function registerDefaultTransitions() : void
      {
         sTransitions = new Dictionary();
         registerTransition(LINEAR,linear);
         registerTransition(EASE_IN,easeIn);
         registerTransition(EASE_OUT,easeOut);
         registerTransition(EASE_IN_OUT,easeInOut);
         registerTransition(EASE_OUT_IN,easeOutIn);
         registerTransition(EASE_IN_BACK,easeInBack);
         registerTransition(EASE_OUT_BACK,easeOutBack);
         registerTransition(EASE_IN_OUT_BACK,easeInOutBack);
         registerTransition(EASE_OUT_IN_BACK,easeOutInBack);
         registerTransition(EASE_IN_ELASTIC,easeInElastic);
         registerTransition(EASE_OUT_ELASTIC,easeOutElastic);
         registerTransition(EASE_IN_OUT_ELASTIC,easeInOutElastic);
         registerTransition(EASE_OUT_IN_ELASTIC,easeOutInElastic);
         registerTransition(EASE_IN_BOUNCE,easeInBounce);
         registerTransition(EASE_OUT_BOUNCE,easeOutBounce);
         registerTransition(EASE_IN_OUT_BOUNCE,easeInOutBounce);
         registerTransition(EASE_OUT_IN_BOUNCE,easeOutInBounce);
      }
      
      private static function linear(param1:Number) : Number
      {
         return param1;
      }
      
      private static function easeIn(param1:Number) : Number
      {
         return param1 * param1 * param1;
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc2_:Number = param1 - 1;
         return _loc2_ * _loc2_ * _loc2_ + 1;
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return easeCombined(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return easeCombined(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         return Math.pow(param1,2) * ((1.70158 + 1) * param1 - 1.70158);
      }
      
      private static function easeOutBack(param1:Number) : Number
      {
         var _loc2_:Number = param1 - 1;
         return Math.pow(_loc2_,2) * ((1.70158 + 1) * _loc2_ + 1.70158) + 1;
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return easeCombined(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return easeCombined(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 == 0 || param1 == 1)
         {
            return param1;
         }
         _loc2_ = 0.3;
         _loc3_ = _loc2_ / 4;
         _loc4_ = param1 - 1;
         return -1 * Math.pow(2,10 * _loc4_) * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(param1 == 0 || param1 == 1)
         {
            return param1;
         }
         _loc2_ = 0.3;
         _loc3_ = _loc2_ / 4;
         return Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_) + 1;
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return easeCombined(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return easeCombined(easeOutElastic,easeInElastic,param1);
      }
      
      private static function easeInBounce(param1:Number) : Number
      {
         return 1 - easeOutBounce(1 - param1);
      }
      
      private static function easeOutBounce(param1:Number) : Number
      {
         var _loc4_:Number = NaN;
         if(param1 < 1 / 2.75)
         {
            _loc4_ = 7.5625 * Math.pow(param1,2);
         }
         else if(param1 < 2 / 2.75)
         {
            param1 -= 1.5 / 2.75;
            _loc4_ = 7.5625 * Math.pow(param1,2) + 0.75;
         }
         else if(param1 < 2.5 / 2.75)
         {
            param1 -= 2.25 / 2.75;
            _loc4_ = 7.5625 * Math.pow(param1,2) + 0.9375;
         }
         else
         {
            param1 -= 2.625 / 2.75;
            _loc4_ = 7.5625 * Math.pow(param1,2) + 0.984375;
         }
         return _loc4_;
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return easeCombined(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return easeCombined(easeOutBounce,easeInBounce,param1);
      }
      
      private static function easeCombined(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
