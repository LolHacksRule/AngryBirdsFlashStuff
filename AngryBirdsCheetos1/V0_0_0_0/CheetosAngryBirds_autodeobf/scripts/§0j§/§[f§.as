package §0j§
{
   import §"! §.§4p§;
   import flash.utils.Dictionary;
   
   public class §[f§
   {
      
      public static const §?!O§:String = "linear";
      
      public static const §7&§:String = "easeIn";
      
      public static const §3X§:String = "easeOut";
      
      public static const §7G§:String = "easeInOut";
      
      public static const §[q§:String = "easeOutIn";
      
      public static const §4!;§:String = "easeInBack";
      
      public static const §'q§:String = "easeOutBack";
      
      public static const §=B§:String = "easeInOutBack";
      
      public static const §%T§:String = "easeOutInBack";
      
      public static const § O§:String = "easeInElastic";
      
      public static const §?;§:String = "easeOutElastic";
      
      public static const §0!D§:String = "easeInOutElastic";
      
      public static const §;r§:String = "easeOutInElastic";
      
      public static const §5?§:String = "easeInBounce";
      
      public static const §0!8§:String = "easeOutBounce";
      
      public static const §1G§:String = "easeInOutBounce";
      
      public static const §<G§:String = "easeOutInBounce";
      
      private static var §5!R§:Dictionary;
       
      
      public function §[f§()
      {
         super();
         throw new §4p§();
      }
      
      public static function §,0§(param1:String) : Function
      {
         if(§5!R§ == null)
         {
            §#[§();
         }
         return §5!R§[param1];
      }
      
      public static function §-F§(param1:String, param2:Function) : void
      {
         if(§5!R§ == null)
         {
            §#[§();
         }
         §5!R§[param1] = param2;
      }
      
      private static function §#[§() : void
      {
         §5!R§ = new Dictionary();
         §-F§(§?!O§,linear);
         §-F§(§7&§,easeIn);
         §-F§(§3X§,easeOut);
         §-F§(§7G§,easeInOut);
         §-F§(§[q§,easeOutIn);
         §-F§(§4!;§,easeInBack);
         §-F§(§'q§,easeOutBack);
         §-F§(§=B§,easeInOutBack);
         §-F§(§%T§,easeOutInBack);
         §-F§(§ O§,easeInElastic);
         §-F§(§?;§,easeOutElastic);
         §-F§(§0!D§,easeInOutElastic);
         §-F§(§;r§,easeOutInElastic);
         §-F§(§5?§,easeInBounce);
         §-F§(§0!8§,easeOutBounce);
         §-F§(§1G§,easeInOutBounce);
         §-F§(§<G§,easeOutInBounce);
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
         return §#K§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §#K§(easeOut,easeIn,param1);
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
         return §#K§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §#K§(easeOutBack,easeInBack,param1);
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
         return §#K§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §#K§(easeOutElastic,easeInElastic,param1);
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
         return §#K§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §#K§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §#K§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
