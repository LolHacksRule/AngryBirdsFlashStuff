package §;"K§
{
   import §7v§.§7!W§;
   import flash.utils.Dictionary;
   
   public class §!l§
   {
      
      public static const §##f§:String = "linear";
      
      public static const §'"$§:String = "easeIn";
      
      public static const §!!'§:String = "easeOut";
      
      public static const §2"`§:String = "easeInOut";
      
      public static const §8K§:String = "easeOutIn";
      
      public static const §%0§:String = "easeInBack";
      
      public static const §3#V§:String = "easeOutBack";
      
      public static const §0J§:String = "easeInOutBack";
      
      public static const §^!T§:String = "easeOutInBack";
      
      public static const §1!O§:String = "easeInElastic";
      
      public static const §6"I§:String = "easeOutElastic";
      
      public static const §"$&§:String = "easeInOutElastic";
      
      public static const §&#I§:String = "easeOutInElastic";
      
      public static const §`"6§:String = "easeInBounce";
      
      public static const §+!+§:String = "easeOutBounce";
      
      public static const §5!H§:String = "easeInOutBounce";
      
      public static const §""J§:String = "easeOutInBounce";
      
      private static var §>#A§:Dictionary;
       
      
      public function §!l§()
      {
         super();
         throw new §7!W§();
      }
      
      public static function §<#9§(param1:String) : Function
      {
         if(§>#A§ == null)
         {
            §;"y§();
         }
         return §>#A§[param1];
      }
      
      public static function §"$§(param1:String, param2:Function) : void
      {
         if(§>#A§ == null)
         {
            §;"y§();
         }
         §>#A§[param1] = param2;
      }
      
      private static function §;"y§() : void
      {
         §>#A§ = new Dictionary();
         §"$§(§##f§,linear);
         §"$§(§'"$§,easeIn);
         §"$§(§!!'§,easeOut);
         §"$§(§2"`§,easeInOut);
         §"$§(§8K§,easeOutIn);
         §"$§(§%0§,easeInBack);
         §"$§(§3#V§,easeOutBack);
         §"$§(§0J§,easeInOutBack);
         §"$§(§^!T§,easeOutInBack);
         §"$§(§1!O§,easeInElastic);
         §"$§(§6"I§,easeOutElastic);
         §"$§(§"$&§,easeInOutElastic);
         §"$§(§&#I§,easeOutInElastic);
         §"$§(§`"6§,easeInBounce);
         §"$§(§+!+§,easeOutBounce);
         §"$§(§5!H§,easeInOutBounce);
         §"$§(§""J§,easeOutInBounce);
      }
      
      protected static function linear(param1:Number) : Number
      {
         return param1;
      }
      
      protected static function easeIn(param1:Number) : Number
      {
         return param1 * param1 * param1;
      }
      
      protected static function easeOut(param1:Number) : Number
      {
         var _loc2_:Number = param1 - 1;
         return _loc2_ * _loc2_ * _loc2_ + 1;
      }
      
      protected static function easeInOut(param1:Number) : Number
      {
         return §2"H§(easeIn,easeOut,param1);
      }
      
      protected static function easeOutIn(param1:Number) : Number
      {
         return §2"H§(easeOut,easeIn,param1);
      }
      
      protected static function easeInBack(param1:Number) : Number
      {
         return Math.pow(param1,2) * ((1.70158 + 1) * param1 - 1.70158);
      }
      
      protected static function easeOutBack(param1:Number) : Number
      {
         var _loc2_:Number = param1 - 1;
         return Math.pow(_loc2_,2) * ((1.70158 + 1) * _loc2_ + 1.70158) + 1;
      }
      
      protected static function easeInOutBack(param1:Number) : Number
      {
         return §2"H§(easeInBack,easeOutBack,param1);
      }
      
      protected static function easeOutInBack(param1:Number) : Number
      {
         return §2"H§(easeOutBack,easeInBack,param1);
      }
      
      protected static function easeInElastic(param1:Number) : Number
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
      
      protected static function easeOutElastic(param1:Number) : Number
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
      
      protected static function easeInOutElastic(param1:Number) : Number
      {
         return §2"H§(easeInElastic,easeOutElastic,param1);
      }
      
      protected static function easeOutInElastic(param1:Number) : Number
      {
         return §2"H§(easeOutElastic,easeInElastic,param1);
      }
      
      protected static function easeInBounce(param1:Number) : Number
      {
         return 1 - easeOutBounce(1 - param1);
      }
      
      protected static function easeOutBounce(param1:Number) : Number
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
      
      protected static function easeInOutBounce(param1:Number) : Number
      {
         return §2"H§(easeInBounce,easeOutBounce,param1);
      }
      
      protected static function easeOutInBounce(param1:Number) : Number
      {
         return §2"H§(easeOutBounce,easeInBounce,param1);
      }
      
      protected static function §2"H§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
