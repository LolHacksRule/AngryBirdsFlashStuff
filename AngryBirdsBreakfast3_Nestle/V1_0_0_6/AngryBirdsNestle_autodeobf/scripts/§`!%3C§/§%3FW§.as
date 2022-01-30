package §`!<§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §6!5§.§4!R§;
   import §6!5§.§^!+§;
   import §?!v§.§&r§;
   import §[!F§.§3j§;
   import flash.events.EventDispatcher;
   
   public class §?W§ extends EventDispatcher implements §`!r§
   {
       
      
      protected var §,8§:§3j§;
      
      protected var §@<§:Boolean;
      
      protected var §%0§:§&r§;
      
      protected var §2e§:§>u§;
      
      protected var §="4§:§ q§;
      
      public function §?W§(param1:§3j§, param2:§ q§, param3:§&r§, param4:§>u§)
      {
         super();
         this.§,8§ = param1;
         this.§="4§ = param2;
         this.§2e§ = param4;
         this.§%0§ = param3;
         this.§@<§ = true;
         this.init();
      }
      
      public function get §!g§() : §3j§
      {
         return this.§,8§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §1!O§() : Boolean
      {
         return !this.§@<§;
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
         this.§@<§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§@<§ = false;
      }
      
      protected function §`!;§() : String
      {
         return §^!+§.§7w§;
      }
      
      protected function §="§() : String
      {
         return §4!R§.§7w§;
      }
   }
}
