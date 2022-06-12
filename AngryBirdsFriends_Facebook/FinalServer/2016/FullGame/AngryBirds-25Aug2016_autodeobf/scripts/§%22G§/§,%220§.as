package §"G§
{
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §'U§.§]#[§;
   import §,!=§.§<!B§;
   import §,!=§.§@#j§;
   import §6"r§.§0"<§;
   import flash.events.EventDispatcher;
   
   public class §,"0§ extends EventDispatcher implements §"q§
   {
       
      
      protected var §@#_§:§0"<§;
      
      protected var §21§:Boolean;
      
      protected var §'7§:§,"n§;
      
      protected var §'#w§:§]#[§;
      
      protected var mLevelManager:§#!?§;
      
      public function §,"0§(param1:§0"<§, param2:§#!?§, param3:§,"n§, param4:§]#[§)
      {
         super();
         this.§@#_§ = param1;
         this.mLevelManager = param2;
         this.§'#w§ = param4;
         this.§'7§ = param3;
         this.§21§ = true;
         this.init();
      }
      
      public function get §?§() : §0"<§
      {
         return this.§@#_§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §@!G§() : Boolean
      {
         return !this.§21§;
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
         this.§21§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§21§ = false;
      }
      
      protected function §5A§() : String
      {
         return §<!B§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §@#j§.STATE_NAME;
      }
   }
}
