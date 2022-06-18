package §"[§
{
   import §,#§.§&!"§;
   import flash.utils.Dictionary;
   
   public class §@-§
   {
      
      public static const §-!§:String = "linear";
      
      public static const §3S§:String = "easeIn";
      
      public static const §[_§:String = "easeOut";
      
      public static const §=!#§:String = "easeInOut";
      
      public static const §0x§:String = "easeOutIn";
      
      public static const §>!%§:String = "easeInBack";
      
      public static const §2w§:String = "easeOutBack";
      
      public static const §;N§:String = "easeInOutBack";
      
      public static const §6!1§:String = "easeOutInBack";
      
      public static const §,]§:String = "easeInElastic";
      
      public static const §=h§:String = "easeOutElastic";
      
      public static const §6!I§:String = "easeInOutElastic";
      
      public static const §79§:String = "easeOutInElastic";
      
      public static const §78§:String = "easeInBounce";
      
      public static const §6G§:String = "easeOutBounce";
      
      public static const §57§:String = "easeInOutBounce";
      
      public static const §#?§:String = "easeOutInBounce";
      
      private static var §%!C§:Dictionary;
       
      
      public function §@-§()
      {
         super();
         throw new §&!"§();
      }
      
      public static function §5S§(param1:String) : Function
      {
         if(§%!C§ == null)
         {
            §[,§();
         }
         return §%!C§[param1];
      }
      
      public static function §+!@§(param1:String, param2:Function) : void
      {
         if(§%!C§ == null)
         {
            §[,§();
         }
         §%!C§[param1] = param2;
      }
      
      private static function §[,§() : void
      {
         §%!C§ = new Dictionary();
         §+!@§(§-!§,linear);
         §+!@§(§3S§,easeIn);
         §+!@§(§[_§,easeOut);
         §+!@§(§=!#§,easeInOut);
         §+!@§(§0x§,easeOutIn);
         §+!@§(§>!%§,easeInBack);
         §+!@§(§2w§,easeOutBack);
         §+!@§(§;N§,easeInOutBack);
         §+!@§(§6!1§,easeOutInBack);
         §+!@§(§,]§,easeInElastic);
         §+!@§(§=h§,easeOutElastic);
         §+!@§(§6!I§,easeInOutElastic);
         §+!@§(§79§,easeOutInElastic);
         §+!@§(§78§,easeInBounce);
         §+!@§(§6G§,easeOutBounce);
         §+!@§(§57§,easeInOutBounce);
         §+!@§(§#?§,easeOutInBounce);
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
         return § F§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return § F§(easeOut,easeIn,param1);
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
         return § F§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return § F§(easeOutBack,easeInBack,param1);
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
         return § F§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return § F§(easeOutElastic,easeInElastic,param1);
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
         return § F§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return § F§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function § F§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
