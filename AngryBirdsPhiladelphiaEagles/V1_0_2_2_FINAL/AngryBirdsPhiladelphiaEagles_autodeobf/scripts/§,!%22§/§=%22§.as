package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §9T§.§>>§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   
   public class §="§ extends §'!#§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §-A§:String = "PauseState";
       
      
      protected var §0]§:§[!9§ = null;
      
      public function §="§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §#! §.§`'§.background.§,+§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §0q§.getItemByName("Button_Help").setVisibility(false);
         §0q§.getItemByName("Button_Sound").setVisibility(false);
         §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §#!%§() : void
      {
         if(this.§0]§)
         {
            this.§0]§.stop();
            this.§0]§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§`!K§.§5g§ != null)
         {
            (§0q§.getItemByName("TextField_LevelName") as §@4§).§!!@§.text = §`!K§.§5g§;
         }
         (§0q§.getItemByName("Container_PauseMenu") as §[Q§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §#! §.pause();
         §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§5e§());
         this.§#!%§();
         this.§0]§ = §3C§.§>o§.§=!3§(§3C§.§>o§.§<t§(§0q§.getItemByName("Container_PauseMenu") as §[Q§,{"x":0},null,0.25),§3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§0]§.onComplete = this.§>!G§;
         this.§0]§.play();
      }
      
      protected function §>!G§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§#!%§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§0q§.getItemByName("Button_Resume") as §^'§).setEnabled(param1);
         (§0q§.getItemByName("Button_Replay") as §^'§).setEnabled(param1);
         (§0q§.getItemByName("Button_Menu") as §^'§).setEnabled(param1);
         (§0q§.getItemByName("Button_Help") as §^'§).setEnabled(param1);
         (§0q§.getItemByName("Button_Sound") as §^'§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§0q§.getItemByName("Button_Resume") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_Help") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_Sound") as §^'§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§#!%§();
         this.§0]§ = §3C§.§>o§.§=!3§(§3C§.§>o§.§<t§(§0q§.getItemByName("Container_PauseMenu") as §[Q§,{"x":OFFSCREEN_X},null,0.25),§3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§0]§.onComplete = this.§3h§;
         this.§0]§.play();
      }
      
      protected function §3h§() : void
      {
         mNextState = this.§>!=§();
         this.§#!%§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#!%§();
         this.setPauseMenuButtonStates(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§>>§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §#! §.§`'§.slingshot.§,N§)
               {
                  AngryBirdsFP11.§`I§.§&!!§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§5!'§();
               §-O§.§8!5§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §[!7§.§=0§();
               mNextState = this.§@]§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§5e§();
               AngryBirdsFP11.§6r§(_loc4_);
               §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§#! §.§#!-§();
               §#! §.§!Y§(_loc5_);
               §0q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`y§.§,,§();
         }
      }
      
      protected function §>!=§() : String
      {
         return StatePlay.§-A§;
      }
      
      protected function §5!'§() : String
      {
         return §-O§.§-A§;
      }
      
      protected function §@]§() : String
      {
         return §0!5§.§-A§;
      }
   }
}
