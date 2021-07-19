package §;!W§
{
   import §+D§.§ #^§;
   import §,"N§.§@>§;
   import §<"c§.§+#?§;
   import §<"c§.§<2§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import flash.events.EventDispatcher;
   
   public class §[!§ extends EventDispatcher implements §8#0§
   {
       
      
      protected var §=#=§:§ #^§;
      
      protected var §]"u§:Boolean;
      
      protected var §4#J§:§@>§;
      
      protected var §^"N§:§5"H§;
      
      protected var §+!b§:§+"2§;
      
      public function §[!§(param1:§ #^§, param2:§+"2§, param3:§@>§, param4:§5"H§)
      {
         super();
         this.§=#=§ = param1;
         this.§+!b§ = param2;
         this.§^"N§ = param4;
         this.§4#J§ = param3;
         this.§]"u§ = true;
         this.init();
      }
      
      public function get §`Z§() : § #^§
      {
         return this.§=#=§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function isEnabled() : Boolean
      {
         return !this.§]"u§;
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
         this.§]"u§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§]"u§ = false;
      }
      
      protected function getLevelSelectionStateName() : String
      {
         return §+#?§.§^!7§;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §<2§.§^!7§;
      }
   }
}
