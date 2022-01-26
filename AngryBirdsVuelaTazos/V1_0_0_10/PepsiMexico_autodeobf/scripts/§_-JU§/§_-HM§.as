package §_-JU§
{
   public class §_-HM§ implements §_-Is§
   {
       
      
      private var §_-UX§:Number;
      
      private var §_-6E§:Number;
      
      private var §_-Pn§:Number;
      
      public function §_-HM§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-6E§ = param1;
         this.§_-UX§ = param2;
         this.§_-Pn§ = param3;
      }
      
      public function §_-Fn§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§_-UX§ / param2) / Math.log(1 - this.§_-6E§) + 1) * (1 / this.§_-Pn§);
      }
      
      public function §_-WA§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§_-6E§,param1 / (1 / this.§_-Pn§) - 1) + (param2 + param3);
      }
   }
}
