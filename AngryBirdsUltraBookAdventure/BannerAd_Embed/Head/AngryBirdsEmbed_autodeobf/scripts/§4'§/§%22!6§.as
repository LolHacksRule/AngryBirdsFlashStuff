package §4'§
{
   import §]c§.§^!"§;
   import flash.utils.Dictionary;
   
   public class §"!6§
   {
      
      public static const §>C§:String = "linear";
      
      public static const §'P§:String = "easeIn";
      
      public static const §&T§:String = "easeOut";
      
      public static const §else §:String = "easeInOut";
      
      public static const §3!C§:String = "easeOutIn";
      
      public static const §>!>§:String = "easeInBack";
      
      public static const §33§:String = "easeOutBack";
      
      public static const §2d§:String = "easeInOutBack";
      
      public static const §9!,§:String = "easeOutInBack";
      
      public static const §@9§:String = "easeInElastic";
      
      public static const §9B§:String = "easeOutElastic";
      
      public static const §'!G§:String = "easeInOutElastic";
      
      public static const §3!=§:String = "easeOutInElastic";
      
      public static const §^S§:String = "easeInBounce";
      
      public static const §7<§:String = "easeOutBounce";
      
      public static const §1!3§:String = "easeInOutBounce";
      
      public static const §?V§:String = "easeOutInBounce";
      
      private static var §3!3§:Dictionary;
       
      
      public function §"!6§()
      {
         super();
         throw new §^!"§();
      }
      
      public static function §@+§(param1:String) : Function
      {
         if(§3!3§ == null)
         {
            §8>§();
         }
         return §3!3§[param1];
      }
      
      public static function §+!&§(param1:String, param2:Function) : void
      {
         if(§3!3§ == null)
         {
            §8>§();
         }
         §3!3§[param1] = param2;
      }
      
      private static function §8>§() : void
      {
         §3!3§ = new Dictionary();
         §+!&§(§>C§,linear);
         §+!&§(§'P§,easeIn);
         §+!&§(§&T§,easeOut);
         §+!&§(§else §,easeInOut);
         §+!&§(§3!C§,easeOutIn);
         §+!&§(§>!>§,easeInBack);
         §+!&§(§33§,easeOutBack);
         §+!&§(§2d§,easeInOutBack);
         §+!&§(§9!,§,easeOutInBack);
         §+!&§(§@9§,easeInElastic);
         §+!&§(§9B§,easeOutElastic);
         §+!&§(§'!G§,easeInOutElastic);
         §+!&§(§3!=§,easeOutInElastic);
         §+!&§(§^S§,easeInBounce);
         §+!&§(§7<§,easeOutBounce);
         §+!&§(§1!3§,easeInOutBounce);
         §+!&§(§?V§,easeOutInBounce);
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
         return §0y§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §0y§(easeOut,easeIn,param1);
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
         return §0y§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §0y§(easeOutBack,easeInBack,param1);
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
         return §0y§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §0y§(easeOutElastic,easeInElastic,param1);
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
         return §0y§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §0y§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §0y§(param1:Function, param2:Function, param3:Number) : Number
      {
         if(param3 < 0.5)
         {
            return 0.5 * param1(param3 * 2);
         }
         return 0.5 * param2((param3 - 0.5) * 2) + 0.5;
      }
   }
}
