package §_-Z2§
{
   import §_-wo§.§_-Ff§;
   import §_-wo§.§_-dE§;
   import §_-wo§.§_-g0§;
   
   public class §_-vR§ extends §_-dE§
   {
       
      
      private var §_-yC§:Number;
      
      private var §_-v5§:uint;
      
      public function §_-vR§(param1:§_-Ff§, param2:uint)
      {
         super(param1,0);
         this.§_-yC§ = param1.duration;
         this.§_-v5§ = param2;
         §_-jI§ = this.§_-yC§ * param2;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 >= 0)
         {
            param1 -= param1 < §_-jI§ ? this.§_-yC§ * int(param1 / this.§_-yC§) : §_-jI§ - this.§_-yC§;
         }
         §_-cR§.update(param1);
      }
      
      public function get §_-ot§() : uint
      {
         return this.§_-v5§;
      }
      
      override protected function newInstance() : §_-g0§
      {
         return new §_-vR§(§_-cR§.clone() as §_-Ff§,this.§_-ot§);
      }
   }
}
