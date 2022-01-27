package §,T§
{
   import §5!6§.§&!!§;
   import §6!L§.§#!M§;
   import §6!L§.§4!5§;
   import §@!P§.§-b§;
   
   public class §9g§
   {
      
      public static const §^&§:Number = 50;
      
      public static var §6X§:Number = 0;
      
      public static const §=8§:Number = 0.5;
      
      public static const § !B§:Number = 0;
       
      
      public var §"!Q§:Number;
      
      public var §5p§:Number;
      
      public var §;t§:Number;
      
      public var §+D§:Number;
      
      public var §>;§:Number;
      
      public var §34§:§[-§;
      
      public function §9g§(param1:§[-§, param2:§#!M§)
      {
         var _loc5_:§4!5§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§-b§ = null;
         super();
         this.§34§ = param1;
         this.§"!Q§ = int.MAX_VALUE;
         this.§5p§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§<!+§)
         {
            _loc5_ = param2.§7!3§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §[-§.§?q§ * 4 * §[-§.§;5§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§"!Q§)
            {
               this.§"!Q§ = _loc7_;
            }
            if(_loc8_ > this.§5p§)
            {
               this.§5p§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§5v§)
         {
            if((_loc9_ = param2.§?!!§(_loc3_)).x < this.§"!Q§)
            {
               this.§"!Q§ = _loc9_.x;
            }
            if(_loc9_.x > this.§5p§)
            {
               this.§5p§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §[-§.§?q§ * §[-§.§;5§;
         this.§"!Q§ -= _loc4_;
         this.§5p§ += _loc4_;
         this.§>;§ = §[-§.§?q§ * §[-§.§;5§ / (this.§5p§ - this.§"!Q§);
         this.§>;§ = Math.max(this.§>;§,§&!!§.§#7§);
         this.§+D§ = § !B§;
         this.§;t§ = this.§+D§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §9q§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§;t§ || param2 > this.§+D§ + 50 || param1 < this.§"!Q§ || param1 > this.§5p§)
         {
            return true;
         }
         return false;
      }
   }
}
