package §]k§
{
   import § !T§.§%!D§;
   import § !T§.§7@§;
   import § 8§.§?!9§;
   import §0!s§.§5!L§;
   
   public class §]W§
   {
      
      public static const §+C§:Number = 50;
      
      public static const §4U§:Number = 0;
       
      
      protected var §'v§:Number;
      
      protected var §0s§:Number;
      
      protected var §]!7§:Number;
      
      protected var §6a§:Number;
      
      public var §?!1§:Number;
      
      public var §#g§:§<S§;
      
      public function §]W§(param1:§<S§, param2:§7@§)
      {
         var _loc5_:§%!D§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§5!L§ = null;
         super();
         this.§#g§ = param1;
         this.§'v§ = int.MAX_VALUE;
         this.§0s§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§2"!§)
         {
            _loc5_ = param2.§'!;§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §<S§.§7!y§ * 4 * §<S§.§;!Q§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§'v§)
            {
               this.§'v§ = _loc7_;
            }
            if(_loc8_ > this.§0s§)
            {
               this.§0s§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§'v§)
            {
               this.§'v§ = _loc9_.x;
            }
            if(_loc9_.x > this.§0s§)
            {
               this.§0s§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §<S§.§7!y§ * §<S§.§;!Q§;
         this.§'v§ -= _loc4_;
         this.§0s§ += _loc4_;
         this.§?!1§ = §<S§.§7!y§ * §<S§.§;!Q§ / (this.§0s§ - this.§'v§);
         this.§?!1§ = Math.max(this.§?!1§,§?!9§.§%w§);
         this.§]!7§ = param2.slingshotY - 160;
         this.§6a§ = param2.slingshotY + 160;
      }
      
      public function get §>!n§() : Number
      {
         return this.§'v§;
      }
      
      public function get §@!F§() : Number
      {
         return this.§0s§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §'!%§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§]!7§ || param2 > this.§6a§ || param1 < this.§'v§ || param1 > this.§0s§)
         {
            return true;
         }
         return false;
      }
   }
}
