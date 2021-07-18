package §^#>§
{
   public class § !r§
   {
      
      private static const §,9§:Number = 1;
       
      
      private var §<C§:Number = 1.0;
      
      private var §`#a§:Number = 0.0;
      
      private var §>"y§:Number = 0.0;
      
      private var §?!f§:Number = 0.0;
      
      private var §9"b§:Number = 0.0;
      
      private var §`!Q§:Number = 1.0;
      
      public function § !r§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§<C§ = param4;
         this.§`#a§ = param2;
         this.§>"y§ = param1;
         this.§?!f§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§`!Q§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§9"b§ += param1;
         if(this.§9"b§ < this.§>"y§)
         {
            this.§`!Q§ = §,9§ + (this.§<C§ - §,9§) * this.§9"b§ / this.§>"y§;
         }
         else if(this.§9"b§ < this.§>"y§ + this.§`#a§)
         {
            this.§`!Q§ = this.§<C§;
         }
         else
         {
            if(this.§9"b§ >= this.§>"y§ + this.§`#a§ + this.§?!f§)
            {
               this.§`!Q§ = §,9§;
               return false;
            }
            _loc2_ = this.§9"b§ - (this.§>"y§ + this.§`#a§);
            this.§`!Q§ = this.§<C§ + (§,9§ - this.§<C§) * _loc2_ / this.§?!f§;
         }
         return true;
      }
   }
}
