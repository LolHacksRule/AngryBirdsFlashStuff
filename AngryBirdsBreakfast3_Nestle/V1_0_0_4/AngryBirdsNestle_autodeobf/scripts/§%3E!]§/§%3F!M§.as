package §>!]§
{
   import §,a§.§-l§;
   import flash.utils.Dictionary;
   
   public class §?!M§
   {
      
      public static const §!"%§:String = "linear";
      
      public static const §!!B§:String = "easeIn";
      
      public static const §7!Y§:String = "easeOut";
      
      public static const §"y§:String = "easeInOut";
      
      public static const §3!7§:String = "easeOutIn";
      
      public static const §0!g§:String = "easeInBack";
      
      public static const §1Y§:String = "easeOutBack";
      
      public static const §`!E§:String = "easeInOutBack";
      
      public static const §@N§:String = "easeOutInBack";
      
      public static const §,!V§:String = "easeInElastic";
      
      public static const §,!k§:String = "easeOutElastic";
      
      public static const §2!g§:String = "easeInOutElastic";
      
      public static const §[!D§:String = "easeOutInElastic";
      
      public static const §2L§:String = "easeInBounce";
      
      public static const §[4§:String = "easeOutBounce";
      
      public static const §`!3§:String = "easeInOutBounce";
      
      public static const §;!7§:String = "easeOutInBounce";
      
      private static var §7!k§:Dictionary;
       
      
      public function §?!M§()
      {
         super();
         throw new §-l§();
      }
      
      public static function §`w§(param1:String) : Function
      {
         if(§7!k§ == null)
         {
            §<l§();
         }
         return §7!k§[param1];
      }
      
      public static function §'l§(param1:String, param2:Function) : void
      {
         if(§7!k§ == null)
         {
            §<l§();
         }
         §7!k§[param1] = param2;
      }
      
      private static function §<l§() : void
      {
         §7!k§ = new Dictionary();
         §'l§(§!"%§,linear);
         §'l§(§!!B§,easeIn);
         §'l§(§7!Y§,easeOut);
         §'l§(§"y§,easeInOut);
         §'l§(§3!7§,easeOutIn);
         §'l§(§0!g§,easeInBack);
         §'l§(§1Y§,easeOutBack);
         §'l§(§`!E§,easeInOutBack);
         §'l§(§@N§,easeOutInBack);
         §'l§(§,!V§,easeInElastic);
         §'l§(§,!k§,easeOutElastic);
         §'l§(§2!g§,easeInOutElastic);
         §'l§(§[!D§,easeOutInElastic);
         §'l§(§2L§,easeInBounce);
         §'l§(§[4§,easeOutBounce);
         §'l§(§`!3§,easeInOutBounce);
         §'l§(§;!7§,easeOutInBounce);
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
         return §^!r§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §^!r§(easeOut,easeIn,param1);
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
         return §^!r§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §^!r§(easeOutBack,easeInBack,param1);
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
         return §^!r§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §^!r§(easeOutElastic,easeInElastic,param1);
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
         return §^!r§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §^!r§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §^!r§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
