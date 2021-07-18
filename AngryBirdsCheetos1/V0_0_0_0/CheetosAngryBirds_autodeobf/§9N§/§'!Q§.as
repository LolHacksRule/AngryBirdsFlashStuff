package §9N§
{
   import §,u§.§-!#§;
   import §5p§.§?M§;
   import §<!+§.§!T§;
   import §<!+§.§with§;
   
   public class §'!Q§
   {
      
      public static const §5r§:Number = 50;
      
      public static var §"G§:Number = 0;
      
      public static const §!!0§:Number = 0.5;
      
      public static const §[!,§:Number = 0;
       
      
      public var §?H§:Number;
      
      public var §'N§:Number;
      
      public var §@y§:Number;
      
      public var §;U§:Number;
      
      public var §`!N§:Number;
      
      public var §8@§:§9!%§;
      
      public function §'!Q§(param1:§9!%§, param2:§with§)
      {
         var _loc3_:§!T§ = null;
         var _loc4_:§-!#§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§8@§ = param1;
         this.§?H§ = int.MAX_VALUE;
         this.§'N§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§'I§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §9!%§.§?!=§ * 4 * §9!%§.§catch§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§?H§)
            {
               this.§?H§ = _loc7_;
            }
            if(_loc8_ > this.§'N§)
            {
               this.§'N§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§@k§)
         {
            if(_loc4_.x < this.§?H§)
            {
               this.§?H§ = _loc4_.x;
            }
            if(_loc4_.x > this.§'N§)
            {
               this.§'N§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §9!%§.§?!=§ * §9!%§.§catch§;
         this.§?H§ -= _loc5_;
         this.§'N§ += _loc5_;
         this.§`!N§ = §9!%§.§?!=§ * §9!%§.§catch§ / (this.§'N§ - this.§?H§);
         this.§`!N§ = Math.max(this.§`!N§,§?M§.§6! §);
         this.§;U§ = §[!,§;
         this.§@y§ = this.§;U§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §-8§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§@y§ || param2 > this.§;U§ + 50 || param1 < this.§?H§ || param1 > this.§'N§)
         {
            return true;
         }
         return false;
      }
   }
}
