package §7!A§
{
   import §#"&§.§4!W§;
   import §0"$§.§"!a§;
   import §8!K§.§5!Y§;
   import §;!§.§4!9§;
   import §;!§.§[j§;
   import §;0§.§6h§;
   import flash.events.EventDispatcher;
   
   public class §#"'§ extends EventDispatcher implements §-J§
   {
       
      
      protected var §!O§:§"!a§;
      
      protected var §2!,§:Boolean;
      
      protected var §^!8§:§4!W§;
      
      protected var §-!]§:§6h§;
      
      protected var §&" §:§5!Y§;
      
      public function §#"'§(param1:§"!a§, param2:§5!Y§, param3:§4!W§, param4:§6h§)
      {
         super();
         this.§!O§ = param1;
         this.§&" § = param2;
         this.§-!]§ = param4;
         this.§^!8§ = param3;
         this.§2!,§ = true;
         this.init();
      }
      
      public function get §&$§() : §"!a§
      {
         return this.§!O§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §+4§() : Boolean
      {
         return !this.§2!,§;
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
         this.§2!,§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§2!,§ = false;
      }
      
      protected function §2§() : String
      {
         return §4!9§.§-!q§;
      }
      
      protected function §0!S§() : String
      {
         return §[j§.§-!q§;
      }
   }
}
