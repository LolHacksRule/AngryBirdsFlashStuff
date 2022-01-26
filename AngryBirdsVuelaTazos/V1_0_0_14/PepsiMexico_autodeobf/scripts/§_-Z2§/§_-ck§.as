package §_-Z2§
{
   import §_-wo§.§_-Ff§;
   import §_-wo§.§_-dE§;
   import §_-wo§.§_-g0§;
   
   public class §_-ck§ extends §_-dE§
   {
       
      
      private var §_-vS§:Number;
      
      private var §_-Mw§:Number;
      
      public function §_-ck§(param1:§_-Ff§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-jI§ = param3 - param2;
         this.§_-vS§ = param2;
         this.§_-Mw§ = param3;
      }
      
      override protected function newInstance() : §_-g0§
      {
         return new §_-ck§(§_-cR§.clone() as §_-Ff§,this.§_-vS§,this.§_-Mw§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §_-jI§)
            {
               §_-cR§.update(param1 + this.§_-vS§);
            }
            else
            {
               §_-cR§.update(this.§_-Mw§);
            }
         }
         else
         {
            §_-cR§.update(this.§_-vS§);
         }
      }
      
      public function get §_-mT§() : Number
      {
         return this.§_-vS§;
      }
      
      public function get end() : Number
      {
         return this.§_-Mw§;
      }
   }
}
