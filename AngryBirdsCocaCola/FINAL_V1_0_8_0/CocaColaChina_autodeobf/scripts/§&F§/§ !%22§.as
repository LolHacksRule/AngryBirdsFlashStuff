package §&F§
{
   import §&!'§.§'!f§;
   
   public class § !"§
   {
       
      
      public var §2^§:Number = 0;
      
      public var §if§:Number = 0;
      
      public var §>'§:Number;
      
      public var §?z§:Number;
      
      public function § !"§(param1:Number, param2:Number)
      {
         this.§>'§ = §-w§.§=!>§;
         this.§?z§ = §-w§.§6s§;
         super();
         this.§>'§ = param1;
         this.§?z§ = param2;
         this.§2^§ = 0;
         this.§if§ = 0;
      }
      
      public function §3i§(param1:§'!f§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§2^§ < §-w§.§ !;§)
         {
            this.§2^§ += param2;
            this.§if§ += this.§>'§;
            _loc3_ = param2 / §-w§.§-!&§ * this.§?z§ * Math.sin(Math.PI / 4 + this.§if§ * 2 * Math.PI);
            _loc4_ = param2 / §-w§.§-!&§ * this.§?z§ * Math.sin(this.§if§ * 2.1 * Math.PI);
            this.§?z§ -= param2 * §-w§.§6s§ / §-w§.§ !;§;
            this.§>'§ -= param2 * §-w§.§=!>§ / §-w§.§ !;§;
            param1.§@!!§(_loc3_,_loc4_);
            param1.§=![§();
            return true;
         }
         return false;
      }
   }
}
