package §^U§
{
   import §"! §.§4p§;
   import flash.utils.Dictionary;
   
   public class §^§
   {
      
      public static const §[f§:String = "linear";
      
      public static const §?!O§:String = "easeIn";
      
      public static const §7&§:String = "easeOut";
      
      public static const §3X§:String = "easeInOut";
      
      public static const §7G§:String = "easeOutIn";
      
      public static const §[q§:String = "easeInBack";
      
      public static const §4!;§:String = "easeOutBack";
      
      public static const §'q§:String = "easeInOutBack";
      
      public static const §=B§:String = "easeOutInBack";
      
      public static const §%T§:String = "easeInElastic";
      
      public static const § O§:String = "easeOutElastic";
      
      public static const §?;§:String = "easeInOutElastic";
      
      public static const §0!D§:String = "easeOutInElastic";
      
      public static const §;r§:String = "easeInBounce";
      
      public static const §5?§:String = "easeOutBounce";
      
      public static const §0!8§:String = "easeInOutBounce";
      
      public static const §1G§:String = "easeOutInBounce";
      
      private static var §<G§:Dictionary;
       
      
      public function §^§()
      {
         super();
         throw new §4p§();
      }
      
      public static function §5!R§(param1:String) : Function
      {
         if(§<G§ == null)
         {
            §-F§();
         }
         return §<G§[param1];
      }
      
      public static function §,0§(param1:String, param2:Function) : void
      {
         if(§<G§ == null)
         {
            §-F§();
         }
         §<G§[param1] = param2;
      }
      
      private static function §-F§() : void
      {
         §<G§ = new Dictionary();
         §,0§(§[f§,linear);
         §,0§(§?!O§,easeIn);
         §,0§(§7&§,easeOut);
         §,0§(§3X§,easeInOut);
         §,0§(§7G§,easeOutIn);
         §,0§(§[q§,easeInBack);
         §,0§(§4!;§,easeOutBack);
         §,0§(§'q§,easeInOutBack);
         §,0§(§=B§,easeOutInBack);
         §,0§(§%T§,easeInElastic);
         §,0§(§ O§,easeOutElastic);
         §,0§(§?;§,easeInOutElastic);
         §,0§(§0!D§,easeOutInElastic);
         §,0§(§;r§,easeInBounce);
         §,0§(§5?§,easeOutBounce);
         §,0§(§0!8§,easeInOutBounce);
         §,0§(§1G§,easeOutInBounce);
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
         return §#[§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §#[§(easeOut,easeIn,param1);
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
         return §#[§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §#[§(easeOutBack,easeInBack,param1);
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
         return §#[§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §#[§(easeOutElastic,easeInElastic,param1);
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
         return §#[§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §#[§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §#[§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
