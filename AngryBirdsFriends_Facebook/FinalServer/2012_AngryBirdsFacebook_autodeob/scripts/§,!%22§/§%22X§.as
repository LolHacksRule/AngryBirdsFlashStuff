package §,!"§
{
   import §;5§.§4"+§;
   import flash.utils.Dictionary;
   
   public class §"X§
   {
      
      public static const §1R§:String = "linear";
      
      public static const §[!6§:String = "easeIn";
      
      public static const §0">§:String = "easeOut";
      
      public static const §<!z§:String = "easeInOut";
      
      public static const §-<§:String = "easeOutIn";
      
      public static const §<![§:String = "easeInBack";
      
      public static const §-l§:String = "easeOutBack";
      
      public static const §<!=§:String = "easeInOutBack";
      
      public static const §5!V§:String = "easeOutInBack";
      
      public static const §]!O§:String = "easeInElastic";
      
      public static const §'!C§:String = "easeOutElastic";
      
      public static const §=!N§:String = "easeInOutElastic";
      
      public static const §#!X§:String = "easeOutInElastic";
      
      public static const §4T§:String = "easeInBounce";
      
      public static const §1!f§:String = "easeOutBounce";
      
      public static const §^m§:String = "easeInOutBounce";
      
      public static const §6a§:String = "easeOutInBounce";
      
      private static var §'"?§:Dictionary;
       
      
      public function §"X§()
      {
         super();
         throw new §4"+§();
      }
      
      public static function §<!#§(param1:String) : Function
      {
         if(§'"?§ == null)
         {
            §6!7§();
         }
         return §'"?§[param1];
      }
      
      public static function §@!D§(param1:String, param2:Function) : void
      {
         if(§'"?§ == null)
         {
            §6!7§();
         }
         §'"?§[param1] = param2;
      }
      
      private static function §6!7§() : void
      {
         §'"?§ = new Dictionary();
         §@!D§(§1R§,linear);
         §@!D§(§[!6§,easeIn);
         §@!D§(§0">§,easeOut);
         §@!D§(§<!z§,easeInOut);
         §@!D§(§-<§,easeOutIn);
         §@!D§(§<![§,easeInBack);
         §@!D§(§-l§,easeOutBack);
         §@!D§(§<!=§,easeInOutBack);
         §@!D§(§5!V§,easeOutInBack);
         §@!D§(§]!O§,easeInElastic);
         §@!D§(§'!C§,easeOutElastic);
         §@!D§(§=!N§,easeInOutElastic);
         §@!D§(§#!X§,easeOutInElastic);
         §@!D§(§4T§,easeInBounce);
         §@!D§(§1!f§,easeOutBounce);
         §@!D§(§^m§,easeInOutBounce);
         §@!D§(§6a§,easeOutInBounce);
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
         return §?!!§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §?!!§(easeOut,easeIn,param1);
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
         return §?!!§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §?!!§(easeOutBack,easeInBack,param1);
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
         return §?!!§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §?!!§(easeOutElastic,easeInElastic,param1);
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
         return §?!!§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §?!!§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §?!!§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
