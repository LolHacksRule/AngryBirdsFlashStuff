package §]d§
{
   import §@8§.§7I§;
   import flash.utils.Dictionary;
   
   public class §1!l§
   {
      
      public static const §6!T§:String = "linear";
      
      public static const §%5§:String = "easeIn";
      
      public static const §8! §:String = "easeOut";
      
      public static const §]!X§:String = "easeInOut";
      
      public static const §>S§:String = "easeOutIn";
      
      public static const §4"§:String = "easeInBack";
      
      public static const §9p§:String = "easeOutBack";
      
      public static const § !g§:String = "easeInOutBack";
      
      public static const §?]§:String = "easeOutInBack";
      
      public static const §?^§:String = "easeInElastic";
      
      public static const §8'§:String = "easeOutElastic";
      
      public static const §=!K§:String = "easeInOutElastic";
      
      public static const §^!l§:String = "easeOutInElastic";
      
      public static const §;!Z§:String = "easeInBounce";
      
      public static const §9T§:String = "easeOutBounce";
      
      public static const §9I§:String = "easeInOutBounce";
      
      public static const §'K§:String = "easeOutInBounce";
      
      private static var §^>§:Dictionary;
       
      
      public function §1!l§()
      {
         super();
         throw new §7I§();
      }
      
      public static function §#=§(param1:String) : Function
      {
         if(§^>§ == null)
         {
            §8!Z§();
         }
         return §^>§[param1];
      }
      
      public static function §9g§(param1:String, param2:Function) : void
      {
         if(§^>§ == null)
         {
            §8!Z§();
         }
         §^>§[param1] = param2;
      }
      
      private static function §8!Z§() : void
      {
         §^>§ = new Dictionary();
         §9g§(§6!T§,linear);
         §9g§(§%5§,easeIn);
         §9g§(§8! §,easeOut);
         §9g§(§]!X§,easeInOut);
         §9g§(§>S§,easeOutIn);
         §9g§(§4"§,easeInBack);
         §9g§(§9p§,easeOutBack);
         §9g§(§ !g§,easeInOutBack);
         §9g§(§?]§,easeOutInBack);
         §9g§(§?^§,easeInElastic);
         §9g§(§8'§,easeOutElastic);
         §9g§(§=!K§,easeInOutElastic);
         §9g§(§^!l§,easeOutInElastic);
         §9g§(§;!Z§,easeInBounce);
         §9g§(§9T§,easeOutBounce);
         §9g§(§9I§,easeInOutBounce);
         §9g§(§'K§,easeOutInBounce);
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
         return §2`§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §2`§(easeOut,easeIn,param1);
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
         return §2`§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §2`§(easeOutBack,easeInBack,param1);
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
         return §2`§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §2`§(easeOutElastic,easeInElastic,param1);
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
         return §2`§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §2`§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §2`§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
