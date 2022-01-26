package §_-lT§
{
   public class §_-gN§ implements §_-g7§
   {
       
      
      private var §_-nv§:Number;
      
      private var §_-I3§:Number;
      
      private var §_-qz§:Number;
      
      public function §_-gN§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-I3§ = param1;
         this.§_-nv§ = param2;
         this.§_-qz§ = param3;
      }
      
      public function §_-EE§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§_-nv§ / param2) / Math.log(1 - this.§_-I3§) + 1) * (1 / this.§_-qz§);
      }
      
      public function §_-YJ§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§_-I3§,param1 / (1 / this.§_-qz§) - 1) + (param2 + param3);
      }
   }
}
