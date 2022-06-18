package § !3§
{
   import § #_§.§?!>§;
   import §2$;§.§!"e§;
   import §>#Y§.§@!p§;
   import §?o§.§4#?§;
   import §^1§.§2t§;
   import §^1§.§;O§;
   import flash.events.EventDispatcher;
   
   public class §+$E§ extends EventDispatcher implements §9$4§
   {
       
      
      protected var §<!§:§!"e§;
      
      protected var §&"-§:Boolean;
      
      protected var §'"G§:§@!p§;
      
      protected var §,#a§:§?!>§;
      
      protected var mLevelManager:§4#?§;
      
      public function §+$E§(param1:§!"e§, param2:§4#?§, param3:§@!p§, param4:§?!>§)
      {
         super();
         this.§<!§ = param1;
         this.mLevelManager = param2;
         this.§,#a§ = param4;
         this.§'"G§ = param3;
         this.§&"-§ = true;
         this.init();
      }
      
      public function get §-#"§() : §!"e§
      {
         return this.§<!§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §7"&§() : Boolean
      {
         return !this.§&"-§;
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
         this.§&"-§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§&"-§ = false;
      }
      
      protected function §0U§() : String
      {
         return §;O§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §2t§.STATE_NAME;
      }
   }
}
