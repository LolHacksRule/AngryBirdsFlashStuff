package §3A§
{
   import §#F§.§,!8§;
   import flash.utils.Dictionary;
   
   public class §#k§
   {
      
      public static const §7c§:String = "linear";
      
      public static const §9,§:String = "easeIn";
      
      public static const §]N§:String = "easeOut";
      
      public static const §^e§:String = "easeInOut";
      
      public static const §<0§:String = "easeOutIn";
      
      public static const §'!I§:String = "easeInBack";
      
      public static const §]x§:String = "easeOutBack";
      
      public static const §^P§:String = "easeInOutBack";
      
      public static const §9W§:String = "easeOutInBack";
      
      public static const §,7§:String = "easeInElastic";
      
      public static const §@!R§:String = "easeOutElastic";
      
      public static const §!!E§:String = "easeInOutElastic";
      
      public static const §2c§:String = "easeOutInElastic";
      
      public static const §-c§:String = "easeInBounce";
      
      public static const §6F§:String = "easeOutBounce";
      
      public static const §-!=§:String = "easeInOutBounce";
      
      public static const §!!T§:String = "easeOutInBounce";
      
      private static var §"!>§:Dictionary;
       
      
      public function §#k§()
      {
         super();
         throw new §,!8§();
      }
      
      public static function §2C§(param1:String) : Function
      {
         if(§"!>§ == null)
         {
            §`b§();
         }
         return §"!>§[param1];
      }
      
      public static function §!r§(param1:String, param2:Function) : void
      {
         if(§"!>§ == null)
         {
            §`b§();
         }
         §"!>§[param1] = param2;
      }
      
      private static function §`b§() : void
      {
         §"!>§ = new Dictionary();
         §!r§(§7c§,linear);
         §!r§(§9,§,easeIn);
         §!r§(§]N§,easeOut);
         §!r§(§^e§,easeInOut);
         §!r§(§<0§,easeOutIn);
         §!r§(§'!I§,easeInBack);
         §!r§(§]x§,easeOutBack);
         §!r§(§^P§,easeInOutBack);
         §!r§(§9W§,easeOutInBack);
         §!r§(§,7§,easeInElastic);
         §!r§(§@!R§,easeOutElastic);
         §!r§(§!!E§,easeInOutElastic);
         §!r§(§2c§,easeOutInElastic);
         §!r§(§-c§,easeInBounce);
         §!r§(§6F§,easeOutBounce);
         §!r§(§-!=§,easeInOutBounce);
         §!r§(§!!T§,easeOutInBounce);
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
         return §<!;§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §<!;§(easeOut,easeIn,param1);
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
         return §<!;§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §<!;§(easeOutBack,easeInBack,param1);
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
         return §<!;§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §<!;§(easeOutElastic,easeInElastic,param1);
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
         return §<!;§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §<!;§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §<!;§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
