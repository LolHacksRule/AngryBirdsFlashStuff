package §4g§
{
   import §`5§.§?g§;
   import flash.utils.Dictionary;
   
   public class §0Y§
   {
      
      public static const §5!v§:String = "linear";
      
      public static const §5$§:String = "easeIn";
      
      public static const §!w§:String = "easeOut";
      
      public static const §=j§:String = "easeInOut";
      
      public static const §@x§:String = "easeOutIn";
      
      public static const §9!D§:String = "easeInBack";
      
      public static const §7&§:String = "easeOutBack";
      
      public static const §-!G§:String = "easeInOutBack";
      
      public static const §8!`§:String = "easeOutInBack";
      
      public static const §^!7§:String = "easeInElastic";
      
      public static const §1!c§:String = "easeOutElastic";
      
      public static const §`q§:String = "easeInOutElastic";
      
      public static const §1!g§:String = "easeOutInElastic";
      
      public static const §3!J§:String = "easeInBounce";
      
      public static const §3r§:String = "easeOutBounce";
      
      public static const §8!i§:String = "easeInOutBounce";
      
      public static const §3O§:String = "easeOutInBounce";
      
      private static var §-U§:Dictionary;
       
      
      public function §0Y§()
      {
         super();
         throw new §?g§();
      }
      
      public static function §[!l§(param1:String) : Function
      {
         if(§-U§ == null)
         {
            §?^§();
         }
         return §-U§[param1];
      }
      
      public static function §4!s§(param1:String, param2:Function) : void
      {
         if(§-U§ == null)
         {
            §?^§();
         }
         §-U§[param1] = param2;
      }
      
      private static function §?^§() : void
      {
         §-U§ = new Dictionary();
         §4!s§(§5!v§,linear);
         §4!s§(§5$§,easeIn);
         §4!s§(§!w§,easeOut);
         §4!s§(§=j§,easeInOut);
         §4!s§(§@x§,easeOutIn);
         §4!s§(§9!D§,easeInBack);
         §4!s§(§7&§,easeOutBack);
         §4!s§(§-!G§,easeInOutBack);
         §4!s§(§8!`§,easeOutInBack);
         §4!s§(§^!7§,easeInElastic);
         §4!s§(§1!c§,easeOutElastic);
         §4!s§(§`q§,easeInOutElastic);
         §4!s§(§1!g§,easeOutInElastic);
         §4!s§(§3!J§,easeInBounce);
         §4!s§(§3r§,easeOutBounce);
         §4!s§(§8!i§,easeInOutBounce);
         §4!s§(§3O§,easeOutInBounce);
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
         return §`!&§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §`!&§(easeOut,easeIn,param1);
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
         return §`!&§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §`!&§(easeOutBack,easeInBack,param1);
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
         return §`!&§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §`!&§(easeOutElastic,easeInElastic,param1);
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
         return §`!&§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §`!&§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §`!&§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
