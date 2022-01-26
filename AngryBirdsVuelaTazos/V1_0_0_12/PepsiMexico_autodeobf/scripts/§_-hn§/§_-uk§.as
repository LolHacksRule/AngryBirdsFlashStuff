package §_-hn§
{
   import §_-60§.§_-he§;
   import §_-Ou§.§_-DP§;
   import §_-lT§.§_-Vt§;
   
   public class §_-uk§ extends §_-DZ§ implements §_-ra§
   {
       
      
      protected var §_-4g§:§_-Vt§;
      
      protected var §_-we§:§_-he§;
      
      public function §_-uk§(param1:§_-DP§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §_-tU§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §_-tU§)
            {
               _loc2_ = this.§_-4g§.§_-YJ§(param1,0,1,§_-tU§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§_-we§.update(_loc2_);
      }
      
      public function get §_-TR§() : §_-he§
      {
         return this.§_-we§;
      }
      
      public function get §_-H9§() : §_-Vt§
      {
         return this.§_-4g§;
      }
      
      override protected function copyFrom(param1:§_-DZ§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-uk§ = param1 as §_-uk§;
         this.§_-4g§ = _loc2_.§_-4g§;
         this.§_-we§ = _loc2_.§_-we§.clone();
      }
      
      override protected function newInstance() : §_-DZ§
      {
         return new §_-uk§(§_-2E§);
      }
      
      public function set §_-H9§(param1:§_-Vt§) : void
      {
         this.§_-4g§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-we§ != null ? this.§_-we§.target : null;
      }
      
      public function set §_-TR§(param1:§_-he§) : void
      {
         this.§_-we§ = param1;
      }
      
      public function get time() : Number
      {
         return §_-tU§;
      }
   }
}
