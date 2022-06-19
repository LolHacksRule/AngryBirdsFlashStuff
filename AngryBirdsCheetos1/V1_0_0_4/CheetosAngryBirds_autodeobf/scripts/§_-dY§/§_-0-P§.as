package §_-dY§
{
   import §_-mS§.§_-jy§;
   import flash.utils.Dictionary;
   
   public class §_-0-P§
   {
      
      public static const §_-zX§:String = "linear";
      
      public static const §_-9Y§:String = "easeIn";
      
      public static const §_-9m§:String = "easeOut";
      
      public static const §_-JN§:String = "easeInOut";
      
      public static const §_-t7§:String = "easeOutIn";
      
      public static const §_-QU§:String = "easeInBack";
      
      public static const §_-gC§:String = "easeOutBack";
      
      public static const §_-1C§:String = "easeInOutBack";
      
      public static const §_-Pj§:String = "easeOutInBack";
      
      public static const §_-Fu§:String = "easeInElastic";
      
      public static const §_-LL§:String = "easeOutElastic";
      
      public static const §_-62§:String = "easeInOutElastic";
      
      public static const §_-rH§:String = "easeOutInElastic";
      
      public static const §_-V0§:String = "easeInBounce";
      
      public static const §_-rM§:String = "easeOutBounce";
      
      public static const §_-xI§:String = "easeInOutBounce";
      
      public static const §_-Au§:String = "easeOutInBounce";
      
      private static var §_-2L§:Dictionary;
       
      
      public function §_-0-P§()
      {
         super();
         throw new §_-jy§();
      }
      
      public static function §_-Hb§(param1:String) : Function
      {
         if(§_-2L§ == null)
         {
            §_-Uq§();
         }
         return §_-2L§[param1];
      }
      
      public static function §_-1X§(param1:String, param2:Function) : void
      {
         if(§_-2L§ == null)
         {
            §_-Uq§();
         }
         §_-2L§[param1] = param2;
      }
      
      private static function §_-Uq§() : void
      {
         §_-2L§ = new Dictionary();
         §_-1X§(§_-zX§,linear);
         §_-1X§(§_-9Y§,easeIn);
         §_-1X§(§_-9m§,easeOut);
         §_-1X§(§_-JN§,easeInOut);
         §_-1X§(§_-t7§,easeOutIn);
         §_-1X§(§_-QU§,easeInBack);
         §_-1X§(§_-gC§,easeOutBack);
         §_-1X§(§_-1C§,easeInOutBack);
         §_-1X§(§_-Pj§,easeOutInBack);
         §_-1X§(§_-Fu§,easeInElastic);
         §_-1X§(§_-LL§,easeOutElastic);
         §_-1X§(§_-62§,easeInOutElastic);
         §_-1X§(§_-rH§,easeOutInElastic);
         §_-1X§(§_-V0§,easeInBounce);
         §_-1X§(§_-rM§,easeOutBounce);
         §_-1X§(§_-xI§,easeInOutBounce);
         §_-1X§(§_-Au§,easeOutInBounce);
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
         return §_-St§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-St§(easeOut,easeIn,param1);
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
         return §_-St§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-St§(easeOutBack,easeInBack,param1);
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
         return §_-St§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-St§(easeOutElastic,easeInElastic,param1);
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
         return §_-St§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-St§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-St§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
