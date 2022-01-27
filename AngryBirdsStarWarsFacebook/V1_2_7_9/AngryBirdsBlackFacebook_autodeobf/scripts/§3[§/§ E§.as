package §3[§
{
   import §!"u§.§^!,§;
   import flash.utils.Dictionary;
   
   public class § E§
   {
      
      public static const §-!Y§:String = "linear";
      
      public static const §<!P§:String = "easeIn";
      
      public static const §3I§:String = "easeOut";
      
      public static const §,"G§:String = "easeInOut";
      
      public static const §4e§:String = "easeOutIn";
      
      public static const §-!p§:String = "easeInBack";
      
      public static const §-"<§:String = "easeOutBack";
      
      public static const §'" §:String = "easeInOutBack";
      
      public static const §#!j§:String = "easeOutInBack";
      
      public static const §-!_§:String = "easeInElastic";
      
      public static const §-"T§:String = "easeOutElastic";
      
      public static const §5>§:String = "easeInOutElastic";
      
      public static const §;_§:String = "easeOutInElastic";
      
      public static const §7!]§:String = "easeInBounce";
      
      public static const §^"7§:String = "easeOutBounce";
      
      public static const §9"C§:String = "easeInOutBounce";
      
      public static const §7"M§:String = "easeOutInBounce";
      
      private static var §""D§:Dictionary;
       
      
      public function § E§()
      {
         super();
         throw new §^!,§();
      }
      
      public static function §'#+§(param1:String) : Function
      {
         if(§""D§ == null)
         {
            §-# §();
         }
         return §""D§[param1];
      }
      
      public static function §5T§(param1:String, param2:Function) : void
      {
         if(§""D§ == null)
         {
            §-# §();
         }
         §""D§[param1] = param2;
      }
      
      private static function §-# §() : void
      {
         §""D§ = new Dictionary();
         §5T§(§-!Y§,linear);
         §5T§(§<!P§,easeIn);
         §5T§(§3I§,easeOut);
         §5T§(§,"G§,easeInOut);
         §5T§(§4e§,easeOutIn);
         §5T§(§-!p§,easeInBack);
         §5T§(§-"<§,easeOutBack);
         §5T§(§'" §,easeInOutBack);
         §5T§(§#!j§,easeOutInBack);
         §5T§(§-!_§,easeInElastic);
         §5T§(§-"T§,easeOutElastic);
         §5T§(§5>§,easeInOutElastic);
         §5T§(§;_§,easeOutInElastic);
         §5T§(§7!]§,easeInBounce);
         §5T§(§^"7§,easeOutBounce);
         §5T§(§9"C§,easeInOutBounce);
         §5T§(§7"M§,easeOutInBounce);
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
         return §]#,§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §]#,§(easeOut,easeIn,param1);
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
         return §]#,§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §]#,§(easeOutBack,easeInBack,param1);
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
         return §]#,§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §]#,§(easeOutElastic,easeInElastic,param1);
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
         return §]#,§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §]#,§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §]#,§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
