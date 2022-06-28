package §;v§
{
   import §@%§.§"m§;
   import flash.utils.Dictionary;
   
   public class Transitions
   {
      
      public static const §`8§:String = "linear";
      
      public static const §6!k§:String = "easeIn";
      
      public static const §77§:String = "easeOut";
      
      public static const §4!K§:String = "easeInOut";
      
      public static const §2z§:String = "easeOutIn";
      
      public static const §34§:String = "easeInBack";
      
      public static const §53§:String = "easeOutBack";
      
      public static const §2@§:String = "easeInOutBack";
      
      public static const §&u§:String = "easeOutInBack";
      
      public static const §=!=§:String = "easeInElastic";
      
      public static const §7!8§:String = "easeOutElastic";
      
      public static const §>`§:String = "easeInOutElastic";
      
      public static const §?!2§:String = "easeOutInElastic";
      
      public static const §71§:String = "easeInBounce";
      
      public static const §9o§:String = "easeOutBounce";
      
      public static const §=7§:String = "easeInOutBounce";
      
      public static const §=]§:String = "easeOutInBounce";
      
      private static var §`c§:Dictionary;
       
      
      public function Transitions()
      {
         super();
         throw new §"m§();
      }
      
      public static function §]S§(param1:String) : Function
      {
         if(§`c§ == null)
         {
            §5Z§();
         }
         return §`c§[param1];
      }
      
      public static function §=!,§(param1:String, param2:Function) : void
      {
         if(§`c§ == null)
         {
            §5Z§();
         }
         §`c§[param1] = param2;
      }
      
      private static function §5Z§() : void
      {
         §`c§ = new Dictionary();
         §=!,§(§`8§,linear);
         §=!,§(§6!k§,easeIn);
         §=!,§(§77§,easeOut);
         §=!,§(§4!K§,easeInOut);
         §=!,§(§2z§,easeOutIn);
         §=!,§(§34§,easeInBack);
         §=!,§(§53§,easeOutBack);
         §=!,§(§2@§,easeInOutBack);
         §=!,§(§&u§,easeOutInBack);
         §=!,§(§=!=§,easeInElastic);
         §=!,§(§7!8§,easeOutElastic);
         §=!,§(§>`§,easeInOutElastic);
         §=!,§(§?!2§,easeOutInElastic);
         §=!,§(§71§,easeInBounce);
         §=!,§(§9o§,easeOutBounce);
         §=!,§(§=7§,easeInOutBounce);
         §=!,§(§=]§,easeOutInBounce);
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
         return §!!F§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §!!F§(easeOut,easeIn,param1);
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
         return §!!F§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §!!F§(easeOutBack,easeInBack,param1);
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
         return §!!F§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §!!F§(easeOutElastic,easeInElastic,param1);
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
         return §!!F§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §!!F§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §!!F§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
