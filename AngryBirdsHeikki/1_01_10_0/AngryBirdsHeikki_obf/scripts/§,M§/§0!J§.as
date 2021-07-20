package §,M§
{
   import §2i§.§'u§;
   import flash.utils.Dictionary;
   
   public class §0!J§
   {
      
      public static const § !H§:String = "linear";
      
      public static const §[i§:String = "easeIn";
      
      public static const §!]§:String = "easeOut";
      
      public static const §5_§:String = "easeInOut";
      
      public static const §=>§:String = "easeOutIn";
      
      public static const §[`§:String = "easeInBack";
      
      public static const §1!J§:String = "easeOutBack";
      
      public static const §&s§:String = "easeInOutBack";
      
      public static const §%!d§:String = "easeOutInBack";
      
      public static const §<!2§:String = "easeInElastic";
      
      public static const §!g§:String = "easeOutElastic";
      
      public static const §9!a§:String = "easeInOutElastic";
      
      public static const §;!?§:String = "easeOutInElastic";
      
      public static const §69§:String = "easeInBounce";
      
      public static const §1e§:String = "easeOutBounce";
      
      public static const §8E§:String = "easeInOutBounce";
      
      public static const §[!J§:String = "easeOutInBounce";
      
      private static var §]l§:Dictionary;
       
      
      public function §0!J§()
      {
         super();
         throw new §'u§();
      }
      
      public static function §`!;§(param1:String) : Function
      {
         if(§]l§ == null)
         {
            §[A§();
         }
         return §]l§[param1];
      }
      
      public static function §#?§(param1:String, param2:Function) : void
      {
         if(§]l§ == null)
         {
            §[A§();
         }
         §]l§[param1] = param2;
      }
      
      private static function §[A§() : void
      {
         §]l§ = new Dictionary();
         §#?§(§ !H§,linear);
         §#?§(§[i§,easeIn);
         §#?§(§!]§,easeOut);
         §#?§(§5_§,easeInOut);
         §#?§(§=>§,easeOutIn);
         §#?§(§[`§,easeInBack);
         §#?§(§1!J§,easeOutBack);
         §#?§(§&s§,easeInOutBack);
         §#?§(§%!d§,easeOutInBack);
         §#?§(§<!2§,easeInElastic);
         §#?§(§!g§,easeOutElastic);
         §#?§(§9!a§,easeInOutElastic);
         §#?§(§;!?§,easeOutInElastic);
         §#?§(§69§,easeInBounce);
         §#?§(§1e§,easeOutBounce);
         §#?§(§8E§,easeInOutBounce);
         §#?§(§[!J§,easeOutInBounce);
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
         return §4!=§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §4!=§(easeOut,easeIn,param1);
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
         return §4!=§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §4!=§(easeOutBack,easeInBack,param1);
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
         return §4!=§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §4!=§(easeOutElastic,easeInElastic,param1);
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
         return §4!=§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §4!=§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §4!=§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
