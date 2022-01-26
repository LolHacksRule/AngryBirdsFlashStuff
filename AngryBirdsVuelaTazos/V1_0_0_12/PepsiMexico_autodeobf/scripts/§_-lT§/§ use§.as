package §_-lT§
{
   public class § use§ implements §_-g7§
   {
       
      
      private var §_-qz§:Number;
      
      private var §_-Uu§:Number;
      
      public function § use§(param1:Number, param2:Number)
      {
         super();
         this.§_-Uu§ = param1;
         this.§_-qz§ = param2;
      }
      
      public function §_-YJ§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 < 0 ? -this.§_-Uu§ : this.§_-Uu§) * (param1 / (1 / this.§_-qz§));
      }
      
      public function §_-EE§(param1:Number, param2:Number) : Number
      {
         return param2 / (param2 < 0 ? -this.§_-Uu§ : this.§_-Uu§) * (1 / this.§_-qz§);
      }
   }
}
