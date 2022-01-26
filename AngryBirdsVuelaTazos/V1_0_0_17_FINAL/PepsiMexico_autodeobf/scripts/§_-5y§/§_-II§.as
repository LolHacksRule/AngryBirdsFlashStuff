package §_-5y§
{
   public class §_-II§ implements §_-Bf§
   {
       
      
      private var §_-s-§:Number;
      
      private var §_-sc§:Number;
      
      public function §_-II§(param1:Number, param2:Number)
      {
         super();
         this.§_-sc§ = param1;
         this.§_-s-§ = param2;
      }
      
      public function §_-3u§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 < 0 ? -this.§_-sc§ : this.§_-sc§) * (param1 / (1 / this.§_-s-§));
      }
      
      public function §_-up§(param1:Number, param2:Number) : Number
      {
         return param2 / (param2 < 0 ? -this.§_-sc§ : this.§_-sc§) * (1 / this.§_-s-§);
      }
   }
}
