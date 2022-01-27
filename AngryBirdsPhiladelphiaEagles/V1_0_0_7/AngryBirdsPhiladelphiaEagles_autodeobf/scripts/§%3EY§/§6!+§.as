package §>Y§
{
   import §"^§.§9=§;
   import §,!F§.§]!6§;
   import §3!%§.§-k§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §<!4§.§25§;
   import §=u§.§"x§;
   import §=u§.§1r§;
   import §=u§.§2"§;
   import §=u§.§>v§;
   import §?!=§.§<!>§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   
   public class §6!+§ extends §<!>§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §4!C§:String = "PauseState";
       
      
      protected var §<!E§:§6q§ = null;
      
      public function §6!+§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §9=§.§<!@§.background.§[U§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §3g§.getItemByName("Button_Help").setVisibility(false);
         §3g§.getItemByName("Button_Sound").setVisibility(false);
         §3g§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §finally§() : void
      {
         if(this.§<!E§)
         {
            this.§<!E§.stop();
            this.§<!E§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§-k§.§%D§ != null)
         {
            (§3g§.getItemByName("TextField_LevelName") as §2"§).§^"§.text = §-k§.§%D§;
         }
         (§3g§.getItemByName("Container_PauseMenu") as §>v§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §9=§.pause();
         §3g§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§8!M§());
         this.§finally§();
         this.§<!E§ = §[!-§.§ set§.§5&§(§[!-§.§ set§.§6B§(§3g§.getItemByName("Container_PauseMenu") as §>v§,{"x":0},null,0.25),§[!-§.§ set§.§6B§((§3g§.getItemByName("MovieClip_DarkBG") as §"x§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§<!E§.onComplete = this.§7G§;
         this.§<!E§.play();
      }
      
      protected function §7G§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§finally§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§3g§.getItemByName("Button_Resume") as §1r§).setEnabled(param1);
         (§3g§.getItemByName("Button_Replay") as §1r§).setEnabled(param1);
         (§3g§.getItemByName("Button_Menu") as §1r§).setEnabled(param1);
         (§3g§.getItemByName("Button_Help") as §1r§).setEnabled(param1);
         (§3g§.getItemByName("Button_Sound") as §1r§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§3g§.getItemByName("Button_Resume") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_Replay") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_Menu") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_Help") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_Sound") as §1r§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§finally§();
         this.§<!E§ = §[!-§.§ set§.§5&§(§[!-§.§ set§.§6B§(§3g§.getItemByName("Container_PauseMenu") as §>v§,{"x":OFFSCREEN_X},null,0.25),§[!-§.§ set§.§6B§((§3g§.getItemByName("MovieClip_DarkBG") as §"x§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§<!E§.onComplete = this.§?e§;
         this.§<!E§.play();
      }
      
      protected function §?e§() : void
      {
         mNextState = this.§?I§();
         this.§finally§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§finally§();
         this.setPauseMenuButtonStates(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§]!6§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §9=§.§<!@§.slingshot.§6!$§)
               {
                  AngryBirdsFP11.§3!?§.§44§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§8!!§();
               §;O§.§%e§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §25§.§=!7§();
               mNextState = this.§#;§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§8!M§();
               AngryBirdsFP11.§'_§(_loc4_);
               §3g§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§9=§.§?W§();
               §9=§.§=h§(_loc5_);
               §3g§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ j§.§@[§();
         }
      }
      
      protected function §?I§() : String
      {
         return StatePlay.§4!C§;
      }
      
      protected function §8!!§() : String
      {
         return §;O§.§4!C§;
      }
      
      protected function §#;§() : String
      {
         return §8!F§.§4!C§;
      }
   }
}
