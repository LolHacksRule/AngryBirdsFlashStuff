package §"&§
{
   import §]!R§.§'3§;
   import flash.utils.Dictionary;
   
   public class §8!>§
   {
      
      public static const §@r§:String = "linear";
      
      public static const §6!U§:String = "easeIn";
      
      public static const §5U§:String = "easeOut";
      
      public static const §0U§:String = "easeInOut";
      
      public static const §="0§:String = "easeOutIn";
      
      public static const §!!1§:String = "easeInBack";
      
      public static const §2!8§:String = "easeOutBack";
      
      public static const §7!R§:String = "easeInOutBack";
      
      public static const §73§:String = "easeOutInBack";
      
      public static const §%!y§:String = "easeInElastic";
      
      public static const §'!p§:String = "easeOutElastic";
      
      public static const §4V§:String = "easeInOutElastic";
      
      public static const §+!q§:String = "easeOutInElastic";
      
      public static const §@l§:String = "easeInBounce";
      
      public static const §4$§:String = "easeOutBounce";
      
      public static const §0!<§:String = "easeInOutBounce";
      
      public static const §92§:String = "easeOutInBounce";
      
      private static var §3^§:Dictionary;
       
      
      public function §8!>§()
      {
         super();
         throw new §'3§();
      }
      
      public static function §^!U§(param1:String) : Function
      {
         if(§3^§ == null)
         {
            §;!G§();
         }
         return §3^§[param1];
      }
      
      public static function §9!U§(param1:String, param2:Function) : void
      {
         if(§3^§ == null)
         {
            §;!G§();
         }
         §3^§[param1] = param2;
      }
      
      private static function §;!G§() : void
      {
         §3^§ = new Dictionary();
         §9!U§(§@r§,linear);
         §9!U§(§6!U§,easeIn);
         §9!U§(§5U§,easeOut);
         §9!U§(§0U§,easeInOut);
         §9!U§(§="0§,easeOutIn);
         §9!U§(§!!1§,easeInBack);
         §9!U§(§2!8§,easeOutBack);
         §9!U§(§7!R§,easeInOutBack);
         §9!U§(§73§,easeOutInBack);
         §9!U§(§%!y§,easeInElastic);
         §9!U§(§'!p§,easeOutElastic);
         §9!U§(§4V§,easeInOutElastic);
         §9!U§(§+!q§,easeOutInElastic);
         §9!U§(§@l§,easeInBounce);
         §9!U§(§4$§,easeOutBounce);
         §9!U§(§0!<§,easeInOutBounce);
         §9!U§(§92§,easeOutInBounce);
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
         return §0!4§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §0!4§(easeOut,easeIn,param1);
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
         return §0!4§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §0!4§(easeOutBack,easeInBack,param1);
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
         return §0!4§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §0!4§(easeOutElastic,easeInElastic,param1);
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
         return §0!4§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §0!4§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §0!4§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
