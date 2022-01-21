package §![§
{
   import §^!L§.§5H§;
   import flash.utils.Dictionary;
   
   public class § !#§
   {
      
      public static const §1!]§:String = "linear";
      
      public static const §`u§:String = "easeIn";
      
      public static const §4!G§:String = "easeOut";
      
      public static const §7!p§:String = "easeInOut";
      
      public static const §'K§:String = "easeOutIn";
      
      public static const §@!e§:String = "easeInBack";
      
      public static const §4g§:String = "easeOutBack";
      
      public static const §?G§:String = "easeInOutBack";
      
      public static const §8!l§:String = "easeOutInBack";
      
      public static const §1v§:String = "easeInElastic";
      
      public static const §1!R§:String = "easeOutElastic";
      
      public static const §@a§:String = "easeInOutElastic";
      
      public static const §00§:String = "easeOutInElastic";
      
      public static const §'!i§:String = "easeInBounce";
      
      public static const §2S§:String = "easeOutBounce";
      
      public static const §&X§:String = "easeInOutBounce";
      
      public static const §]6§:String = "easeOutInBounce";
      
      private static var §3!g§:Dictionary;
       
      
      public function § !#§()
      {
         super();
         throw new §5H§();
      }
      
      public static function §%!X§(param1:String) : Function
      {
         if(§3!g§ == null)
         {
            §;n§();
         }
         return §3!g§[param1];
      }
      
      public static function §[N§(param1:String, param2:Function) : void
      {
         if(§3!g§ == null)
         {
            §;n§();
         }
         §3!g§[param1] = param2;
      }
      
      private static function §;n§() : void
      {
         §3!g§ = new Dictionary();
         §[N§(§1!]§,linear);
         §[N§(§`u§,easeIn);
         §[N§(§4!G§,easeOut);
         §[N§(§7!p§,easeInOut);
         §[N§(§'K§,easeOutIn);
         §[N§(§@!e§,easeInBack);
         §[N§(§4g§,easeOutBack);
         §[N§(§?G§,easeInOutBack);
         §[N§(§8!l§,easeOutInBack);
         §[N§(§1v§,easeInElastic);
         §[N§(§1!R§,easeOutElastic);
         §[N§(§@a§,easeInOutElastic);
         §[N§(§00§,easeOutInElastic);
         §[N§(§'!i§,easeInBounce);
         §[N§(§2S§,easeOutBounce);
         §[N§(§&X§,easeInOutBounce);
         §[N§(§]6§,easeOutInBounce);
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
         return §-u§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §-u§(easeOut,easeIn,param1);
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
         return §-u§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §-u§(easeOutBack,easeInBack,param1);
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
         return §-u§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §-u§(easeOutElastic,easeInElastic,param1);
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
         return §-u§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §-u§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §-u§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
