package §7!8§
{
   import §2"7§.§4"A§;
   import flash.utils.Dictionary;
   
   public class §;E§
   {
      
      public static const §2![§:String = "linear";
      
      public static const §8w§:String = "easeIn";
      
      public static const §5!A§:String = "easeOut";
      
      public static const §^!p§:String = "easeInOut";
      
      public static const §8!`§:String = "easeOutIn";
      
      public static const §;!§:String = "easeInBack";
      
      public static const §62§:String = "easeOutBack";
      
      public static const §5!§:String = "easeInOutBack";
      
      public static const §>!_§:String = "easeOutInBack";
      
      public static const §>"'§:String = "easeInElastic";
      
      public static const §]q§:String = "easeOutElastic";
      
      public static const §"!x§:String = "easeInOutElastic";
      
      public static const §?!q§:String = "easeOutInElastic";
      
      public static const §6!M§:String = "easeInBounce";
      
      public static const §^!2§:String = "easeOutBounce";
      
      public static const §4"<§:String = "easeInOutBounce";
      
      public static const §-h§:String = "easeOutInBounce";
      
      private static var §#!a§:Dictionary;
       
      
      public function §;E§()
      {
         super();
         throw new §4"A§();
      }
      
      public static function §!7§(param1:String) : Function
      {
         if(§#!a§ == null)
         {
            §7!<§();
         }
         return §#!a§[param1];
      }
      
      public static function §!!b§(param1:String, param2:Function) : void
      {
         if(§#!a§ == null)
         {
            §7!<§();
         }
         §#!a§[param1] = param2;
      }
      
      private static function §7!<§() : void
      {
         §#!a§ = new Dictionary();
         §!!b§(§2![§,linear);
         §!!b§(§8w§,easeIn);
         §!!b§(§5!A§,easeOut);
         §!!b§(§^!p§,easeInOut);
         §!!b§(§8!`§,easeOutIn);
         §!!b§(§;!§,easeInBack);
         §!!b§(§62§,easeOutBack);
         §!!b§(§5!§,easeInOutBack);
         §!!b§(§>!_§,easeOutInBack);
         §!!b§(§>"'§,easeInElastic);
         §!!b§(§]q§,easeOutElastic);
         §!!b§(§"!x§,easeInOutElastic);
         §!!b§(§?!q§,easeOutInElastic);
         §!!b§(§6!M§,easeInBounce);
         §!!b§(§^!2§,easeOutBounce);
         §!!b§(§4"<§,easeInOutBounce);
         §!!b§(§-h§,easeOutInBounce);
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
         return §^!k§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §^!k§(easeOut,easeIn,param1);
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
         return §^!k§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §^!k§(easeOutBack,easeInBack,param1);
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
         return §^!k§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §^!k§(easeOutElastic,easeInElastic,param1);
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
         return §^!k§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §^!k§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §^!k§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
