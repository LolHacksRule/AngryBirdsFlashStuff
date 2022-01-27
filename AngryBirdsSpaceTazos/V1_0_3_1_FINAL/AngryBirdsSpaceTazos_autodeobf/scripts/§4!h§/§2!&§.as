package §4!h§
{
   import §0"H§.§`!Y§;
   import flash.utils.Dictionary;
   
   public class §2!&§
   {
      
      public static const §5l§:String = "linear";
      
      public static const §3"6§:String = "easeIn";
      
      public static const §8"&§:String = "easeOut";
      
      public static const §=!K§:String = "easeInOut";
      
      public static const §]K§:String = "easeOutIn";
      
      public static const §4!J§:String = "easeInBack";
      
      public static const §4t§:String = "easeOutBack";
      
      public static const §-!]§:String = "easeInOutBack";
      
      public static const §&!!§:String = "easeOutInBack";
      
      public static const §#u§:String = "easeInElastic";
      
      public static const § !+§:String = "easeOutElastic";
      
      public static const §-!H§:String = "easeInOutElastic";
      
      public static const §["7§:String = "easeOutInElastic";
      
      public static const §7!c§:String = "easeInBounce";
      
      public static const §3^§:String = "easeOutBounce";
      
      public static const §%G§:String = "easeInOutBounce";
      
      public static const §2!F§:String = "easeOutInBounce";
      
      private static var §'!5§:Dictionary;
       
      
      public function §2!&§()
      {
         super();
         throw new §`!Y§();
      }
      
      public static function § w§(param1:String) : Function
      {
         if(§'!5§ == null)
         {
            §+!g§();
         }
         return §'!5§[param1];
      }
      
      public static function §4"3§(param1:String, param2:Function) : void
      {
         if(§'!5§ == null)
         {
            §+!g§();
         }
         §'!5§[param1] = param2;
      }
      
      private static function §+!g§() : void
      {
         §'!5§ = new Dictionary();
         §4"3§(§5l§,linear);
         §4"3§(§3"6§,easeIn);
         §4"3§(§8"&§,easeOut);
         §4"3§(§=!K§,easeInOut);
         §4"3§(§]K§,easeOutIn);
         §4"3§(§4!J§,easeInBack);
         §4"3§(§4t§,easeOutBack);
         §4"3§(§-!]§,easeInOutBack);
         §4"3§(§&!!§,easeOutInBack);
         §4"3§(§#u§,easeInElastic);
         §4"3§(§ !+§,easeOutElastic);
         §4"3§(§-!H§,easeInOutElastic);
         §4"3§(§["7§,easeOutInElastic);
         §4"3§(§7!c§,easeInBounce);
         §4"3§(§3^§,easeOutBounce);
         §4"3§(§%G§,easeInOutBounce);
         §4"3§(§2!F§,easeOutInBounce);
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
         return §super§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §super§(easeOut,easeIn,param1);
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
         return §super§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §super§(easeOutBack,easeInBack,param1);
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
         return §super§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §super§(easeOutElastic,easeInElastic,param1);
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
         return §super§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §super§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §super§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
