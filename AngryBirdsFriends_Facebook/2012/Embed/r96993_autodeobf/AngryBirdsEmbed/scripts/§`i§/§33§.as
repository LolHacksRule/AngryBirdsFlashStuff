package §`i§
{
   import §+6§.§4j§;
   import §-!C§.§3!H§;
   import §-!C§.§;]§;
   import §0!D§.§55§;
   
   public class §33§
   {
      
      public static const §`O§:Number = 50;
      
      public static var §`!B§:Number = 0;
      
      public static const §7D§:Number = 0.5;
      
      public static const §0o§:Number = 0;
       
      
      public var § Q§:Number;
      
      public var §6I§:Number;
      
      public var §@9§:Number;
      
      public var §2B§:Number;
      
      public var §@?§:Number;
      
      public var §"8§:§2W§;
      
      public function §33§(param1:§2W§, param2:§3!H§)
      {
         var _loc5_:§;]§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§55§ = null;
         super();
         this.§"8§ = param1;
         this.§ Q§ = int.MAX_VALUE;
         this.§6I§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§28§)
         {
            _loc5_ = param2.§@L§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §2W§.§9^§ * 4 * §2W§.§0;§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§ Q§)
            {
               this.§ Q§ = _loc7_;
            }
            if(_loc8_ > this.§6I§)
            {
               this.§6I§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§`$§)
         {
            if((_loc9_ = param2.§#!§(_loc3_)).x < this.§ Q§)
            {
               this.§ Q§ = _loc9_.x;
            }
            if(_loc9_.x > this.§6I§)
            {
               this.§6I§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §2W§.§9^§ * §2W§.§0;§;
         this.§ Q§ -= _loc4_;
         this.§6I§ += _loc4_;
         this.§@?§ = §2W§.§9^§ * §2W§.§0;§ / (this.§6I§ - this.§ Q§);
         this.§@?§ = Math.max(this.§@?§,§4j§.§'Z§);
         this.§2B§ = §0o§;
         this.§@9§ = this.§2B§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §@>§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§@9§ || param2 > this.§2B§ + 50 || param1 < this.§ Q§ || param1 > this.§6I§)
         {
            return true;
         }
         return false;
      }
   }
}
