package §<!o§
{
   import § !'§.§[!$§;
   import flash.utils.Dictionary;
   
   public class §6!;§
   {
      
      public static const §8!I§:String = "linear";
      
      public static const §"L§:String = "easeIn";
      
      public static const §`!w§:String = "easeOut";
      
      public static const §@!-§:String = "easeInOut";
      
      public static const §,!"§:String = "easeOutIn";
      
      public static const §>u§:String = "easeInBack";
      
      public static const §5'§:String = "easeOutBack";
      
      public static const §,!W§:String = "easeInOutBack";
      
      public static const §2]§:String = "easeOutInBack";
      
      public static const §0!B§:String = "easeInElastic";
      
      public static const §4P§:String = "easeOutElastic";
      
      public static const §7!O§:String = "easeInOutElastic";
      
      public static const §9!v§:String = "easeOutInElastic";
      
      public static const §[!g§:String = "easeInBounce";
      
      public static const §;!7§:String = "easeOutBounce";
      
      public static const §1!&§:String = "easeInOutBounce";
      
      public static const §?!W§:String = "easeOutInBounce";
      
      private static var §'!`§:Dictionary;
       
      
      public function §6!;§()
      {
         super();
         throw new §[!$§();
      }
      
      public static function §9!I§(param1:String) : Function
      {
         if(§'!`§ == null)
         {
            §,!<§();
         }
         return §'!`§[param1];
      }
      
      public static function §67§(param1:String, param2:Function) : void
      {
         if(§'!`§ == null)
         {
            §,!<§();
         }
         §'!`§[param1] = param2;
      }
      
      private static function §,!<§() : void
      {
         §'!`§ = new Dictionary();
         §67§(§8!I§,linear);
         §67§(§"L§,easeIn);
         §67§(§`!w§,easeOut);
         §67§(§@!-§,easeInOut);
         §67§(§,!"§,easeOutIn);
         §67§(§>u§,easeInBack);
         §67§(§5'§,easeOutBack);
         §67§(§,!W§,easeInOutBack);
         §67§(§2]§,easeOutInBack);
         §67§(§0!B§,easeInElastic);
         §67§(§4P§,easeOutElastic);
         §67§(§7!O§,easeInOutElastic);
         §67§(§9!v§,easeOutInElastic);
         §67§(§[!g§,easeInBounce);
         §67§(§;!7§,easeOutBounce);
         §67§(§1!&§,easeInOutBounce);
         §67§(§?!W§,easeOutInBounce);
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
         return §]!K§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §]!K§(easeOut,easeIn,param1);
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
         return §]!K§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §]!K§(easeOutBack,easeInBack,param1);
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
         return §]!K§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §]!K§(easeOutElastic,easeInElastic,param1);
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
         return §]!K§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §]!K§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §]!K§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
