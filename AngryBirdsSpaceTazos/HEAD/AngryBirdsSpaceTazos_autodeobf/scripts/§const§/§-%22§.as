package §const§
{
   import §%!P§.§@o§;
   import §%"%§.§2Z§;
   import §1z§.§^!@§;
   import §9%§.§ §;
   import §9%§.§^! §;
   import §="<§.§,"$§;
   import flash.events.EventDispatcher;
   
   public class §-"§ extends EventDispatcher implements §`!<§
   {
       
      
      protected var §-!O§:§,"$§;
      
      protected var §="3§:Boolean;
      
      protected var §7W§:§@o§;
      
      protected var § "@§:§2Z§;
      
      protected var §#"=§:§^!@§;
      
      public function §-"§(param1:§,"$§, param2:§^!@§, param3:§@o§, param4:§2Z§)
      {
         super();
         this.§-!O§ = param1;
         this.§#"=§ = param2;
         this.§ "@§ = param4;
         this.§7W§ = param3;
         this.§="3§ = true;
         this.init();
      }
      
      public function get §<"§() : §,"$§
      {
         return this.§-!O§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function § "9§() : Boolean
      {
         return !this.§="3§;
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
         this.§="3§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§="3§ = false;
      }
      
      protected function §9!"§() : String
      {
         return § §.STATE_NAME;
      }
      
      protected function § 4§() : String
      {
         return §^! §.STATE_NAME;
      }
   }
}
