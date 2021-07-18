package §<!>§
{
   import §;8§.§["T§;
   import flash.utils.Dictionary;
   
   public class §!#'§
   {
      
      public static const §[!l§:String = "linear";
      
      public static const §5#0§:String = "easeIn";
      
      public static const §?!&§:String = "easeOut";
      
      public static const §#!o§:String = "easeInOut";
      
      public static const §-#U§:String = "easeOutIn";
      
      public static const §4%§:String = "easeInBack";
      
      public static const §7""§:String = "easeOutBack";
      
      public static const §`#0§:String = "easeInOutBack";
      
      public static const §`!'§:String = "easeOutInBack";
      
      public static const §5!J§:String = "easeInElastic";
      
      public static const §]!Z§:String = "easeOutElastic";
      
      public static const §&#3§:String = "easeInOutElastic";
      
      public static const §&!3§:String = "easeOutInElastic";
      
      public static const §3"2§:String = "easeInBounce";
      
      public static const §8D§:String = "easeOutBounce";
      
      public static const §3L§:String = "easeInOutBounce";
      
      public static const §0"V§:String = "easeOutInBounce";
      
      private static var §9#G§:Dictionary;
       
      
      public function §!#'§()
      {
         super();
         throw new §["T§();
      }
      
      public static function §3"-§(param1:String) : Function
      {
         if(§9#G§ == null)
         {
            §>"E§();
         }
         return §9#G§[param1];
      }
      
      public static function §@!z§(param1:String, param2:Function) : void
      {
         if(§9#G§ == null)
         {
            §>"E§();
         }
         §9#G§[param1] = param2;
      }
      
      private static function §>"E§() : void
      {
         §9#G§ = new Dictionary();
         §@!z§(§[!l§,linear);
         §@!z§(§5#0§,easeIn);
         §@!z§(§?!&§,easeOut);
         §@!z§(§#!o§,easeInOut);
         §@!z§(§-#U§,easeOutIn);
         §@!z§(§4%§,easeInBack);
         §@!z§(§7""§,easeOutBack);
         §@!z§(§`#0§,easeInOutBack);
         §@!z§(§`!'§,easeOutInBack);
         §@!z§(§5!J§,easeInElastic);
         §@!z§(§]!Z§,easeOutElastic);
         §@!z§(§&#3§,easeInOutElastic);
         §@!z§(§&!3§,easeOutInElastic);
         §@!z§(§3"2§,easeInBounce);
         §@!z§(§8D§,easeOutBounce);
         §@!z§(§3L§,easeInOutBounce);
         §@!z§(§0"V§,easeOutInBounce);
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
         return §1"D§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §1"D§(easeOut,easeIn,param1);
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
         return §1"D§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §1"D§(easeOutBack,easeInBack,param1);
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
         return §1"D§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §1"D§(easeOutElastic,easeInElastic,param1);
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
         return §1"D§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §1"D§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §1"D§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
