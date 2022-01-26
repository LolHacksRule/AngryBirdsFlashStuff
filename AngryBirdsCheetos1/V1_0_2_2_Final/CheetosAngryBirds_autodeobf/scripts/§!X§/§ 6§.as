package §!X§
{
   import §%J§.§`u§;
   import §?h§.§<I§;
   import §]!F§.§&!]§;
   import §]!F§.§'A§;
   
   public class § 6§
   {
      
      public static const § +§:Number = 50;
      
      public static var § q§:Number = 0;
      
      public static const §!M§:Number = 0.5;
      
      public static const §]G§:Number = 0;
       
      
      public var §3!9§:Number;
      
      public var §3!J§:Number;
      
      public var §<![§:Number;
      
      public var §[w§:Number;
      
      public var §>!§:Number;
      
      public var §>`§:§86§;
      
      public function § 6§(param1:§86§, param2:§&!]§)
      {
         var _loc5_:§'A§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§`u§ = null;
         super();
         this.§>`§ = param1;
         this.§3!9§ = int.MAX_VALUE;
         this.§3!J§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§0^§)
         {
            _loc5_ = param2.§`;§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §86§.§super§ * 4 * §86§.§7!4§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§3!9§)
            {
               this.§3!9§ = _loc7_;
            }
            if(_loc8_ > this.§3!J§)
            {
               this.§3!J§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§5"§)
         {
            if((_loc9_ = param2.§1T§(_loc3_)).x < this.§3!9§)
            {
               this.§3!9§ = _loc9_.x;
            }
            if(_loc9_.x > this.§3!J§)
            {
               this.§3!J§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §86§.§super§ * §86§.§7!4§;
         this.§3!9§ -= _loc4_;
         this.§3!J§ += _loc4_;
         this.§>!§ = §86§.§super§ * §86§.§7!4§ / (this.§3!J§ - this.§3!9§);
         this.§>!§ = Math.max(this.§>!§,§<I§.§2!Y§);
         this.§[w§ = §]G§;
         this.§<![§ = this.§[w§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §%F§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§<![§ || param2 > this.§[w§ + 50 || param1 < this.§3!9§ || param1 > this.§3!J§)
         {
            return true;
         }
         return false;
      }
   }
}
