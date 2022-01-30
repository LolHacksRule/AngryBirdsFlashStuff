package §8!E§
{
   import §2b§.§"" §;
   
   public class §>!Q§
   {
       
      
      public var §-!§:Number = 0;
      
      public var §'![§:Number = 0;
      
      public var §>!4§:Number;
      
      public var §@D§:Number;
      
      public function §>!Q§(param1:Number, param2:Number)
      {
         this.§>!4§ = §@!i§.§+!^§;
         this.§@D§ = §@!i§.§,S§;
         super();
         this.§>!4§ = param1;
         this.§@D§ = param2;
         this.§-!§ = 0;
         this.§'![§ = 0;
      }
      
      public function §#!E§(param1:§"" §, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§-!§ < §@!i§.§`F§)
         {
            this.§-!§ += param2;
            this.§'![§ += this.§>!4§;
            _loc3_ = param2 / §@!i§.§7!#§ * this.§@D§ * Math.sin(Math.PI / 4 + this.§'![§ * 2 * Math.PI);
            _loc4_ = param2 / §@!i§.§7!#§ * this.§@D§ * Math.sin(this.§'![§ * 2.1 * Math.PI);
            this.§@D§ -= param2 * §@!i§.§,S§ / §@!i§.§`F§;
            this.§>!4§ -= param2 * §@!i§.§+!^§ / §@!i§.§`F§;
            param1.§4@§(_loc3_,_loc4_);
            param1.§8v§();
            return true;
         }
         return false;
      }
   }
}
