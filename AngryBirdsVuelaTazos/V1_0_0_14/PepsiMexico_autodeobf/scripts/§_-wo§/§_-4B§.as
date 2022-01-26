package §_-wo§
{
   import §_-8p§.§_-dW§;
   import §_-DH§.§_-AO§;
   import §_-kn§.§_-Am§;
   
   public class §_-4B§ extends §_-g0§ implements §_-ol§
   {
       
      
      protected var §_-6Y§:§_-Am§;
      
      protected var §_-n7§:§_-AO§;
      
      public function §_-4B§(param1:§_-dW§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §_-jI§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §_-jI§)
            {
               _loc2_ = this.§_-6Y§.§_-Bq§(param1,0,1,§_-jI§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§_-n7§.update(_loc2_);
      }
      
      public function get §_-gr§() : §_-AO§
      {
         return this.§_-n7§;
      }
      
      public function get §_-Bi§() : §_-Am§
      {
         return this.§_-6Y§;
      }
      
      override protected function copyFrom(param1:§_-g0§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-4B§ = param1 as §_-4B§;
         this.§_-6Y§ = _loc2_.§_-6Y§;
         this.§_-n7§ = _loc2_.§_-n7§.clone();
      }
      
      override protected function newInstance() : §_-g0§
      {
         return new §_-4B§(§_-ac§);
      }
      
      public function set §_-Bi§(param1:§_-Am§) : void
      {
         this.§_-6Y§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-n7§ != null ? this.§_-n7§.target : null;
      }
      
      public function set §_-gr§(param1:§_-AO§) : void
      {
         this.§_-n7§ = param1;
      }
      
      public function get time() : Number
      {
         return §_-jI§;
      }
   }
}
