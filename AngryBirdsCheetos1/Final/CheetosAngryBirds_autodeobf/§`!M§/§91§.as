package §`!M§
{
   import §=!S§.§3[§;
   import flash.utils.Dictionary;
   
   public class §91§
   {
      
      public static const §[!]§:String = "linear";
      
      public static const §,3§:String = "easeIn";
      
      public static const §9!"§:String = "easeOut";
      
      public static const §8Q§:String = "easeInOut";
      
      public static const §>G§:String = "easeOutIn";
      
      public static const §@a§:String = "easeInBack";
      
      public static const §0Y§:String = "easeOutBack";
      
      public static const §[,§:String = "easeInOutBack";
      
      public static const §6!9§:String = "easeOutInBack";
      
      public static const §6!W§:String = "easeInElastic";
      
      public static const §=c§:String = "easeOutElastic";
      
      public static const §1!B§:String = "easeInOutElastic";
      
      public static const §!!T§:String = "easeOutInElastic";
      
      public static const §9!Q§:String = "easeInBounce";
      
      public static const §-!0§:String = "easeOutBounce";
      
      public static const §;P§:String = "easeInOutBounce";
      
      public static const §4!J§:String = "easeOutInBounce";
      
      private static var §4%§:Dictionary;
       
      
      public function §91§()
      {
         super();
         throw new §3[§();
      }
      
      public static function §=!0§(param1:String) : Function
      {
         if(§4%§ == null)
         {
            §-§();
         }
         return §4%§[param1];
      }
      
      public static function §4H§(param1:String, param2:Function) : void
      {
         if(§4%§ == null)
         {
            §-§();
         }
         §4%§[param1] = param2;
      }
      
      private static function §-§() : void
      {
         §4%§ = new Dictionary();
         §4H§(§[!]§,linear);
         §4H§(§,3§,easeIn);
         §4H§(§9!"§,easeOut);
         §4H§(§8Q§,easeInOut);
         §4H§(§>G§,easeOutIn);
         §4H§(§@a§,easeInBack);
         §4H§(§0Y§,easeOutBack);
         §4H§(§[,§,easeInOutBack);
         §4H§(§6!9§,easeOutInBack);
         §4H§(§6!W§,easeInElastic);
         §4H§(§=c§,easeOutElastic);
         §4H§(§1!B§,easeInOutElastic);
         §4H§(§!!T§,easeOutInElastic);
         §4H§(§9!Q§,easeInBounce);
         §4H§(§-!0§,easeOutBounce);
         §4H§(§;P§,easeInOutBounce);
         §4H§(§4!J§,easeOutInBounce);
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
         return §?L§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §?L§(easeOut,easeIn,param1);
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
         return §?L§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §?L§(easeOutBack,easeInBack,param1);
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
         return §?L§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §?L§(easeOutElastic,easeInElastic,param1);
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
         return §?L§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §?L§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §?L§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
