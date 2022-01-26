package §_-iA§
{
   import §_-bI§.§_-oJ§;
   import flash.utils.Dictionary;
   
   public class §_-IR§
   {
      
      public static const §_-kc§:String = "linear";
      
      public static const §_-HO§:String = "easeIn";
      
      public static const §_-P0§:String = "easeOut";
      
      public static const §_-Zo§:String = "easeInOut";
      
      public static const §_-0W§:String = "easeOutIn";
      
      public static const §_-P7§:String = "easeInBack";
      
      public static const §_-PZ§:String = "easeOutBack";
      
      public static const §_-Fs§:String = "easeInOutBack";
      
      public static const §_-SB§:String = "easeOutInBack";
      
      public static const §_-rP§:String = "easeInElastic";
      
      public static const §_-JG§:String = "easeOutElastic";
      
      public static const §_-8C§:String = "easeInOutElastic";
      
      public static const §_-li§:String = "easeOutInElastic";
      
      public static const §_-r§:String = "easeInBounce";
      
      public static const §_-ZM§:String = "easeOutBounce";
      
      public static const §_-Uw§:String = "easeInOutBounce";
      
      public static const §_-nS§:String = "easeOutInBounce";
      
      private static var §_-Ro§:Dictionary;
       
      
      public function §_-IR§()
      {
         super();
         throw new §_-oJ§();
      }
      
      public static function §_-q8§(param1:String) : Function
      {
         if(§_-Ro§ == null)
         {
            §_-8r§();
         }
         return §_-Ro§[param1];
      }
      
      public static function §_-Vm§(param1:String, param2:Function) : void
      {
         if(§_-Ro§ == null)
         {
            §_-8r§();
         }
         §_-Ro§[param1] = param2;
      }
      
      private static function §_-8r§() : void
      {
         §_-Ro§ = new Dictionary();
         §_-Vm§(§_-kc§,linear);
         §_-Vm§(§_-HO§,easeIn);
         §_-Vm§(§_-P0§,easeOut);
         §_-Vm§(§_-Zo§,easeInOut);
         §_-Vm§(§_-0W§,easeOutIn);
         §_-Vm§(§_-P7§,easeInBack);
         §_-Vm§(§_-PZ§,easeOutBack);
         §_-Vm§(§_-Fs§,easeInOutBack);
         §_-Vm§(§_-SB§,easeOutInBack);
         §_-Vm§(§_-rP§,easeInElastic);
         §_-Vm§(§_-JG§,easeOutElastic);
         §_-Vm§(§_-8C§,easeInOutElastic);
         §_-Vm§(§_-li§,easeOutInElastic);
         §_-Vm§(§_-r§,easeInBounce);
         §_-Vm§(§_-ZM§,easeOutBounce);
         §_-Vm§(§_-Uw§,easeInOutBounce);
         §_-Vm§(§_-nS§,easeOutInBounce);
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
         return §_-F7§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-F7§(easeOut,easeIn,param1);
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
         return §_-F7§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-F7§(easeOutBack,easeInBack,param1);
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
         return §_-F7§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-F7§(easeOutElastic,easeInElastic,param1);
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
         return §_-F7§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-F7§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-F7§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
