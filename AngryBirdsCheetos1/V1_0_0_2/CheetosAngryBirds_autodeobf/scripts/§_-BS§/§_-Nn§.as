package §_-BS§
{
   import §_-V9§.§_-Ow§;
   import flash.utils.Dictionary;
   
   public class §_-Nn§
   {
      
      public static const §_-DS§:String = "linear";
      
      public static const §_-k6§:String = "easeIn";
      
      public static const §_-Bh§:String = "easeOut";
      
      public static const §_-4E§:String = "easeInOut";
      
      public static const §_-3K§:String = "easeOutIn";
      
      public static const §_-fm§:String = "easeInBack";
      
      public static const §_-rA§:String = "easeOutBack";
      
      public static const §_-H3§:String = "easeInOutBack";
      
      public static const §_-wl§:String = "easeOutInBack";
      
      public static const §_-1p§:String = "easeInElastic";
      
      public static const §_-CZ§:String = "easeOutElastic";
      
      public static const §_-BD§:String = "easeInOutElastic";
      
      public static const §_-f8§:String = "easeOutInElastic";
      
      public static const §_-UZ§:String = "easeInBounce";
      
      public static const §_-OY§:String = "easeOutBounce";
      
      public static const native:String = "easeInOutBounce";
      
      public static const §_-Jr§:String = "easeOutInBounce";
      
      private static var §_-kb§:Dictionary;
       
      
      public function §_-Nn§()
      {
         super();
         throw new §_-Ow§();
      }
      
      public static function §_-f1§(param1:String) : Function
      {
         if(§_-kb§ == null)
         {
            §_-KS§();
         }
         return §_-kb§[param1];
      }
      
      public static function §_-Hx§(param1:String, param2:Function) : void
      {
         if(§_-kb§ == null)
         {
            §_-KS§();
         }
         §_-kb§[param1] = param2;
      }
      
      private static function §_-KS§() : void
      {
         §_-kb§ = new Dictionary();
         §_-Hx§(§_-DS§,linear);
         §_-Hx§(§_-k6§,easeIn);
         §_-Hx§(§_-Bh§,easeOut);
         §_-Hx§(§_-4E§,easeInOut);
         §_-Hx§(§_-3K§,easeOutIn);
         §_-Hx§(§_-fm§,easeInBack);
         §_-Hx§(§_-rA§,easeOutBack);
         §_-Hx§(§_-H3§,easeInOutBack);
         §_-Hx§(§_-wl§,easeOutInBack);
         §_-Hx§(§_-1p§,easeInElastic);
         §_-Hx§(§_-CZ§,easeOutElastic);
         §_-Hx§(§_-BD§,easeInOutElastic);
         §_-Hx§(§_-f8§,easeOutInElastic);
         §_-Hx§(§_-UZ§,easeInBounce);
         §_-Hx§(§_-OY§,easeOutBounce);
         §_-Hx§(native,easeInOutBounce);
         §_-Hx§(§_-Jr§,easeOutInBounce);
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
         return §_-m3§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-m3§(easeOut,easeIn,param1);
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
         return §_-m3§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-m3§(easeOutBack,easeInBack,param1);
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
         return §_-m3§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-m3§(easeOutElastic,easeInElastic,param1);
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
         return §_-m3§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-m3§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-m3§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
