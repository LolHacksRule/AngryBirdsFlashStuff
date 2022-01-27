package §,!F§
{
   import §%y§.§^!D§;
   import §3!%§.§#!K§;
   import §3!%§.§3P§;
   import §[!A§.§+!!§;
   
   public class §`"§
   {
      
      public static const §?!K§:Number = 50;
      
      public static var §^!6§:Number = 0;
      
      public static const § w§:Number = 0.5;
      
      public static const §-!9§:Number = 0;
       
      
      public var §?>§:Number;
      
      public var §2M§:Number;
      
      public var §#!?§:Number;
      
      public var §-u§:Number;
      
      public var §-!L§:Number;
      
      public var §&§:§#§;
      
      public function §`"§(param1:§#§, param2:§#!K§)
      {
         var _loc5_:§3P§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§^!D§ = null;
         super();
         this.§&§ = param1;
         this.§?>§ = int.MAX_VALUE;
         this.§2M§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§0<§)
         {
            _loc5_ = param2.§4!9§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §#§.§'!#§ * 4 * §#§.§67§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§?>§)
            {
               this.§?>§ = _loc7_;
            }
            if(_loc8_ > this.§2M§)
            {
               this.§2M§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§`!;§)
         {
            if((_loc9_ = param2.§7r§(_loc3_)).x < this.§?>§)
            {
               this.§?>§ = _loc9_.x;
            }
            if(_loc9_.x > this.§2M§)
            {
               this.§2M§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §#§.§'!#§ * §#§.§67§;
         this.§?>§ -= _loc4_;
         this.§2M§ += _loc4_;
         this.§-!L§ = §#§.§'!#§ * §#§.§67§ / (this.§2M§ - this.§?>§);
         this.§-!L§ = Math.max(this.§-!L§,§+!!§.§9l§);
         this.§-u§ = §-!9§;
         this.§#!?§ = this.§-u§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §%^§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§#!?§ || param2 > this.§-u§ + 50 || param1 < this.§?>§ || param1 > this.§2M§)
         {
            return true;
         }
         return false;
      }
   }
}
