package §_-Nq§
{
   import §_-JM§.§_-03y§;
   import flash.utils.Dictionary;
   
   public class §_-0CC§
   {
      
      public static const §_-08v§:String = "linear";
      
      public static const §_-04U§:String = "easeIn";
      
      public static const §_-00T§:String = "easeOut";
      
      public static const §_-G8§:String = "easeInOut";
      
      public static const §_-km§:String = "easeOutIn";
      
      public static const §_-pS§:String = "easeInBack";
      
      public static const §_-0DI§:String = "easeOutBack";
      
      public static const §_-Vm§:String = "easeInOutBack";
      
      public static const §_-p2§:String = "easeOutInBack";
      
      public static const §_-0CE§:String = "easeInElastic";
      
      public static const §_-LU§:String = "easeOutElastic";
      
      public static const §_-jW§:String = "easeInOutElastic";
      
      public static const §_-Fv§:String = "easeOutInElastic";
      
      public static const §_-uD§:String = "easeInBounce";
      
      public static const §_-76§:String = "easeOutBounce";
      
      public static const §_-nW§:String = "easeInOutBounce";
      
      public static const §_-A8§:String = "easeOutInBounce";
      
      private static var §_-V-§:Dictionary;
       
      
      public function §_-0CC§()
      {
         super();
         throw new §_-03y§();
      }
      
      public static function §_-uB§(param1:String) : Function
      {
         if(§_-V-§ == null)
         {
            §_-Zl§();
         }
         return §_-V-§[param1];
      }
      
      public static function §_-00J§(param1:String, param2:Function) : void
      {
         if(§_-V-§ == null)
         {
            §_-Zl§();
         }
         §_-V-§[param1] = param2;
      }
      
      private static function §_-Zl§() : void
      {
         §_-V-§ = new Dictionary();
         §_-00J§(§_-08v§,linear);
         §_-00J§(§_-04U§,easeIn);
         §_-00J§(§_-00T§,easeOut);
         §_-00J§(§_-G8§,easeInOut);
         §_-00J§(§_-km§,easeOutIn);
         §_-00J§(§_-pS§,easeInBack);
         §_-00J§(§_-0DI§,easeOutBack);
         §_-00J§(§_-Vm§,easeInOutBack);
         §_-00J§(§_-p2§,easeOutInBack);
         §_-00J§(§_-0CE§,easeInElastic);
         §_-00J§(§_-LU§,easeOutElastic);
         §_-00J§(§_-jW§,easeInOutElastic);
         §_-00J§(§_-Fv§,easeOutInElastic);
         §_-00J§(§_-uD§,easeInBounce);
         §_-00J§(§_-76§,easeOutBounce);
         §_-00J§(§_-nW§,easeInOutBounce);
         §_-00J§(§_-A8§,easeOutInBounce);
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
         return §_-5P§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-5P§(easeOut,easeIn,param1);
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
         return §_-5P§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-5P§(easeOutBack,easeInBack,param1);
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
         return §_-5P§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-5P§(easeOutElastic,easeInElastic,param1);
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
         return §_-5P§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-5P§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-5P§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
