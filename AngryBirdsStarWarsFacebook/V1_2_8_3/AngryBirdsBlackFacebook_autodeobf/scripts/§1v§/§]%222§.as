package §1v§
{
   import §%"Q§.§7"9§;
   import §%"Q§.§`=§;
   import §&!j§.§5#+§;
   import §9"U§.§'!;§;
   import §=Z§.§@!8§;
   import flash.events.EventDispatcher;
   import §null §.§5#§;
   
   public class §]"2§ extends EventDispatcher implements §-!6§
   {
       
      
      protected var §3!m§:§@!8§;
      
      protected var §2@§:Boolean;
      
      protected var §?!$§:§'!;§;
      
      protected var §-1§:§5#+§;
      
      protected var §'""§:§5#§;
      
      public function §]"2§(param1:§@!8§, param2:§5#§, param3:§'!;§, param4:§5#+§)
      {
         super();
         this.§3!m§ = param1;
         this.§'""§ = param2;
         this.§-1§ = param4;
         this.§?!$§ = param3;
         this.§2@§ = true;
         this.init();
      }
      
      public function get §]!O§() : §@!8§
      {
         return this.§3!m§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function isEnabled() : Boolean
      {
         return !this.§2@§;
      }
      
      protected function init() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function dispose() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function disable(param1:Boolean) : void
      {
         this.§2@§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§2@§ = false;
      }
      
      protected function getLevelSelectionStateName() : String
      {
         return §`=§.§-!U§;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §7"9§.§-!U§;
      }
   }
}
