package §!!V§
{
   import § t§.§?U§;
   import §6%§.§;w§;
   import §>8§.§#%§;
   import §>8§.§-!H§;
   
   public class §@!§
   {
      
      public static const §<k§:Number = 50;
      
      public static var §set §:Number = 0;
      
      public static const §&=§:Number = 0.5;
      
      public static const §9h§:Number = 0;
       
      
      public var §^]§:Number;
      
      public var §@!K§:Number;
      
      public var §=%§:Number;
      
      public var §]!Z§:Number;
      
      public var §4!=§:Number;
      
      public var §%v§:§&I§;
      
      public function §@!§(param1:§&I§, param2:§#%§)
      {
         var _loc5_:§-!H§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§;w§ = null;
         super();
         this.§%v§ = param1;
         this.§^]§ = int.MAX_VALUE;
         this.§@!K§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§8x§)
         {
            _loc5_ = param2.§^!9§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §&I§.§?!>§ * 4 * §&I§.§]!H§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§^]§)
            {
               this.§^]§ = _loc7_;
            }
            if(_loc8_ > this.§@!K§)
            {
               this.§@!K§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§@M§)
         {
            if((_loc9_ = param2.§8v§(_loc3_)).x < this.§^]§)
            {
               this.§^]§ = _loc9_.x;
            }
            if(_loc9_.x > this.§@!K§)
            {
               this.§@!K§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §&I§.§?!>§ * §&I§.§]!H§;
         this.§^]§ -= _loc4_;
         this.§@!K§ += _loc4_;
         this.§4!=§ = §&I§.§?!>§ * §&I§.§]!H§ / (this.§@!K§ - this.§^]§);
         this.§4!=§ = Math.max(this.§4!=§,§?U§.§9X§);
         this.§]!Z§ = §9h§;
         this.§=%§ = this.§]!Z§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §9?§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§=%§ || param2 > this.§]!Z§ + 50 || param1 < this.§^]§ || param1 > this.§@!K§)
         {
            return true;
         }
         return false;
      }
   }
}
