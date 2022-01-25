package §4A§
{
   import §1q§.§2W§;
   
   public class § try§
   {
       
      
      public var §?5§:Number = 0;
      
      public var §"!N§:Number = 0;
      
      public var §-^§:Number;
      
      public var §`!4§:Number;
      
      public function § try§(param1:Number, param2:Number)
      {
         this.§-^§ = §96§.§7!1§;
         this.§`!4§ = §96§.§"!<§;
         super();
         this.§-^§ = param1;
         this.§`!4§ = param2;
         this.§?5§ = 0;
         this.§"!N§ = 0;
      }
      
      public function §2!6§(param1:§2W§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§?5§ < §96§.§<!_§)
         {
            this.§?5§ += param2;
            this.§"!N§ += this.§-^§;
            _loc3_ = param2 / §96§.§-j§ * this.§`!4§ * Math.sin(Math.PI / 4 + this.§"!N§ * 2 * Math.PI);
            _loc4_ = param2 / §96§.§-j§ * this.§`!4§ * Math.sin(this.§"!N§ * 2.1 * Math.PI);
            this.§`!4§ -= param2 * §96§.§"!<§ / §96§.§<!_§;
            this.§-^§ -= param2 * §96§.§7!1§ / §96§.§<!_§;
            param1.§-`§(_loc3_,_loc4_);
            param1.§3M§();
            return true;
         }
         return false;
      }
   }
}
