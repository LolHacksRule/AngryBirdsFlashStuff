package §0K§
{
   import §7^§.§#U§;
   import flash.utils.Dictionary;
   
   public class §6p§
   {
      
      public static const § !O§:String = "linear";
      
      public static const §7S§:String = "easeIn";
      
      public static const §>!7§:String = "easeOut";
      
      public static const §2h§:String = "easeInOut";
      
      public static const §=?§:String = "easeOutIn";
      
      public static const §,! §:String = "easeInBack";
      
      public static const §>X§:String = "easeOutBack";
      
      public static const §4!A§:String = "easeInOutBack";
      
      public static const §?!"§:String = "easeOutInBack";
      
      public static const §;q§:String = "easeInElastic";
      
      public static const §@!7§:String = "easeOutElastic";
      
      public static const §-#§:String = "easeInOutElastic";
      
      public static const §6V§:String = "easeOutInElastic";
      
      public static const §0`§:String = "easeInBounce";
      
      public static const §0N§:String = "easeOutBounce";
      
      public static const §>4§:String = "easeInOutBounce";
      
      public static const §2%§:String = "easeOutInBounce";
      
      private static var §!w§:Dictionary;
       
      
      public function §6p§()
      {
         super();
         throw new §#U§();
      }
      
      public static function §5>§(param1:String) : Function
      {
         if(§!w§ == null)
         {
            §[R§();
         }
         return §!w§[param1];
      }
      
      public static function §0C§(param1:String, param2:Function) : void
      {
         if(§!w§ == null)
         {
            §[R§();
         }
         §!w§[param1] = param2;
      }
      
      private static function §[R§() : void
      {
         §!w§ = new Dictionary();
         §0C§(§ !O§,linear);
         §0C§(§7S§,easeIn);
         §0C§(§>!7§,easeOut);
         §0C§(§2h§,easeInOut);
         §0C§(§=?§,easeOutIn);
         §0C§(§,! §,easeInBack);
         §0C§(§>X§,easeOutBack);
         §0C§(§4!A§,easeInOutBack);
         §0C§(§?!"§,easeOutInBack);
         §0C§(§;q§,easeInElastic);
         §0C§(§@!7§,easeOutElastic);
         §0C§(§-#§,easeInOutElastic);
         §0C§(§6V§,easeOutInElastic);
         §0C§(§0`§,easeInBounce);
         §0C§(§0N§,easeOutBounce);
         §0C§(§>4§,easeInOutBounce);
         §0C§(§2%§,easeOutInBounce);
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
         return §;E§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §;E§(easeOut,easeIn,param1);
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
         return §;E§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §;E§(easeOutBack,easeInBack,param1);
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
         return §;E§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §;E§(easeOutElastic,easeInElastic,param1);
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
         return §;E§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §;E§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §;E§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
