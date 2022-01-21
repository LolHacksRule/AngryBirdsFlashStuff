package §1!#§
{
   import §5!4§.§,R§;
   import flash.utils.Dictionary;
   
   public class §3f§
   {
      
      public static const §=i§:String = "linear";
      
      public static const §0b§:String = "easeIn";
      
      public static const §5R§:String = "easeOut";
      
      public static const §?!"§:String = "easeInOut";
      
      public static const §"8§:String = "easeOutIn";
      
      public static const §=!T§:String = "easeInBack";
      
      public static const §4<§:String = "easeOutBack";
      
      public static const §`x§:String = "easeInOutBack";
      
      public static const §+9§:String = "easeOutInBack";
      
      public static const §8w§:String = "easeInElastic";
      
      public static const §<1§:String = "easeOutElastic";
      
      public static const §>z§:String = "easeInOutElastic";
      
      public static const §[§:String = "easeOutInElastic";
      
      public static const §'!B§:String = "easeInBounce";
      
      public static const §-^§:String = "easeOutBounce";
      
      public static const §"c§:String = "easeInOutBounce";
      
      public static const §16§:String = "easeOutInBounce";
      
      private static var §5L§:Dictionary;
       
      
      public function §3f§()
      {
         super();
         throw new §,R§();
      }
      
      public static function §,@§(param1:String) : Function
      {
         if(§5L§ == null)
         {
            §7! §();
         }
         return §5L§[param1];
      }
      
      public static function §0!6§(param1:String, param2:Function) : void
      {
         if(§5L§ == null)
         {
            §7! §();
         }
         §5L§[param1] = param2;
      }
      
      private static function §7! §() : void
      {
         §5L§ = new Dictionary();
         §0!6§(§=i§,linear);
         §0!6§(§0b§,easeIn);
         §0!6§(§5R§,easeOut);
         §0!6§(§?!"§,easeInOut);
         §0!6§(§"8§,easeOutIn);
         §0!6§(§=!T§,easeInBack);
         §0!6§(§4<§,easeOutBack);
         §0!6§(§`x§,easeInOutBack);
         §0!6§(§+9§,easeOutInBack);
         §0!6§(§8w§,easeInElastic);
         §0!6§(§<1§,easeOutElastic);
         §0!6§(§>z§,easeInOutElastic);
         §0!6§(§[§,easeOutInElastic);
         §0!6§(§'!B§,easeInBounce);
         §0!6§(§-^§,easeOutBounce);
         §0!6§(§"c§,easeInOutBounce);
         §0!6§(§16§,easeOutInBounce);
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
         return §8!T§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §8!T§(easeOut,easeIn,param1);
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
         return §8!T§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §8!T§(easeOutBack,easeInBack,param1);
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
         return §8!T§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §8!T§(easeOutElastic,easeInElastic,param1);
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
         return §8!T§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §8!T§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §8!T§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
