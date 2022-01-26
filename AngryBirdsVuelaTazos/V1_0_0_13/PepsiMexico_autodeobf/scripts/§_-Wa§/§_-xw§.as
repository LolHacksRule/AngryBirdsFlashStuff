package §_-Wa§
{
   public class §_-xw§ implements §_-8X§
   {
       
      
      private var §_-DP§:Number;
      
      private var §_-NQ§:Number;
      
      private var §_-Hq§:Number;
      
      public function §_-xw§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-NQ§ = param1;
         this.§_-DP§ = param2;
         this.§_-Hq§ = param3;
      }
      
      public function §_-6-§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§_-DP§ / param2) / Math.log(1 - this.§_-NQ§) + 1) * (1 / this.§_-Hq§);
      }
      
      public function §_-eV§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§_-NQ§,param1 / (1 / this.§_-Hq§) - 1) + (param2 + param3);
      }
   }
}
