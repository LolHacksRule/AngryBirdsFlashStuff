package §>S§
{
   import §=!Y§.§4f§;
   import flash.utils.Dictionary;
   
   public class §8V§
   {
      
      public static const §8j§:String = "linear";
      
      public static const §&5§:String = "easeIn";
      
      public static const §<=§:String = "easeOut";
      
      public static const §8!`§:String = "easeInOut";
      
      public static const §=!X§:String = "easeOutIn";
      
      public static const §const§:String = "easeInBack";
      
      public static const §8!#§:String = "easeOutBack";
      
      public static const §?@§:String = "easeInOutBack";
      
      public static const §0"§:String = "easeOutInBack";
      
      public static const §0!9§:String = "easeInElastic";
      
      public static const §+5§:String = "easeOutElastic";
      
      public static const §+;§:String = "easeInOutElastic";
      
      public static const §'!!§:String = "easeOutInElastic";
      
      public static const §-!Q§:String = "easeInBounce";
      
      public static const §9s§:String = "easeOutBounce";
      
      public static const §#B§:String = "easeInOutBounce";
      
      public static const §#k§:String = "easeOutInBounce";
      
      private static var §@'§:Dictionary;
       
      
      public function §8V§()
      {
         super();
         throw new §4f§();
      }
      
      public static function §"r§(param1:String) : Function
      {
         if(§@'§ == null)
         {
            §,0§();
         }
         return §@'§[param1];
      }
      
      public static function §"!<§(param1:String, param2:Function) : void
      {
         if(§@'§ == null)
         {
            §,0§();
         }
         §@'§[param1] = param2;
      }
      
      private static function §,0§() : void
      {
         §@'§ = new Dictionary();
         §"!<§(§8j§,linear);
         §"!<§(§&5§,easeIn);
         §"!<§(§<=§,easeOut);
         §"!<§(§8!`§,easeInOut);
         §"!<§(§=!X§,easeOutIn);
         §"!<§(§const§,easeInBack);
         §"!<§(§8!#§,easeOutBack);
         §"!<§(§?@§,easeInOutBack);
         §"!<§(§0"§,easeOutInBack);
         §"!<§(§0!9§,easeInElastic);
         §"!<§(§+5§,easeOutElastic);
         §"!<§(§+;§,easeInOutElastic);
         §"!<§(§'!!§,easeOutInElastic);
         §"!<§(§-!Q§,easeInBounce);
         §"!<§(§9s§,easeOutBounce);
         §"!<§(§#B§,easeInOutBounce);
         §"!<§(§#k§,easeOutInBounce);
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
         return §4!D§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §4!D§(easeOut,easeIn,param1);
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
         return §4!D§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §4!D§(easeOutBack,easeInBack,param1);
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
         return §4!D§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §4!D§(easeOutElastic,easeInElastic,param1);
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
         return §4!D§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §4!D§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §4!D§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
