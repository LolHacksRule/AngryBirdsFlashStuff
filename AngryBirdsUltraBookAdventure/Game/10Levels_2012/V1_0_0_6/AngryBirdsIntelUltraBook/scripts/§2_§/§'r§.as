package §2_§
{
   import §,!!§.§#!Y§;
   import §3!G§.§ y§;
   import §3!G§.§'Z§;
   import §4!O§.;
   
   public class §'r§
   {
      
      public static const §6F§:Number = 50;
      
      public static var § !F§:Number = 0;
      
      public static const §3e§:Number = 0.5;
      
      public static const §5,§:Number = 0;
       
      
      public var §#!l§:Number;
      
      public var §-!U§:Number;
      
      public var §#8§:Number;
      
      public var §%!^§:Number;
      
      public var §1M§:Number;
      
      public var §#!3§:§'u§;
      
      public function §'r§(param1:§'u§, param2:§ y§)
      {
         var _loc5_:§'Z§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§#4§ = null;
         super();
         this.§#!3§ = param1;
         this.§#!l§ = int.MAX_VALUE;
         this.§-!U§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§#!y§)
         {
            _loc5_ = param2.§>!>§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §'u§.§?!8§ * 4 * §'u§.§18§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§#!l§)
            {
               this.§#!l§ = _loc7_;
            }
            if(_loc8_ > this.§-!U§)
            {
               this.§-!U§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§=!B§)
         {
            if((_loc9_ = param2.§>J§(_loc3_)).x < this.§#!l§)
            {
               this.§#!l§ = _loc9_.x;
            }
            if(_loc9_.x > this.§-!U§)
            {
               this.§-!U§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §'u§.§?!8§ * §'u§.§18§;
         this.§#!l§ -= _loc4_;
         this.§-!U§ += _loc4_;
         this.§1M§ = §'u§.§?!8§ * §'u§.§18§ / (this.§-!U§ - this.§#!l§);
         this.§1M§ = Math.max(this.§1M§,§#!Y§.§!!I§);
         this.§%!^§ = §5,§;
         this.§#8§ = this.§%!^§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §4!]§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§#8§ || param2 > this.§%!^§ + 50 || param1 < this.§#!l§ || param1 > this.§-!U§)
         {
            return true;
         }
         return false;
      }
   }
}
