package §8"h§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import flash.display.MovieClip;
   
   public class §!w§
   {
       
      
      protected var § !5§:int;
      
      protected var §5E§:Boolean;
      
      protected var §`0§:Boolean;
      
      protected var §+§:§2"8§;
      
      protected var §+"g§:§2"8§;
      
      protected var §,r§:§,m§;
      
      protected var §@!%§:MovieClip;
      
      public var §""8§:Object;
      
      public function §!w§(param1:§,m§, param2:int, param3:Boolean = true)
      {
         super();
         this.§,r§ = param1;
         this.§ !5§ = param2;
         this.§5E§ = param3;
         this.§`0§ = true;
         this.init();
      }
      
      public function get canBuyToUnlock() : Boolean
      {
         return this.§5E§;
      }
      
      public function set canBuyToUnlock(param1:Boolean) : void
      {
         this.§5E§ = param1;
      }
      
      public function get §,"=§() : int
      {
         return this.§ !5§;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§`0§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§`0§ = param1;
         this.refresh();
      }
      
      private function init() : void
      {
         this.§+§ = §2"8§(this.§,r§.getItemByName("Button_NextLevel"));
         this.§+"g§ = §2"8§(this.§,r§.getItemByName("Button_NextLevelLocked"));
         this.§@!%§ = this.§,r§.mClip.unlockTimer;
      }
      
      protected function refresh() : void
      {
         this.§@!%§.visible = this.§`0§;
         this.§+"g§.setVisibility(this.§`0§);
         this.§+§.setVisibility(!this.§`0§);
      }
      
      public function dispose() : void
      {
         this.§+§ = null;
         this.§+"g§ = null;
         this.§@!%§ = null;
      }
   }
}
