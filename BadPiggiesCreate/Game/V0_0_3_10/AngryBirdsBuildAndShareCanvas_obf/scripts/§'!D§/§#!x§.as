package §'!D§
{
   import §6!F§.§1!]§;
   import §["6§.§@D§;
   
   public class §#!x§ extends §9!W§ implements §<H§
   {
       
      
      protected var §7p§:§1!]§;
      
      public function §#!x§(param1:§@D§)
      {
         super(param1,0);
      }
      
      public function get §;!r§() : §1!]§
      {
         return this.§7p§;
      }
      
      public function set §;!r§(param1:§1!]§) : void
      {
         this.§7p§ = param1;
         if(this.§7p§ != null)
         {
            §4!V§ = this.§7p§.duration;
         }
      }
      
      override protected function newInstance() : §9!W§
      {
         return new §#!x§(§9%§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         this.§7p§.update(param1);
      }
      
      public function get target() : Object
      {
         return this.§7p§ != null ? this.§7p§.target : null;
      }
      
      override protected function copyFrom(param1:§9!W§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§#!x§ = param1 as §#!x§;
         this.§7p§ = _loc2_.§7p§.clone() as §1!]§;
      }
   }
}
