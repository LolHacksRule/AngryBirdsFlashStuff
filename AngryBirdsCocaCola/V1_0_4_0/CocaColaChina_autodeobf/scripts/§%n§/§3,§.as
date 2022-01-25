package §%n§
{
   import §'!G§.§42§;
   import §-v§.§,!1§;
   import §6!@§.§ !!§;
   import §86§.§!!d§;
   import §`!+§.§7c§;
   import flash.events.KeyboardEvent;
   
   public class §3,§ extends §91§
   {
       
      
      protected var §^!=§:§7c§;
      
      protected var §?!O§:Boolean = false;
      
      public function §3,§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§^!=§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §!!d§.§@^§ = false;
         if(this.§^!=§ == null)
         {
            this.§^!=§ = new §7c§(§,!1§.§2T§);
         }
         if(§,!1§.§2T§.§@&§ == 0)
         {
            this.levelStarted();
         }
         §,!1§.§2!L§(this.§^!=§);
         §,!1§.§2T§.background.§`!>§();
         §,!1§.§2T§.§=!H§(true);
         §,!1§.§2T§.§&c§(true);
         §,!1§.§0#§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§^!=§.update(param1);
         if(this.§^!=§.§5M§() || this.§?!O§)
         {
            this.§?!O§ = false;
            if(this.§^!=§.§<!$§ == §7c§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §!!d§.§@^§ = true;
               this.levelCompleted();
            }
            else if(this.§^!=§.§<!$§ == §7c§.§@0§)
            {
               mNextState = this.getLoserState();
            }
         }
         return _loc2_;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryState() : String
      {
         return null;
      }
      
      public function getLoserState() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,!1§.§2T§.background.§>!Y§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §,!1§.§>o§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §,!1§.§>o§.keyUp(param1);
      }
      
      public function §?8§() : void
      {
         var _loc1_:Number = §,!1§.§2T§.camera.manualScale - §,!1§.§2T§.camera.§<!=§;
         var _loc2_:Number = (§,!1§.§2T§.camera.§6f§ - §,!1§.§2T§.camera.§<!=§) / 2;
         if(_loc1_ > _loc2_)
         {
            §42§.§0!S§("Cursor_Zoom_Out");
         }
         else
         {
            §42§.§0!S§("Cursor_Zoom_In");
         }
      }
   }
}
