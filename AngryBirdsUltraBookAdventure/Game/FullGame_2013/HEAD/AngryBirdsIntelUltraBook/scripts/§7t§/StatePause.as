package §7t§
{
   import §!!0§.SoundEngine;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §6a§.§=D§;
   import §6a§.UIButtonRovio;
   import §6a§.UIContainerRovio;
   import §6a§.UITextFieldRovio;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import §]!@§.LevelSlingshotObject;
   
   public class StatePause extends StateBase
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var § j§:§?W§ = null;
      
      public function StatePause(initState:Boolean = false, name:String = "PauseState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §`S§.§[o§.background.§^&§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §`=§.getItemByName("Button_Help").setVisibility(false);
         §`=§.getItemByName("Button_Sound").setVisibility(false);
         §`=§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §%!8§() : void
      {
         if(this.§ j§)
         {
            this.§ j§.stop();
            this.§ j§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§1m§ != null)
         {
            (§`=§.getItemByName("TextField_LevelName") as UITextFieldRovio).§,![§.text = LevelManager.§1m§;
         }
         (§`=§.getItemByName("Container_PauseMenu") as UIContainerRovio).x = OFFSCREEN_X;
         this.§+!7§(false);
         §`S§.pause();
         §`=§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§4!M§());
         this.§%!8§();
         this.§ j§ = TweenManager.§7!E§.§7f§(TweenManager.§7!E§.§5§(§`=§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25),TweenManager.§7!E§.§5§((§`=§.getItemByName("MovieClip_DarkBG") as §=D§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§ j§.onComplete = this.§@C§;
         this.§ j§.play();
      }
      
      protected function §@C§() : void
      {
         this.§+!7§(true);
         this.§%!8§();
      }
      
      protected function §+!7§(enable:Boolean) : void
      {
         (§`=§.getItemByName("Button_Resume") as UIButtonRovio).setEnabled(enable);
         (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setEnabled(enable);
         (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setEnabled(enable);
         (§`=§.getItemByName("Button_Help") as UIButtonRovio).setEnabled(enable);
         (§`=§.getItemByName("Button_Sound") as UIButtonRovio).setEnabled(enable);
      }
      
      protected function §<!S§(state:String) : void
      {
         (§`=§.getItemByName("Button_Resume") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_Help") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_Sound") as UIButtonRovio).setComponentVisualState(state);
      }
      
      protected function closePauseMenu() : void
      {
         this.§%!8§();
         this.§ j§ = TweenManager.§7!E§.§7f§(TweenManager.§7!E§.§5§(§`=§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25),TweenManager.§7!E§.§5§((§`=§.getItemByName("MovieClip_DarkBG") as §=D§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§ j§.onComplete = this.§38§;
         this.§ j§.play();
      }
      
      protected function §38§() : void
      {
         mNextState = this.§&7§();
         this.§%!8§();
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
         this.§%!8§();
         this.§<!S§(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
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
               for each(bird in §`S§.§[o§.slingshot.§2!X§)
               {
                  AngryBirdsFP11.sUserProgress.§-!F§(bird.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§4!6§();
               StateLevelLoadClassic.§;!8§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               SoundEngine.§%!V§();
               mNextState = this.§@!W§();
               break;
            case "TOGGLE_SOUNDS":
               soundsEnabled = !AngryBirdsFP11.§4!M§();
               AngryBirdsFP11.§0!§(soundsEnabled);
               §`=§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "TOGGLE_PARTICLES":
               particlesEnabled = !§`S§.§-!,§();
               §`S§.§^!D§(particlesEnabled);
               §`=§.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'t§.§0-§();
         }
      }
      
      protected function §&7§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §4!6§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §@!W§() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
   }
}
