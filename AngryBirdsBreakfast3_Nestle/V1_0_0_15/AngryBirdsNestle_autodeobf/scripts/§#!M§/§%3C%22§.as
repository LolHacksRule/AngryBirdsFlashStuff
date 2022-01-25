package §#!M§
{
   import §90§.§?!^§;
   import flash.utils.Dictionary;
   
   public class §<"§
   {
      
      public static const §@!c§:String = "linear";
      
      public static const §<s§:String = "easeIn";
      
      public static const §>8§:String = "easeOut";
      
      public static const §<!T§:String = "easeInOut";
      
      public static const § ^§:String = "easeOutIn";
      
      public static const §"!p§:String = "easeInBack";
      
      public static const §6!m§:String = "easeOutBack";
      
      public static const §1C§:String = "easeInOutBack";
      
      public static const §%!M§:String = "easeOutInBack";
      
      public static const §@!e§:String = "easeInElastic";
      
      public static const §8"+§:String = "easeOutElastic";
      
      public static const §'" §:String = "easeInOutElastic";
      
      public static const §^!o§:String = "easeOutInElastic";
      
      public static const §&"7§:String = "easeInBounce";
      
      public static const §,C§:String = "easeOutBounce";
      
      public static const §3,§:String = "easeInOutBounce";
      
      public static const §@%§:String = "easeOutInBounce";
      
      private static var §!!3§:Dictionary;
       
      
      public function §<"§()
      {
         super();
         throw new §?!^§();
      }
      
      public static function §case§(param1:String) : Function
      {
         if(§!!3§ == null)
         {
            §'!>§();
         }
         return §!!3§[param1];
      }
      
      public static function §88§(param1:String, param2:Function) : void
      {
         if(§!!3§ == null)
         {
            §'!>§();
         }
         §!!3§[param1] = param2;
      }
      
      private static function §'!>§() : void
      {
         §!!3§ = new Dictionary();
         §88§(§@!c§,linear);
         §88§(§<s§,easeIn);
         §88§(§>8§,easeOut);
         §88§(§<!T§,easeInOut);
         §88§(§ ^§,easeOutIn);
         §88§(§"!p§,easeInBack);
         §88§(§6!m§,easeOutBack);
         §88§(§1C§,easeInOutBack);
         §88§(§%!M§,easeOutInBack);
         §88§(§@!e§,easeInElastic);
         §88§(§8"+§,easeOutElastic);
         §88§(§'" §,easeInOutElastic);
         §88§(§^!o§,easeOutInElastic);
         §88§(§&"7§,easeInBounce);
         §88§(§,C§,easeOutBounce);
         §88§(§3,§,easeInOutBounce);
         §88§(§@%§,easeOutInBounce);
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
         return §2!I§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §2!I§(easeOut,easeIn,param1);
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
         return §2!I§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §2!I§(easeOutBack,easeInBack,param1);
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
         return §2!I§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §2!I§(easeOutElastic,easeInElastic,param1);
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
         return §2!I§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §2!I§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §2!I§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
