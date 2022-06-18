package §!1§
{
   import § "L§.§23§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §7#$§.§]#q§;
   import §]§.§#!$§;
   import §]§.§8$C§;
   import flash.events.EventDispatcher;
   
   public class §&#q§ extends EventDispatcher implements §'$>§
   {
       
      
      protected var §?!,§:§23§;
      
      protected var § #"§:Boolean;
      
      protected var §#!h§:§3#J§;
      
      protected var §#$&§:§%"q§;
      
      protected var mLevelManager:§]#q§;
      
      public function §&#q§(param1:§23§, param2:§]#q§, param3:§3#J§, param4:§%"q§)
      {
         super();
         this.§?!,§ = param1;
         this.mLevelManager = param2;
         this.§#$&§ = param4;
         this.§#!h§ = param3;
         this.§ #"§ = true;
         this.init();
      }
      
      public function get §<#p§() : §23§
      {
         return this.§?!,§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §9#e§() : Boolean
      {
         return !this.§ #"§;
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
         this.§ #"§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§ #"§ = false;
      }
      
      protected function §0!,§() : String
      {
         return §#!$§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §8$C§.STATE_NAME;
      }
   }
}
