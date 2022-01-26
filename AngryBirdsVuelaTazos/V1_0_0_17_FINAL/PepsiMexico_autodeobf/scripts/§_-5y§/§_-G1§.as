package §_-5y§
{
   public class §_-G1§ implements §_-Bf§
   {
       
      
      private var §_-Ix§:Number;
      
      private var §_-Ci§:Number;
      
      private var §_-s-§:Number;
      
      public function §_-G1§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-Ci§ = param1;
         this.§_-Ix§ = param2;
         this.§_-s-§ = param3;
      }
      
      public function §_-up§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§_-Ix§ / param2) / Math.log(1 - this.§_-Ci§) + 1) * (1 / this.§_-s-§);
      }
      
      public function §_-3u§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§_-Ci§,param1 / (1 / this.§_-s-§) - 1) + (param2 + param3);
      }
   }
}
