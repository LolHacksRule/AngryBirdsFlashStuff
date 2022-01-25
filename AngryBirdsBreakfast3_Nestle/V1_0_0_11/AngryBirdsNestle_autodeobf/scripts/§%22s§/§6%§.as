package §"s§
{
   import §[!F§.§'q§;
   import flash.utils.Dictionary;
   
   public class §6%§
   {
      
      public static const §%!F§:String = "linear";
      
      public static const §1@§:String = "easeIn";
      
      public static const §3!j§:String = "easeOut";
      
      public static const §[!,§:String = "easeInOut";
      
      public static const §1!I§:String = "easeOutIn";
      
      public static const §#!_§:String = "easeInBack";
      
      public static const §@+§:String = "easeOutBack";
      
      public static const §7!'§:String = "easeInOutBack";
      
      public static const §0-§:String = "easeOutInBack";
      
      public static const §[V§:String = "easeInElastic";
      
      public static const §8v§:String = "easeOutElastic";
      
      public static const §-Z§:String = "easeInOutElastic";
      
      public static const §+!9§:String = "easeOutInElastic";
      
      public static const §"A§:String = "easeInBounce";
      
      public static const §]1§:String = "easeOutBounce";
      
      public static const §3"%§:String = "easeInOutBounce";
      
      public static const §%N§:String = "easeOutInBounce";
      
      private static var §7!`§:Dictionary;
       
      
      public function §6%§()
      {
         super();
         throw new §'q§();
      }
      
      public static function §,h§(param1:String) : Function
      {
         if(§7!`§ == null)
         {
            §=c§();
         }
         return §7!`§[param1];
      }
      
      public static function §6!T§(param1:String, param2:Function) : void
      {
         if(§7!`§ == null)
         {
            §=c§();
         }
         §7!`§[param1] = param2;
      }
      
      private static function §=c§() : void
      {
         §7!`§ = new Dictionary();
         §6!T§(§%!F§,linear);
         §6!T§(§1@§,easeIn);
         §6!T§(§3!j§,easeOut);
         §6!T§(§[!,§,easeInOut);
         §6!T§(§1!I§,easeOutIn);
         §6!T§(§#!_§,easeInBack);
         §6!T§(§@+§,easeOutBack);
         §6!T§(§7!'§,easeInOutBack);
         §6!T§(§0-§,easeOutInBack);
         §6!T§(§[V§,easeInElastic);
         §6!T§(§8v§,easeOutElastic);
         §6!T§(§-Z§,easeInOutElastic);
         §6!T§(§+!9§,easeOutInElastic);
         §6!T§(§"A§,easeInBounce);
         §6!T§(§]1§,easeOutBounce);
         §6!T§(§3"%§,easeInOutBounce);
         §6!T§(§%N§,easeOutInBounce);
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
         return §'!N§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §'!N§(easeOut,easeIn,param1);
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
         return §'!N§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §'!N§(easeOutBack,easeInBack,param1);
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
         return §'!N§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §'!N§(easeOutElastic,easeInElastic,param1);
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
         return §'!N§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §'!N§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §'!N§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
