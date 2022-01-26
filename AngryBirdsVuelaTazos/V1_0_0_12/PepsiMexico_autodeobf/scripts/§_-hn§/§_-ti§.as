package §_-hn§
{
   import §_-60§.§_-HC§;
   import §_-Ou§.§_-DP§;
   
   public class §_-ti§ extends §_-DZ§ implements §_-WP§
   {
       
      
      protected var §_-we§:§_-HC§;
      
      public function §_-ti§(param1:§_-DP§)
      {
         super(param1,0);
      }
      
      public function get §_-TR§() : §_-HC§
      {
         return this.§_-we§;
      }
      
      public function set §_-TR§(param1:§_-HC§) : void
      {
         this.§_-we§ = param1;
         if(this.§_-we§ != null)
         {
            §_-tU§ = this.§_-we§.duration;
         }
      }
      
      override protected function newInstance() : §_-DZ§
      {
         return new §_-ti§(§_-2E§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-we§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§_-we§ != null ? this.§_-we§.target : null;
      }
      
      override protected function copyFrom(param1:§_-DZ§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-ti§ = param1 as §_-ti§;
         this.§_-we§ = _loc2_.§_-we§.clone() as §_-HC§;
      }
   }
}
