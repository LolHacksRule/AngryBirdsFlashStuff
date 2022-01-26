package §_-7X§
{
   public class §_-ui§ implements §_-R-§
   {
       
      
      private var §_-Pl§:Number;
      
      private var §_-p-§:Number;
      
      public function §_-ui§(param1:Number, param2:Number)
      {
         super();
         this.§_-p-§ = param1;
         this.§_-Pl§ = param2;
      }
      
      public function §_-OY§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 < 0 ? -this.§_-p-§ : this.§_-p-§) * (param1 / (1 / this.§_-Pl§));
      }
      
      public function §_-bj§(param1:Number, param2:Number) : Number
      {
         return param2 / (param2 < 0 ? -this.§_-p-§ : this.§_-p-§) * (1 / this.§_-Pl§);
      }
   }
}
