package §_-kc§
{
   import §_-1y§.§_-3T§;
   import flash.utils.Dictionary;
   
   public class §_-mM§
   {
      
      public static const §_-Rg§:String = "linear";
      
      public static const §_-n-§:String = "easeIn";
      
      public static const §_-gZ§:String = "easeOut";
      
      public static const §_-eQ§:String = "easeInOut";
      
      public static const §_-bu§:String = "easeOutIn";
      
      public static const §_-Fu§:String = "easeInBack";
      
      public static const §_-tZ§:String = "easeOutBack";
      
      public static const §_-w6§:String = "easeInOutBack";
      
      public static const §_-E§:String = "easeOutInBack";
      
      public static const §_-Rr§:String = "easeInElastic";
      
      public static const §_-ul§:String = "easeOutElastic";
      
      public static const §_-6L§:String = "easeInOutElastic";
      
      public static const §_-V9§:String = "easeOutInElastic";
      
      public static const §_-xV§:String = "easeInBounce";
      
      public static const §_-PS§:String = "easeOutBounce";
      
      public static const §_-z§:String = "easeInOutBounce";
      
      public static const §_-hy§:String = "easeOutInBounce";
      
      private static var §_-tI§:Dictionary;
       
      
      public function §_-mM§()
      {
         super();
         throw new §_-3T§();
      }
      
      public static function §_-v9§(param1:String) : Function
      {
         if(§_-tI§ == null)
         {
            §_-Wo§();
         }
         return §_-tI§[param1];
      }
      
      public static function §_-lV§(param1:String, param2:Function) : void
      {
         if(§_-tI§ == null)
         {
            §_-Wo§();
         }
         §_-tI§[param1] = param2;
      }
      
      private static function §_-Wo§() : void
      {
         §_-tI§ = new Dictionary();
         §_-lV§(§_-Rg§,linear);
         §_-lV§(§_-n-§,easeIn);
         §_-lV§(§_-gZ§,easeOut);
         §_-lV§(§_-eQ§,easeInOut);
         §_-lV§(§_-bu§,easeOutIn);
         §_-lV§(§_-Fu§,easeInBack);
         §_-lV§(§_-tZ§,easeOutBack);
         §_-lV§(§_-w6§,easeInOutBack);
         §_-lV§(§_-E§,easeOutInBack);
         §_-lV§(§_-Rr§,easeInElastic);
         §_-lV§(§_-ul§,easeOutElastic);
         §_-lV§(§_-6L§,easeInOutElastic);
         §_-lV§(§_-V9§,easeOutInElastic);
         §_-lV§(§_-xV§,easeInBounce);
         §_-lV§(§_-PS§,easeOutBounce);
         §_-lV§(§_-z§,easeInOutBounce);
         §_-lV§(§_-hy§,easeOutInBounce);
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
         return §_-Mm§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-Mm§(easeOut,easeIn,param1);
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
         return §_-Mm§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-Mm§(easeOutBack,easeInBack,param1);
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
         return §_-Mm§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-Mm§(easeOutElastic,easeInElastic,param1);
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
         return §_-Mm§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-Mm§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-Mm§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
