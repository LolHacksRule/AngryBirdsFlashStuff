package §[>§
{
   import §'"T§.§`#y§;
   import flash.utils.Dictionary;
   
   public class §>S§
   {
      
      public static const §6#g§:String = "linear";
      
      public static const §^"d§:String = "easeIn";
      
      public static const §9O§:String = "easeOut";
      
      public static const §&V§:String = "easeInOut";
      
      public static const §&K§:String = "easeOutIn";
      
      public static const §5$9§:String = "easeInBack";
      
      public static const §-#_§:String = "easeOutBack";
      
      public static const §&$,§:String = "easeInOutBack";
      
      public static const §&!n§:String = "easeOutInBack";
      
      public static const §0y§:String = "easeInElastic";
      
      public static const §!!8§:String = "easeOutElastic";
      
      public static const §4"5§:String = "easeInOutElastic";
      
      public static const §7"=§:String = "easeOutInElastic";
      
      public static const §@"H§:String = "easeInBounce";
      
      public static const §8Q§:String = "easeOutBounce";
      
      public static const §[?§:String = "easeInOutBounce";
      
      public static const §]_§:String = "easeOutInBounce";
      
      private static var §5$?§:Dictionary;
       
      
      public function §>S§()
      {
         super();
         throw new §`#y§();
      }
      
      public static function §,"l§(param1:String) : Function
      {
         if(§5$?§ == null)
         {
            §=#c§();
         }
         return §5$?§[param1];
      }
      
      public static function §!@§(param1:String, param2:Function) : void
      {
         if(§5$?§ == null)
         {
            §=#c§();
         }
         §5$?§[param1] = param2;
      }
      
      private static function §=#c§() : void
      {
         §5$?§ = new Dictionary();
         §!@§(§6#g§,linear);
         §!@§(§^"d§,easeIn);
         §!@§(§9O§,easeOut);
         §!@§(§&V§,easeInOut);
         §!@§(§&K§,easeOutIn);
         §!@§(§5$9§,easeInBack);
         §!@§(§-#_§,easeOutBack);
         §!@§(§&$,§,easeInOutBack);
         §!@§(§&!n§,easeOutInBack);
         §!@§(§0y§,easeInElastic);
         §!@§(§!!8§,easeOutElastic);
         §!@§(§4"5§,easeInOutElastic);
         §!@§(§7"=§,easeOutInElastic);
         §!@§(§@"H§,easeInBounce);
         §!@§(§8Q§,easeOutBounce);
         §!@§(§[?§,easeInOutBounce);
         §!@§(§]_§,easeOutInBounce);
      }
      
      protected static function linear(param1:Number) : Number
      {
         return param1;
      }
      
      protected static function easeIn(param1:Number) : Number
      {
         return param1 * param1 * param1;
      }
      
      protected static function easeOut(param1:Number) : Number
      {
         var _loc2_:Number = param1 - 1;
         return _loc2_ * _loc2_ * _loc2_ + 1;
      }
      
      protected static function easeInOut(param1:Number) : Number
      {
         return §0"8§(easeIn,easeOut,param1);
      }
      
      protected static function easeOutIn(param1:Number) : Number
      {
         return §0"8§(easeOut,easeIn,param1);
      }
      
      protected static function easeInBack(param1:Number) : Number
      {
         return Math.pow(param1,2) * ((1.70158 + 1) * param1 - 1.70158);
      }
      
      protected static function easeOutBack(param1:Number) : Number
      {
         var _loc2_:Number = param1 - 1;
         return Math.pow(_loc2_,2) * ((1.70158 + 1) * _loc2_ + 1.70158) + 1;
      }
      
      protected static function easeInOutBack(param1:Number) : Number
      {
         return §0"8§(easeInBack,easeOutBack,param1);
      }
      
      protected static function easeOutInBack(param1:Number) : Number
      {
         return §0"8§(easeOutBack,easeInBack,param1);
      }
      
      protected static function easeInElastic(param1:Number) : Number
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
      
      protected static function easeOutElastic(param1:Number) : Number
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
      
      protected static function easeInOutElastic(param1:Number) : Number
      {
         return §0"8§(easeInElastic,easeOutElastic,param1);
      }
      
      protected static function easeOutInElastic(param1:Number) : Number
      {
         return §0"8§(easeOutElastic,easeInElastic,param1);
      }
      
      protected static function easeInBounce(param1:Number) : Number
      {
         return 1 - easeOutBounce(1 - param1);
      }
      
      protected static function easeOutBounce(param1:Number) : Number
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
      
      protected static function easeInOutBounce(param1:Number) : Number
      {
         return §0"8§(easeInBounce,easeOutBounce,param1);
      }
      
      protected static function easeOutInBounce(param1:Number) : Number
      {
         return §0"8§(easeOutBounce,easeInBounce,param1);
      }
      
      protected static function §0"8§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
