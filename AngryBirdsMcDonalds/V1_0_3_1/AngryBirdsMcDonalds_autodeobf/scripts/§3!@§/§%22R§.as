package §3!@§
{
   import §^U§.§3$§;
   
   public class §"R§
   {
       
      
      public var §>!P§:Number = 0;
      
      public var §=C§:Number = 0;
      
      public var §3p§:Number;
      
      public var §-!l§:Number;
      
      public function §"R§(param1:Number, param2:Number)
      {
         this.§3p§ = §'!0§.§%!C§;
         this.§-!l§ = §'!0§.§&!b§;
         super();
         this.§3p§ = param1;
         this.§-!l§ = param2;
         this.§>!P§ = 0;
         this.§=C§ = 0;
      }
      
      public function §<!p§(param1:§3$§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§>!P§ < §'!0§.§5!1§)
         {
            this.§>!P§ += param2;
            this.§=C§ += this.§3p§;
            _loc3_ = param2 / §'!0§.§@T§ * this.§-!l§ * Math.sin(Math.PI / 4 + this.§=C§ * 2 * Math.PI);
            _loc4_ = param2 / §'!0§.§@T§ * this.§-!l§ * Math.sin(this.§=C§ * 2.1 * Math.PI);
            this.§-!l§ -= param2 * §'!0§.§&!b§ / §'!0§.§5!1§;
            this.§3p§ -= param2 * §'!0§.§%!C§ / §'!0§.§5!1§;
            param1.setOffset(_loc3_,_loc4_);
            param1.§+!W§();
            return true;
         }
         return false;
      }
   }
}
