package §+"Y§
{
   import §`#§.§7!p§;
   import flash.utils.Dictionary;
   
   public class §4!5§
   {
      
      public static const §%#§:String = "linear";
      
      public static const §!!T§:String = "easeIn";
      
      public static const §+!§:String = "easeOut";
      
      public static const §2;§:String = "easeInOut";
      
      public static const §`!q§:String = "easeOutIn";
      
      public static const §5@§:String = "easeInBack";
      
      public static const §3@§:String = "easeOutBack";
      
      public static const §="?§:String = "easeInOutBack";
      
      public static const §7>§:String = "easeOutInBack";
      
      public static const §"v§:String = "easeInElastic";
      
      public static const §=!B§:String = "easeOutElastic";
      
      public static const §7!]§:String = "easeInOutElastic";
      
      public static const §!!9§:String = "easeOutInElastic";
      
      public static const §?"+§:String = "easeInBounce";
      
      public static const §="N§:String = "easeOutBounce";
      
      public static const §4w§:String = "easeInOutBounce";
      
      public static const §-"+§:String = "easeOutInBounce";
      
      private static var §@" §:Dictionary;
       
      
      public function §4!5§()
      {
         super();
         throw new §7!p§();
      }
      
      public static function §5"F§(param1:String) : Function
      {
         if(§@" § == null)
         {
            §5"4§();
         }
         return §@" §[param1];
      }
      
      public static function §6!>§(param1:String, param2:Function) : void
      {
         if(§@" § == null)
         {
            §5"4§();
         }
         §@" §[param1] = param2;
      }
      
      private static function §5"4§() : void
      {
         §@" § = new Dictionary();
         §6!>§(§%#§,linear);
         §6!>§(§!!T§,easeIn);
         §6!>§(§+!§,easeOut);
         §6!>§(§2;§,easeInOut);
         §6!>§(§`!q§,easeOutIn);
         §6!>§(§5@§,easeInBack);
         §6!>§(§3@§,easeOutBack);
         §6!>§(§="?§,easeInOutBack);
         §6!>§(§7>§,easeOutInBack);
         §6!>§(§"v§,easeInElastic);
         §6!>§(§=!B§,easeOutElastic);
         §6!>§(§7!]§,easeInOutElastic);
         §6!>§(§!!9§,easeOutInElastic);
         §6!>§(§?"+§,easeInBounce);
         §6!>§(§="N§,easeOutBounce);
         §6!>§(§4w§,easeInOutBounce);
         §6!>§(§-"+§,easeOutInBounce);
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
         return § !7§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return § !7§(easeOut,easeIn,param1);
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
         return § !7§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return § !7§(easeOutBack,easeInBack,param1);
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
         return § !7§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return § !7§(easeOutElastic,easeInElastic,param1);
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
         return § !7§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return § !7§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function § !7§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
