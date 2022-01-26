package §_-0e§
{
   import §_-Aa§.§_-Y4§;
   import §_-D8§.§_-mB§;
   
   public class §_-J9§ extends §_-3D§ implements §_-9h§
   {
       
      
      protected var §_-Ss§:§_-mB§;
      
      public function §_-J9§(param1:§_-Y4§)
      {
         super(param1,0);
      }
      
      public function get §_-FJ§() : §_-mB§
      {
         return this.§_-Ss§;
      }
      
      public function set §_-FJ§(param1:§_-mB§) : void
      {
         this.§_-Ss§ = param1;
         if(this.§_-Ss§ != null)
         {
            §_-hZ§ = this.§_-Ss§.duration;
         }
      }
      
      override protected function newInstance() : §_-3D§
      {
         return new §_-J9§(§_-7S§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-Ss§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§_-Ss§ != null ? this.§_-Ss§.target : null;
      }
      
      override protected function copyFrom(param1:§_-3D§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-J9§ = param1 as §_-J9§;
         this.§_-Ss§ = _loc2_.§_-Ss§.clone() as §_-mB§;
      }
   }
}
