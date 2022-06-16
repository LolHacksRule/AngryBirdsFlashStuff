package §[,§
{
   import §'#Z§.§"!v§;
   import flash.utils.Dictionary;
   
   public class §3$!§
   {
      
      public static const §"#9§:String = "linear";
      
      public static const §`!X§:String = "easeIn";
      
      public static const §!!D§:String = "easeOut";
      
      public static const §!#f§:String = "easeInOut";
      
      public static const §<$'§:String = "easeOutIn";
      
      public static const §6!7§:String = "easeInBack";
      
      public static const §]$2§:String = "easeOutBack";
      
      public static const §;y§:String = "easeInOutBack";
      
      public static const §>"y§:String = "easeOutInBack";
      
      public static const §7Q§:String = "easeInElastic";
      
      public static const §="]§:String = "easeOutElastic";
      
      public static const §[!u§:String = "easeInOutElastic";
      
      public static const §0"I§:String = "easeOutInElastic";
      
      public static const §?#Y§:String = "easeInBounce";
      
      public static const §`#c§:String = "easeOutBounce";
      
      public static const §5!S§:String = "easeInOutBounce";
      
      public static const §]"8§:String = "easeOutInBounce";
      
      private static var §-#6§:Dictionary;
       
      
      public function §3$!§()
      {
         super();
         throw new §"!v§();
      }
      
      public static function §7"4§(param1:String) : Function
      {
         if(§-#6§ == null)
         {
            §8F§();
         }
         return §-#6§[param1];
      }
      
      public static function §^#B§(param1:String, param2:Function) : void
      {
         if(§-#6§ == null)
         {
            §8F§();
         }
         §-#6§[param1] = param2;
      }
      
      private static function §8F§() : void
      {
         §-#6§ = new Dictionary();
         §^#B§(§"#9§,linear);
         §^#B§(§`!X§,easeIn);
         §^#B§(§!!D§,easeOut);
         §^#B§(§!#f§,easeInOut);
         §^#B§(§<$'§,easeOutIn);
         §^#B§(§6!7§,easeInBack);
         §^#B§(§]$2§,easeOutBack);
         §^#B§(§;y§,easeInOutBack);
         §^#B§(§>"y§,easeOutInBack);
         §^#B§(§7Q§,easeInElastic);
         §^#B§(§="]§,easeOutElastic);
         §^#B§(§[!u§,easeInOutElastic);
         §^#B§(§0"I§,easeOutInElastic);
         §^#B§(§?#Y§,easeInBounce);
         §^#B§(§`#c§,easeOutBounce);
         §^#B§(§5!S§,easeInOutBounce);
         §^#B§(§]"8§,easeOutInBounce);
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
         return §&!I§(easeIn,easeOut,param1);
      }
      
      protected static function easeOutIn(param1:Number) : Number
      {
         return §&!I§(easeOut,easeIn,param1);
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
         return §&!I§(easeInBack,easeOutBack,param1);
      }
      
      protected static function easeOutInBack(param1:Number) : Number
      {
         return §&!I§(easeOutBack,easeInBack,param1);
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
         return §&!I§(easeInElastic,easeOutElastic,param1);
      }
      
      protected static function easeOutInElastic(param1:Number) : Number
      {
         return §&!I§(easeOutElastic,easeInElastic,param1);
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
         return §&!I§(easeInBounce,easeOutBounce,param1);
      }
      
      protected static function easeOutInBounce(param1:Number) : Number
      {
         return §&!I§(easeOutBounce,easeInBounce,param1);
      }
      
      protected static function §&!I§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
