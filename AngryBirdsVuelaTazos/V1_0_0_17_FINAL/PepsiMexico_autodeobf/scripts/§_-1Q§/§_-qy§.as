package §_-1Q§
{
   import §_-HT§.§_-rU§;
   import flash.utils.Dictionary;
   
   public class §_-qy§
   {
      
      public static const §_-yD§:String = "linear";
      
      public static const §_-az§:String = "easeIn";
      
      public static const §_-gV§:String = "easeOut";
      
      public static const each:String = "easeInOut";
      
      public static const §_-zu§:String = "easeOutIn";
      
      public static const §_-xJ§:String = "easeInBack";
      
      public static const §_-t§:String = "easeOutBack";
      
      public static const §_-MF§:String = "easeInOutBack";
      
      public static const §_-mZ§:String = "easeOutInBack";
      
      public static const §_-N8§:String = "easeInElastic";
      
      public static const §_-I7§:String = "easeOutElastic";
      
      public static const §_-79§:String = "easeInOutElastic";
      
      public static const §_-Rr§:String = "easeOutInElastic";
      
      public static const §_-Yw§:String = "easeInBounce";
      
      public static const §_-EO§:String = "easeOutBounce";
      
      public static const §_-KK§:String = "easeInOutBounce";
      
      public static const §_-CV§:String = "easeOutInBounce";
      
      private static var §_-H§:Dictionary;
       
      
      public function §_-qy§()
      {
         super();
         throw new §_-rU§();
      }
      
      public static function §_-g1§(param1:String) : Function
      {
         if(§_-H§ == null)
         {
            §_-i7§();
         }
         return §_-H§[param1];
      }
      
      public static function §_-Ut§(param1:String, param2:Function) : void
      {
         if(§_-H§ == null)
         {
            §_-i7§();
         }
         §_-H§[param1] = param2;
      }
      
      private static function §_-i7§() : void
      {
         §_-H§ = new Dictionary();
         §_-Ut§(§_-yD§,linear);
         §_-Ut§(§_-az§,easeIn);
         §_-Ut§(§_-gV§,easeOut);
         §_-Ut§(each,easeInOut);
         §_-Ut§(§_-zu§,easeOutIn);
         §_-Ut§(§_-xJ§,easeInBack);
         §_-Ut§(§_-t§,easeOutBack);
         §_-Ut§(§_-MF§,easeInOutBack);
         §_-Ut§(§_-mZ§,easeOutInBack);
         §_-Ut§(§_-N8§,easeInElastic);
         §_-Ut§(§_-I7§,easeOutElastic);
         §_-Ut§(§_-79§,easeInOutElastic);
         §_-Ut§(§_-Rr§,easeOutInElastic);
         §_-Ut§(§_-Yw§,easeInBounce);
         §_-Ut§(§_-EO§,easeOutBounce);
         §_-Ut§(§_-KK§,easeInOutBounce);
         §_-Ut§(§_-CV§,easeOutInBounce);
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
         return §_-bD§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-bD§(easeOut,easeIn,param1);
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
         return §_-bD§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-bD§(easeOutBack,easeInBack,param1);
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
         return §_-bD§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-bD§(easeOutElastic,easeInElastic,param1);
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
         return §_-bD§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-bD§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-bD§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
