package § 2§
{
   import §-'§.§ i§;
   import §8+§.§5"-§;
   
   public class §@H§
   {
      
      public static const §`!3§:Number = 50;
      
      public static const §9!x§:Number = 0;
       
      
      protected var §7!_§:Number;
      
      protected var §,!8§:Number;
      
      protected var §[c§:Number;
      
      protected var §?V§:Number;
      
      public var §2",§:Number;
      
      public var §false§:§=+§;
      
      public function §@H§(param1:§=+§, param2:§[d§)
      {
         var _loc5_:§3!?§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§5"-§ = null;
         super();
         this.§false§ = param1;
         this.§7!_§ = int.MAX_VALUE;
         this.§,!8§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§[!V§)
         {
            _loc5_ = param2.§6!U§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §=+§.§1!h§ * 4 * §=+§.§5!w§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§7!_§)
            {
               this.§7!_§ = _loc7_;
            }
            if(_loc8_ > this.§,!8§)
            {
               this.§,!8§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§7!_§)
            {
               this.§7!_§ = _loc9_.x;
            }
            if(_loc9_.x > this.§,!8§)
            {
               this.§,!8§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §=+§.§1!h§ * §=+§.§5!w§;
         this.§7!_§ -= _loc4_;
         this.§,!8§ += _loc4_;
         this.§2",§ = §=+§.§1!h§ * §=+§.§5!w§ / (this.§,!8§ - this.§7!_§);
         this.§2",§ = Math.max(this.§2",§,§ i§.§0!A§);
         this.§[c§ = param2.slingshotY - 160;
         this.§?V§ = param2.slingshotY + 160;
      }
      
      public function get §5v§() : Number
      {
         return this.§7!_§;
      }
      
      public function get §`=§() : Number
      {
         return this.§,!8§;
      }
      
      public function get §#!w§() : Number
      {
         return this.§[c§;
      }
      
      public function get §#k§() : Number
      {
         return this.§?V§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §4q§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§[c§ || param2 > this.§?V§ || param1 < this.§7!_§ || param1 > this.§,!8§)
         {
            return true;
         }
         return false;
      }
   }
}
