package §'!D§
{
   import §6!F§.§8w§;
   import §7"+§.§-!<§;
   import §["6§.§@D§;
   
   public class § !<§ extends §9!W§ implements §`u§
   {
       
      
      protected var §'+§:§-!<§;
      
      protected var §7p§:§8w§;
      
      public function § !<§(param1:§@D§)
      {
         super(param1,0);
      }
      
      public function set time(param1:Number) : void
      {
         §4!V§ = param1;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(param1 > 0)
         {
            if(param1 < §4!V§)
            {
               _loc2_ = this.§'+§.§2!i§(param1,0,1,§4!V§);
            }
            else
            {
               _loc2_ = 1;
            }
         }
         this.§7p§.update(_loc2_);
      }
      
      public function get §;!r§() : §8w§
      {
         return this.§7p§;
      }
      
      public function get §-5§() : §-!<§
      {
         return this.§'+§;
      }
      
      override protected function copyFrom(param1:§9!W§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§ !<§ = param1 as § !<§;
         this.§'+§ = _loc2_.§'+§;
         this.§7p§ = _loc2_.§7p§.clone();
      }
      
      override protected function newInstance() : §9!W§
      {
         return new § !<§(§9%§);
      }
      
      public function set §-5§(param1:§-!<§) : void
      {
         this.§'+§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§7p§ != null ? this.§7p§.target : null;
      }
      
      public function set §;!r§(param1:§8w§) : void
      {
         this.§7p§ = param1;
      }
      
      public function get time() : Number
      {
         return §4!V§;
      }
   }
}
