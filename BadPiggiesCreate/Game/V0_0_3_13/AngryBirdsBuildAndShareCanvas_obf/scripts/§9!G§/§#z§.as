package §9!G§
{
   import §%!C§.§'8§;
   import flash.utils.Dictionary;
   
   public class §#z§
   {
      
      public static const §?!#§:String = "linear";
      
      public static const §-^§:String = "easeIn";
      
      public static const §1"<§:String = "easeOut";
      
      public static const §31§:String = "easeInOut";
      
      public static const §]!+§:String = "easeOutIn";
      
      public static const §#!o§:String = "easeInBack";
      
      public static const §9H§:String = "easeOutBack";
      
      public static const §'p§:String = "easeInOutBack";
      
      public static const §;l§:String = "easeOutInBack";
      
      public static const §+!F§:String = "easeInElastic";
      
      public static const §[!g§:String = "easeOutElastic";
      
      public static const §+C§:String = "easeInOutElastic";
      
      public static const §1!I§:String = "easeOutInElastic";
      
      public static const §%k§:String = "easeInBounce";
      
      public static const static:String = "easeOutBounce";
      
      public static const §#_§:String = "easeInOutBounce";
      
      public static const §!!?§:String = "easeOutInBounce";
      
      private static var §]!r§:Dictionary;
       
      
      public function §#z§()
      {
         super();
         throw new §'8§();
      }
      
      public static function §7!V§(param1:String) : Function
      {
         if(§]!r§ == null)
         {
            §1!R§();
         }
         return §]!r§[param1];
      }
      
      public static function §[!5§(param1:String, param2:Function) : void
      {
         if(§]!r§ == null)
         {
            §1!R§();
         }
         §]!r§[param1] = param2;
      }
      
      private static function §1!R§() : void
      {
         §]!r§ = new Dictionary();
         §[!5§(§?!#§,linear);
         §[!5§(§-^§,easeIn);
         §[!5§(§1"<§,easeOut);
         §[!5§(§31§,easeInOut);
         §[!5§(§]!+§,easeOutIn);
         §[!5§(§#!o§,easeInBack);
         §[!5§(§9H§,easeOutBack);
         §[!5§(§'p§,easeInOutBack);
         §[!5§(§;l§,easeOutInBack);
         §[!5§(§+!F§,easeInElastic);
         §[!5§(§[!g§,easeOutElastic);
         §[!5§(§+C§,easeInOutElastic);
         §[!5§(§1!I§,easeOutInElastic);
         §[!5§(§%k§,easeInBounce);
         §[!5§(static,easeOutBounce);
         §[!5§(§#_§,easeInOutBounce);
         §[!5§(§!!?§,easeOutInBounce);
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
         return §6!X§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §6!X§(easeOut,easeIn,param1);
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
         return §6!X§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §6!X§(easeOutBack,easeInBack,param1);
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
         return §6!X§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §6!X§(easeOutElastic,easeInElastic,param1);
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
         return §6!X§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §6!X§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §6!X§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
