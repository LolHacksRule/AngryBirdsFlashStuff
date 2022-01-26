package §_-Xf§
{
   import §_-hn§.§_-DZ§;
   import §_-hn§.§_-pg§;
   import §_-hn§.§_-u9§;
   
   public class §_-Qn§ extends §_-u9§
   {
       
      
      private var §_-de§:Number;
      
      private var §_-A7§:Number;
      
      public function §_-Qn§(param1:§_-pg§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-tU§ = param2 + param1.duration + param3;
         this.§_-A7§ = param2;
         this.§_-de§ = param3;
      }
      
      public function get §_-NJ§() : Number
      {
         return this.§_-A7§;
      }
      
      override protected function newInstance() : §_-DZ§
      {
         return new §_-Qn§(§_-eH§.clone() as §_-pg§,this.§_-A7§,this.§_-de§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-eH§.update(param1 - this.§_-A7§);
      }
      
      public function get §_-X6§() : Number
      {
         return this.§_-de§;
      }
   }
}
