package §;@§
{
   import §+D§.§ #^§;
   import §>"$§.§?g§;
   import §>@§.§5"H§;
   import flash.events.EventDispatcher;
   
   public class §2#C§ extends EventDispatcher implements §5!U§
   {
       
      
      protected var §=#=§:§ #^§;
      
      protected var §]"u§:Boolean;
      
      protected var §^"N§:§5"H§;
      
      protected var §7"p§:Boolean;
      
      public function §2#C§(param1:§ #^§, param2:§5"H§)
      {
         super();
         this.§=#=§ = param1;
         this.§^"N§ = param2;
         this.§]"u§ = false;
         this.§7"p§ = true;
         this.init();
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§7"p§;
      }
      
      public function get §`Z§() : § #^§
      {
         return this.§=#=§;
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
         this.§]"u§ = true;
      }
      
      public function enable(param1:String = "") : void
      {
         this.§]"u§ = false;
      }
      
      public function initData(param1:§?g§) : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function purchaseAccepted(param1:Boolean) : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
   }
}
