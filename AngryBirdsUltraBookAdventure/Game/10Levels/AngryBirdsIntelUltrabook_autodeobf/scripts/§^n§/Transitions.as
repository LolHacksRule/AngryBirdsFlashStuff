package §^n§
{
   import §+8§.§0K§;
   import flash.utils.Dictionary;
   
   public class Transitions
   {
      
      public static const §1h§:String = "linear";
      
      public static const §@Z§:String = "easeIn";
      
      public static const §[X§:String = "easeOut";
      
      public static const §?;§:String = "easeInOut";
      
      public static const §0=§:String = "easeOutIn";
      
      public static const §=!E§:String = "easeInBack";
      
      public static const §6!R§:String = "easeOutBack";
      
      public static const §+M§:String = "easeInOutBack";
      
      public static const §"!+§:String = "easeOutInBack";
      
      public static const §4!8§:String = "easeInElastic";
      
      public static const §+!1§:String = "easeOutElastic";
      
      public static const §'!,§:String = "easeInOutElastic";
      
      public static const §8"§:String = "easeOutInElastic";
      
      public static const §3e§:String = "easeInBounce";
      
      public static const §3!U§:String = "easeOutBounce";
      
      public static const §9!f§:String = "easeInOutBounce";
      
      public static const §5i§:String = "easeOutInBounce";
      
      private static var §!!?§:Dictionary;
       
      
      public function Transitions()
      {
         super();
         throw new §0K§();
      }
      
      public static function §5T§(param1:String) : Function
      {
         if(§!!?§ == null)
         {
            §>R§();
         }
         return §!!?§[param1];
      }
      
      public static function §false§(param1:String, param2:Function) : void
      {
         if(§!!?§ == null)
         {
            §>R§();
         }
         §!!?§[param1] = param2;
      }
      
      private static function §>R§() : void
      {
         §!!?§ = new Dictionary();
         §false§(§1h§,linear);
         §false§(§@Z§,easeIn);
         §false§(§[X§,easeOut);
         §false§(§?;§,easeInOut);
         §false§(§0=§,easeOutIn);
         §false§(§=!E§,easeInBack);
         §false§(§6!R§,easeOutBack);
         §false§(§+M§,easeInOutBack);
         §false§(§"!+§,easeOutInBack);
         §false§(§4!8§,easeInElastic);
         §false§(§+!1§,easeOutElastic);
         §false§(§'!,§,easeInOutElastic);
         §false§(§8"§,easeOutInElastic);
         §false§(§3e§,easeInBounce);
         §false§(§3!U§,easeOutBounce);
         §false§(§9!f§,easeInOutBounce);
         §false§(§5i§,easeOutInBounce);
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
         return § U§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return § U§(easeOut,easeIn,param1);
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
         return § U§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return § U§(easeOutBack,easeInBack,param1);
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
         return § U§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return § U§(easeOutElastic,easeInElastic,param1);
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
         return § U§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return § U§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function § U§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
