package §_-My§
{
   import §_-Wa§.§_-wQ§;
   import §_-h2§.§_-CC§;
   import §_-lV§.§_-i2§;
   
   public class §_-sA§ extends §_-Ry§ implements §_-QC§
   {
       
      
      protected var §_-nC§:§_-wQ§;
      
      protected var §_-Y6§:§_-i2§;
      
      public function §_-sA§(param1:§_-CC§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §_-Hr§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §_-Hr§)
            {
               _loc2_ = this.§_-nC§.§_-eV§(param1,0,1,§_-Hr§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§_-Y6§.update(_loc2_);
      }
      
      public function get §_-EO§() : §_-i2§
      {
         return this.§_-Y6§;
      }
      
      public function get §_-4g§() : §_-wQ§
      {
         return this.§_-nC§;
      }
      
      override protected function copyFrom(param1:§_-Ry§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-sA§ = param1 as §_-sA§;
         this.§_-nC§ = _loc2_.§_-nC§;
         this.§_-Y6§ = _loc2_.§_-Y6§.clone();
      }
      
      override protected function newInstance() : §_-Ry§
      {
         return new §_-sA§(§function§);
      }
      
      public function set §_-4g§(param1:§_-wQ§) : void
      {
         this.§_-nC§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-Y6§ != null ? this.§_-Y6§.target : null;
      }
      
      public function set §_-EO§(param1:§_-i2§) : void
      {
         this.§_-Y6§ = param1;
      }
      
      public function get time() : Number
      {
         return §_-Hr§;
      }
   }
}
