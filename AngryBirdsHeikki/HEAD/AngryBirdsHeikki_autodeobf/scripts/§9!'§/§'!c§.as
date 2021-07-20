package §9!'§
{
   import § ![§.§#!B§;
   
   public class §'!c§
   {
       
      
      public var §`X§:Number = 0;
      
      public var §5!d§:Number = 0;
      
      public var §3q§:Number;
      
      public var §]!6§:Number;
      
      public function §'!c§(param1:Number, param2:Number)
      {
         this.§3q§ = §&<§.§#>§;
         this.§]!6§ = §&<§.§>!1§;
         super();
         this.§3q§ = param1;
         this.§]!6§ = param2;
         this.§`X§ = 0;
         this.§5!d§ = 0;
      }
      
      public function §@M§(param1:§#!B§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§`X§ < §&<§.§=^§)
         {
            this.§`X§ += param2;
            this.§5!d§ += this.§3q§;
            _loc3_ = param2 / §&<§.§1!'§ * this.§]!6§ * Math.sin(Math.PI / 4 + this.§5!d§ * 2 * Math.PI);
            _loc4_ = param2 / §&<§.§1!'§ * this.§]!6§ * Math.sin(this.§5!d§ * 2.1 * Math.PI);
            this.§]!6§ -= param2 * §&<§.§>!1§ / §&<§.§=^§;
            this.§3q§ -= param2 * §&<§.§#>§ / §&<§.§=^§;
            param1.§[!a§(_loc3_,_loc4_);
            param1.§`!0§();
            return true;
         }
         return false;
      }
   }
}
