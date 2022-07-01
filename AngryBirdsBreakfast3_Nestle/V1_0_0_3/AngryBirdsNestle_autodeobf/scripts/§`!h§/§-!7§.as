package §`!h§
{
   import §#!`§.§+"#§;
   import §3!!§.§5" §;
   import §>!a§.§5l§;
   import §]!d§.§-!<§;
   import §`!6§.§-%§;
   import §`!6§.§?E§;
   import flash.events.EventDispatcher;
   
   public class §-!7§ extends EventDispatcher implements §-!e§
   {
       
      
      protected var §&!e§:§5" §;
      
      protected var §0n§:Boolean;
      
      protected var §'c§:§+"#§;
      
      protected var §@d§:§-!<§;
      
      protected var §^!§:§5l§;
      
      public function §-!7§(param1:§5" §, param2:§5l§, param3:§+"#§, param4:§-!<§)
      {
         super();
         this.§&!e§ = param1;
         this.§^!§ = param2;
         this.§@d§ = param4;
         this.§'c§ = param3;
         this.§0n§ = true;
         this.init();
      }
      
      public function get §"!u§() : §5" §
      {
         return this.§&!e§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §9"4§() : Boolean
      {
         return !this.§0n§;
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
         this.§0n§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§0n§ = false;
      }
      
      protected function §=""§() : String
      {
         return §?E§.§]O§;
      }
      
      protected function §4!5§() : String
      {
         return §-%§.§]O§;
      }
   }
}
