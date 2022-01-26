package §_-sN§
{
   import §_-9w§.§_-l2§;
   import §_-JU§.§_-lc§;
   import §_-SJ§.§_-Q5§;
   
   public class §_-oe§ extends §_-b8§ implements §_-vA§
   {
       
      
      protected var §_-TE§:§_-lc§;
      
      protected var §_-qC§:§_-l2§;
      
      public function §_-oe§(param1:§_-Q5§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §_-sA§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §_-sA§)
            {
               _loc2_ = this.§_-TE§.§_-WA§(param1,0,1,§_-sA§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§_-qC§.update(_loc2_);
      }
      
      public function get §_-pQ§() : §_-l2§
      {
         return this.§_-qC§;
      }
      
      public function get §_-gl§() : §_-lc§
      {
         return this.§_-TE§;
      }
      
      override protected function copyFrom(param1:§_-b8§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-oe§ = param1 as §_-oe§;
         this.§_-TE§ = _loc2_.§_-TE§;
         this.§_-qC§ = _loc2_.§_-qC§.clone();
      }
      
      override protected function newInstance() : §_-b8§
      {
         return new §_-oe§(§_-MR§);
      }
      
      public function set §_-gl§(param1:§_-lc§) : void
      {
         this.§_-TE§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-qC§ != null ? this.§_-qC§.target : null;
      }
      
      public function set §_-pQ§(param1:§_-l2§) : void
      {
         this.§_-qC§ = param1;
      }
      
      public function get time() : Number
      {
         return §_-sA§;
      }
   }
}
