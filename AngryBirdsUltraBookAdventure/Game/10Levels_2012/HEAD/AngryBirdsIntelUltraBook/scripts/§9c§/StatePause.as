package §9c§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §?A§.LevelSlingshotObject;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   
   public class StatePause extends StateBase
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var § in§:§9h§ = null;
      
      public function StatePause(initState:Boolean = false, name:String = "PauseState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §4!T§.§1t§.background.§1r§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §^,§.getItemByName("Button_Help").setVisibility(false);
         §^,§.getItemByName("Button_Sound").setVisibility(false);
         §^,§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §87§() : void
      {
         if(this.§ in§)
         {
            this.§ in§.stop();
            this.§ in§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§!=§ != null)
         {
            (§^,§.getItemByName("TextField_LevelName") as UITextFieldRovio).§ ^§.text = LevelManager.§!=§;
         }
         (§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio).x = OFFSCREEN_X;
         this.§ 9§(false);
         §4!T§.pause();
         §^,§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§%!D§());
         this.§87§();
         this.§ in§ = TweenManager.§&!'§.§+!^§(TweenManager.§&!'§.§3L§(§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25),TweenManager.§&!'§.§3L§((§^,§.getItemByName("MovieClip_DarkBG") as §+,§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§ in§.onComplete = this.§'u§;
         this.§ in§.play();
      }
      
      protected function §'u§() : void
      {
         this.§ 9§(true);
         this.§87§();
      }
      
      protected function § 9§(enable:Boolean) : void
      {
         (§^,§.getItemByName("Button_Resume") as UIButtonRovio).setEnabled(enable);
         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setEnabled(enable);
         (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setEnabled(enable);
         (§^,§.getItemByName("Button_Help") as UIButtonRovio).setEnabled(enable);
         (§^,§.getItemByName("Button_Sound") as UIButtonRovio).setEnabled(enable);
      }
      
      protected function §!!#§(state:String) : void
      {
         (§^,§.getItemByName("Button_Resume") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_Help") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_Sound") as UIButtonRovio).setComponentVisualState(state);
      }
      
      protected function closePauseMenu() : void
      {
         this.§87§();
         this.§ in§ = TweenManager.§&!'§.§+!^§(TweenManager.§&!'§.§3L§(§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25),TweenManager.§&!'§.§3L§((§^,§.getItemByName("MovieClip_DarkBG") as §+,§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§ in§.onComplete = this.§,J§;
         this.§ in§.play();
      }
      
      protected function §,J§() : void
      {
         mNextState = this.§[!C§();
         this.§87§();
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
         this.§87§();
         this.§!!#§(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
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
               for each(bird in §4!T§.§1t§.slingshot.§+I§)
               {
                  AngryBirdsFP11.sUserProgress.§+!O§(bird.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§1!2§();
               StateLevelLoadClassic.§3`§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               SoundEngine.§=O§();
               mNextState = this.§9!A§();
               break;
            case "TOGGLE_SOUNDS":
               soundsEnabled = !AngryBirdsFP11.§%!D§();
               AngryBirdsFP11.§ !@§(soundsEnabled);
               §^,§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "TOGGLE_PARTICLES":
               particlesEnabled = !§4!T§.§>!>§();
               §4!T§.§]z§(particlesEnabled);
               §^,§.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§8R§.§,!f§();
         }
      }
      
      protected function §[!C§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §1!2§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §9!A§() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
   }
}
