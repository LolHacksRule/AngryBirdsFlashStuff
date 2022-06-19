package §?'§
{
   import §#K§.§?I§;
   import §#K§.§^b§;
   import §8!P§.§5p§;
   import §9h§.§,u§;
   
   public class §`!7§
   {
      
      public static const §-8§:Number = 50;
      
      public static var §5r§:Number = 0;
      
      public static const §"G§:Number = 0.5;
      
      public static const §!!0§:Number = 0;
       
      
      public var §'!Q§:Number;
      
      public var §?H§:Number;
      
      public var §'N§:Number;
      
      public var §@y§:Number;
      
      public var §;U§:Number;
      
      public var §;c§:§9N§;
      
      public function §`!7§(param1:§9N§, param2:§?I§)
      {
         var _loc3_:§^b§ = null;
         var _loc4_:§,u§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§;c§ = param1;
         this.§'!Q§ = int.MAX_VALUE;
         this.§?H§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§2j§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §9N§.§ !4§ * 4 * §9N§.§8!5§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§'!Q§)
            {
               this.§'!Q§ = _loc7_;
            }
            if(_loc8_ > this.§?H§)
            {
               this.§?H§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§%!&§)
         {
            if(_loc4_.x < this.§'!Q§)
            {
               this.§'!Q§ = _loc4_.x;
            }
            if(_loc4_.x > this.§?H§)
            {
               this.§?H§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §9N§.§ !4§ * §9N§.§8!5§;
         this.§'!Q§ -= _loc5_;
         this.§?H§ += _loc5_;
         this.§;U§ = §9N§.§ !4§ * §9N§.§8!5§ / (this.§?H§ - this.§'!Q§);
         this.§;U§ = Math.max(this.§;U§,§5p§.§,S§);
         this.§@y§ = §!!0§;
         this.§'N§ = this.§@y§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §`!N§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§'N§ || param2 > this.§@y§ + 50 || param1 < this.§'!Q§ || param1 > this.§?H§)
         {
            return true;
         }
         return false;
      }
   }
}
