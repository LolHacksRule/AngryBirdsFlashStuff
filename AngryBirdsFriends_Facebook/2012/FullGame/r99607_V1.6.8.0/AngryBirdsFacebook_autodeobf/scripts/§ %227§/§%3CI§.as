package § "7§
{
   import §6!3§.§8"$§;
   import flash.utils.Dictionary;
   
   public class §<I§
   {
      
      public static const § !5§:String = "linear";
      
      public static const §8!2§:String = "easeIn";
      
      public static const §+9§:String = "easeOut";
      
      public static const §32§:String = "easeInOut";
      
      public static const §&M§:String = "easeOutIn";
      
      public static const §+!z§:String = "easeInBack";
      
      public static const §5u§:String = "easeOutBack";
      
      public static const §0I§:String = "easeInOutBack";
      
      public static const §,!!§:String = "easeOutInBack";
      
      public static const §?_§:String = "easeInElastic";
      
      public static const §<!&§:String = "easeOutElastic";
      
      public static const §=!T§:String = "easeInOutElastic";
      
      public static const §7e§:String = "easeOutInElastic";
      
      public static const §?!J§:String = "easeInBounce";
      
      public static const §>W§:String = "easeOutBounce";
      
      public static const §[!]§:String = "easeInOutBounce";
      
      public static const §==§:String = "easeOutInBounce";
      
      private static var §#!n§:Dictionary;
       
      
      public function §<I§()
      {
         super();
         throw new §8"$§();
      }
      
      public static function §2!y§(param1:String) : Function
      {
         if(§#!n§ == null)
         {
            §5"7§();
         }
         return §#!n§[param1];
      }
      
      public static function § $§(param1:String, param2:Function) : void
      {
         if(§#!n§ == null)
         {
            §5"7§();
         }
         §#!n§[param1] = param2;
      }
      
      private static function §5"7§() : void
      {
         §#!n§ = new Dictionary();
         § $§(§ !5§,linear);
         § $§(§8!2§,easeIn);
         § $§(§+9§,easeOut);
         § $§(§32§,easeInOut);
         § $§(§&M§,easeOutIn);
         § $§(§+!z§,easeInBack);
         § $§(§5u§,easeOutBack);
         § $§(§0I§,easeInOutBack);
         § $§(§,!!§,easeOutInBack);
         § $§(§?_§,easeInElastic);
         § $§(§<!&§,easeOutElastic);
         § $§(§=!T§,easeInOutElastic);
         § $§(§7e§,easeOutInElastic);
         § $§(§?!J§,easeInBounce);
         § $§(§>W§,easeOutBounce);
         § $§(§[!]§,easeInOutBounce);
         § $§(§==§,easeOutInBounce);
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
         return §@d§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §@d§(easeOut,easeIn,param1);
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
         return §@d§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §@d§(easeOutBack,easeInBack,param1);
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
         return §@d§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §@d§(easeOutElastic,easeInElastic,param1);
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
         return §@d§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §@d§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §@d§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
