package § F§
{
   import §5d§.§`!=§;
   import flash.utils.Dictionary;
   
   public class §<!>§
   {
      
      public static const §7o§:String = "linear";
      
      public static const §-!$§:String = "easeIn";
      
      public static const §@Z§:String = "easeOut";
      
      public static const §?R§:String = "easeInOut";
      
      public static const §"Q§:String = "easeOutIn";
      
      public static const §4J§:String = "easeInBack";
      
      public static const §]7§:String = "easeOutBack";
      
      public static const §-`§:String = "easeInOutBack";
      
      public static const §+"§:String = "easeOutInBack";
      
      public static const §1G§:String = "easeInElastic";
      
      public static const §@]§:String = "easeOutElastic";
      
      public static const §]e§:String = "easeInOutElastic";
      
      public static const §"F§:String = "easeOutInElastic";
      
      public static const §'h§:String = "easeInBounce";
      
      public static const §@X§:String = "easeOutBounce";
      
      public static const §^M§:String = "easeInOutBounce";
      
      public static const §!q§:String = "easeOutInBounce";
      
      private static var §+8§:Dictionary;
       
      
      public function §<!>§()
      {
         super();
         throw new §`!=§();
      }
      
      public static function §'S§(param1:String) : Function
      {
         if(§+8§ == null)
         {
            §'O§();
         }
         return §+8§[param1];
      }
      
      public static function § u§(param1:String, param2:Function) : void
      {
         if(§+8§ == null)
         {
            §'O§();
         }
         §+8§[param1] = param2;
      }
      
      private static function §'O§() : void
      {
         §+8§ = new Dictionary();
         § u§(§7o§,linear);
         § u§(§-!$§,easeIn);
         § u§(§@Z§,easeOut);
         § u§(§?R§,easeInOut);
         § u§(§"Q§,easeOutIn);
         § u§(§4J§,easeInBack);
         § u§(§]7§,easeOutBack);
         § u§(§-`§,easeInOutBack);
         § u§(§+"§,easeOutInBack);
         § u§(§1G§,easeInElastic);
         § u§(§@]§,easeOutElastic);
         § u§(§]e§,easeInOutElastic);
         § u§(§"F§,easeOutInElastic);
         § u§(§'h§,easeInBounce);
         § u§(§@X§,easeOutBounce);
         § u§(§^M§,easeInOutBounce);
         § u§(§!q§,easeOutInBounce);
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
         return §2M§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §2M§(easeOut,easeIn,param1);
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
         return §2M§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §2M§(easeOutBack,easeInBack,param1);
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
         return §2M§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §2M§(easeOutElastic,easeInElastic,param1);
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
         return §2M§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §2M§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §2M§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
