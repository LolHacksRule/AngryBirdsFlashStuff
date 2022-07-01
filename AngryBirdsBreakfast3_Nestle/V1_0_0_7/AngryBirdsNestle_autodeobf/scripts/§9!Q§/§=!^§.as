package §9!Q§
{
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §3@§.§`!h§;
   import §>P§.§]"4§;
   import §]!V§.§&g§;
   import §]!V§.§5!h§;
   import flash.events.EventDispatcher;
   
   public class §=!^§ extends EventDispatcher implements §"!q§
   {
       
      
      protected var §"W§:§]"4§;
      
      protected var §#!J§:Boolean;
      
      protected var §`p§:§`!h§;
      
      protected var §-F§:§&S§;
      
      protected var §97§:§5!1§;
      
      public function §=!^§(param1:§]"4§, param2:§5!1§, param3:§`!h§, param4:§&S§)
      {
         super();
         this.§"W§ = param1;
         this.§97§ = param2;
         this.§-F§ = param4;
         this.§`p§ = param3;
         this.§#!J§ = true;
         this.init();
      }
      
      public function get §5!m§() : §]"4§
      {
         return this.§"W§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §%&§() : Boolean
      {
         return !this.§#!J§;
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
         this.§#!J§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§#!J§ = false;
      }
      
      protected function §=7§() : String
      {
         return §&g§.§+a§;
      }
      
      protected function §>!O§() : String
      {
         return §5!h§.§+a§;
      }
   }
}
