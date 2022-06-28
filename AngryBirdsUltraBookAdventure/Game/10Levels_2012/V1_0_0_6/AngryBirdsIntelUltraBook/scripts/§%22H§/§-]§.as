package §"H§
{
   import §4!S§.§#!s§;
   import flash.utils.Dictionary;
   
   public class §-]§
   {
      
      public static const §7Q§:String = "linear";
      
      public static const §&R§:String = "easeIn";
      
      public static const §;8§:String = "easeOut";
      
      public static const §0!X§:String = "easeInOut";
      
      public static const § !l§:String = "easeOutIn";
      
      public static const §2X§:String = "easeInBack";
      
      public static const §^!H§:String = "easeOutBack";
      
      public static const §4"§:String = "easeInOutBack";
      
      public static const §<!I§:String = "easeOutInBack";
      
      public static const §#N§:String = "easeInElastic";
      
      public static const §&<§:String = "easeOutElastic";
      
      public static const §`!#§:String = "easeInOutElastic";
      
      public static const §>x§:String = "easeOutInElastic";
      
      public static const §9e§:String = "easeInBounce";
      
      public static const §#o§:String = "easeOutBounce";
      
      public static const §#!0§:String = "easeInOutBounce";
      
      public static const §?d§:String = "easeOutInBounce";
      
      private static var §%H§:Dictionary;
       
      
      public function §-]§()
      {
         super();
         throw new §#!s§();
      }
      
      public static function §!M§(param1:String) : Function
      {
         if(§%H§ == null)
         {
            §]g§();
         }
         return §%H§[param1];
      }
      
      public static function §`R§(param1:String, param2:Function) : void
      {
         if(§%H§ == null)
         {
            §]g§();
         }
         §%H§[param1] = param2;
      }
      
      private static function §]g§() : void
      {
         §%H§ = new Dictionary();
         §`R§(§7Q§,linear);
         §`R§(§&R§,easeIn);
         §`R§(§;8§,easeOut);
         §`R§(§0!X§,easeInOut);
         §`R§(§ !l§,easeOutIn);
         §`R§(§2X§,easeInBack);
         §`R§(§^!H§,easeOutBack);
         §`R§(§4"§,easeInOutBack);
         §`R§(§<!I§,easeOutInBack);
         §`R§(§#N§,easeInElastic);
         §`R§(§&<§,easeOutElastic);
         §`R§(§`!#§,easeInOutElastic);
         §`R§(§>x§,easeOutInElastic);
         §`R§(§9e§,easeInBounce);
         §`R§(§#o§,easeOutBounce);
         §`R§(§#!0§,easeInOutBounce);
         §`R§(§?d§,easeOutInBounce);
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
         return §5v§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §5v§(easeOut,easeIn,param1);
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
         return §5v§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §5v§(easeOutBack,easeInBack,param1);
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
         return §5v§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §5v§(easeOutElastic,easeInElastic,param1);
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
         return §5v§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §5v§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §5v§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
