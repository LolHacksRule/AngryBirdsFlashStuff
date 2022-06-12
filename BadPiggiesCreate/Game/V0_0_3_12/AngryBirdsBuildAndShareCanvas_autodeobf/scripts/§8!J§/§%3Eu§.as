package §8!J§
{
   import § get§.§,B§;
   import §2n§.§8"7§;
   import §4!H§.§7;§;
   
   public class §>u§ extends §5f§ implements §&J§
   {
       
      
      protected var §1n§:§7;§;
      
      protected var §!G§:§,B§;
      
      public function §>u§(param1:§8"7§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §,!O§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §,!O§)
            {
               _loc2_ = this.§1n§.§6r§(param1,0,1,§,!O§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§!G§.update(_loc2_);
      }
      
      public function get §6+§() : §,B§
      {
         return this.§!G§;
      }
      
      public function get §1<§() : §7;§
      {
         return this.§1n§;
      }
      
      override protected function copyFrom(param1:§5f§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§>u§ = param1 as §>u§;
         this.§1n§ = _loc2_.§1n§;
         this.§!G§ = _loc2_.§!G§.clone();
      }
      
      override protected function newInstance() : §5f§
      {
         return new §>u§(§+!s§);
      }
      
      public function set §1<§(param1:§7;§) : void
      {
         this.§1n§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§!G§ != null ? this.§!G§.target : null;
      }
      
      public function set §6+§(param1:§,B§) : void
      {
         this.§!G§ = param1;
      }
      
      public function get time() : Number
      {
         return §,!O§;
      }
   }
}
