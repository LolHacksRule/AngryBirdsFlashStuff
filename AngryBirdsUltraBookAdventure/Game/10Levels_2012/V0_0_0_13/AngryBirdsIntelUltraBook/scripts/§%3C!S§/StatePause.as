package §<!S§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §2!H§.LevelSlingshotObject;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import §]!6§.UITextFieldRovio;
   
   public class StatePause extends StateBase
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §9q§:§!T§ = null;
      
      public function StatePause(initState:Boolean = false, name:String = "PauseState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §]!B§.§>F§.background.§"d§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §5!M§.getItemByName("Button_Help").setVisibility(false);
         §5!M§.getItemByName("Button_Sound").setVisibility(false);
         §5!M§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §"M§() : void
      {
         if(this.§9q§)
         {
            this.§9q§.stop();
            this.§9q§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§var§ != null)
         {
            (§5!M§.getItemByName("TextField_LevelName") as UITextFieldRovio).§24§.text = LevelManager.§var§;
         }
         (§5!M§.getItemByName("Container_PauseMenu") as UIContainerRovio).x = OFFSCREEN_X;
         this.§?!5§(false);
         §]!B§.pause();
         §5!M§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§+i§());
         this.§"M§();
         this.§9q§ = TweenManager.§8!X§.§`!6§(TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25),TweenManager.§8!X§.§8m§((§5!M§.getItemByName("MovieClip_DarkBG") as §6#§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§9q§.onComplete = this.§[%§;
         this.§9q§.play();
      }
      
      protected function §[%§() : void
      {
         this.§?!5§(true);
         this.§"M§();
      }
      
      protected function §?!5§(enable:Boolean) : void
      {
         (§5!M§.getItemByName("Button_Resume") as UIButtonRovio).setEnabled(enable);
         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setEnabled(enable);
         (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setEnabled(enable);
         (§5!M§.getItemByName("Button_Help") as UIButtonRovio).setEnabled(enable);
         (§5!M§.getItemByName("Button_Sound") as UIButtonRovio).setEnabled(enable);
      }
      
      protected function §]B§(state:String) : void
      {
         (§5!M§.getItemByName("Button_Resume") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_Help") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_Sound") as UIButtonRovio).setComponentVisualState(state);
      }
      
      protected function closePauseMenu() : void
      {
         this.§"M§();
         this.§9q§ = TweenManager.§8!X§.§`!6§(TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25),TweenManager.§8!X§.§8m§((§5!M§.getItemByName("MovieClip_DarkBG") as §6#§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§9q§.onComplete = this.§ var§;
         this.§9q§.play();
      }
      
      protected function § var§() : void
      {
         mNextState = this.§>!U§();
         this.§"M§();
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§"M§();
         this.§]B§(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var soundsEnabled:Boolean = false;
         var particlesEnabled:Boolean = false;
         var bird:LevelSlingshotObject = null;
         switch(eventName)
         {
            case "HELP":
               this.closePauseMenu();
               for each(bird in §]!B§.§>F§.slingshot.§#P§)
               {
                  AngryBirdsFP11.sUserProgress.§%!3§(bird.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§%b§();
               StateLevelLoadClassic.§7!R§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               SoundEngine.§;!8§();
               mNextState = this.§`!L§();
               break;
            case "TOGGLE_SOUNDS":
               soundsEnabled = !AngryBirdsFP11.§+i§();
               AngryBirdsFP11.§72§(soundsEnabled);
               §5!M§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "TOGGLE_PARTICLES":
               particlesEnabled = !§]!B§.§]!#§();
               §]!B§.§^!Y§(particlesEnabled);
               §5!M§.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5V§.§>J§();
         }
      }
      
      protected function §>!U§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §%b§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §`!L§() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
   }
}
