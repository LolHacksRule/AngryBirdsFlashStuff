package §true §
{
   import §[! §.§0^§;
   import flash.utils.Dictionary;
   
   public class §0g§
   {
      
      public static const §0c§:String = "linear";
      
      public static const §3!j§:String = "easeIn";
      
      public static const §=!K§:String = "easeOut";
      
      public static const §%O§:String = "easeInOut";
      
      public static const §;+§:String = "easeOutIn";
      
      public static const §,=§:String = "easeInBack";
      
      public static const §+!j§:String = "easeOutBack";
      
      public static const §!w§:String = "easeInOutBack";
      
      public static const §9M§:String = "easeOutInBack";
      
      public static const §in §:String = "easeInElastic";
      
      public static const §@4§:String = "easeOutElastic";
      
      public static const §24§:String = "easeInOutElastic";
      
      public static const §=!B§:String = "easeOutInElastic";
      
      public static const §9!Y§:String = "easeInBounce";
      
      public static const §&h§:String = "easeOutBounce";
      
      public static const §>g§:String = "easeInOutBounce";
      
      public static const §-C§:String = "easeOutInBounce";
      
      private static var §+-§:Dictionary;
       
      
      public function §0g§()
      {
         super();
         throw new §0^§();
      }
      
      public static function §+!0§(param1:String) : Function
      {
         if(§+-§ == null)
         {
            §?"§();
         }
         return §+-§[param1];
      }
      
      public static function §else §(param1:String, param2:Function) : void
      {
         if(§+-§ == null)
         {
            §?"§();
         }
         §+-§[param1] = param2;
      }
      
      private static function §?"§() : void
      {
         §+-§ = new Dictionary();
         §else §(§0c§,linear);
         §else §(§3!j§,easeIn);
         §else §(§=!K§,easeOut);
         §else §(§%O§,easeInOut);
         §else §(§;+§,easeOutIn);
         §else §(§,=§,easeInBack);
         §else §(§+!j§,easeOutBack);
         §else §(§!w§,easeInOutBack);
         §else §(§9M§,easeOutInBack);
         §else §(§in §,easeInElastic);
         §else §(§@4§,easeOutElastic);
         §else §(§24§,easeInOutElastic);
         §else §(§=!B§,easeOutInElastic);
         §else §(§9!Y§,easeInBounce);
         §else §(§&h§,easeOutBounce);
         §else §(§>g§,easeInOutBounce);
         §else §(§-C§,easeOutInBounce);
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
         return §!6§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §!6§(easeOut,easeIn,param1);
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
         return §!6§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §!6§(easeOutBack,easeInBack,param1);
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
         return §!6§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §!6§(easeOutElastic,easeInElastic,param1);
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
         return §!6§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §!6§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §!6§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
