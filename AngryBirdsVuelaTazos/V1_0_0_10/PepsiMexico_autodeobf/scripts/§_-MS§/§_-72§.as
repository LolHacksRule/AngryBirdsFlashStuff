package §_-MS§
{
   import §_-dQ§.§_-wO§;
   import flash.utils.Dictionary;
   
   public class §_-72§
   {
      
      public static const §_-fU§:String = "linear";
      
      public static const §_-fC§:String = "easeIn";
      
      public static const §_-qf§:String = "easeOut";
      
      public static const §_-J8§:String = "easeInOut";
      
      public static const §_-Pi§:String = "easeOutIn";
      
      public static const §_-V8§:String = "easeInBack";
      
      public static const §_-V7§:String = "easeOutBack";
      
      public static const §_-7m§:String = "easeInOutBack";
      
      public static const §_-1-§:String = "easeOutInBack";
      
      public static const §_-fR§:String = "easeInElastic";
      
      public static const §_-rX§:String = "easeOutElastic";
      
      public static const §_-95§:String = "easeInOutElastic";
      
      public static const §_-YB§:String = "easeOutInElastic";
      
      public static const §_-df§:String = "easeInBounce";
      
      public static const §_-Bp§:String = "easeOutBounce";
      
      public static const §_-Mg§:String = "easeInOutBounce";
      
      public static const §_-Bu§:String = "easeOutInBounce";
      
      private static var §_-70§:Dictionary;
       
      
      public function §_-72§()
      {
         super();
         throw new §_-wO§();
      }
      
      public static function §_-IU§(param1:String) : Function
      {
         if(§_-70§ == null)
         {
            §_-EF§();
         }
         return §_-70§[param1];
      }
      
      public static function §_-BM§(param1:String, param2:Function) : void
      {
         if(§_-70§ == null)
         {
            §_-EF§();
         }
         §_-70§[param1] = param2;
      }
      
      private static function §_-EF§() : void
      {
         §_-70§ = new Dictionary();
         §_-BM§(§_-fU§,linear);
         §_-BM§(§_-fC§,easeIn);
         §_-BM§(§_-qf§,easeOut);
         §_-BM§(§_-J8§,easeInOut);
         §_-BM§(§_-Pi§,easeOutIn);
         §_-BM§(§_-V8§,easeInBack);
         §_-BM§(§_-V7§,easeOutBack);
         §_-BM§(§_-7m§,easeInOutBack);
         §_-BM§(§_-1-§,easeOutInBack);
         §_-BM§(§_-fR§,easeInElastic);
         §_-BM§(§_-rX§,easeOutElastic);
         §_-BM§(§_-95§,easeInOutElastic);
         §_-BM§(§_-YB§,easeOutInElastic);
         §_-BM§(§_-df§,easeInBounce);
         §_-BM§(§_-Bp§,easeOutBounce);
         §_-BM§(§_-Mg§,easeInOutBounce);
         §_-BM§(§_-Bu§,easeOutInBounce);
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
         return §_-MD§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-MD§(easeOut,easeIn,param1);
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
         return §_-MD§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-MD§(easeOutBack,easeInBack,param1);
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
         return §_-MD§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-MD§(easeOutElastic,easeInElastic,param1);
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
         return §_-MD§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-MD§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-MD§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
