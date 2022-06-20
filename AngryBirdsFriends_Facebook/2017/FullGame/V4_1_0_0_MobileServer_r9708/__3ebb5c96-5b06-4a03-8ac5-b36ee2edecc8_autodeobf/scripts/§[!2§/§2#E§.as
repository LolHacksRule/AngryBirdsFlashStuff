package §[!2§
{
   import §%#A§.§]!_§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §94§.§7!c§;
   import §94§.§9#P§;
   import §@#§.§^#Q§;
   import flash.events.EventDispatcher;
   
   public class §2#E§ extends EventDispatcher implements §,#0§
   {
       
      
      protected var §@!3§:§]!_§;
      
      protected var §+#3§:Boolean;
      
      protected var §5""§:§<&§;
      
      protected var §-"Q§:§+#!§;
      
      protected var mLevelManager:§^#Q§;
      
      public function §2#E§(param1:§]!_§, param2:§^#Q§, param3:§<&§, param4:§+#!§)
      {
         super();
         this.§@!3§ = param1;
         this.mLevelManager = param2;
         this.§-"Q§ = param4;
         this.§5""§ = param3;
         this.§+#3§ = true;
         this.init();
      }
      
      public function get §6e§() : §]!_§
      {
         return this.§@!3§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §!!?§() : Boolean
      {
         return !this.§+#3§;
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
         this.§+#3§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§+#3§ = false;
      }
      
      protected function §%"H§() : String
      {
         return §7!c§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §9#P§.STATE_NAME;
      }
   }
}
