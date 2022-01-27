package §;!+§
{
   import §!q§.§=!@§;
   import flash.utils.Dictionary;
   
   public class §]I§
   {
      
      public static const §+!'§:String = "linear";
      
      public static const §'!3§:String = "easeIn";
      
      public static const §+!$§:String = "easeOut";
      
      public static const §5V§:String = "easeInOut";
      
      public static const §,!O§:String = "easeOutIn";
      
      public static const §]u§:String = "easeInBack";
      
      public static const §+!6§:String = "easeOutBack";
      
      public static const §5L§:String = "easeInOutBack";
      
      public static const §`@§:String = "easeOutInBack";
      
      public static const §1!1§:String = "easeInElastic";
      
      public static const §-2§:String = "easeOutElastic";
      
      public static const §3`§:String = "easeInOutElastic";
      
      public static const §3!-§:String = "easeOutInElastic";
      
      public static const §%?§:String = "easeInBounce";
      
      public static const §=f§:String = "easeOutBounce";
      
      public static const §!!4§:String = "easeInOutBounce";
      
      public static const §3!U§:String = "easeOutInBounce";
      
      private static var §0g§:Dictionary;
       
      
      public function §]I§()
      {
         super();
         throw new §=!@§();
      }
      
      public static function §1B§(param1:String) : Function
      {
         if(§0g§ == null)
         {
            §'!O§();
         }
         return §0g§[param1];
      }
      
      public static function §#A§(param1:String, param2:Function) : void
      {
         if(§0g§ == null)
         {
            §'!O§();
         }
         §0g§[param1] = param2;
      }
      
      private static function §'!O§() : void
      {
         §0g§ = new Dictionary();
         §#A§(§+!'§,linear);
         §#A§(§'!3§,easeIn);
         §#A§(§+!$§,easeOut);
         §#A§(§5V§,easeInOut);
         §#A§(§,!O§,easeOutIn);
         §#A§(§]u§,easeInBack);
         §#A§(§+!6§,easeOutBack);
         §#A§(§5L§,easeInOutBack);
         §#A§(§`@§,easeOutInBack);
         §#A§(§1!1§,easeInElastic);
         §#A§(§-2§,easeOutElastic);
         §#A§(§3`§,easeInOutElastic);
         §#A§(§3!-§,easeOutInElastic);
         §#A§(§%?§,easeInBounce);
         §#A§(§=f§,easeOutBounce);
         §#A§(§!!4§,easeInOutBounce);
         §#A§(§3!U§,easeOutInBounce);
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
         return §`H§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §`H§(easeOut,easeIn,param1);
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
         return §`H§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §`H§(easeOutBack,easeInBack,param1);
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
         return §`H§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §`H§(easeOutElastic,easeInElastic,param1);
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
         return §`H§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §`H§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §`H§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
