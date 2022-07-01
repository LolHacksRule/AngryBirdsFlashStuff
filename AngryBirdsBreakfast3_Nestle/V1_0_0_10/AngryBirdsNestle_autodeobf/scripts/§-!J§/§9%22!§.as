package §-!J§
{
   import §#!]§.§6U§;
   import §#!]§.§^!m§;
   import §4Y§.§%n§;
   import §7"6§.§^!_§;
   import §?u§.override;
   import flash.events.EventDispatcher;
   
   public class §9"!§ extends EventDispatcher implements §`E§
   {
       
      
      protected var §!!g§:§%n§;
      
      protected var §"h§:Boolean;
      
      protected var §+!L§:override;
      
      protected var §%E§:§^!_§;
      
      protected var §#n§:§-g§;
      
      public function §9"!§(param1:§%n§, param2:§-g§, param3:override, param4:§^!_§)
      {
         super();
         this.§!!g§ = param1;
         this.§#n§ = param2;
         this.§%E§ = param4;
         this.§+!L§ = param3;
         this.§"h§ = true;
         this.init();
      }
      
      public function get §2!A§() : §%n§
      {
         return this.§!!g§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §]!T§() : Boolean
      {
         return !this.§"h§;
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
         this.§"h§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§"h§ = false;
      }
      
      protected function §function§() : String
      {
         return §^!m§.§]!y§;
      }
      
      protected function § !K§() : String
      {
         return §6U§.§]!y§;
      }
   }
}
