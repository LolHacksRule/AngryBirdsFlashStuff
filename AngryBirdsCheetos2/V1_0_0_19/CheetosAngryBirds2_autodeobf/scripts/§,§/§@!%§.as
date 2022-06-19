package §,§
{
   import §,!K§.§[V§;
   
   public class §@!%§
   {
       
      
      public var §[R§:Number = 0;
      
      public var §,7§:Number = 0;
      
      public var §-J§:Number;
      
      public var §6v§:Number;
      
      public function §@!%§(param1:Number, param2:Number)
      {
         this.§-J§ = §?9§.§;!d§;
         this.§6v§ = §?9§.§9V§;
         super();
         this.§-J§ = param1;
         this.§6v§ = param2;
         this.§[R§ = 0;
         this.§,7§ = 0;
      }
      
      public function §0!S§(param1:§[V§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§[R§ < §?9§.§5=§)
         {
            this.§[R§ += param2;
            this.§,7§ += this.§-J§;
            _loc3_ = param2 / §?9§.§'Q§ * this.§6v§ * Math.sin(Math.PI / 4 + this.§,7§ * 2 * Math.PI);
            _loc4_ = param2 / §?9§.§'Q§ * this.§6v§ * Math.sin(this.§,7§ * 2.1 * Math.PI);
            this.§6v§ -= param2 * §?9§.§9V§ / §?9§.§5=§;
            this.§-J§ -= param2 * §?9§.§;!d§ / §?9§.§5=§;
            param1.§9c§(_loc3_,_loc4_);
            param1.§%!S§();
            return true;
         }
         return false;
      }
   }
}
