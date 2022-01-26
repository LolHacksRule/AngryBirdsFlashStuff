package §_-WV§
{
   import §_-0e§.§_-3D§;
   import §_-0e§.§_-fO§;
   import §_-0e§.§_-i8§;
   
   public class §_-j-§ extends §_-fO§
   {
       
      
      private var §_-gJ§:Number;
      
      private var §_-9j§:Number;
      
      public function §_-j-§(param1:§_-i8§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-hZ§ = param2 + param1.duration + param3;
         this.§_-9j§ = param2;
         this.§_-gJ§ = param3;
      }
      
      public function get §_-b7§() : Number
      {
         return this.§_-9j§;
      }
      
      override protected function newInstance() : §_-3D§
      {
         return new §_-j-§(§_-rL§.clone() as §_-i8§,this.§_-9j§,this.§_-gJ§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-rL§.update(param1 - this.§_-9j§);
      }
      
      public function get §_-Tx§() : Number
      {
         return this.§_-gJ§;
      }
   }
}
