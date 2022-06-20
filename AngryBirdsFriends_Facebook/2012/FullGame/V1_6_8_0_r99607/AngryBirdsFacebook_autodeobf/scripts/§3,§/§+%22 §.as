package §3,§
{
   import §9!H§.§<!s§;
   import §[!z§.§!"=§;
   import §[!z§.§7;§;
   import §^6§.§0!w§;
   
   public class §+" §
   {
      
      public static const §9F§:Number = 50;
      
      public static var §4j§:Number = 0;
      
      public static const §2O§:Number = 0.5;
      
      public static const §8"5§:Number = 0;
       
      
      public var §2A§:Number;
      
      public var §-8§:Number;
      
      public var §][§:Number;
      
      public var §[_§:Number;
      
      public var §5"@§:Number;
      
      public var §0!J§:§[!;§;
      
      public function §+" §(param1:§[!;§, param2:§!"=§)
      {
         var _loc5_:§7;§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§<!s§ = null;
         super();
         this.§0!J§ = param1;
         this.§2A§ = int.MAX_VALUE;
         this.§-8§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§#"'§)
         {
            _loc5_ = param2.§,!'§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §[!;§.§=!n§ * 4 * §[!;§.§4!O§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§2A§)
            {
               this.§2A§ = _loc7_;
            }
            if(_loc8_ > this.§-8§)
            {
               this.§-8§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§%!o§)
         {
            if((_loc9_ = param2.§&J§(_loc3_)).x < this.§2A§)
            {
               this.§2A§ = _loc9_.x;
            }
            if(_loc9_.x > this.§-8§)
            {
               this.§-8§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §[!;§.§=!n§ * §[!;§.§4!O§;
         this.§2A§ -= _loc4_;
         this.§-8§ += _loc4_;
         this.§5"@§ = §[!;§.§=!n§ * §[!;§.§4!O§ / (this.§-8§ - this.§2A§);
         this.§5"@§ = Math.max(this.§5"@§,§0!w§.§0C§);
         this.§[_§ = §8"5§;
         this.§][§ = this.§[_§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §`R§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§][§ || param2 > this.§[_§ + 50 || param1 < this.§2A§ || param1 > this.§-8§)
         {
            return true;
         }
         return false;
      }
   }
}
