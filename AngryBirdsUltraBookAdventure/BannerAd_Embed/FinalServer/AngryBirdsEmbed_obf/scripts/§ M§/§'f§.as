package § M§
{
   import §8k§.§@B§;
   import flash.utils.Dictionary;
   
   public class §'f§
   {
      
      public static const §7!A§:String = "linear";
      
      public static const §5!8§:String = "easeIn";
      
      public static const §!r§:String = "easeOut";
      
      public static const §'>§:String = "easeInOut";
      
      public static const §3!"§:String = "easeOutIn";
      
      public static const §[Q§:String = "easeInBack";
      
      public static const §^!;§:String = "easeOutBack";
      
      public static const §%Z§:String = "easeInOutBack";
      
      public static const §8b§:String = "easeOutInBack";
      
      public static const §?!8§:String = "easeInElastic";
      
      public static const §]3§:String = "easeOutElastic";
      
      public static const §+_§:String = "easeInOutElastic";
      
      public static const §#!2§:String = "easeOutInElastic";
      
      public static const §false§:String = "easeInBounce";
      
      public static const §6T§:String = "easeOutBounce";
      
      public static const §`,§:String = "easeInOutBounce";
      
      public static const §5]§:String = "easeOutInBounce";
      
      private static var §6R§:Dictionary;
       
      
      public function §'f§()
      {
         super();
         throw new §@B§();
      }
      
      public static function §+!0§(param1:String) : Function
      {
         if(§6R§ == null)
         {
            §2!;§();
         }
         return §6R§[param1];
      }
      
      public static function §5A§(param1:String, param2:Function) : void
      {
         if(§6R§ == null)
         {
            §2!;§();
         }
         §6R§[param1] = param2;
      }
      
      private static function §2!;§() : void
      {
         §6R§ = new Dictionary();
         §5A§(§7!A§,linear);
         §5A§(§5!8§,easeIn);
         §5A§(§!r§,easeOut);
         §5A§(§'>§,easeInOut);
         §5A§(§3!"§,easeOutIn);
         §5A§(§[Q§,easeInBack);
         §5A§(§^!;§,easeOutBack);
         §5A§(§%Z§,easeInOutBack);
         §5A§(§8b§,easeOutInBack);
         §5A§(§?!8§,easeInElastic);
         §5A§(§]3§,easeOutElastic);
         §5A§(§+_§,easeInOutElastic);
         §5A§(§#!2§,easeOutInElastic);
         §5A§(§false§,easeInBounce);
         §5A§(§6T§,easeOutBounce);
         §5A§(§`,§,easeInOutBounce);
         §5A§(§5]§,easeOutInBounce);
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
         return §2#§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §2#§(easeOut,easeIn,param1);
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
         return §2#§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §2#§(easeOutBack,easeInBack,param1);
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
         return §2#§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §2#§(easeOutElastic,easeInElastic,param1);
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
         return §2#§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §2#§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §2#§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
