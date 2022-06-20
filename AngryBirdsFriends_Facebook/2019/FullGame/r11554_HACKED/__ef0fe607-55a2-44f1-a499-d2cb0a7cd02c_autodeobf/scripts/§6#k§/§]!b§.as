package §6#k§
{
   import §3!z§.§`9§;
   import flash.utils.Dictionary;
   
   public class §]!b§
   {
      
      public static const §0#e§:String = "linear";
      
      public static const §7n§:String = "easeIn";
      
      public static const §2j§:String = "easeOut";
      
      public static const §^"l§:String = "easeInOut";
      
      public static const §7g§:String = "easeOutIn";
      
      public static const §2$+§:String = "easeInBack";
      
      public static const §^4§:String = "easeOutBack";
      
      public static const §"!c§:String = "easeInOutBack";
      
      public static const §2Z§:String = "easeOutInBack";
      
      public static const §`!5§:String = "easeInElastic";
      
      public static const §4#+§:String = "easeOutElastic";
      
      public static const §="§:String = "easeInOutElastic";
      
      public static const §=$%§:String = "easeOutInElastic";
      
      public static const §!!j§:String = "easeInBounce";
      
      public static const §[_§:String = "easeOutBounce";
      
      public static const §#"N§:String = "easeInOutBounce";
      
      public static const §]"o§:String = "easeOutInBounce";
      
      private static var §1"[§:Dictionary;
       
      
      public function §]!b§()
      {
         super();
         throw new §`9§();
      }
      
      public static function §4#?§(param1:String) : Function
      {
         if(§1"[§ == null)
         {
            §]!p§();
         }
         return §1"[§[param1];
      }
      
      public static function §=$A§(param1:String, param2:Function) : void
      {
         if(§1"[§ == null)
         {
            §]!p§();
         }
         §1"[§[param1] = param2;
      }
      
      private static function §]!p§() : void
      {
         §1"[§ = new Dictionary();
         §=$A§(§0#e§,linear);
         §=$A§(§7n§,easeIn);
         §=$A§(§2j§,easeOut);
         §=$A§(§^"l§,easeInOut);
         §=$A§(§7g§,easeOutIn);
         §=$A§(§2$+§,easeInBack);
         §=$A§(§^4§,easeOutBack);
         §=$A§(§"!c§,easeInOutBack);
         §=$A§(§2Z§,easeOutInBack);
         §=$A§(§`!5§,easeInElastic);
         §=$A§(§4#+§,easeOutElastic);
         §=$A§(§="§,easeInOutElastic);
         §=$A§(§=$%§,easeOutInElastic);
         §=$A§(§!!j§,easeInBounce);
         §=$A§(§[_§,easeOutBounce);
         §=$A§(§#"N§,easeInOutBounce);
         §=$A§(§]"o§,easeOutInBounce);
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
         return §9#"§(easeIn,easeOut,param1);
      }
      
      protected static function easeOutIn(param1:Number) : Number
      {
         return §9#"§(easeOut,easeIn,param1);
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
         return §9#"§(easeInBack,easeOutBack,param1);
      }
      
      protected static function easeOutInBack(param1:Number) : Number
      {
         return §9#"§(easeOutBack,easeInBack,param1);
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
         return §9#"§(easeInElastic,easeOutElastic,param1);
      }
      
      protected static function easeOutInElastic(param1:Number) : Number
      {
         return §9#"§(easeOutElastic,easeInElastic,param1);
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
         return §9#"§(easeInBounce,easeOutBounce,param1);
      }
      
      protected static function easeOutInBounce(param1:Number) : Number
      {
         return §9#"§(easeOutBounce,easeInBounce,param1);
      }
      
      protected static function §9#"§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
