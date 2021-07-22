package §0g§
{
   import §]#a§.§]$5§;
   import flash.utils.Dictionary;
   
   public class §?!e§
   {
      
      public static const §8!F§:String = "linear";
      
      public static const §2$!§:String = "easeIn";
      
      public static const §9I§:String = "easeOut";
      
      public static const §1" §:String = "easeInOut";
      
      public static const §+#n§:String = "easeOutIn";
      
      public static const §5$<§:String = "easeInBack";
      
      public static const §4$"§:String = "easeOutBack";
      
      public static const §-"!§:String = "easeInOutBack";
      
      public static const §+#V§:String = "easeOutInBack";
      
      public static const §;!h§:String = "easeInElastic";
      
      public static const §!"?§:String = "easeOutElastic";
      
      public static const §-l§:String = "easeInOutElastic";
      
      public static const §2#Y§:String = "easeOutInElastic";
      
      public static const §^"-§:String = "easeInBounce";
      
      public static const §3!0§:String = "easeOutBounce";
      
      public static const §+#e§:String = "easeInOutBounce";
      
      public static const §,!?§:String = "easeOutInBounce";
      
      private static var § true§:Dictionary;
       
      
      public function §?!e§()
      {
         super();
         throw new §]$5§();
      }
      
      public static function §="T§(param1:String) : Function
      {
         if(§ true§ == null)
         {
            §;§();
         }
         return § true§[param1];
      }
      
      public static function §"a§(param1:String, param2:Function) : void
      {
         if(§ true§ == null)
         {
            §;§();
         }
         § true§[param1] = param2;
      }
      
      private static function §;§() : void
      {
         § true§ = new Dictionary();
         §"a§(§8!F§,linear);
         §"a§(§2$!§,easeIn);
         §"a§(§9I§,easeOut);
         §"a§(§1" §,easeInOut);
         §"a§(§+#n§,easeOutIn);
         §"a§(§5$<§,easeInBack);
         §"a§(§4$"§,easeOutBack);
         §"a§(§-"!§,easeInOutBack);
         §"a§(§+#V§,easeOutInBack);
         §"a§(§;!h§,easeInElastic);
         §"a§(§!"?§,easeOutElastic);
         §"a§(§-l§,easeInOutElastic);
         §"a§(§2#Y§,easeOutInElastic);
         §"a§(§^"-§,easeInBounce);
         §"a§(§3!0§,easeOutBounce);
         §"a§(§+#e§,easeInOutBounce);
         §"a§(§,!?§,easeOutInBounce);
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
         return §&p§(easeIn,easeOut,param1);
      }
      
      protected static function easeOutIn(param1:Number) : Number
      {
         return §&p§(easeOut,easeIn,param1);
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
         return §&p§(easeInBack,easeOutBack,param1);
      }
      
      protected static function easeOutInBack(param1:Number) : Number
      {
         return §&p§(easeOutBack,easeInBack,param1);
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
         return §&p§(easeInElastic,easeOutElastic,param1);
      }
      
      protected static function easeOutInElastic(param1:Number) : Number
      {
         return §&p§(easeOutElastic,easeInElastic,param1);
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
         return §&p§(easeInBounce,easeOutBounce,param1);
      }
      
      protected static function easeOutInBounce(param1:Number) : Number
      {
         return §&p§(easeOutBounce,easeInBounce,param1);
      }
      
      protected static function §&p§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
