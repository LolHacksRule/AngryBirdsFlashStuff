package §?7§
{
   import §"V§.§true§;
   import §+!%§.§4;§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§+;§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §?!%§.§ l§;
   import §?!%§.§?!7§;
   import §[V§.§02§;
   import §[V§.§1;§;
   import §[V§.§=!'§;
   import §[V§.§`@§;
   
   public class §,]§ extends §true§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §4!&§:String = "PauseState";
       
      
      protected var §"[§:§ l§ = null;
      
      public function §,]§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §?'§.§5!§.background.§4[§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §6!$§.getItemByName("Button_Help").setVisibility(false);
         §6!$§.getItemByName("Button_Sound").setVisibility(false);
         §6!$§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §=T§() : void
      {
         if(this.§"[§)
         {
            this.§"[§.stop();
            this.§"[§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§!P§.§4R§ != null)
         {
            (§6!$§.getItemByName("TextField_LevelName") as §`@§).§66§.text = §!P§.§4R§;
         }
         (§6!$§.getItemByName("Container_PauseMenu") as §=!'§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §?'§.pause();
         §6!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§,!+§());
         this.§=T§();
         this.§"[§ = §?!7§.§^7§.§"q§(§?!7§.§^7§.§^!0§(§6!$§.getItemByName("Container_PauseMenu") as §=!'§,{"x":0},null,0.25),§?!7§.§^7§.§^!0§((§6!$§.getItemByName("MovieClip_DarkBG") as §02§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§"[§.onComplete = this.§8^§;
         this.§"[§.play();
      }
      
      protected function §8^§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§=T§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§6!$§.getItemByName("Button_Resume") as §1;§).setEnabled(param1);
         (§6!$§.getItemByName("Button_Replay") as §1;§).setEnabled(param1);
         (§6!$§.getItemByName("Button_Menu") as §1;§).setEnabled(param1);
         (§6!$§.getItemByName("Button_Help") as §1;§).setEnabled(param1);
         (§6!$§.getItemByName("Button_Sound") as §1;§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§6!$§.getItemByName("Button_Resume") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_Replay") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_Menu") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_Help") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_Sound") as §1;§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§=T§();
         this.§"[§ = §?!7§.§^7§.§"q§(§?!7§.§^7§.§^!0§(§6!$§.getItemByName("Container_PauseMenu") as §=!'§,{"x":OFFSCREEN_X},null,0.25),§?!7§.§^7§.§^!0§((§6!$§.getItemByName("MovieClip_DarkBG") as §02§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§"[§.onComplete = this.§<!8§;
         this.§"[§.play();
      }
      
      protected function §<!8§() : void
      {
         mNextState = this.§"@§();
         this.§=T§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=T§();
         this.setPauseMenuButtonStates(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§4;§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §?'§.§5!§.slingshot.§8§)
               {
                  AngryBirdsFP11.sUserProgress.§7I§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§+!5§();
               §'!6§.§ !F§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §;!>§.§&;§();
               mNextState = this.§%!"§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§,!+§();
               AngryBirdsFP11.§5M§(_loc4_);
               §6!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§?'§.§]P§();
               §?'§.§]!!§(_loc5_);
               §6!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ for§.§>§();
         }
      }
      
      protected function §"@§() : String
      {
         return StatePlay.§4!&§;
      }
      
      protected function §+!5§() : String
      {
         return §'!6§.§4!&§;
      }
      
      protected function §%!"§() : String
      {
         return §<!D§.§4!&§;
      }
   }
}
