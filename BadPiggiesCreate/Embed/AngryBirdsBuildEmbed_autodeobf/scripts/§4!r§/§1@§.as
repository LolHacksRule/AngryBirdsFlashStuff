package §4!r§
{
   public class §1@§ implements §[!m§
   {
       
      
      private var §9T§:Number;
      
      private var §]C§:Number;
      
      public function §1@§(param1:Number, param2:Number)
      {
         super();
         this.§]C§ = param1;
         this.§9T§ = param2;
      }
      
      public function §-1§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 < 0 ? -this.§]C§ : this.§]C§) * (param1 / (1 / this.§9T§));
      }
      
      public function §2!R§(param1:Number, param2:Number) : Number
      {
         return param2 / (param2 < 0 ? -this.§]C§ : this.§]C§) * (1 / this.§9T§);
      }
   }
}
