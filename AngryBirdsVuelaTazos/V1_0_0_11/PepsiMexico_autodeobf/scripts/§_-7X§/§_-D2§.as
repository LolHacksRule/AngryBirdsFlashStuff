package §_-7X§
{
   public class §_-D2§ implements §_-R-§
   {
       
      
      private var §each §:Number;
      
      private var §_-eT§:Number;
      
      private var §_-Pl§:Number;
      
      public function §_-D2§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-eT§ = param1;
         this.§each § = param2;
         this.§_-Pl§ = param3;
      }
      
      public function §_-bj§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§each § / param2) / Math.log(1 - this.§_-eT§) + 1) * (1 / this.§_-Pl§);
      }
      
      public function §_-OY§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§_-eT§,param1 / (1 / this.§_-Pl§) - 1) + (param2 + param3);
      }
   }
}
