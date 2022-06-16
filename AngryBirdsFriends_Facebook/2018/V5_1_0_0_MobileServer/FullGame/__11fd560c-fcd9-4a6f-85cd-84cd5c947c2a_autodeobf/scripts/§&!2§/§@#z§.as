package §&!2§
{
   import §+#B§.§'"V§;
   import flash.utils.Dictionary;
   
   public class §@#z§
   {
      
      public static const §'"X§:String = "linear";
      
      public static const §9!1§:String = "easeIn";
      
      public static const §^!i§:String = "easeOut";
      
      public static const §`b§:String = "easeInOut";
      
      public static const §9#3§:String = "easeOutIn";
      
      public static const §1#C§:String = "easeInBack";
      
      public static const §+0§:String = "easeOutBack";
      
      public static const §4#o§:String = "easeInOutBack";
      
      public static const §2o§:String = "easeOutInBack";
      
      public static const §package§:String = "easeInElastic";
      
      public static const §&"S§:String = "easeOutElastic";
      
      public static const §>!§:String = "easeInOutElastic";
      
      public static const §]!X§:String = "easeOutInElastic";
      
      public static const §-#S§:String = "easeInBounce";
      
      public static const §&#y§:String = "easeOutBounce";
      
      public static const §6#L§:String = "easeInOutBounce";
      
      public static const §&V§:String = "easeOutInBounce";
      
      private static var §=#K§:Dictionary;
       
      
      public function §@#z§()
      {
         super();
         throw new §'"V§();
      }
      
      public static function §+"!§(param1:String) : Function
      {
         if(§=#K§ == null)
         {
            §7$%§();
         }
         return §=#K§[param1];
      }
      
      public static function §4l§(param1:String, param2:Function) : void
      {
         if(§=#K§ == null)
         {
            §7$%§();
         }
         §=#K§[param1] = param2;
      }
      
      private static function §7$%§() : void
      {
         §=#K§ = new Dictionary();
         §4l§(§'"X§,linear);
         §4l§(§9!1§,easeIn);
         §4l§(§^!i§,easeOut);
         §4l§(§`b§,easeInOut);
         §4l§(§9#3§,easeOutIn);
         §4l§(§1#C§,easeInBack);
         §4l§(§+0§,easeOutBack);
         §4l§(§4#o§,easeInOutBack);
         §4l§(§2o§,easeOutInBack);
         §4l§(§package§,easeInElastic);
         §4l§(§&"S§,easeOutElastic);
         §4l§(§>!§,easeInOutElastic);
         §4l§(§]!X§,easeOutInElastic);
         §4l§(§-#S§,easeInBounce);
         §4l§(§&#y§,easeOutBounce);
         §4l§(§6#L§,easeInOutBounce);
         §4l§(§&V§,easeOutInBounce);
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
         return §5#>§(easeIn,easeOut,param1);
      }
      
      protected static function easeOutIn(param1:Number) : Number
      {
         return §5#>§(easeOut,easeIn,param1);
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
         return §5#>§(easeInBack,easeOutBack,param1);
      }
      
      protected static function easeOutInBack(param1:Number) : Number
      {
         return §5#>§(easeOutBack,easeInBack,param1);
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
         return §5#>§(easeInElastic,easeOutElastic,param1);
      }
      
      protected static function easeOutInElastic(param1:Number) : Number
      {
         return §5#>§(easeOutElastic,easeInElastic,param1);
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
         return §5#>§(easeInBounce,easeOutBounce,param1);
      }
      
      protected static function easeOutInBounce(param1:Number) : Number
      {
         return §5#>§(easeOutBounce,easeInBounce,param1);
      }
      
      protected static function §5#>§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
