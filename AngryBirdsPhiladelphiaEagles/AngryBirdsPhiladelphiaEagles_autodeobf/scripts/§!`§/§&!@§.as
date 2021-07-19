package §!`§
{
   import §7!O§.§^!§;
   import flash.utils.Dictionary;
   
   public class §&!@§
   {
      
      public static const §<4§:String = "linear";
      
      public static const §??§:String = "easeIn";
      
      public static const §"a§:String = "easeOut";
      
      public static const §[!+§:String = "easeInOut";
      
      public static const §-!>§:String = "easeOutIn";
      
      public static const §3c§:String = "easeInBack";
      
      public static const §>!?§:String = "easeOutBack";
      
      public static const §^Y§:String = "easeInOutBack";
      
      public static const §?u§:String = "easeOutInBack";
      
      public static const §7h§:String = "easeInElastic";
      
      public static const §+K§:String = "easeOutElastic";
      
      public static const §5d§:String = "easeInOutElastic";
      
      public static const §&!"§:String = "easeOutInElastic";
      
      public static const §&!G§:String = "easeInBounce";
      
      public static const §@!O§:String = "easeOutBounce";
      
      public static const §1^§:String = "easeInOutBounce";
      
      public static const §<[§:String = "easeOutInBounce";
      
      private static var §<g§:Dictionary;
       
      
      public function §&!@§()
      {
         super();
         throw new §^!§();
      }
      
      public static function §^n§(param1:String) : Function
      {
         if(§<g§ == null)
         {
            §case§();
         }
         return §<g§[param1];
      }
      
      public static function §`Q§(param1:String, param2:Function) : void
      {
         if(§<g§ == null)
         {
            §case§();
         }
         §<g§[param1] = param2;
      }
      
      private static function §case§() : void
      {
         §<g§ = new Dictionary();
         §`Q§(§<4§,linear);
         §`Q§(§??§,easeIn);
         §`Q§(§"a§,easeOut);
         §`Q§(§[!+§,easeInOut);
         §`Q§(§-!>§,easeOutIn);
         §`Q§(§3c§,easeInBack);
         §`Q§(§>!?§,easeOutBack);
         §`Q§(§^Y§,easeInOutBack);
         §`Q§(§?u§,easeOutInBack);
         §`Q§(§7h§,easeInElastic);
         §`Q§(§+K§,easeOutElastic);
         §`Q§(§5d§,easeInOutElastic);
         §`Q§(§&!"§,easeOutInElastic);
         §`Q§(§&!G§,easeInBounce);
         §`Q§(§@!O§,easeOutBounce);
         §`Q§(§1^§,easeInOutBounce);
         §`Q§(§<[§,easeOutInBounce);
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
         return §+B§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §+B§(easeOut,easeIn,param1);
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
         return §+B§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §+B§(easeOutBack,easeInBack,param1);
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
         return §+B§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §+B§(easeOutElastic,easeInElastic,param1);
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
         return §+B§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §+B§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §+B§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
