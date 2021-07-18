package §>!7§
{
   import §=5§.§^T§;
   import flash.utils.Dictionary;
   
   public class §7I§
   {
      
      public static const §!w§:String = "linear";
      
      public static const §<"1§:String = "easeIn";
      
      public static const §=!4§:String = "easeOut";
      
      public static const §?Q§:String = "easeInOut";
      
      public static const §+!w§:String = "easeOutIn";
      
      public static const §7!2§:String = "easeInBack";
      
      public static const §#9§:String = "easeOutBack";
      
      public static const §^!E§:String = "easeInOutBack";
      
      public static const §4!3§:String = "easeOutInBack";
      
      public static const §3M§:String = "easeInElastic";
      
      public static const §-!i§:String = "easeOutElastic";
      
      public static const §6!!§:String = "easeInOutElastic";
      
      public static const §^Q§:String = "easeOutInElastic";
      
      public static const §^!v§:String = "easeInBounce";
      
      public static const §8w§:String = "easeOutBounce";
      
      public static const §!F§:String = "easeInOutBounce";
      
      public static const §@"7§:String = "easeOutInBounce";
      
      private static var §;e§:Dictionary;
       
      
      public function §7I§()
      {
         super();
         throw new §^T§();
      }
      
      public static function §<!C§(param1:String) : Function
      {
         if(§;e§ == null)
         {
            §;"#§();
         }
         return §;e§[param1];
      }
      
      public static function §,!X§(param1:String, param2:Function) : void
      {
         if(§;e§ == null)
         {
            §;"#§();
         }
         §;e§[param1] = param2;
      }
      
      private static function §;"#§() : void
      {
         §;e§ = new Dictionary();
         §,!X§(§!w§,linear);
         §,!X§(§<"1§,easeIn);
         §,!X§(§=!4§,easeOut);
         §,!X§(§?Q§,easeInOut);
         §,!X§(§+!w§,easeOutIn);
         §,!X§(§7!2§,easeInBack);
         §,!X§(§#9§,easeOutBack);
         §,!X§(§^!E§,easeInOutBack);
         §,!X§(§4!3§,easeOutInBack);
         §,!X§(§3M§,easeInElastic);
         §,!X§(§-!i§,easeOutElastic);
         §,!X§(§6!!§,easeInOutElastic);
         §,!X§(§^Q§,easeOutInElastic);
         §,!X§(§^!v§,easeInBounce);
         §,!X§(§8w§,easeOutBounce);
         §,!X§(§!F§,easeInOutBounce);
         §,!X§(§@"7§,easeOutInBounce);
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
         return §4n§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §4n§(easeOut,easeIn,param1);
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
         return §4n§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §4n§(easeOutBack,easeInBack,param1);
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
         return §4n§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §4n§(easeOutElastic,easeInElastic,param1);
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
         return §4n§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §4n§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §4n§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
