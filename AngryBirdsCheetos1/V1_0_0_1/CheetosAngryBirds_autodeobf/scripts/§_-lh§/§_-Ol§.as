package §_-lh§
{
   import §_-uz§.§_-Kv§;
   import flash.utils.Dictionary;
   
   public class §_-Ol§
   {
      
      public static const §_-Qv§:String = "linear";
      
      public static const §_-0f§:String = "easeIn";
      
      public static const §_-9D§:String = "easeOut";
      
      public static const §_-IO§:String = "easeInOut";
      
      public static const §_-mM§:String = "easeOutIn";
      
      public static const §_-QM§:String = "easeInBack";
      
      public static const §_-lJ§:String = "easeOutBack";
      
      public static const §_-1r§:String = "easeInOutBack";
      
      public static const §_-Fi§:String = "easeOutInBack";
      
      public static const §_-KM§:String = "easeInElastic";
      
      public static const §_-kV§:String = "easeOutElastic";
      
      public static const §_-1q§:String = "easeInOutElastic";
      
      public static const §_-1§:String = "easeOutInElastic";
      
      public static const §_-XP§:String = "easeInBounce";
      
      public static const §_-T1§:String = "easeOutBounce";
      
      public static const §_-NL§:String = "easeInOutBounce";
      
      public static const §_-pV§:String = "easeOutInBounce";
      
      private static var §_-O3§:Dictionary;
       
      
      public function §_-Ol§()
      {
         super();
         throw new §_-Kv§();
      }
      
      public static function §_-k3§(param1:String) : Function
      {
         if(§_-O3§ == null)
         {
            §_-4c§();
         }
         return §_-O3§[param1];
      }
      
      public static function §_-bD§(param1:String, param2:Function) : void
      {
         if(§_-O3§ == null)
         {
            §_-4c§();
         }
         §_-O3§[param1] = param2;
      }
      
      private static function §_-4c§() : void
      {
         §_-O3§ = new Dictionary();
         §_-bD§(§_-Qv§,linear);
         §_-bD§(§_-0f§,easeIn);
         §_-bD§(§_-9D§,easeOut);
         §_-bD§(§_-IO§,easeInOut);
         §_-bD§(§_-mM§,easeOutIn);
         §_-bD§(§_-QM§,easeInBack);
         §_-bD§(§_-lJ§,easeOutBack);
         §_-bD§(§_-1r§,easeInOutBack);
         §_-bD§(§_-Fi§,easeOutInBack);
         §_-bD§(§_-KM§,easeInElastic);
         §_-bD§(§_-kV§,easeOutElastic);
         §_-bD§(§_-1q§,easeInOutElastic);
         §_-bD§(§_-1§,easeOutInElastic);
         §_-bD§(§_-XP§,easeInBounce);
         §_-bD§(§_-T1§,easeOutBounce);
         §_-bD§(§_-NL§,easeInOutBounce);
         §_-bD§(§_-pV§,easeOutInBounce);
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
         return §_-FR§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-FR§(easeOut,easeIn,param1);
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
         return §_-FR§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-FR§(easeOutBack,easeInBack,param1);
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
         return §_-FR§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-FR§(easeOutElastic,easeInElastic,param1);
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
         return §_-FR§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-FR§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-FR§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
