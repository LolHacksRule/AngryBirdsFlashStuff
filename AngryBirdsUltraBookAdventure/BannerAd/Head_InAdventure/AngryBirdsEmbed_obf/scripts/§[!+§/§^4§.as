package §[!+§
{
   import §<t§.§ !'§;
   import flash.utils.Dictionary;
   
   public class §^4§
   {
      
      public static const §#8§:String = "linear";
      
      public static const §6!3§:String = "easeIn";
      
      public static const §%a§:String = "easeOut";
      
      public static const §`r§:String = "easeInOut";
      
      public static const §+!0§:String = "easeOutIn";
      
      public static const §^N§:String = "easeInBack";
      
      public static const §5N§:String = "easeOutBack";
      
      public static const §=N§:String = "easeInOutBack";
      
      public static const §&!I§:String = "easeOutInBack";
      
      public static const §%!3§:String = "easeInElastic";
      
      public static const §finally§:String = "easeOutElastic";
      
      public static const §=!9§:String = "easeInOutElastic";
      
      public static const §&y§:String = "easeOutInElastic";
      
      public static const §6!0§:String = "easeInBounce";
      
      public static const §6S§:String = "easeOutBounce";
      
      public static const § !,§:String = "easeInOutBounce";
      
      public static const §7v§:String = "easeOutInBounce";
      
      private static var §'8§:Dictionary;
       
      
      public function §^4§()
      {
         super();
         throw new § !'§();
      }
      
      public static function §=!F§(param1:String) : Function
      {
         if(§'8§ == null)
         {
            § !K§();
         }
         return §'8§[param1];
      }
      
      public static function §#!A§(param1:String, param2:Function) : void
      {
         if(§'8§ == null)
         {
            § !K§();
         }
         §'8§[param1] = param2;
      }
      
      private static function § !K§() : void
      {
         §'8§ = new Dictionary();
         §#!A§(§#8§,linear);
         §#!A§(§6!3§,easeIn);
         §#!A§(§%a§,easeOut);
         §#!A§(§`r§,easeInOut);
         §#!A§(§+!0§,easeOutIn);
         §#!A§(§^N§,easeInBack);
         §#!A§(§5N§,easeOutBack);
         §#!A§(§=N§,easeInOutBack);
         §#!A§(§&!I§,easeOutInBack);
         §#!A§(§%!3§,easeInElastic);
         §#!A§(§finally§,easeOutElastic);
         §#!A§(§=!9§,easeInOutElastic);
         §#!A§(§&y§,easeOutInElastic);
         §#!A§(§6!0§,easeInBounce);
         §#!A§(§6S§,easeOutBounce);
         §#!A§(§ !,§,easeInOutBounce);
         §#!A§(§7v§,easeOutInBounce);
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
         return §?!2§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §?!2§(easeOut,easeIn,param1);
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
         return §?!2§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §?!2§(easeOutBack,easeInBack,param1);
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
         return §?!2§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §?!2§(easeOutElastic,easeInElastic,param1);
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
         return §?!2§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §?!2§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §?!2§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
