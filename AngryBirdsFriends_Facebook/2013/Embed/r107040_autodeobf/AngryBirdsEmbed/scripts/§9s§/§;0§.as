package §9s§
{
   import § !'§.§>v§;
   import §6Z§.§"!;§;
   import §6Z§.§%i§;
   import §@!+§.§+_§;
   
   public class §;0§
   {
      
      public static const §]_§:Number = 50;
      
      public static var §`%§:Number = 0;
      
      public static const §'#§:Number = 0.5;
      
      public static const §@`§:Number = 0;
       
      
      public var §2;§:Number;
      
      public var §-p§:Number;
      
      public var §0]§:Number;
      
      public var §]!7§:Number;
      
      public var §[5§:Number;
      
      public var §4!I§:§^9§;
      
      public function §;0§(param1:§^9§, param2:§"!;§)
      {
         var _loc5_:§%i§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§>v§ = null;
         super();
         this.§4!I§ = param1;
         this.§2;§ = int.MAX_VALUE;
         this.§-p§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§!>§)
         {
            _loc5_ = param2.§9!;§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §^9§.§@o§ * 4 * §^9§.§5T§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§2;§)
            {
               this.§2;§ = _loc7_;
            }
            if(_loc8_ > this.§-p§)
            {
               this.§-p§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§8k§)
         {
            if((_loc9_ = param2.§]!G§(_loc3_)).x < this.§2;§)
            {
               this.§2;§ = _loc9_.x;
            }
            if(_loc9_.x > this.§-p§)
            {
               this.§-p§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §^9§.§@o§ * §^9§.§5T§;
         this.§2;§ -= _loc4_;
         this.§-p§ += _loc4_;
         this.§[5§ = §^9§.§@o§ * §^9§.§5T§ / (this.§-p§ - this.§2;§);
         this.§[5§ = Math.max(this.§[5§,§+_§.§1!1§);
         this.§]!7§ = §@`§;
         this.§0]§ = this.§]!7§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §>!$§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§0]§ || param2 > this.§]!7§ + 50 || param1 < this.§2;§ || param1 > this.§-p§)
         {
            return true;
         }
         return false;
      }
   }
}
