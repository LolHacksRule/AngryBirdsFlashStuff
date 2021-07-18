package §@L§
{
   import §+!!§.§5"+§;
   import §8!K§.§1!R§;
   import §8!K§.§5!0§;
   import §?s§.§8K§;
   
   public class § 7§
   {
      
      public static const §%" §:Number = 50;
      
      public static const §2!y§:Number = 0;
       
      
      protected var §!!%§:Number;
      
      protected var §=,§:Number;
      
      protected var §`3§:Number;
      
      protected var §2v§:Number;
      
      public var §=0§:Number;
      
      public var §<Y§:§?!'§;
      
      public function § 7§(param1:§?!'§, param2:§5!0§)
      {
         var _loc5_:§1!R§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§8K§ = null;
         super();
         this.§<Y§ = param1;
         this.§!!%§ = int.MAX_VALUE;
         this.§=,§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§^!U§)
         {
            _loc5_ = param2.§8!W§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §?!'§.§]2§ * 4 * §?!'§.§'!i§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§!!%§)
            {
               this.§!!%§ = _loc7_;
            }
            if(_loc8_ > this.§=,§)
            {
               this.§=,§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§!!%§)
            {
               this.§!!%§ = _loc9_.x;
            }
            if(_loc9_.x > this.§=,§)
            {
               this.§=,§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §?!'§.§]2§ * §?!'§.§'!i§;
         this.§!!%§ -= _loc4_;
         this.§=,§ += _loc4_;
         this.§=0§ = §?!'§.§]2§ * §?!'§.§'!i§ / (this.§=,§ - this.§!!%§);
         this.§=0§ = Math.max(this.§=0§,§5"+§.§[h§);
         this.§`3§ = param2.slingshotY - 160;
         this.§2v§ = param2.slingshotY + 160;
      }
      
      public function get §?c§() : Number
      {
         return this.§!!%§;
      }
      
      public function get §;f§() : Number
      {
         return this.§=,§;
      }
      
      public function get §`N§() : Number
      {
         return this.§`3§;
      }
      
      public function get §[!m§() : Number
      {
         return this.§2v§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §3" §(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§`3§ || param2 > this.§2v§ || param1 < this.§!!%§ || param1 > this.§=,§)
         {
            return true;
         }
         return false;
      }
   }
}
