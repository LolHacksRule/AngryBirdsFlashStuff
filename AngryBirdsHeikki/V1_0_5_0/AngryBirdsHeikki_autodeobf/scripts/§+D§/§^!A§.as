package §+D§
{
   import §[$§.§=K§;
   
   public class §^!A§
   {
       
      
      public var §;O§:Number = 0;
      
      public var §>j§:Number = 0;
      
      public var §-p§:Number;
      
      public var §[!^§:Number;
      
      public function §^!A§(param1:Number, param2:Number)
      {
         this.§-p§ = §9!4§.§6!Z§;
         this.§[!^§ = §9!4§.§4n§;
         super();
         this.§-p§ = param1;
         this.§[!^§ = param2;
         this.§;O§ = 0;
         this.§>j§ = 0;
      }
      
      public function §&&§(param1:§=K§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§;O§ < §9!4§.§0!F§)
         {
            this.§;O§ += param2;
            this.§>j§ += this.§-p§;
            _loc3_ = param2 / §9!4§.§5!7§ * this.§[!^§ * Math.sin(Math.PI / 4 + this.§>j§ * 2 * Math.PI);
            _loc4_ = param2 / §9!4§.§5!7§ * this.§[!^§ * Math.sin(this.§>j§ * 2.1 * Math.PI);
            this.§[!^§ -= param2 * §9!4§.§4n§ / §9!4§.§0!F§;
            this.§-p§ -= param2 * §9!4§.§6!Z§ / §9!4§.§0!F§;
            param1.§?!L§(_loc3_,_loc4_);
            param1.§6!>§();
            return true;
         }
         return false;
      }
   }
}
