package §55§
{
   import §4!,§.§+f§;
   
   public class §const§
   {
       
      
      public var §#!e§:Number = 0;
      
      public var §[P§:Number = 0;
      
      public var §>"§:Number;
      
      public var §"o§:Number;
      
      public function §const§(param1:Number, param2:Number)
      {
         this.§>"§ = §7!k§.§,5§;
         this.§"o§ = §7!k§.§4V§;
         super();
         this.§>"§ = param1;
         this.§"o§ = param2;
         this.§#!e§ = 0;
         this.§[P§ = 0;
      }
      
      public function §[-§(param1:§+f§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§#!e§ < §7!k§.§6!k§)
         {
            this.§#!e§ += param2;
            this.§[P§ += this.§>"§;
            _loc3_ = param2 / §7!k§.§''§ * this.§"o§ * Math.sin(Math.PI / 4 + this.§[P§ * 2 * Math.PI);
            _loc4_ = param2 / §7!k§.§''§ * this.§"o§ * Math.sin(this.§[P§ * 2.1 * Math.PI);
            this.§"o§ -= param2 * §7!k§.§4V§ / §7!k§.§6!k§;
            this.§>"§ -= param2 * §7!k§.§,5§ / §7!k§.§6!k§;
            param1.setOffset(_loc3_,_loc4_);
            param1.§;!P§();
            return true;
         }
         return false;
      }
   }
}
