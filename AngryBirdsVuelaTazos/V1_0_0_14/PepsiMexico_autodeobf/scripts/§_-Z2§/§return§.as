package §_-Z2§
{
   import §_-wo§.§_-Ff§;
   import §_-wo§.§_-dE§;
   import §_-wo§.§_-g0§;
   
   public class §return§ extends §_-dE§
   {
       
      
      public function §return§(param1:§_-Ff§, param2:Number)
      {
         super(param1,param2);
         §_-jI§ = param1.duration;
      }
      
      override protected function newInstance() : §_-g0§
      {
         return new §return§(§_-cR§.clone() as §_-Ff§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-cR§.update(§_-jI§ - param1);
      }
   }
}
