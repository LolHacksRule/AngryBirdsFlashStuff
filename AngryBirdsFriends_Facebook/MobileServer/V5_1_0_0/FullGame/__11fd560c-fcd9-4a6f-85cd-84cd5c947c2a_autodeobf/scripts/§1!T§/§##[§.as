package §1!T§
{
   import §"!@§.§1S§;
   import §"!@§.§8"o§;
   import §2G§.§3W§;
   import §5P§.§""C§;
   import §;$3§.§8=§;
   import §<h§.§[#K§;
   import flash.events.EventDispatcher;
   
   public class §##[§ extends EventDispatcher implements §&!?§
   {
       
      
      protected var §4"y§:§[#K§;
      
      protected var §!"J§:Boolean;
      
      protected var §#A§:§3W§;
      
      protected var §1a§:§""C§;
      
      protected var mLevelManager:§8=§;
      
      public function §##[§(param1:§[#K§, param2:§8=§, param3:§3W§, param4:§""C§)
      {
         super();
         this.§4"y§ = param1;
         this.mLevelManager = param2;
         this.§1a§ = param4;
         this.§#A§ = param3;
         this.§!"J§ = true;
         this.init();
      }
      
      public function get §+X§() : §[#K§
      {
         return this.§4"y§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §`#§() : Boolean
      {
         return !this.§!"J§;
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
         this.§!"J§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§!"J§ = false;
      }
      
      protected function §6>§() : String
      {
         return §1S§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §8"o§.STATE_NAME;
      }
   }
}
