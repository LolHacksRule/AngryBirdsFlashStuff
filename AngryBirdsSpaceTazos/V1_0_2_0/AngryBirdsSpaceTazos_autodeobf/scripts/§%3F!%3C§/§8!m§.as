package §?!<§
{
   public class §8!m§
   {
      
      private static const §5"=§:Number = 1;
       
      
      private var §&w§:Number = 1.0;
      
      private var §]"=§:Number = 0.0;
      
      private var §9?§:Number = 0.0;
      
      private var §#%§:Number = 0.0;
      
      private var §[!D§:Number = 0.0;
      
      private var § >§:Number = 1.0;
      
      public function §8!m§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§&w§ = param4;
         this.§]"=§ = param2;
         this.§9?§ = param1;
         this.§#%§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§ >§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§[!D§ += param1;
         if(this.§[!D§ < this.§9?§)
         {
            this.§ >§ = §5"=§ + (this.§&w§ - §5"=§) * this.§[!D§ / this.§9?§;
         }
         else if(this.§[!D§ < this.§9?§ + this.§]"=§)
         {
            this.§ >§ = this.§&w§;
         }
         else
         {
            if(this.§[!D§ >= this.§9?§ + this.§]"=§ + this.§#%§)
            {
               this.§ >§ = §5"=§;
               return false;
            }
            _loc2_ = this.§[!D§ - (this.§9?§ + this.§]"=§);
            this.§ >§ = this.§&w§ + (§5"=§ - this.§&w§) * _loc2_ / this.§#%§;
         }
         return true;
      }
   }
}
