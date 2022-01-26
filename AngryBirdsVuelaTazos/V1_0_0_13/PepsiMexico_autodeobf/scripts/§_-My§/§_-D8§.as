package §_-My§
{
   import §_-h2§.§_-CC§;
   import §_-lV§.§_-v§;
   
   public class §_-D8§ extends §_-Ry§ implements §if §
   {
       
      
      protected var §_-Y6§:§_-v§;
      
      public function §_-D8§(param1:§_-CC§)
      {
         super(param1,0);
      }
      
      public function get §_-EO§() : §_-v§
      {
         return this.§_-Y6§;
      }
      
      public function set §_-EO§(param1:§_-v§) : void
      {
         this.§_-Y6§ = param1;
         if(this.§_-Y6§ != null)
         {
            §_-Hr§ = this.§_-Y6§.duration;
         }
      }
      
      override protected function newInstance() : §_-Ry§
      {
         return new §_-D8§(§function§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§_-Y6§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§_-Y6§ != null ? this.§_-Y6§.target : null;
      }
      
      override protected function copyFrom(param1:§_-Ry§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-D8§ = param1 as §_-D8§;
         this.§_-Y6§ = _loc2_.§_-Y6§.clone() as §_-v§;
      }
   }
}
