package §9! §
{
   import §"=§.§+!1§;
   import flash.utils.Dictionary;
   
   public class §,!=§
   {
      
      public static const §^V§:String = "linear";
      
      public static const §9x§:String = "easeIn";
      
      public static const § 1§:String = "easeOut";
      
      public static const §3u§:String = "easeInOut";
      
      public static const §-K§:String = "easeOutIn";
      
      public static const §5<§:String = "easeInBack";
      
      public static const §9M§:String = "easeOutBack";
      
      public static const §+[§:String = "easeInOutBack";
      
      public static const §1<§:String = "easeOutInBack";
      
      public static const §,Q§:String = "easeInElastic";
      
      public static const §!3§:String = "easeOutElastic";
      
      public static const §5!F§:String = "easeInOutElastic";
      
      public static const §[0§:String = "easeOutInElastic";
      
      public static const §,!-§:String = "easeInBounce";
      
      public static const §!Z§:String = "easeOutBounce";
      
      public static const §^>§:String = "easeInOutBounce";
      
      public static const §,U§:String = "easeOutInBounce";
      
      private static var §,"§:Dictionary;
       
      
      public function §,!=§()
      {
         super();
         throw new §+!1§();
      }
      
      public static function §;<§(param1:String) : Function
      {
         if(§,"§ == null)
         {
            §78§();
         }
         return §,"§[param1];
      }
      
      public static function § 2§(param1:String, param2:Function) : void
      {
         if(§,"§ == null)
         {
            §78§();
         }
         §,"§[param1] = param2;
      }
      
      private static function §78§() : void
      {
         §,"§ = new Dictionary();
         § 2§(§^V§,linear);
         § 2§(§9x§,easeIn);
         § 2§(§ 1§,easeOut);
         § 2§(§3u§,easeInOut);
         § 2§(§-K§,easeOutIn);
         § 2§(§5<§,easeInBack);
         § 2§(§9M§,easeOutBack);
         § 2§(§+[§,easeInOutBack);
         § 2§(§1<§,easeOutInBack);
         § 2§(§,Q§,easeInElastic);
         § 2§(§!3§,easeOutElastic);
         § 2§(§5!F§,easeInOutElastic);
         § 2§(§[0§,easeOutInElastic);
         § 2§(§,!-§,easeInBounce);
         § 2§(§!Z§,easeOutBounce);
         § 2§(§^>§,easeInOutBounce);
         § 2§(§,U§,easeOutInBounce);
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
         return §"D§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §"D§(easeOut,easeIn,param1);
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
         return §"D§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §"D§(easeOutBack,easeInBack,param1);
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
         return §"D§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §"D§(easeOutElastic,easeInElastic,param1);
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
         return §"D§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §"D§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §"D§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
