package §8!1§
{
   import §'z§.§4!R§;
   import flash.utils.Dictionary;
   
   public class §4$§
   {
      
      public static const §#=§:String = "linear";
      
      public static const §-n§:String = "easeIn";
      
      public static const §=x§:String = "easeOut";
      
      public static const §?s§:String = "easeInOut";
      
      public static const §-B§:String = "easeOutIn";
      
      public static const §?!%§:String = "easeInBack";
      
      public static const §]B§:String = "easeOutBack";
      
      public static const §"+§:String = "easeInOutBack";
      
      public static const §8!Z§:String = "easeOutInBack";
      
      public static const §0!J§:String = "easeInElastic";
      
      public static const §<!N§:String = "easeOutElastic";
      
      public static const §;!a§:String = "easeInOutElastic";
      
      public static const §1b§:String = "easeOutInElastic";
      
      public static const §;^§:String = "easeInBounce";
      
      public static const §8p§:String = "easeOutBounce";
      
      public static const §6!J§:String = "easeInOutBounce";
      
      public static const §+q§:String = "easeOutInBounce";
      
      private static var §,_§:Dictionary;
       
      
      public function §4$§()
      {
         super();
         throw new §4!R§();
      }
      
      public static function § Q§(param1:String) : Function
      {
         if(§,_§ == null)
         {
            §6!O§();
         }
         return §,_§[param1];
      }
      
      public static function §84§(param1:String, param2:Function) : void
      {
         if(§,_§ == null)
         {
            §6!O§();
         }
         §,_§[param1] = param2;
      }
      
      private static function §6!O§() : void
      {
         §,_§ = new Dictionary();
         §84§(§#=§,linear);
         §84§(§-n§,easeIn);
         §84§(§=x§,easeOut);
         §84§(§?s§,easeInOut);
         §84§(§-B§,easeOutIn);
         §84§(§?!%§,easeInBack);
         §84§(§]B§,easeOutBack);
         §84§(§"+§,easeInOutBack);
         §84§(§8!Z§,easeOutInBack);
         §84§(§0!J§,easeInElastic);
         §84§(§<!N§,easeOutElastic);
         §84§(§;!a§,easeInOutElastic);
         §84§(§1b§,easeOutInElastic);
         §84§(§;^§,easeInBounce);
         §84§(§8p§,easeOutBounce);
         §84§(§6!J§,easeInOutBounce);
         §84§(§+q§,easeOutInBounce);
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
         return § 0§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return § 0§(easeOut,easeIn,param1);
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
         return § 0§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return § 0§(easeOutBack,easeInBack,param1);
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
         return § 0§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return § 0§(easeOutElastic,easeInElastic,param1);
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
         return § 0§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return § 0§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function § 0§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
