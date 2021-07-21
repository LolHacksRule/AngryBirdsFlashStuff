package §1!D§
{
   import §57§.§ !B§;
   import flash.utils.Dictionary;
   
   public class §4!;§
   {
      
      public static const §<1§:String = "linear";
      
      public static const §try §:String = "easeIn";
      
      public static const §-!J§:String = "easeOut";
      
      public static const dynamic:String = "easeInOut";
      
      public static const §1R§:String = "easeOutIn";
      
      public static const §?!1§:String = "easeInBack";
      
      public static const §+!+§:String = "easeOutBack";
      
      public static const §"]§:String = "easeInOutBack";
      
      public static const §=t§:String = "easeOutInBack";
      
      public static const §@!E§:String = "easeInElastic";
      
      public static const §]Z§:String = "easeOutElastic";
      
      public static const §]!#§:String = "easeInOutElastic";
      
      public static const §^I§:String = "easeOutInElastic";
      
      public static const §3!6§:String = "easeInBounce";
      
      public static const §`b§:String = "easeOutBounce";
      
      public static const §@!"§:String = "easeInOutBounce";
      
      public static const § !N§:String = "easeOutInBounce";
      
      private static var §!!1§:Dictionary;
       
      
      public function §4!;§()
      {
         super();
         throw new § !B§();
      }
      
      public static function §%g§(param1:String) : Function
      {
         if(§!!1§ == null)
         {
            §?!;§();
         }
         return §!!1§[param1];
      }
      
      public static function §3!K§(param1:String, param2:Function) : void
      {
         if(§!!1§ == null)
         {
            §?!;§();
         }
         §!!1§[param1] = param2;
      }
      
      private static function §?!;§() : void
      {
         §!!1§ = new Dictionary();
         §3!K§(§<1§,linear);
         §3!K§(§try §,easeIn);
         §3!K§(§-!J§,easeOut);
         §3!K§(dynamic,easeInOut);
         §3!K§(§1R§,easeOutIn);
         §3!K§(§?!1§,easeInBack);
         §3!K§(§+!+§,easeOutBack);
         §3!K§(§"]§,easeInOutBack);
         §3!K§(§=t§,easeOutInBack);
         §3!K§(§@!E§,easeInElastic);
         §3!K§(§]Z§,easeOutElastic);
         §3!K§(§]!#§,easeInOutElastic);
         §3!K§(§^I§,easeOutInElastic);
         §3!K§(§3!6§,easeInBounce);
         §3!K§(§`b§,easeOutBounce);
         §3!K§(§@!"§,easeInOutBounce);
         §3!K§(§ !N§,easeOutInBounce);
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
         return §@@§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §@@§(easeOut,easeIn,param1);
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
         return §@@§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §@@§(easeOutBack,easeInBack,param1);
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
         return §@@§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §@@§(easeOutElastic,easeInElastic,param1);
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
         return §@@§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §@@§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §@@§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
