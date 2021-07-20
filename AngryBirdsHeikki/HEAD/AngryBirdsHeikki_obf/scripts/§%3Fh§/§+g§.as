package §?h§
{
   import §<1§.§=N§;
   import flash.utils.Dictionary;
   
   public class §+g§
   {
      
      public static const §%!'§:String = "linear";
      
      public static const §=s§:String = "easeIn";
      
      public static const §+E§:String = "easeOut";
      
      public static const §;&§:String = "easeInOut";
      
      public static const §5X§:String = "easeOutIn";
      
      public static const §+!&§:String = "easeInBack";
      
      public static const §9y§:String = "easeOutBack";
      
      public static const §3M§:String = "easeInOutBack";
      
      public static const §#2§:String = "easeOutInBack";
      
      public static const §6!4§:String = "easeInElastic";
      
      public static const §-9§:String = "easeOutElastic";
      
      public static const §1W§:String = "easeInOutElastic";
      
      public static const §2!'§:String = "easeOutInElastic";
      
      public static const §>X§:String = "easeInBounce";
      
      public static const §`!6§:String = "easeOutBounce";
      
      public static const §^y§:String = "easeInOutBounce";
      
      public static const §[f§:String = "easeOutInBounce";
      
      private static var §@R§:Dictionary;
       
      
      public function §+g§()
      {
         super();
         throw new §=N§();
      }
      
      public static function §^t§(param1:String) : Function
      {
         if(§@R§ == null)
         {
            §`0§();
         }
         return §@R§[param1];
      }
      
      public static function §;4§(param1:String, param2:Function) : void
      {
         if(§@R§ == null)
         {
            §`0§();
         }
         §@R§[param1] = param2;
      }
      
      private static function §`0§() : void
      {
         §@R§ = new Dictionary();
         §;4§(§%!'§,linear);
         §;4§(§=s§,easeIn);
         §;4§(§+E§,easeOut);
         §;4§(§;&§,easeInOut);
         §;4§(§5X§,easeOutIn);
         §;4§(§+!&§,easeInBack);
         §;4§(§9y§,easeOutBack);
         §;4§(§3M§,easeInOutBack);
         §;4§(§#2§,easeOutInBack);
         §;4§(§6!4§,easeInElastic);
         §;4§(§-9§,easeOutElastic);
         §;4§(§1W§,easeInOutElastic);
         §;4§(§2!'§,easeOutInElastic);
         §;4§(§>X§,easeInBounce);
         §;4§(§`!6§,easeOutBounce);
         §;4§(§^y§,easeInOutBounce);
         §;4§(§[f§,easeOutInBounce);
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
         return §;O§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §;O§(easeOut,easeIn,param1);
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
         return §;O§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §;O§(easeOutBack,easeInBack,param1);
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
         return §;O§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §;O§(easeOutElastic,easeInElastic,param1);
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
         return §;O§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §;O§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §;O§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
