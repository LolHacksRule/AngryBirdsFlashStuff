package §%x§
{
   import §#k§.§"!D§;
   import §>!C§.§'H§;
   import §>!C§.§9R§;
   import §[F§.§`m§;
   
   public class §;C§
   {
      
      public static const §7!5§:Number = 50;
      
      public static var §4!F§:Number = 0;
      
      public static const §8!2§:Number = 0.5;
      
      public static const §5N§:Number = 0;
       
      
      public var §+!0§:Number;
      
      public var §0!?§:Number;
      
      public var §+j§:Number;
      
      public var §=s§:Number;
      
      public var §5$§:Number;
      
      public var §7C§:§#;§;
      
      public function §;C§(param1:§#;§, param2:§9R§)
      {
         var _loc5_:§'H§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§"!D§ = null;
         super();
         this.§7C§ = param1;
         this.§+!0§ = int.MAX_VALUE;
         this.§0!?§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§`R§)
         {
            _loc5_ = param2.§#S§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §#;§.§9!7§ * 4 * §#;§.§`!2§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§+!0§)
            {
               this.§+!0§ = _loc7_;
            }
            if(_loc8_ > this.§0!?§)
            {
               this.§0!?§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§ M§)
         {
            if((_loc9_ = param2.§!6§(_loc3_)).x < this.§+!0§)
            {
               this.§+!0§ = _loc9_.x;
            }
            if(_loc9_.x > this.§0!?§)
            {
               this.§0!?§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §#;§.§9!7§ * §#;§.§`!2§;
         this.§+!0§ -= _loc4_;
         this.§0!?§ += _loc4_;
         this.§5$§ = §#;§.§9!7§ * §#;§.§`!2§ / (this.§0!?§ - this.§+!0§);
         this.§5$§ = Math.max(this.§5$§,§`m§.§4a§);
         this.§=s§ = §5N§;
         this.§+j§ = this.§=s§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §'J§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§+j§ || param2 > this.§=s§ + 50 || param1 < this.§+!0§ || param1 > this.§0!?§)
         {
            return true;
         }
         return false;
      }
   }
}
