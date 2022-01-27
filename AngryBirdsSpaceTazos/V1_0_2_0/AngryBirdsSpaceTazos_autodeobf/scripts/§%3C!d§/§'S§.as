package §<!d§
{
   import §!i§.§1s§;
   import §"!>§.§<!o§;
   import §""%§.§extends§;
   import §7!c§.§!!Q§;
   import §7!c§.§"!H§;
   import §;!0§.;
   import flash.events.EventDispatcher;
   
   public class §'S§ extends EventDispatcher implements §^!B§
   {
       
      
      protected var §3!C§:§1s§;
      
      protected var §'!e§:Boolean;
      
      protected var § #§:§extends§;
      
      protected var §4!T§:§<!o§;
      
      protected var §,W§:§#2§;
      
      public function §'S§(param1:§1s§, param2:§#2§, param3:§extends§, param4:§<!o§)
      {
         super();
         this.§3!C§ = param1;
         this.§,W§ = param2;
         this.§4!T§ = param4;
         this.§ #§ = param3;
         this.§'!e§ = true;
         this.init();
      }
      
      public function get §-!"§() : §1s§
      {
         return this.§3!C§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §;x§() : Boolean
      {
         return !this.§'!e§;
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
         this.§'!e§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§'!e§ = false;
      }
      
      protected function §#"2§() : String
      {
         return §!!Q§.STATE_NAME;
      }
      
      protected function §'F§() : String
      {
         return §"!H§.STATE_NAME;
      }
   }
}
