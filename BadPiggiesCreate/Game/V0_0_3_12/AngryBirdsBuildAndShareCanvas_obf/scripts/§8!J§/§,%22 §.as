package §8!J§
{
   import § get§.§#!K§;
   import §2n§.§8"7§;
   
   public class §," § extends §5f§ implements §-l§
   {
       
      
      protected var §!G§:§#!K§;
      
      public function §," §(param1:§8"7§)
      {
         super(param1,0);
      }
      
      public function get §6+§() : §#!K§
      {
         return this.§!G§;
      }
      
      public function set §6+§(param1:§#!K§) : void
      {
         this.§!G§ = param1;
         if(this.§!G§ != null)
         {
            §,!O§ = this.§!G§.duration;
         }
      }
      
      override protected function newInstance() : §5f§
      {
         return new §," §(§+!s§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§!G§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§!G§ != null ? this.§!G§.target : null;
      }
      
      override protected function copyFrom(param1:§5f§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§," § = param1 as §," §;
         this.§!G§ = _loc2_.§!G§.clone() as §#!K§;
      }
   }
}
