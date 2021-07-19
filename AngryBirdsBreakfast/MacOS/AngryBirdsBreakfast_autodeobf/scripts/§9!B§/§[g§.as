package §9!B§
{
   import §'O§.§1,§;
   import flash.utils.Dictionary;
   
   public class §[g§
   {
      
      public static const §8!A§:String = "linear";
      
      public static const §7!V§:String = "easeIn";
      
      public static const §in§:String = "easeOut";
      
      public static const §]!-§:String = "easeInOut";
      
      public static const §8"$§:String = "easeOutIn";
      
      public static const §>9§:String = "easeInBack";
      
      public static const §7V§:String = "easeOutBack";
      
      public static const §3`§:String = "easeInOutBack";
      
      public static const §0c§:String = "easeOutInBack";
      
      public static const § !;§:String = "easeInElastic";
      
      public static const §,!t§:String = "easeOutElastic";
      
      public static const §3!I§:String = "easeInOutElastic";
      
      public static const §,!<§:String = "easeOutInElastic";
      
      public static const §4!A§:String = "easeInBounce";
      
      public static const §1!f§:String = "easeOutBounce";
      
      public static const § !n§:String = "easeInOutBounce";
      
      public static const §,"!§:String = "easeOutInBounce";
      
      private static var §-!F§:Dictionary;
       
      
      public function §[g§()
      {
         super();
         throw new §1,§();
      }
      
      public static function §!!A§(param1:String) : Function
      {
         if(§-!F§ == null)
         {
            §3!P§();
         }
         return §-!F§[param1];
      }
      
      public static function §0!!§(param1:String, param2:Function) : void
      {
         if(§-!F§ == null)
         {
            §3!P§();
         }
         §-!F§[param1] = param2;
      }
      
      private static function §3!P§() : void
      {
         §-!F§ = new Dictionary();
         §0!!§(§8!A§,linear);
         §0!!§(§7!V§,easeIn);
         §0!!§(§in§,easeOut);
         §0!!§(§]!-§,easeInOut);
         §0!!§(§8"$§,easeOutIn);
         §0!!§(§>9§,easeInBack);
         §0!!§(§7V§,easeOutBack);
         §0!!§(§3`§,easeInOutBack);
         §0!!§(§0c§,easeOutInBack);
         §0!!§(§ !;§,easeInElastic);
         §0!!§(§,!t§,easeOutElastic);
         §0!!§(§3!I§,easeInOutElastic);
         §0!!§(§,!<§,easeOutInElastic);
         §0!!§(§4!A§,easeInBounce);
         §0!!§(§1!f§,easeOutBounce);
         §0!!§(§ !n§,easeInOutBounce);
         §0!!§(§,"!§,easeOutInBounce);
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
         return §[!L§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §[!L§(easeOut,easeIn,param1);
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
         return §[!L§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §[!L§(easeOutBack,easeInBack,param1);
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
         return §[!L§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §[!L§(easeOutElastic,easeInElastic,param1);
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
         return §[!L§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §[!L§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §[!L§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
