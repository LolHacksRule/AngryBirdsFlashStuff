package §`!D§
{
   import §&!j§.§5#+§;
   import §=Z§.§@!8§;
   import §[! §.§<",§;
   import flash.events.EventDispatcher;
   
   public class §^z§ extends EventDispatcher implements §'"'§
   {
       
      
      protected var §3!m§:§@!8§;
      
      protected var §2@§:Boolean;
      
      protected var §-1§:§5#+§;
      
      protected var §?"Y§:Boolean;
      
      public function §^z§(param1:§@!8§, param2:§5#+§)
      {
         super();
         this.§3!m§ = param1;
         this.§-1§ = param2;
         this.§2@§ = false;
         this.§?"Y§ = true;
         this.init();
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§?"Y§;
      }
      
      public function get §]!O§() : §@!8§
      {
         return this.§3!m§;
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
         this.§2@§ = true;
      }
      
      public function enable(param1:String = "") : void
      {
         this.§2@§ = false;
      }
      
      public function initData(param1:§<",§) : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function purchaseAccepted(param1:Boolean) : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
   }
}
