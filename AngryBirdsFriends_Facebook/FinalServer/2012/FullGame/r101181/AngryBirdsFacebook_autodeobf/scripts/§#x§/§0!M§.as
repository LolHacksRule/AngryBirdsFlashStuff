package §#x§
{
   import §&!-§.§+#§;
   import flash.utils.Dictionary;
   
   public class §0!M§
   {
      
      public static const §1!8§:String = "linear";
      
      public static const §8!O§:String = "easeIn";
      
      public static const §"u§:String = "easeOut";
      
      public static const §=I§:String = "easeInOut";
      
      public static const §6y§:String = "easeOutIn";
      
      public static const §@!I§:String = "easeInBack";
      
      public static const § if§:String = "easeOutBack";
      
      public static const §0H§:String = "easeInOutBack";
      
      public static const §?!&§:String = "easeOutInBack";
      
      public static const §,J§:String = "easeInElastic";
      
      public static const §`!J§:String = "easeOutElastic";
      
      public static const §<§:String = "easeInOutElastic";
      
      public static const §&!$§:String = "easeOutInElastic";
      
      public static const §6!i§:String = "easeInBounce";
      
      public static const §7"1§:String = "easeOutBounce";
      
      public static const §+A§:String = "easeInOutBounce";
      
      public static const §8>§:String = "easeOutInBounce";
      
      private static var §<s§:Dictionary;
       
      
      public function §0!M§()
      {
         super();
         throw new §+#§();
      }
      
      public static function § !E§(param1:String) : Function
      {
         if(§<s§ == null)
         {
            §8!B§();
         }
         return §<s§[param1];
      }
      
      public static function §]!R§(param1:String, param2:Function) : void
      {
         if(§<s§ == null)
         {
            §8!B§();
         }
         §<s§[param1] = param2;
      }
      
      private static function §8!B§() : void
      {
         §<s§ = new Dictionary();
         §]!R§(§1!8§,linear);
         §]!R§(§8!O§,easeIn);
         §]!R§(§"u§,easeOut);
         §]!R§(§=I§,easeInOut);
         §]!R§(§6y§,easeOutIn);
         §]!R§(§@!I§,easeInBack);
         §]!R§(§ if§,easeOutBack);
         §]!R§(§0H§,easeInOutBack);
         §]!R§(§?!&§,easeOutInBack);
         §]!R§(§,J§,easeInElastic);
         §]!R§(§`!J§,easeOutElastic);
         §]!R§(§<§,easeInOutElastic);
         §]!R§(§&!$§,easeOutInElastic);
         §]!R§(§6!i§,easeInBounce);
         §]!R§(§7"1§,easeOutBounce);
         §]!R§(§+A§,easeInOutBounce);
         §]!R§(§8>§,easeOutInBounce);
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
         return §3""§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §3""§(easeOut,easeIn,param1);
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
         return §3""§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §3""§(easeOutBack,easeInBack,param1);
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
         return §3""§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §3""§(easeOutElastic,easeInElastic,param1);
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
         return §3""§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §3""§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §3""§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
