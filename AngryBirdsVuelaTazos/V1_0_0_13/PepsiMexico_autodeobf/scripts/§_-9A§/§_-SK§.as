package §_-9A§
{
   import §_-ls§.§_-zF§;
   import flash.utils.Dictionary;
   
   public class §_-SK§
   {
      
      public static const §_-0c§:String = "linear";
      
      public static const §_-P6§:String = "easeIn";
      
      public static const §_-1T§:String = "easeOut";
      
      public static const §_-3O§:String = "easeInOut";
      
      public static const §_-kx§:String = "easeOutIn";
      
      public static const §_-VT§:String = "easeInBack";
      
      public static const §_-lG§:String = "easeOutBack";
      
      public static const §_-u5§:String = "easeInOutBack";
      
      public static const §_-Um§:String = "easeOutInBack";
      
      public static const §_-rx§:String = "easeInElastic";
      
      public static const §_-Lk§:String = "easeOutElastic";
      
      public static const §_-Av§:String = "easeInOutElastic";
      
      public static const §_-mZ§:String = "easeOutInElastic";
      
      public static const §_-rX§:String = "easeInBounce";
      
      public static const §_-66§:String = "easeOutBounce";
      
      public static const §_-Qo§:String = "easeInOutBounce";
      
      public static const §_-JP§:String = "easeOutInBounce";
      
      private static var §_-Y7§:Dictionary;
       
      
      public function §_-SK§()
      {
         super();
         throw new §_-zF§();
      }
      
      public static function §_-5o§(param1:String) : Function
      {
         if(§_-Y7§ == null)
         {
            §_-7i§();
         }
         return §_-Y7§[param1];
      }
      
      public static function §_-Hl§(param1:String, param2:Function) : void
      {
         if(§_-Y7§ == null)
         {
            §_-7i§();
         }
         §_-Y7§[param1] = param2;
      }
      
      private static function §_-7i§() : void
      {
         §_-Y7§ = new Dictionary();
         §_-Hl§(§_-0c§,linear);
         §_-Hl§(§_-P6§,easeIn);
         §_-Hl§(§_-1T§,easeOut);
         §_-Hl§(§_-3O§,easeInOut);
         §_-Hl§(§_-kx§,easeOutIn);
         §_-Hl§(§_-VT§,easeInBack);
         §_-Hl§(§_-lG§,easeOutBack);
         §_-Hl§(§_-u5§,easeInOutBack);
         §_-Hl§(§_-Um§,easeOutInBack);
         §_-Hl§(§_-rx§,easeInElastic);
         §_-Hl§(§_-Lk§,easeOutElastic);
         §_-Hl§(§_-Av§,easeInOutElastic);
         §_-Hl§(§_-mZ§,easeOutInElastic);
         §_-Hl§(§_-rX§,easeInBounce);
         §_-Hl§(§_-66§,easeOutBounce);
         §_-Hl§(§_-Qo§,easeInOutBounce);
         §_-Hl§(§_-JP§,easeOutInBounce);
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
         return §_-n9§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-n9§(easeOut,easeIn,param1);
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
         return §_-n9§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-n9§(easeOutBack,easeInBack,param1);
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
         return §_-n9§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-n9§(easeOutElastic,easeInElastic,param1);
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
         return §_-n9§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-n9§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-n9§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
