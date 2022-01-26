package §_-sN§
{
   import §_-9w§.§_-HK§;
   import §_-SJ§.§_-Q5§;
   
   public class §_-eX§ extends §_-b8§ implements §_-Ve§
   {
       
      
      protected var §_-qC§:§_-HK§;
      
      public function §_-eX§(param1:§_-Q5§)
      {
         super(param1,0);
      }
      
      public function get §_-pQ§() : §_-HK§
      {
         return this.§_-qC§;
      }
      
      public function set §_-pQ§(param1:§_-HK§) : void
      {
         this.§_-qC§ = param1;
         if(this.§_-qC§ != null)
         {
            §_-sA§ = this.§_-qC§.duration;
         }
      }
      
      override protected function newInstance() : §_-b8§
      {
         return new §_-eX§(§_-MR§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-qC§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§_-qC§ != null ? this.§_-qC§.target : null;
      }
      
      override protected function copyFrom(param1:§_-b8§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-eX§ = param1 as §_-eX§;
         this.§_-qC§ = _loc2_.§_-qC§.clone() as §_-HK§;
      }
   }
}
