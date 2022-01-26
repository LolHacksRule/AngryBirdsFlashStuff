package §_-qn§
{
   import §_-nh§.§_-6J§;
   import flash.utils.Dictionary;
   
   public class §_-2C§
   {
      
      public static const §_-8A§:String = "linear";
      
      public static const §_-4z§:String = "easeIn";
      
      public static const §_-IQ§:String = "easeOut";
      
      public static const §_-WX§:String = "easeInOut";
      
      public static const §_-Aj§:String = "easeOutIn";
      
      public static const §_-Pz§:String = "easeInBack";
      
      public static const §_-7i§:String = "easeOutBack";
      
      public static const §_-KS§:String = "easeInOutBack";
      
      public static const §_-h§:String = "easeOutInBack";
      
      public static const §_-ja§:String = "easeInElastic";
      
      public static const §get §:String = "easeOutElastic";
      
      public static const § set§:String = "easeInOutElastic";
      
      public static const §set §:String = "easeOutInElastic";
      
      public static const §_-fg§:String = "easeInBounce";
      
      public static const §_-6s§:String = "easeOutBounce";
      
      public static const §_-Tw§:String = "easeInOutBounce";
      
      public static const §_-W§:String = "easeOutInBounce";
      
      private static var §_-To§:Dictionary;
       
      
      public function §_-2C§()
      {
         super();
         throw new §_-6J§();
      }
      
      public static function §_-pn§(param1:String) : Function
      {
         if(§_-To§ == null)
         {
            §_-SS§();
         }
         return §_-To§[param1];
      }
      
      public static function §_-mH§(param1:String, param2:Function) : void
      {
         if(§_-To§ == null)
         {
            §_-SS§();
         }
         §_-To§[param1] = param2;
      }
      
      private static function §_-SS§() : void
      {
         §_-To§ = new Dictionary();
         §_-mH§(§_-8A§,linear);
         §_-mH§(§_-4z§,easeIn);
         §_-mH§(§_-IQ§,easeOut);
         §_-mH§(§_-WX§,easeInOut);
         §_-mH§(§_-Aj§,easeOutIn);
         §_-mH§(§_-Pz§,easeInBack);
         §_-mH§(§_-7i§,easeOutBack);
         §_-mH§(§_-KS§,easeInOutBack);
         §_-mH§(§_-h§,easeOutInBack);
         §_-mH§(§_-ja§,easeInElastic);
         §_-mH§(§get §,easeOutElastic);
         §_-mH§(§ set§,easeInOutElastic);
         §_-mH§(§set §,easeOutInElastic);
         §_-mH§(§_-fg§,easeInBounce);
         §_-mH§(§_-6s§,easeOutBounce);
         §_-mH§(§_-Tw§,easeInOutBounce);
         §_-mH§(§_-W§,easeOutInBounce);
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
         return §_-6B§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-6B§(easeOut,easeIn,param1);
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
         return §_-6B§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-6B§(easeOutBack,easeInBack,param1);
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
         return §_-6B§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-6B§(easeOutElastic,easeInElastic,param1);
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
         return §_-6B§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-6B§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-6B§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
