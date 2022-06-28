package §2!9§
{
   import §"v§.§2!;§;
   import flash.utils.Dictionary;
   
   public class Transitions
   {
      
      public static const §>T§:String = "linear";
      
      public static const §^!A§:String = "easeIn";
      
      public static const §]U§:String = "easeOut";
      
      public static const §#4§:String = "easeInOut";
      
      public static const §-D§:String = "easeOutIn";
      
      public static const §6!i§:String = "easeInBack";
      
      public static const §-!1§:String = "easeOutBack";
      
      public static const §0t§:String = "easeInOutBack";
      
      public static const §<!f§:String = "easeOutInBack";
      
      public static const §7!M§:String = "easeInElastic";
      
      public static const §3U§:String = "easeOutElastic";
      
      public static const §9t§:String = "easeInOutElastic";
      
      public static const §=r§:String = "easeOutInElastic";
      
      public static const §!!A§:String = "easeInBounce";
      
      public static const §^t§:String = "easeOutBounce";
      
      public static const §8!Z§:String = "easeInOutBounce";
      
      public static const §?q§:String = "easeOutInBounce";
      
      private static var §%S§:Dictionary;
       
      
      public function Transitions()
      {
         super();
         throw new §2!;§();
      }
      
      public static function §;b§(param1:String) : Function
      {
         if(§%S§ == null)
         {
            §]!"§();
         }
         return §%S§[param1];
      }
      
      public static function § null§(param1:String, param2:Function) : void
      {
         if(§%S§ == null)
         {
            §]!"§();
         }
         §%S§[param1] = param2;
      }
      
      private static function §]!"§() : void
      {
         §%S§ = new Dictionary();
         § null§(§>T§,linear);
         § null§(§^!A§,easeIn);
         § null§(§]U§,easeOut);
         § null§(§#4§,easeInOut);
         § null§(§-D§,easeOutIn);
         § null§(§6!i§,easeInBack);
         § null§(§-!1§,easeOutBack);
         § null§(§0t§,easeInOutBack);
         § null§(§<!f§,easeOutInBack);
         § null§(§7!M§,easeInElastic);
         § null§(§3U§,easeOutElastic);
         § null§(§9t§,easeInOutElastic);
         § null§(§=r§,easeOutInElastic);
         § null§(§!!A§,easeInBounce);
         § null§(§^t§,easeOutBounce);
         § null§(§8!Z§,easeInOutBounce);
         § null§(§?q§,easeOutInBounce);
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
         return §40§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §40§(easeOut,easeIn,param1);
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
         return §40§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §40§(easeOutBack,easeInBack,param1);
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
         return §40§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §40§(easeOutElastic,easeInElastic,param1);
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
         return §40§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §40§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §40§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
