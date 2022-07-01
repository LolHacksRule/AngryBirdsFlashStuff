package §9!p§
{
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §1![§.§`w§;
   import §1!c§.§'8§;
   import §1!c§.§^j§;
   import §2u§.§,6§;
   import flash.events.EventDispatcher;
   
   public class §?!=§ extends EventDispatcher implements §@!n§
   {
       
      
      protected var §!o§:§,6§;
      
      protected var §4R§:Boolean;
      
      protected var §6!4§:§`w§;
      
      protected var §8&§:§+f§;
      
      protected var §4a§:§0![§;
      
      public function §?!=§(param1:§,6§, param2:§0![§, param3:§`w§, param4:§+f§)
      {
         super();
         this.§!o§ = param1;
         this.§4a§ = param2;
         this.§8&§ = param4;
         this.§6!4§ = param3;
         this.§4R§ = true;
         this.init();
      }
      
      public function get §?e§() : §,6§
      {
         return this.§!o§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §5!W§() : Boolean
      {
         return !this.§4R§;
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
         this.§4R§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§4R§ = false;
      }
      
      protected function §@f§() : String
      {
         return §^j§.§8"%§;
      }
      
      protected function §5!B§() : String
      {
         return §'8§.§8"%§;
      }
   }
}
