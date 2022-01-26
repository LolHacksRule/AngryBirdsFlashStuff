package §0V§
{
   import §8-§.§,!P§;
   
   public class §-j§
   {
       
      
      public var §=!=§:Number = 0;
      
      public var §"$§:Number = 0;
      
      public var §"#§:Number;
      
      public var §]!Q§:Number;
      
      public function §-j§(param1:Number, param2:Number)
      {
         this.§"#§ = §6d§.§]P§;
         this.§]!Q§ = §6d§.§2!U§;
         super();
         this.§"#§ = param1;
         this.§]!Q§ = param2;
         this.§=!=§ = 0;
         this.§"$§ = 0;
      }
      
      public function §7D§(param1:§,!P§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§=!=§ < §6d§.§0!%§)
         {
            this.§=!=§ += param2;
            this.§"$§ += this.§"#§;
            _loc3_ = param2 / §6d§.§,x§ * this.§]!Q§ * Math.sin(Math.PI / 4 + this.§"$§ * 2 * Math.PI);
            _loc4_ = param2 / §6d§.§,x§ * this.§]!Q§ * Math.sin(this.§"$§ * 2.1 * Math.PI);
            this.§]!Q§ -= param2 * §6d§.§2!U§ / §6d§.§0!%§;
            this.§"#§ -= param2 * §6d§.§]P§ / §6d§.§0!%§;
            param1.§%!"§(_loc3_,_loc4_);
            param1.§3p§();
            return true;
         }
         return false;
      }
   }
}
