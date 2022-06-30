package § d§
{
   import §@!H§.§-f§;
   
   public class §=l§
   {
       
      
      public var §6!-§:Number = 0;
      
      public var §2M§:Number = 0;
      
      public var §46§:Number;
      
      public var § !L§:Number;
      
      public function §=l§(param1:Number, param2:Number)
      {
         this.§46§ = §&!S§.§`!d§;
         this.§ !L§ = §&!S§.§`p§;
         super();
         this.§46§ = param1;
         this.§ !L§ = param2;
         this.§6!-§ = 0;
         this.§2M§ = 0;
      }
      
      public function §5,§(param1:§-f§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§6!-§ < §&!S§.§]!R§)
         {
            this.§6!-§ += param2;
            this.§2M§ += this.§46§;
            _loc3_ = param2 / §&!S§.§3W§ * this.§ !L§ * Math.sin(Math.PI / 4 + this.§2M§ * 2 * Math.PI);
            _loc4_ = param2 / §&!S§.§3W§ * this.§ !L§ * Math.sin(this.§2M§ * 2.1 * Math.PI);
            this.§ !L§ -= param2 * §&!S§.§`p§ / §&!S§.§]!R§;
            this.§46§ -= param2 * §&!S§.§`!d§ / §&!S§.§]!R§;
            param1.§"`§(_loc3_,_loc4_);
            param1.§[,§();
            return true;
         }
         return false;
      }
   }
}
