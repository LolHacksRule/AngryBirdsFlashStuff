package §=R§
{
   import §+c§.§#v§;
   import flash.utils.Dictionary;
   
   public class §1S§
   {
      
      public static const §+F§:String = "linear";
      
      public static const §?s§:String = "easeIn";
      
      public static const §!!'§:String = "easeOut";
      
      public static const §]K§:String = "easeInOut";
      
      public static const §+M§:String = "easeOutIn";
      
      public static const §1Y§:String = "easeInBack";
      
      public static const §8!!§:String = "easeOutBack";
      
      public static const §-?§:String = "easeInOutBack";
      
      public static const §-!?§:String = "easeOutInBack";
      
      public static const §'V§:String = "easeInElastic";
      
      public static const §<Z§:String = "easeOutElastic";
      
      public static const §3o§:String = "easeInOutElastic";
      
      public static const §%!L§:String = "easeOutInElastic";
      
      public static const §!C§:String = "easeInBounce";
      
      public static const §[!§:String = "easeOutBounce";
      
      public static const §;§:String = "easeInOutBounce";
      
      public static const §%A§:String = "easeOutInBounce";
      
      private static var §8'§:Dictionary;
       
      
      public function §1S§()
      {
         super();
         throw new §#v§();
      }
      
      public static function §9! §(param1:String) : Function
      {
         if(§8'§ == null)
         {
            §!o§();
         }
         return §8'§[param1];
      }
      
      public static function §,!5§(param1:String, param2:Function) : void
      {
         if(§8'§ == null)
         {
            §!o§();
         }
         §8'§[param1] = param2;
      }
      
      private static function §!o§() : void
      {
         §8'§ = new Dictionary();
         §,!5§(§+F§,linear);
         §,!5§(§?s§,easeIn);
         §,!5§(§!!'§,easeOut);
         §,!5§(§]K§,easeInOut);
         §,!5§(§+M§,easeOutIn);
         §,!5§(§1Y§,easeInBack);
         §,!5§(§8!!§,easeOutBack);
         §,!5§(§-?§,easeInOutBack);
         §,!5§(§-!?§,easeOutInBack);
         §,!5§(§'V§,easeInElastic);
         §,!5§(§<Z§,easeOutElastic);
         §,!5§(§3o§,easeInOutElastic);
         §,!5§(§%!L§,easeOutInElastic);
         §,!5§(§!C§,easeInBounce);
         §,!5§(§[!§,easeOutBounce);
         §,!5§(§;§,easeInOutBounce);
         §,!5§(§%A§,easeOutInBounce);
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
         return §=M§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §=M§(easeOut,easeIn,param1);
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
         return §=M§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §=M§(easeOutBack,easeInBack,param1);
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
         return §=M§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §=M§(easeOutElastic,easeInElastic,param1);
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
         return §=M§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §=M§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §=M§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
