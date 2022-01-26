package §3E§
{
   import §!U§.§'!8§;
   import §"!@§.§&;§;
   import §"!@§.§]8§;
   import §,!E§.§[+§;
   
   public class §<!9§
   {
      
      public static const §;g§:Number = 50;
      
      public static var §3w§:Number = 0;
      
      public static const §&0§:Number = 0.5;
      
      public static const §6J§:Number = 0;
       
      
      public var §&B§:Number;
      
      public var §7q§:Number;
      
      public var §6j§:Number;
      
      public var §@I§:Number;
      
      public var §>P§:Number;
      
      public var §]v§:§6w§;
      
      public function §<!9§(param1:§6w§, param2:§&;§)
      {
         var _loc5_:§]8§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§[+§ = null;
         super();
         this.§]v§ = param1;
         this.§&B§ = int.MAX_VALUE;
         this.§7q§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§'e§)
         {
            _loc5_ = param2.§5!S§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §6w§.§9X§ * 4 * §6w§.§?!^§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§&B§)
            {
               this.§&B§ = _loc7_;
            }
            if(_loc8_ > this.§7q§)
            {
               this.§7q§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§'T§)
         {
            if((_loc9_ = param2.§4!K§(_loc3_)).x < this.§&B§)
            {
               this.§&B§ = _loc9_.x;
            }
            if(_loc9_.x > this.§7q§)
            {
               this.§7q§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §6w§.§9X§ * §6w§.§?!^§;
         this.§&B§ -= _loc4_;
         this.§7q§ += _loc4_;
         this.§>P§ = §6w§.§9X§ * §6w§.§?!^§ / (this.§7q§ - this.§&B§);
         this.§>P§ = Math.max(this.§>P§,§'!8§.§5!Y§);
         this.§@I§ = §6J§;
         this.§6j§ = this.§@I§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §8!^§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§6j§ || param2 > this.§@I§ + 50 || param1 < this.§&B§ || param1 > this.§7q§)
         {
            return true;
         }
         return false;
      }
   }
}
