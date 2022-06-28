package §,!5§
{
   import § use§.§0!D§;
   import §0!N§.§4!=§;
   import §0!N§.§=+§;
   import §2!R§.§#C§;
   
   public class §[$§
   {
      
      public static const §5#§:Number = 50;
      
      public static var §,!s§:Number = 0;
      
      public static const §^K§:Number = 0.5;
      
      public static const §@P§:Number = 0;
       
      
      public var §"Z§:Number;
      
      public var §!!_§:Number;
      
      public var §&Q§:Number;
      
      public var §>6§:Number;
      
      public var §-!V§:Number;
      
      public var §?l§:§^g§;
      
      public function §[$§(param1:§^g§, param2:§=+§)
      {
         var _loc5_:§4!=§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§0!D§ = null;
         super();
         this.§?l§ = param1;
         this.§"Z§ = int.MAX_VALUE;
         this.§!!_§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§-!"§)
         {
            _loc5_ = param2.§6!L§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §^g§.§<!"§ * 4 * §^g§.§^!S§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§"Z§)
            {
               this.§"Z§ = _loc7_;
            }
            if(_loc8_ > this.§!!_§)
            {
               this.§!!_§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§ %§)
         {
            if((_loc9_ = param2.§8!3§(_loc3_)).x < this.§"Z§)
            {
               this.§"Z§ = _loc9_.x;
            }
            if(_loc9_.x > this.§!!_§)
            {
               this.§!!_§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §^g§.§<!"§ * §^g§.§^!S§;
         this.§"Z§ -= _loc4_;
         this.§!!_§ += _loc4_;
         this.§-!V§ = §^g§.§<!"§ * §^g§.§^!S§ / (this.§!!_§ - this.§"Z§);
         this.§-!V§ = Math.max(this.§-!V§,§#C§.§7$§);
         this.§>6§ = §@P§;
         this.§&Q§ = this.§>6§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §,A§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§&Q§ || param2 > this.§>6§ + 50 || param1 < this.§"Z§ || param1 > this.§!!_§)
         {
            return true;
         }
         return false;
      }
   }
}
