package §?b§
{
   import §'!E§.§]g§;
   import §6J§.§&!;§;
   import §6J§.§]<§;
   import §@!!§.§=_§;
   
   public class §9H§
   {
      
      public static const §?U§:Number = 50;
      
      public static var §#!=§:Number = 0;
      
      public static const §%2§:Number = 0.5;
      
      public static const §+§:Number = 0;
       
      
      public var §73§:Number;
      
      public var §#X§:Number;
      
      public var §&7§:Number;
      
      public var §6o§:Number;
      
      public var §9^§:Number;
      
      public var §4!%§:§7!,§;
      
      public function §9H§(param1:§7!,§, param2:§&!;§)
      {
         var _loc5_:§]<§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§]g§ = null;
         super();
         this.§4!%§ = param1;
         this.§73§ = int.MAX_VALUE;
         this.§#X§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§&!@§)
         {
            _loc5_ = param2.§5!1§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §7!,§.§[>§ * 4 * §7!,§.§ '§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§73§)
            {
               this.§73§ = _loc7_;
            }
            if(_loc8_ > this.§#X§)
            {
               this.§#X§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§=^§)
         {
            if((_loc9_ = param2.§"0§(_loc3_)).x < this.§73§)
            {
               this.§73§ = _loc9_.x;
            }
            if(_loc9_.x > this.§#X§)
            {
               this.§#X§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §7!,§.§[>§ * §7!,§.§ '§;
         this.§73§ -= _loc4_;
         this.§#X§ += _loc4_;
         this.§9^§ = §7!,§.§[>§ * §7!,§.§ '§ / (this.§#X§ - this.§73§);
         this.§9^§ = Math.max(this.§9^§,§=_§.§5!0§);
         this.§6o§ = §+§;
         this.§&7§ = this.§6o§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §>W§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§&7§ || param2 > this.§6o§ + 50 || param1 < this.§73§ || param1 > this.§#X§)
         {
            return true;
         }
         return false;
      }
   }
}
