package §;'§
{
   import §5B§.§6!>§;
   
   public class § e§
   {
       
      
      public var §#!H§:Number = 0;
      
      public var §@%§:Number = 0;
      
      public var §0P§:Number;
      
      public var §3z§:Number;
      
      public function § e§(param1:Number, param2:Number)
      {
         this.§0P§ = §>-§.§?U§;
         this.§3z§ = §>-§.§;t§;
         super();
         this.§0P§ = param1;
         this.§3z§ = param2;
         this.§#!H§ = 0;
         this.§@%§ = 0;
      }
      
      public function §!s§(param1:§6!>§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§#!H§ < §>-§.§9=§)
         {
            this.§#!H§ += param2;
            this.§@%§ += this.§0P§;
            _loc3_ = param2 / §>-§.§^!7§ * this.§3z§ * Math.sin(Math.PI / 4 + this.§@%§ * 2 * Math.PI);
            _loc4_ = param2 / §>-§.§^!7§ * this.§3z§ * Math.sin(this.§@%§ * 2.1 * Math.PI);
            this.§3z§ -= param2 * §>-§.§;t§ / §>-§.§9=§;
            this.§0P§ -= param2 * §>-§.§?U§ / §>-§.§9=§;
            param1.§^!-§(_loc3_,_loc4_);
            param1.§"Y§();
            return true;
         }
         return false;
      }
   }
}
