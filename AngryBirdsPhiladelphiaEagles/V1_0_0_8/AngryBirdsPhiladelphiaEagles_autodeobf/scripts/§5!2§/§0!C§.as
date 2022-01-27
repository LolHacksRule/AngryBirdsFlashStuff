package §5!2§
{
   import §]!#§.§"!"§;
   import flash.utils.Dictionary;
   
   public class §0!C§
   {
      
      public static const §9!<§:String = "linear";
      
      public static const §#!Q§:String = "easeIn";
      
      public static const §^t§:String = "easeOut";
      
      public static const §`[§:String = "easeInOut";
      
      public static const §,P§:String = "easeOutIn";
      
      public static const §^!#§:String = "easeInBack";
      
      public static const §43§:String = "easeOutBack";
      
      public static const §5J§:String = "easeInOutBack";
      
      public static const §;>§:String = "easeOutInBack";
      
      public static const §,v§:String = "easeInElastic";
      
      public static const §,!M§:String = "easeOutElastic";
      
      public static const § T§:String = "easeInOutElastic";
      
      public static const §&E§:String = "easeOutInElastic";
      
      public static const §]_§:String = "easeInBounce";
      
      public static const §[J§:String = "easeOutBounce";
      
      public static const §9!5§:String = "easeInOutBounce";
      
      public static const §4=§:String = "easeOutInBounce";
      
      private static var §'a§:Dictionary;
       
      
      public function §0!C§()
      {
         super();
         throw new §"!"§();
      }
      
      public static function §3!8§(param1:String) : Function
      {
         if(§'a§ == null)
         {
            §=&§();
         }
         return §'a§[param1];
      }
      
      public static function §8Q§(param1:String, param2:Function) : void
      {
         if(§'a§ == null)
         {
            §=&§();
         }
         §'a§[param1] = param2;
      }
      
      private static function §=&§() : void
      {
         §'a§ = new Dictionary();
         §8Q§(§9!<§,linear);
         §8Q§(§#!Q§,easeIn);
         §8Q§(§^t§,easeOut);
         §8Q§(§`[§,easeInOut);
         §8Q§(§,P§,easeOutIn);
         §8Q§(§^!#§,easeInBack);
         §8Q§(§43§,easeOutBack);
         §8Q§(§5J§,easeInOutBack);
         §8Q§(§;>§,easeOutInBack);
         §8Q§(§,v§,easeInElastic);
         §8Q§(§,!M§,easeOutElastic);
         §8Q§(§ T§,easeInOutElastic);
         §8Q§(§&E§,easeOutInElastic);
         §8Q§(§]_§,easeInBounce);
         §8Q§(§[J§,easeOutBounce);
         §8Q§(§9!5§,easeInOutBounce);
         §8Q§(§4=§,easeOutInBounce);
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
         return §>N§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §>N§(easeOut,easeIn,param1);
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
         return §>N§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §>N§(easeOutBack,easeInBack,param1);
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
         return §>N§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §>N§(easeOutElastic,easeInElastic,param1);
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
         return §>N§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §>N§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §>N§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
