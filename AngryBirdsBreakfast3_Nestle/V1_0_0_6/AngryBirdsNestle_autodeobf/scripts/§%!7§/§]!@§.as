package §%!7§
{
   import §]"1§.§1"-§;
   import flash.utils.Dictionary;
   
   public class §]!@§
   {
      
      public static const §`!c§:String = "linear";
      
      public static const §-y§:String = "easeIn";
      
      public static const §[!D§:String = "easeOut";
      
      public static const §,A§:String = "easeInOut";
      
      public static const §1!j§:String = "easeOutIn";
      
      public static const §@!<§:String = "easeInBack";
      
      public static const §"6§:String = "easeOutBack";
      
      public static const §,!G§:String = "easeInOutBack";
      
      public static const §>!o§:String = "easeOutInBack";
      
      public static const §9"+§:String = "easeInElastic";
      
      public static const §-!6§:String = "easeOutElastic";
      
      public static const §&H§:String = "easeInOutElastic";
      
      public static const §'!D§:String = "easeOutInElastic";
      
      public static const §]Y§:String = "easeInBounce";
      
      public static const §@>§:String = "easeOutBounce";
      
      public static const §<! §:String = "easeInOutBounce";
      
      public static const §2!<§:String = "easeOutInBounce";
      
      private static var §8P§:Dictionary;
       
      
      public function §]!@§()
      {
         super();
         throw new §1"-§();
      }
      
      public static function § !j§(param1:String) : Function
      {
         if(§8P§ == null)
         {
            §<L§();
         }
         return §8P§[param1];
      }
      
      public static function § !]§(param1:String, param2:Function) : void
      {
         if(§8P§ == null)
         {
            §<L§();
         }
         §8P§[param1] = param2;
      }
      
      private static function §<L§() : void
      {
         §8P§ = new Dictionary();
         § !]§(§`!c§,linear);
         § !]§(§-y§,easeIn);
         § !]§(§[!D§,easeOut);
         § !]§(§,A§,easeInOut);
         § !]§(§1!j§,easeOutIn);
         § !]§(§@!<§,easeInBack);
         § !]§(§"6§,easeOutBack);
         § !]§(§,!G§,easeInOutBack);
         § !]§(§>!o§,easeOutInBack);
         § !]§(§9"+§,easeInElastic);
         § !]§(§-!6§,easeOutElastic);
         § !]§(§&H§,easeInOutElastic);
         § !]§(§'!D§,easeOutInElastic);
         § !]§(§]Y§,easeInBounce);
         § !]§(§@>§,easeOutBounce);
         § !]§(§<! §,easeInOutBounce);
         § !]§(§2!<§,easeOutInBounce);
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
         return §5!0§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §5!0§(easeOut,easeIn,param1);
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
         return §5!0§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §5!0§(easeOutBack,easeInBack,param1);
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
         return §5!0§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §5!0§(easeOutElastic,easeInElastic,param1);
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
         return §5!0§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §5!0§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §5!0§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
