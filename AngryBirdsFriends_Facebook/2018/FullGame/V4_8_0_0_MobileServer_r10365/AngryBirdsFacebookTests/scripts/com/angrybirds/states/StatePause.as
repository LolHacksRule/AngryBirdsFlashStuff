package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class StatePause extends StateBaseLevel
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var mMenuTween:ISimpleTween = null;
      
      public function StatePause(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "PauseState")
      {
         super(levelManager,initState,name,localizationManager);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_LevelPause[0]);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         this.openPauseMenu();
         AngryBirdsEngine.smLevelMain.background.stopAmbientSound();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         mUIView.getItemByName("Button_Help").setVisibility(false);
         mUIView.getItemByName("Button_Sound").setVisibility(false);
         mUIView.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function stopTweens() : void
      {
         if(this.mMenuTween)
         {
            this.mMenuTween.stop();
            this.mMenuTween = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
            (mUIView.getItemByName("TextField_LevelName") as UITextFieldRovio).mTextField.text = mLevelManager.currentLevelNumericName;
         }
         (mUIView.getItemByName("Container_PauseMenu") as UIContainerRovio).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         AngryBirdsEngine.pause();
         mUIView.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.getSoundsEnabled());
         this.stopTweens();
         this.mMenuTween = TweenManager.instance.createParallelTween(TweenManager.instance.createTween(mUIView.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25),TweenManager.instance.createTween((mUIView.getItemByName("MovieClip_DarkBG") as UIMovieClipRovio).mClip,{"alpha":1},{"alpha":0},0.25));
         this.mMenuTween.onComplete = this.onOpenPauseMenuTweenComplete;
         this.mMenuTween.play();
      }
      
      protected function onOpenPauseMenuTweenComplete() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.stopTweens();
      }
      
      protected function setPauseMenuButtonsEnabled(enable:Boolean) : void
      {
         (mUIView.getItemByName("Button_Resume") as UIButtonRovio).setEnabled(enable);
         (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setEnabled(enable);
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setEnabled(enable);
         (mUIView.getItemByName("Button_Help") as UIButtonRovio).setEnabled(enable);
         (mUIView.getItemByName("Button_Sound") as UIButtonRovio).setEnabled(enable);
      }
      
      protected function setPauseMenuButtonStates(state:String) : void
      {
         (mUIView.getItemByName("Button_Resume") as UIButtonRovio).setComponentVisualState(state);
         (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (mUIView.getItemByName("Button_Help") as UIButtonRovio).setComponentVisualState(state);
         (mUIView.getItemByName("Button_Sound") as UIButtonRovio).setComponentVisualState(state);
      }
      
      protected function closePauseMenu() : void
      {
         this.stopTweens();
         this.mMenuTween = TweenManager.instance.createParallelTween(TweenManager.instance.createTween(mUIView.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25),TweenManager.instance.createTween((mUIView.getItemByName("MovieClip_DarkBG") as UIMovieClipRovio).mClip,{"alpha":0},{"alpha":1},0.25));
         this.mMenuTween.onComplete = this.onClosePauseMenuTweenComplete;
         this.mMenuTween.play();
      }
      
      protected function onClosePauseMenuTweenComplete() : void
      {
         setNextState(this.getPlayState());
         this.stopTweens();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.stopTweens();
         this.setPauseMenuButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var soundsEnabled:* = false;
         var particlesEnabled:* = false;
         var bird:LevelSlingshotObject = null;
         switch(eventName)
         {
            case "HELP":
               this.closePauseMenu();
               for each(bird in AngryBirdsEngine.smLevelMain.slingshot.mBirds)
               {
                  AngryBirdsBase.singleton.dataModel.userProgress.setTutorialSeen(bird.name,false);
               }
               break;
            case "RESTART_LEVEL":
               setNextState(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               SoundEngine.stopSounds();
               setNextState(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               soundsEnabled = !AngryBirdsBase.getSoundsEnabled();
               AngryBirdsBase.setSoundsEnabled(soundsEnabled);
               mUIView.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "TOGGLE_PARTICLES":
               particlesEnabled = !AngryBirdsEngine.getParticlesEnabled();
               AngryBirdsEngine.setParticlesEnabled(particlesEnabled);
               mUIView.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
   }
}
