package §3E§
{
   import §!U§.§'!8§;
   
   public class §@B§
   {
       
      
      public var §>!C§:Number = 0;
      
      public var §0i§:Number = 0;
      
      public var §"?§:Number;
      
      public var §'!R§:Number;
      
      public function §@B§(param1:Number, param2:Number)
      {
         this.§"?§ = §!$§.§,D§;
         this.§'!R§ = §!$§.§?O§;
         super();
         this.§"?§ = param1;
         this.§'!R§ = param2;
         this.§>!C§ = 0;
         this.§0i§ = 0;
      }
      
      public function §=!G§(param1:§'!8§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§>!C§ < §!$§.§1![§)
         {
            this.§>!C§ += param2;
            this.§0i§ += this.§"?§;
            _loc3_ = param2 / §!$§.§2w§ * this.§'!R§ * Math.sin(Math.PI / 4 + this.§0i§ * 2 * Math.PI);
            _loc4_ = param2 / §!$§.§2w§ * this.§'!R§ * Math.sin(this.§0i§ * 2.1 * Math.PI);
            this.§'!R§ -= param2 * §!$§.§?O§ / §!$§.§1![§;
            this.§"?§ -= param2 * §!$§.§,D§ / §!$§.§1![§;
            param1.§?!A§(_loc3_,_loc4_);
            param1.§"!6§();
            return true;
         }
         return false;
      }
   }
}
