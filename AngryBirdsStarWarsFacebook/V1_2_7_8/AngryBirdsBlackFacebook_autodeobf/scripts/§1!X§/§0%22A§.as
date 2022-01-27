package §1!X§
{
   import §!X§.§,"p§;
   import §!X§.§>!I§;
   import §""d§.§,m§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §`"8§.§4"K§;
   import flash.events.EventDispatcher;
   
   public class §0"A§ extends EventDispatcher implements §76§
   {
       
      
      protected var §=5§:§,m§;
      
      protected var §1!?§:Boolean;
      
      protected var §]S§:§4"K§;
      
      protected var §8-§:§="B§;
      
      protected var § !p§:§7!m§;
      
      public function §0"A§(param1:§,m§, param2:§7!m§, param3:§4"K§, param4:§="B§)
      {
         super();
         this.§=5§ = param1;
         this.§ !p§ = param2;
         this.§8-§ = param4;
         this.§]S§ = param3;
         this.§1!?§ = true;
         this.init();
      }
      
      public function get §@"A§() : §,m§
      {
         return this.§=5§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function isEnabled() : Boolean
      {
         return !this.§1!?§;
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
         this.§1!?§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§1!?§ = false;
      }
      
      protected function getLevelSelectionStateName() : String
      {
         return §,"p§.§'#2§;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §>!I§.§'#2§;
      }
   }
}
