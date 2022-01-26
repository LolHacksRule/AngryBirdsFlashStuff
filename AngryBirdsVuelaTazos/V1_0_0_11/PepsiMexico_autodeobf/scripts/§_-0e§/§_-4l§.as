package §_-0e§
{
   import §_-7X§.§in §;
   import §_-Aa§.§_-Y4§;
   import §_-D8§.§_-LY§;
   
   public class §_-4l§ extends §_-3D§ implements §_-9G§
   {
       
      
      protected var §_-XO§:§in §;
      
      protected var §_-Ss§:§_-LY§;
      
      public function §_-4l§(param1:§_-Y4§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §_-hZ§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §_-hZ§)
            {
               _loc2_ = this.§_-XO§.§_-OY§(param1,0,1,§_-hZ§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§_-Ss§.update(_loc2_);
      }
      
      public function get §_-FJ§() : §_-LY§
      {
         return this.§_-Ss§;
      }
      
      public function get §_-HB§() : §in §
      {
         return this.§_-XO§;
      }
      
      override protected function copyFrom(param1:§_-3D§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-4l§ = param1 as §_-4l§;
         this.§_-XO§ = _loc2_.§_-XO§;
         this.§_-Ss§ = _loc2_.§_-Ss§.clone();
      }
      
      override protected function newInstance() : §_-3D§
      {
         return new §_-4l§(§_-7S§);
      }
      
      public function set §_-HB§(param1:§in §) : void
      {
         this.§_-XO§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-Ss§ != null ? this.§_-Ss§.target : null;
      }
      
      public function set §_-FJ§(param1:§_-LY§) : void
      {
         this.§_-Ss§ = param1;
      }
      
      public function get time() : Number
      {
         return §_-hZ§;
      }
   }
}
