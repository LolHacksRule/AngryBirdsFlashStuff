package §5!V§
{
   import §=!#§.§`"=§;
   
   public class §#k§
   {
       
      
      public var §?!^§:Number = 0;
      
      public var §8]§:Number = 0;
      
      public var §"!w§:Number;
      
      public var §3,§:Number;
      
      public function §#k§(param1:Number, param2:Number)
      {
         this.§"!w§ = §8^§.§!!6§;
         this.§3,§ = §8^§.§1A§;
         super();
         this.§"!w§ = param1;
         this.§3,§ = param2;
         this.§?!^§ = 0;
         this.§8]§ = 0;
      }
      
      public function §=#§(param1:§`"=§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§?!^§ < §8^§.§@G§)
         {
            this.§?!^§ += param2;
            this.§8]§ += this.§"!w§;
            _loc3_ = param2 / §8^§.override * this.§3,§ * Math.sin(Math.PI / 4 + this.§8]§ * 2 * Math.PI);
            _loc4_ = param2 / §8^§.override * this.§3,§ * Math.sin(this.§8]§ * 2.1 * Math.PI);
            this.§3,§ -= param2 * §8^§.§1A§ / §8^§.§@G§;
            this.§"!w§ -= param2 * §8^§.§!!6§ / §8^§.§@G§;
            param1.§<!i§(_loc3_,_loc4_);
            param1.§;!+§();
            return true;
         }
         return false;
      }
   }
}
