package §_-wo§
{
   import §_-8p§.§_-dW§;
   import §_-DH§.§_-Rt§;
   
   public class §_-eS§ extends §_-g0§ implements §_-m6§
   {
       
      
      protected var §_-n7§:§_-Rt§;
      
      public function §_-eS§(param1:§_-dW§)
      {
         super(param1,0);
      }
      
      public function get §_-gr§() : §_-Rt§
      {
         return this.§_-n7§;
      }
      
      public function set §_-gr§(param1:§_-Rt§) : void
      {
         this.§_-n7§ = param1;
         if(this.§_-n7§ != null)
         {
            §_-jI§ = this.§_-n7§.duration;
         }
      }
      
      override protected function newInstance() : §_-g0§
      {
         return new §_-eS§(§_-ac§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-n7§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§_-n7§ != null ? this.§_-n7§.target : null;
      }
      
      override protected function copyFrom(param1:§_-g0§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-eS§ = param1 as §_-eS§;
         this.§_-n7§ = _loc2_.§_-n7§.clone() as §_-Rt§;
      }
   }
}
