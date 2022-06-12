package §3!!§
{
   import § !j§.§4#c§;
   import §!#C§.§#H§;
   import §#,§.§]$+§;
   import §,"v§.§;"n§;
   import §2";§.§9!R§;
   import §2";§.§9§;
   import flash.events.EventDispatcher;
   
   public class §;2§ extends EventDispatcher implements §-"C§
   {
       
      
      protected var §6#`§:§]$+§;
      
      protected var §^!!§:Boolean;
      
      protected var §#!$§:§#H§;
      
      protected var §+" §:§4#c§;
      
      protected var mLevelManager:§;"n§;
      
      public function §;2§(param1:§]$+§, param2:§;"n§, param3:§#H§, param4:§4#c§)
      {
         super();
         this.§6#`§ = param1;
         this.mLevelManager = param2;
         this.§+" § = param4;
         this.§#!$§ = param3;
         this.§^!!§ = true;
         this.init();
      }
      
      public function get §-#R§() : §]$+§
      {
         return this.§6#`§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §'#r§() : Boolean
      {
         return !this.§^!!§;
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
         this.§^!!§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§^!!§ = false;
      }
      
      protected function §`![§() : String
      {
         return §9#7§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §9!R§.STATE_NAME;
      }
   }
}
