package §9!?§
{
   import § "§.§91§;
   import § "§.§;4§;
   import §[+§.§'!6§;
   import §]7§.§#G§;
   
   public class §&r§
   {
      
      public static const §0§:Number = 50;
      
      public static var §[!<§:Number = 0;
      
      public static const §&"§:Number = 0.5;
      
      public static const §8[§:Number = 0;
       
      
      public var § !%§:Number;
      
      public var §"&§:Number;
      
      public var §5K§:Number;
      
      public var §;!#§:Number;
      
      public var §9l§:Number;
      
      public var §]!9§:§^]§;
      
      public function §&r§(param1:§^]§, param2:§;4§)
      {
         var _loc5_:§91§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§#G§ = null;
         super();
         this.§]!9§ = param1;
         this.§ !%§ = int.MAX_VALUE;
         this.§"&§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§7W§)
         {
            _loc5_ = param2.§-v§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §^]§.§true § * 4 * §^]§.§ u§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§ !%§)
            {
               this.§ !%§ = _loc7_;
            }
            if(_loc8_ > this.§"&§)
            {
               this.§"&§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§+N§)
         {
            if((_loc9_ = param2.§7!6§(_loc3_)).x < this.§ !%§)
            {
               this.§ !%§ = _loc9_.x;
            }
            if(_loc9_.x > this.§"&§)
            {
               this.§"&§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §^]§.§true § * §^]§.§ u§;
         this.§ !%§ -= _loc4_;
         this.§"&§ += _loc4_;
         this.§9l§ = §^]§.§true § * §^]§.§ u§ / (this.§"&§ - this.§ !%§);
         this.§9l§ = Math.max(this.§9l§,§'!6§.§^!#§);
         this.§;!#§ = §8[§;
         this.§5K§ = this.§;!#§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §8@§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§5K§ || param2 > this.§;!#§ + 50 || param1 < this.§ !%§ || param1 > this.§"&§)
         {
            return true;
         }
         return false;
      }
   }
}
