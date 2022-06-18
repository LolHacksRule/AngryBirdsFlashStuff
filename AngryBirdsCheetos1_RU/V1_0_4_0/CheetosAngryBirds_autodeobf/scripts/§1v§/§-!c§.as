package §1v§
{
   import §?C§.§-!$§;
   import flash.utils.Dictionary;
   
   public class §-!c§
   {
      
      public static const §<!1§:String = "linear";
      
      public static const §;g§:String = "easeIn";
      
      public static const §=!J§:String = "easeOut";
      
      public static const §=a§:String = "easeInOut";
      
      public static const §?U§:String = "easeOutIn";
      
      public static const §,I§:String = "easeInBack";
      
      public static const §<;§:String = "easeOutBack";
      
      public static const §4P§:String = "easeInOutBack";
      
      public static const §2G§:String = "easeOutInBack";
      
      public static const §4!$§:String = "easeInElastic";
      
      public static const §;"§:String = "easeOutElastic";
      
      public static const §#!1§:String = "easeInOutElastic";
      
      public static const §0!`§:String = "easeOutInElastic";
      
      public static const §7_§:String = "easeInBounce";
      
      public static const §27§:String = "easeOutBounce";
      
      public static const §9!`§:String = "easeInOutBounce";
      
      public static const §1!C§:String = "easeOutInBounce";
      
      private static var §[!%§:Dictionary;
       
      
      public function §-!c§()
      {
         super();
         throw new §-!$§();
      }
      
      public static function §5!A§(param1:String) : Function
      {
         if(§[!%§ == null)
         {
            §4E§();
         }
         return §[!%§[param1];
      }
      
      public static function §1C§(param1:String, param2:Function) : void
      {
         if(§[!%§ == null)
         {
            §4E§();
         }
         §[!%§[param1] = param2;
      }
      
      private static function §4E§() : void
      {
         §[!%§ = new Dictionary();
         §1C§(§<!1§,linear);
         §1C§(§;g§,easeIn);
         §1C§(§=!J§,easeOut);
         §1C§(§=a§,easeInOut);
         §1C§(§?U§,easeOutIn);
         §1C§(§,I§,easeInBack);
         §1C§(§<;§,easeOutBack);
         §1C§(§4P§,easeInOutBack);
         §1C§(§2G§,easeOutInBack);
         §1C§(§4!$§,easeInElastic);
         §1C§(§;"§,easeOutElastic);
         §1C§(§#!1§,easeInOutElastic);
         §1C§(§0!`§,easeOutInElastic);
         §1C§(§7_§,easeInBounce);
         §1C§(§27§,easeOutBounce);
         §1C§(§9!`§,easeInOutBounce);
         §1C§(§1!C§,easeOutInBounce);
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
         return §8!!§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §8!!§(easeOut,easeIn,param1);
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
         return §8!!§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §8!!§(easeOutBack,easeInBack,param1);
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
         return §8!!§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §8!!§(easeOutElastic,easeInElastic,param1);
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
         return §8!!§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §8!!§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §8!!§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
