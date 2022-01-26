package §+>§
{
   import §+!=§.§;^§;
   import flash.utils.Dictionary;
   
   public class §4!7§
   {
      
      public static const §,!U§:String = "linear";
      
      public static const §>!N§:String = "easeIn";
      
      public static const §"9§:String = "easeOut";
      
      public static const §58§:String = "easeInOut";
      
      public static const §5!4§:String = "easeOutIn";
      
      public static const §8R§:String = "easeInBack";
      
      public static const §&!<§:String = "easeOutBack";
      
      public static const §9K§:String = "easeInOutBack";
      
      public static const §7!S§:String = "easeOutInBack";
      
      public static const §,L§:String = "easeInElastic";
      
      public static const §4?§:String = "easeOutElastic";
      
      public static const §^!I§:String = "easeInOutElastic";
      
      public static const §%8§:String = "easeOutInElastic";
      
      public static const §1!>§:String = "easeInBounce";
      
      public static const §94§:String = "easeOutBounce";
      
      public static const §'3§:String = "easeInOutBounce";
      
      public static const §]k§:String = "easeOutInBounce";
      
      private static var §!V§:Dictionary;
       
      
      public function §4!7§()
      {
         super();
         throw new §;^§();
      }
      
      public static function §[E§(param1:String) : Function
      {
         if(§!V§ == null)
         {
            §>a§();
         }
         return §!V§[param1];
      }
      
      public static function §82§(param1:String, param2:Function) : void
      {
         if(§!V§ == null)
         {
            §>a§();
         }
         §!V§[param1] = param2;
      }
      
      private static function §>a§() : void
      {
         §!V§ = new Dictionary();
         §82§(§,!U§,linear);
         §82§(§>!N§,easeIn);
         §82§(§"9§,easeOut);
         §82§(§58§,easeInOut);
         §82§(§5!4§,easeOutIn);
         §82§(§8R§,easeInBack);
         §82§(§&!<§,easeOutBack);
         §82§(§9K§,easeInOutBack);
         §82§(§7!S§,easeOutInBack);
         §82§(§,L§,easeInElastic);
         §82§(§4?§,easeOutElastic);
         §82§(§^!I§,easeInOutElastic);
         §82§(§%8§,easeOutInElastic);
         §82§(§1!>§,easeInBounce);
         §82§(§94§,easeOutBounce);
         §82§(§'3§,easeInOutBounce);
         §82§(§]k§,easeOutInBounce);
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
         return §1[§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §1[§(easeOut,easeIn,param1);
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
         return §1[§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §1[§(easeOutBack,easeInBack,param1);
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
         return §1[§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §1[§(easeOutElastic,easeInElastic,param1);
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
         return §1[§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §1[§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §1[§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
