package §4!H§
{
   public class §6!F§ implements §05§
   {
       
      
      private var §]!t§:Number;
      
      private var §4!3§:Number;
      
      public function §6!F§(param1:Number, param2:Number)
      {
         super();
         this.§4!3§ = param1;
         this.§]!t§ = param2;
      }
      
      public function §6r§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 < 0 ? -this.§4!3§ : this.§4!3§) * (param1 / (1 / this.§]!t§));
      }
      
      public function §2!j§(param1:Number, param2:Number) : Number
      {
         return param2 / (param2 < 0 ? -this.§4!3§ : this.§4!3§) * (1 / this.§]!t§);
      }
   }
}
