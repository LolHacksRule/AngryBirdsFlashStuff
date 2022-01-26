package §+!§
{
   import §9!6§.§&!;§;
   import flash.utils.Dictionary;
   
   public class §!8§
   {
      
      public static const §%k§:String = "linear";
      
      public static const §4C§:String = "easeIn";
      
      public static const §'H§:String = "easeOut";
      
      public static const §46§:String = "easeInOut";
      
      public static const §+M§:String = "easeOutIn";
      
      public static const §[!X§:String = "easeInBack";
      
      public static const §4S§:String = "easeOutBack";
      
      public static const §'!$§:String = "easeInOutBack";
      
      public static const §2!'§:String = "easeOutInBack";
      
      public static const §6P§:String = "easeInElastic";
      
      public static const §5d§:String = "easeOutElastic";
      
      public static const §`@§:String = "easeInOutElastic";
      
      public static const §>[§:String = "easeOutInElastic";
      
      public static const §'p§:String = "easeInBounce";
      
      public static const §]K§:String = "easeOutBounce";
      
      public static const §9o§:String = "easeInOutBounce";
      
      public static const §&Y§:String = "easeOutInBounce";
      
      private static var §2!N§:Dictionary;
       
      
      public function §!8§()
      {
         super();
         throw new §&!;§();
      }
      
      public static function §@!3§(param1:String) : Function
      {
         if(§2!N§ == null)
         {
            §@!5§();
         }
         return §2!N§[param1];
      }
      
      public static function §+B§(param1:String, param2:Function) : void
      {
         if(§2!N§ == null)
         {
            §@!5§();
         }
         §2!N§[param1] = param2;
      }
      
      private static function §@!5§() : void
      {
         §2!N§ = new Dictionary();
         §+B§(§%k§,linear);
         §+B§(§4C§,easeIn);
         §+B§(§'H§,easeOut);
         §+B§(§46§,easeInOut);
         §+B§(§+M§,easeOutIn);
         §+B§(§[!X§,easeInBack);
         §+B§(§4S§,easeOutBack);
         §+B§(§'!$§,easeInOutBack);
         §+B§(§2!'§,easeOutInBack);
         §+B§(§6P§,easeInElastic);
         §+B§(§5d§,easeOutElastic);
         §+B§(§`@§,easeInOutElastic);
         §+B§(§>[§,easeOutInElastic);
         §+B§(§'p§,easeInBounce);
         §+B§(§]K§,easeOutBounce);
         §+B§(§9o§,easeInOutBounce);
         §+B§(§&Y§,easeOutInBounce);
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
         return §-!Y§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §-!Y§(easeOut,easeIn,param1);
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
         return §-!Y§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §-!Y§(easeOutBack,easeInBack,param1);
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
         return §-!Y§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §-!Y§(easeOutElastic,easeInElastic,param1);
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
         return §-!Y§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §-!Y§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §-!Y§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
