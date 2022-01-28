package §_-W0§
{
   import §_-QR§.§_-dN§;
   import flash.utils.Dictionary;
   
   public class §_-9x§
   {
      
      public static const §_-h9§:String = "linear";
      
      public static const §_-ap§:String = "easeIn";
      
      public static const §_-TS§:String = "easeOut";
      
      public static const §_-fY§:String = "easeInOut";
      
      public static const §_-Xp§:String = "easeOutIn";
      
      public static const §_-nM§:String = "easeInBack";
      
      public static const §_-C0§:String = "easeOutBack";
      
      public static const §_-xL§:String = "easeInOutBack";
      
      public static const §_-tu§:String = "easeOutInBack";
      
      public static const §_-VX§:String = "easeInElastic";
      
      public static const §_-TR§:String = "easeOutElastic";
      
      public static const §_-2x§:String = "easeInOutElastic";
      
      public static const §_-rp§:String = "easeOutInElastic";
      
      public static const §_-Jn§:String = "easeInBounce";
      
      public static const §_-ze§:String = "easeOutBounce";
      
      public static const §_-63§:String = "easeInOutBounce";
      
      public static const §_-QZ§:String = "easeOutInBounce";
      
      private static var §_-BV§:Dictionary;
       
      
      public function §_-9x§()
      {
         super();
         throw new §_-dN§();
      }
      
      public static function §_-Oi§(param1:String) : Function
      {
         if(§_-BV§ == null)
         {
            §_-wk§();
         }
         return §_-BV§[param1];
      }
      
      public static function §_-la§(param1:String, param2:Function) : void
      {
         if(§_-BV§ == null)
         {
            §_-wk§();
         }
         §_-BV§[param1] = param2;
      }
      
      private static function §_-wk§() : void
      {
         §_-BV§ = new Dictionary();
         §_-la§(§_-h9§,linear);
         §_-la§(§_-ap§,easeIn);
         §_-la§(§_-TS§,easeOut);
         §_-la§(§_-fY§,easeInOut);
         §_-la§(§_-Xp§,easeOutIn);
         §_-la§(§_-nM§,easeInBack);
         §_-la§(§_-C0§,easeOutBack);
         §_-la§(§_-xL§,easeInOutBack);
         §_-la§(§_-tu§,easeOutInBack);
         §_-la§(§_-VX§,easeInElastic);
         §_-la§(§_-TR§,easeOutElastic);
         §_-la§(§_-2x§,easeInOutElastic);
         §_-la§(§_-rp§,easeOutInElastic);
         §_-la§(§_-Jn§,easeInBounce);
         §_-la§(§_-ze§,easeOutBounce);
         §_-la§(§_-63§,easeInOutBounce);
         §_-la§(§_-QZ§,easeOutInBounce);
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
         return §_-5Q§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-5Q§(easeOut,easeIn,param1);
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
         return §_-5Q§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-5Q§(easeOutBack,easeInBack,param1);
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
         return §_-5Q§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-5Q§(easeOutElastic,easeInElastic,param1);
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
         return §_-5Q§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-5Q§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-5Q§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
