package §_-xo§
{
   import §_-5y§.§_-Yj§;
   import §_-V7§.§_-S1§;
   import §_-Xz§.§_-Ps§;
   
   public class §_-bw§ extends §_-E-§ implements §_-Xk§
   {
       
      
      protected var §_-yQ§:§_-Yj§;
      
      protected var §_-A-§:§_-S1§;
      
      public function §_-bw§(param1:§_-Ps§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §_-7A§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §_-7A§)
            {
               _loc2_ = this.§_-yQ§.§_-3u§(param1,0,1,§_-7A§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§_-A-§.update(_loc2_);
      }
      
      public function get §_-tz§() : §_-S1§
      {
         return this.§_-A-§;
      }
      
      public function get §_-5E§() : §_-Yj§
      {
         return this.§_-yQ§;
      }
      
      override protected function copyFrom(param1:§_-E-§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-bw§ = param1 as §_-bw§;
         this.§_-yQ§ = _loc2_.§_-yQ§;
         this.§_-A-§ = _loc2_.§_-A-§.clone();
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-bw§(§_-0A§);
      }
      
      public function set §_-5E§(param1:§_-Yj§) : void
      {
         this.§_-yQ§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-A-§ != null ? this.§_-A-§.target : null;
      }
      
      public function set §_-tz§(param1:§_-S1§) : void
      {
         this.§_-A-§ = param1;
      }
      
      public function get time() : Number
      {
         return §_-7A§;
      }
   }
}
