package §_-oE§
{
   import §_-sN§.§_-b8§;
   import §_-sN§.§_-qR§;
   import §_-sN§.§_-x5§;
   
   public class §_-Am§ extends §_-qR§
   {
       
      
      private var §_-Ev§:Number;
      
      private var §_-8a§:Number;
      
      public function §_-Am§(param1:§_-x5§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-sA§ = param2 + param1.duration + param3;
         this.§_-8a§ = param2;
         this.§_-Ev§ = param3;
      }
      
      public function get §_-ky§() : Number
      {
         return this.§_-8a§;
      }
      
      override protected function newInstance() : §_-b8§
      {
         return new §_-Am§(§_-0w§.clone() as §_-x5§,this.§_-8a§,this.§_-Ev§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-0w§.update(param1 - this.§_-8a§);
      }
      
      public function get §_-Lm§() : Number
      {
         return this.§_-Ev§;
      }
   }
}
