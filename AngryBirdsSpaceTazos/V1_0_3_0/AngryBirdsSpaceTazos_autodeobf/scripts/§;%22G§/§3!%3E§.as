package §;"G§
{
   import §,!7§.§5!k§;
   import §4",§.§,!j§;
   import §5R§.§6"7§;
   import §71§.§;l§;
   import §=" §.§ Q§;
   import §=" §.§]!"§;
   import flash.events.EventDispatcher;
   
   public class §3!>§ extends EventDispatcher implements §<!_§
   {
       
      
      protected var §6!I§:§5!k§;
      
      protected var §<p§:Boolean;
      
      protected var §,!P§:§6"7§;
      
      protected var §3"%§:§;l§;
      
      protected var §]m§:§,!j§;
      
      public function §3!>§(param1:§5!k§, param2:§,!j§, param3:§6"7§, param4:§;l§)
      {
         super();
         this.§6!I§ = param1;
         this.§]m§ = param2;
         this.§3"%§ = param4;
         this.§,!P§ = param3;
         this.§<p§ = true;
         this.init();
      }
      
      public function get §`!R§() : §5!k§
      {
         return this.§6!I§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §%D§() : Boolean
      {
         return !this.§<p§;
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
         this.§<p§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§<p§ = false;
      }
      
      protected function §^!z§() : String
      {
         return §]!"§.STATE_NAME;
      }
      
      protected function §'!G§() : String
      {
         return § Q§.STATE_NAME;
      }
   }
}
