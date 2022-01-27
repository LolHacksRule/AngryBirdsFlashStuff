package §^!7§
{
   import §,J§.§74§;
   import §,J§.§]6§;
   import §-!1§.§=!_§;
   import §>u§.§<q§;
   
   public class §[!9§
   {
      
      public static const §!v§:Number = 50;
      
      public static var §'!B§:Number = 0;
      
      public static const §-w§:Number = 0.5;
      
      public static const §+D§:Number = 0;
       
      
      public var §var §:Number;
      
      public var § r§:Number;
      
      public var §=z§:Number;
      
      public var §72§:Number;
      
      public var §5r§:Number;
      
      public var §<&§:§^A§;
      
      public function §[!9§(param1:§^A§, param2:§74§)
      {
         var _loc5_:§]6§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§<q§ = null;
         super();
         this.§<&§ = param1;
         this.§var § = int.MAX_VALUE;
         this.§ r§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§60§)
         {
            _loc5_ = param2.§9d§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §^A§.§+2§ * 4 * §^A§.§<U§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§var §)
            {
               this.§var § = _loc7_;
            }
            if(_loc8_ > this.§ r§)
            {
               this.§ r§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§5]§)
         {
            if((_loc9_ = param2.§[o§(_loc3_)).x < this.§var §)
            {
               this.§var § = _loc9_.x;
            }
            if(_loc9_.x > this.§ r§)
            {
               this.§ r§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §^A§.§+2§ * §^A§.§<U§;
         this.§var § -= _loc4_;
         this.§ r§ += _loc4_;
         this.§5r§ = §^A§.§+2§ * §^A§.§<U§ / (this.§ r§ - this.§var §);
         this.§5r§ = Math.max(this.§5r§,§=!_§.§3i§);
         this.§72§ = §+D§;
         this.§=z§ = this.§72§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function § W§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§=z§ || param2 > this.§72§ + 50 || param1 < this.§var § || param1 > this.§ r§)
         {
            return true;
         }
         return false;
      }
   }
}
