package §_-kn§
{
   public class §_-P9§ implements §_-kA§
   {
       
      
      private var §_-Nt§:Number;
      
      private var §_-0m§:Number;
      
      public function §_-P9§(param1:Number, param2:Number)
      {
         super();
         this.§_-0m§ = param1;
         this.§_-Nt§ = param2;
      }
      
      public function §_-Bq§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 < 0 ? -this.§_-0m§ : this.§_-0m§) * (param1 / (1 / this.§_-Nt§));
      }
      
      public function §_-dt§(param1:Number, param2:Number) : Number
      {
         return param2 / (param2 < 0 ? -this.§_-0m§ : this.§_-0m§) * (1 / this.§_-Nt§);
      }
   }
}
