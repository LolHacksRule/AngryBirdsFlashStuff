package §_-Z2§
{
   import §_-wo§.§_-Ff§;
   import §_-wo§.§_-dE§;
   import §_-wo§.§_-g0§;
   
   public class §_-5H§ extends §_-dE§
   {
       
      
      private var §_-2g§:Number;
      
      private var §_-W0§:Number;
      
      public function §_-5H§(param1:§_-Ff§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-jI§ = param2 + param1.duration + param3;
         this.§_-W0§ = param2;
         this.§_-2g§ = param3;
      }
      
      public function get §_-o-§() : Number
      {
         return this.§_-W0§;
      }
      
      override protected function newInstance() : §_-g0§
      {
         return new §_-5H§(§_-cR§.clone() as §_-Ff§,this.§_-W0§,this.§_-2g§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-cR§.update(param1 - this.§_-W0§);
      }
      
      public function get §_-HM§() : Number
      {
         return this.§_-2g§;
      }
   }
}
