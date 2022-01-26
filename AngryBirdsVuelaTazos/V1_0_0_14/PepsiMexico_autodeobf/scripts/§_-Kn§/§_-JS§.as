package §_-kn§
{
   public class §_-JS§ implements §_-kA§
   {
       
      
      private var §_-6N§:Number;
      
      private var §_-wv§:Number;
      
      private var §_-Nt§:Number;
      
      public function §_-JS§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-wv§ = param1;
         this.§_-6N§ = param2;
         this.§_-Nt§ = param3;
      }
      
      public function §_-dt§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§_-6N§ / param2) / Math.log(1 - this.§_-wv§) + 1) * (1 / this.§_-Nt§);
      }
      
      public function §_-Bq§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§_-wv§,param1 / (1 / this.§_-Nt§) - 1) + (param2 + param3);
      }
   }
}
