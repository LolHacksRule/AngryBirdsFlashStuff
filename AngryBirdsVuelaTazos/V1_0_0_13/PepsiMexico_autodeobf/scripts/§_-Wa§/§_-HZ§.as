package §_-Wa§
{
   public class §_-HZ§ implements §_-8X§
   {
       
      
      private var §_-Hq§:Number;
      
      private var §_-lo§:Number;
      
      public function §_-HZ§(param1:Number, param2:Number)
      {
         super();
         this.§_-lo§ = param1;
         this.§_-Hq§ = param2;
      }
      
      public function §_-eV§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 < 0 ? -this.§_-lo§ : this.§_-lo§) * (param1 / (1 / this.§_-Hq§));
      }
      
      public function §_-6-§(param1:Number, param2:Number) : Number
      {
         return param2 / (param2 < 0 ? -this.§_-lo§ : this.§_-lo§) * (1 / this.§_-Hq§);
      }
   }
}
