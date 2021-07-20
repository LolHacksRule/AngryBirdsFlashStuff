package §_-xo§
{
   import §_-V7§.§_-gL§;
   import §_-Xz§.§_-Ps§;
   
   public class §_-OQ§ extends §_-E-§ implements §_-WS§
   {
       
      
      protected var §_-A-§:§_-gL§;
      
      public function §_-OQ§(param1:§_-Ps§)
      {
         super(param1,0);
      }
      
      public function get §_-tz§() : §_-gL§
      {
         return this.§_-A-§;
      }
      
      public function set §_-tz§(param1:§_-gL§) : void
      {
         this.§_-A-§ = param1;
         if(this.§_-A-§ != null)
         {
            §_-7A§ = this.§_-A-§.duration;
         }
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-OQ§(§_-0A§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-A-§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§_-A-§ != null ? this.§_-A-§.target : null;
      }
      
      override protected function copyFrom(param1:§_-E-§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-OQ§ = param1 as §_-OQ§;
         this.§_-A-§ = _loc2_.§_-A-§.clone() as §_-gL§;
      }
   }
}
