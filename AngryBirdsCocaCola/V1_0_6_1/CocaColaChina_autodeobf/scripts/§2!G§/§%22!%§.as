package §2!G§
{
   import §@!C§.§#C§;
   
   public class §"!%§
   {
       
      
      public var §5!G§:Number = 0;
      
      public var §4#§:Number = 0;
      
      public var §?V§:Number;
      
      public var §?1§:Number;
      
      public function §"!%§(param1:Number, param2:Number)
      {
         this.§?V§ = §+>§.§]!"§;
         this.§?1§ = §+>§.§1,§;
         super();
         this.§?V§ = param1;
         this.§?1§ = param2;
         this.§5!G§ = 0;
         this.§4#§ = 0;
      }
      
      public function §]M§(param1:§#C§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§5!G§ < §+>§.§;!#§)
         {
            this.§5!G§ += param2;
            this.§4#§ += this.§?V§;
            _loc3_ = param2 / §+>§.§#=§ * this.§?1§ * Math.sin(Math.PI / 4 + this.§4#§ * 2 * Math.PI);
            _loc4_ = param2 / §+>§.§#=§ * this.§?1§ * Math.sin(this.§4#§ * 2.1 * Math.PI);
            this.§?1§ -= param2 * §+>§.§1,§ / §+>§.§;!#§;
            this.§?V§ -= param2 * §+>§.§]!"§ / §+>§.§;!#§;
            param1.§0!5§(_loc3_,_loc4_);
            param1.§=! §();
            return true;
         }
         return false;
      }
   }
}
