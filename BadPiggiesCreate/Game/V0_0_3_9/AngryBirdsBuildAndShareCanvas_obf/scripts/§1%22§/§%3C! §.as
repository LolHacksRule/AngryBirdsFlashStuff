package §1"§
{
   import §3k§.§6!9§;
   import flash.utils.Dictionary;
   
   public class §<! §
   {
      
      public static const §^9§:String = "linear";
      
      public static const §9!H§:String = "easeIn";
      
      public static const §^a§:String = "easeOut";
      
      public static const §6!_§:String = "easeInOut";
      
      public static const §'1§:String = "easeOutIn";
      
      public static const §?J§:String = "easeInBack";
      
      public static const §8&§:String = "easeOutBack";
      
      public static const §-]§:String = "easeInOutBack";
      
      public static const §<"§:String = "easeOutInBack";
      
      public static const §=!n§:String = "easeInElastic";
      
      public static const §-!w§:String = "easeOutElastic";
      
      public static const §2"!§:String = "easeInOutElastic";
      
      public static const § !H§:String = "easeOutInElastic";
      
      public static const §!!+§:String = "easeInBounce";
      
      public static const §1!Y§:String = "easeOutBounce";
      
      public static const §+"&§:String = "easeInOutBounce";
      
      public static const §;"5§:String = "easeOutInBounce";
      
      private static var §>X§:Dictionary;
       
      
      public function §<! §()
      {
         super();
         throw new §6!9§();
      }
      
      public static function §&r§(param1:String) : Function
      {
         if(§>X§ == null)
         {
            §09§();
         }
         return §>X§[param1];
      }
      
      public static function §]D§(param1:String, param2:Function) : void
      {
         if(§>X§ == null)
         {
            §09§();
         }
         §>X§[param1] = param2;
      }
      
      private static function §09§() : void
      {
         §>X§ = new Dictionary();
         §]D§(§^9§,linear);
         §]D§(§9!H§,easeIn);
         §]D§(§^a§,easeOut);
         §]D§(§6!_§,easeInOut);
         §]D§(§'1§,easeOutIn);
         §]D§(§?J§,easeInBack);
         §]D§(§8&§,easeOutBack);
         §]D§(§-]§,easeInOutBack);
         §]D§(§<"§,easeOutInBack);
         §]D§(§=!n§,easeInElastic);
         §]D§(§-!w§,easeOutElastic);
         §]D§(§2"!§,easeInOutElastic);
         §]D§(§ !H§,easeOutInElastic);
         §]D§(§!!+§,easeInBounce);
         §]D§(§1!Y§,easeOutBounce);
         §]D§(§+"&§,easeInOutBounce);
         §]D§(§;"5§,easeOutInBounce);
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
         return §>!j§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §>!j§(easeOut,easeIn,param1);
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
         return §>!j§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §>!j§(easeOutBack,easeInBack,param1);
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
         return §>!j§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §>!j§(easeOutElastic,easeInElastic,param1);
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
         return §>!j§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §>!j§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §>!j§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
