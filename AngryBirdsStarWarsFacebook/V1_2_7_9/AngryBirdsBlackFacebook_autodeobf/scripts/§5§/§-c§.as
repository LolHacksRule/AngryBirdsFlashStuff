package §5§#3
{
   import §""d§.§,m§;
   import §%W§.§[!h§;
   import §'+§.§="B§;
   import flash.events.EventDispatcher;
   
   public class §-c§ extends EventDispatcher implements §0"O§
   {
       
      
      protected var §=5§:§,m§;
      
      protected var §1!?§:Boolean;
      
      protected var §8-§:§="B§;
      
      protected var §6!J§:Boolean;
      
      public function §-c§(param1:§,m§, param2:§="B§)
      {
         super();
         this.§=5§ = param1;
         this.§8-§ = param2;
         this.§1!?§ = false;
         this.§6!J§ = true;
         this.init();
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§6!J§;
      }
      
      public function get §@"A§() : §,m§
      {
         return this.§=5§;
      }
      
      protected function refresh() : void
      {
      }
      
      protected function init() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function dispose() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function disable() : void
      {
         this.§1!?§ = true;
      }
      
      public function enable(param1:String = "") : void
      {
         this.§1!?§ = false;
      }
      
      public function initData(param1:§[!h§) : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function purchaseAccepted(param1:Boolean) : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
   }
}
