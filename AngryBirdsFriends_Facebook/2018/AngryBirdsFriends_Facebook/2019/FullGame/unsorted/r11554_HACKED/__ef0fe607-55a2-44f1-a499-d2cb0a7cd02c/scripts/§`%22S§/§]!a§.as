package §`"S§
{
   import §"$=§.§'![§;
   import §3"G§.§16§;
   import §3=§.§#$@§;
   import §3=§.§8$8§;
   import §5!$§.§<c§;
   import §]"'§.§""K§;
   import flash.events.EventDispatcher;
   
   public class §]!a§ extends EventDispatcher implements §31§
   {
       
      
      protected var §+!9§:§<c§;
      
      protected var §<`§:Boolean;
      
      protected var §]!v§:§""K§;
      
      protected var §1#@§:§16§;
      
      protected var mLevelManager:§'![§;
      
      public function §]!a§(param1:§<c§, param2:§'![§, param3:§""K§, param4:§16§)
      {
         super();
         this.§+!9§ = param1;
         this.mLevelManager = param2;
         this.§1#@§ = param4;
         this.§]!v§ = param3;
         this.§<`§ = true;
         this.init();
      }
      
      public function get §-$#§() : §<c§
      {
         return this.§+!9§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §<<§() : Boolean
      {
         return !this.§<`§;
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
         this.§<`§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§<`§ = false;
      }
      
      protected function §^"6§() : String
      {
         return §8$8§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §#$@§.STATE_NAME;
      }
   }
}
