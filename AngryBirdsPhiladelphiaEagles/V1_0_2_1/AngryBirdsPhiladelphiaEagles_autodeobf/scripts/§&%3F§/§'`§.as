package §&?§
{
   import §=!C§.§ set§;
   import flash.utils.Dictionary;
   
   public class §'`§
   {
      
      public static const §2!,§:String = "linear";
      
      public static const § D§:String = "easeIn";
      
      public static const §3Z§:String = "easeOut";
      
      public static const §9!1§:String = "easeInOut";
      
      public static const §,y§:String = "easeOutIn";
      
      public static const §82§:String = "easeInBack";
      
      public static const §]"§:String = "easeOutBack";
      
      public static const §!!A§:String = "easeInOutBack";
      
      public static const §5!O§:String = "easeOutInBack";
      
      public static const §6M§:String = "easeInElastic";
      
      public static const §@N§:String = "easeOutElastic";
      
      public static const §>^§:String = "easeInOutElastic";
      
      public static const §!X§:String = "easeOutInElastic";
      
      public static const §^!A§:String = "easeInBounce";
      
      public static const §0k§:String = "easeOutBounce";
      
      public static const §[#§:String = "easeInOutBounce";
      
      public static const §8N§:String = "easeOutInBounce";
      
      private static var §=7§:Dictionary;
       
      
      public function §'`§()
      {
         super();
         throw new § set§();
      }
      
      public static function §<j§(param1:String) : Function
      {
         if(§=7§ == null)
         {
            §<%§();
         }
         return §=7§[param1];
      }
      
      public static function §7O§(param1:String, param2:Function) : void
      {
         if(§=7§ == null)
         {
            §<%§();
         }
         §=7§[param1] = param2;
      }
      
      private static function §<%§() : void
      {
         §=7§ = new Dictionary();
         §7O§(§2!,§,linear);
         §7O§(§ D§,easeIn);
         §7O§(§3Z§,easeOut);
         §7O§(§9!1§,easeInOut);
         §7O§(§,y§,easeOutIn);
         §7O§(§82§,easeInBack);
         §7O§(§]"§,easeOutBack);
         §7O§(§!!A§,easeInOutBack);
         §7O§(§5!O§,easeOutInBack);
         §7O§(§6M§,easeInElastic);
         §7O§(§@N§,easeOutElastic);
         §7O§(§>^§,easeInOutElastic);
         §7O§(§!X§,easeOutInElastic);
         §7O§(§^!A§,easeInBounce);
         §7O§(§0k§,easeOutBounce);
         §7O§(§[#§,easeInOutBounce);
         §7O§(§8N§,easeOutInBounce);
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
         return §[_§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §[_§(easeOut,easeIn,param1);
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
         return §[_§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §[_§(easeOutBack,easeInBack,param1);
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
         return §[_§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §[_§(easeOutElastic,easeInElastic,param1);
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
         return §[_§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §[_§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §[_§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
