package §#k§
{
   import §'<§.§=!o§;
   import §;!b§.§%>§;
   import §?!E§.§62§;
   import §?!E§.§]l§;
   import §@#§.§9!'§;
   import §[j§.§-?§;
   import flash.events.EventDispatcher;
   
   public class §3!Q§ extends EventDispatcher implements §+m§
   {
       
      
      protected var §?5§:§9!'§;
      
      protected var §4!n§:Boolean;
      
      protected var §^!g§:§-?§;
      
      protected var §"q§:§%>§;
      
      protected var §+o§:§=!o§;
      
      public function §3!Q§(param1:§9!'§, param2:§=!o§, param3:§-?§, param4:§%>§)
      {
         super();
         this.§?5§ = param1;
         this.§+o§ = param2;
         this.§"q§ = param4;
         this.§^!g§ = param3;
         this.§4!n§ = true;
         this.init();
      }
      
      public function get §=!,§() : §9!'§
      {
         return this.§?5§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §&x§() : Boolean
      {
         return !this.§4!n§;
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
         this.§4!n§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§4!n§ = false;
      }
      
      protected function §+!I§() : String
      {
         return §]l§.§+B§;
      }
      
      protected function §[!e§() : String
      {
         return §62§.§+B§;
      }
   }
}
