package §_-Z2§
{
   import §_-wo§.§_-Ff§;
   import §_-wo§.§_-dE§;
   import §_-wo§.§_-g0§;
   
   public class §_-h8§ extends §_-dE§
   {
       
      
      private var §_-hl§:Number;
      
      public function §_-h8§(param1:§_-Ff§, param2:Number)
      {
         super(param1,0);
         §_-jI§ = param1.duration * param2;
         this.§_-hl§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§_-hl§;
      }
      
      override protected function newInstance() : §_-g0§
      {
         return new §_-h8§(§_-cR§.clone() as §_-Ff§,this.§_-hl§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-cR§.update(param1 / this.scale);
      }
   }
}
