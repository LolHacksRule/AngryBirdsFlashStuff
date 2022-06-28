package §85§
{
   import §[z§.§@F§;
   import flash.utils.Dictionary;
   
   public class §#!w§
   {
      
      public static const §?n§:String = "linear";
      
      public static const §9!Y§:String = "easeIn";
      
      public static const §1!]§:String = "easeOut";
      
      public static const §+!§:String = "easeInOut";
      
      public static const §7!O§:String = "easeOutIn";
      
      public static const §,!O§:String = "easeInBack";
      
      public static const §+8§:String = "easeOutBack";
      
      public static const §+&§:String = "easeInOutBack";
      
      public static const §2!j§:String = "easeOutInBack";
      
      public static const §9W§:String = "easeInElastic";
      
      public static const §&!Q§:String = "easeOutElastic";
      
      public static const §2!;§:String = "easeInOutElastic";
      
      public static const §+!M§:String = "easeOutInElastic";
      
      public static const §%!`§:String = "easeInBounce";
      
      public static const §[[§:String = "easeOutBounce";
      
      public static const §`F§:String = "easeInOutBounce";
      
      public static const §'!t§:String = "easeOutInBounce";
      
      private static var §1!s§:Dictionary;
       
      
      public function §#!w§()
      {
         super();
         throw new §@F§();
      }
      
      public static function §=D§(param1:String) : Function
      {
         if(§1!s§ == null)
         {
            §+a§();
         }
         return §1!s§[param1];
      }
      
      public static function §,c§(param1:String, param2:Function) : void
      {
         if(§1!s§ == null)
         {
            §+a§();
         }
         §1!s§[param1] = param2;
      }
      
      private static function §+a§() : void
      {
         §1!s§ = new Dictionary();
         §,c§(§?n§,linear);
         §,c§(§9!Y§,easeIn);
         §,c§(§1!]§,easeOut);
         §,c§(§+!§,easeInOut);
         §,c§(§7!O§,easeOutIn);
         §,c§(§,!O§,easeInBack);
         §,c§(§+8§,easeOutBack);
         §,c§(§+&§,easeInOutBack);
         §,c§(§2!j§,easeOutInBack);
         §,c§(§9W§,easeInElastic);
         §,c§(§&!Q§,easeOutElastic);
         §,c§(§2!;§,easeInOutElastic);
         §,c§(§+!M§,easeOutInElastic);
         §,c§(§%!`§,easeInBounce);
         §,c§(§[[§,easeOutBounce);
         §,c§(§`F§,easeInOutBounce);
         §,c§(§'!t§,easeOutInBounce);
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
         return §,!p§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §,!p§(easeOut,easeIn,param1);
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
         return §,!p§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §,!p§(easeOutBack,easeInBack,param1);
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
         return §,!p§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §,!p§(easeOutElastic,easeInElastic,param1);
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
         return §,!p§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §,!p§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §,!p§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
