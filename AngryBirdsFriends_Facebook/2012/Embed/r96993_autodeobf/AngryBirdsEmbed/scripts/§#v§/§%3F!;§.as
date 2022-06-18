package §#v§
{
   import §6D§.§false§;
   import flash.utils.Dictionary;
   
   public class §?!;§
   {
      
      public static const §?Y§:String = "linear";
      
      public static const §0!$§:String = "easeIn";
      
      public static const §-g§:String = "easeOut";
      
      public static const §5$§:String = "easeInOut";
      
      public static const §7!5§:String = "easeOutIn";
      
      public static const §"!A§:String = "easeInBack";
      
      public static const §!!,§:String = "easeOutBack";
      
      public static const §"x§:String = "easeInOutBack";
      
      public static const §#!+§:String = "easeOutInBack";
      
      public static const §]p§:String = "easeInElastic";
      
      public static const §0@§:String = "easeOutElastic";
      
      public static const §1;§:String = "easeInOutElastic";
      
      public static const §;N§:String = "easeOutInElastic";
      
      public static const §1%§:String = "easeInBounce";
      
      public static const §@v§:String = "easeOutBounce";
      
      public static const §<'§:String = "easeInOutBounce";
      
      public static const §9!!§:String = "easeOutInBounce";
      
      private static var §@8§:Dictionary;
       
      
      public function §?!;§()
      {
         super();
         throw new §false§();
      }
      
      public static function §7!8§(param1:String) : Function
      {
         if(§@8§ == null)
         {
            §8!D§();
         }
         return §@8§[param1];
      }
      
      public static function §5=§(param1:String, param2:Function) : void
      {
         if(§@8§ == null)
         {
            §8!D§();
         }
         §@8§[param1] = param2;
      }
      
      private static function §8!D§() : void
      {
         §@8§ = new Dictionary();
         §5=§(§?Y§,linear);
         §5=§(§0!$§,easeIn);
         §5=§(§-g§,easeOut);
         §5=§(§5$§,easeInOut);
         §5=§(§7!5§,easeOutIn);
         §5=§(§"!A§,easeInBack);
         §5=§(§!!,§,easeOutBack);
         §5=§(§"x§,easeInOutBack);
         §5=§(§#!+§,easeOutInBack);
         §5=§(§]p§,easeInElastic);
         §5=§(§0@§,easeOutElastic);
         §5=§(§1;§,easeInOutElastic);
         §5=§(§;N§,easeOutInElastic);
         §5=§(§1%§,easeInBounce);
         §5=§(§@v§,easeOutBounce);
         §5=§(§<'§,easeInOutBounce);
         §5=§(§9!!§,easeOutInBounce);
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
         return §?^§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §?^§(easeOut,easeIn,param1);
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
         return §?^§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §?^§(easeOutBack,easeInBack,param1);
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
         return §?^§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §?^§(easeOutElastic,easeInElastic,param1);
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
         return §?^§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §?^§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §?^§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
