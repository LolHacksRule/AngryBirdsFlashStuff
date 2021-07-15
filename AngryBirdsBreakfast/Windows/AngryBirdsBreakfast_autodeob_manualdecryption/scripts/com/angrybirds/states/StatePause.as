package com.angrybirds.states
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.angrybirds.AngryBirdsEngine;
   
   public class StatePause extends StateBaseLevel
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var mMenuTween:ISimpleTween = null;
      
      public function StatePause(param1:LevelManager, param2:LocalizationManager, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.openPauseMenu();
         AngryBirdsEngine.mIsRunning.background.stopAmbientSound();
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
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (mUIView.getItemByName("Button_Resume") as UIButtonRovio).setEnabled(param1);
         (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setEnabled(param1);
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setEnabled(param1);
         (mUIView.getItemByName("Button_Help") as UIButtonRovio).setEnabled(param1);
         (mUIView.getItemByName("Button_Sound") as UIButtonRovio).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (mUIView.getItemByName("Button_Resume") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_Help") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_Sound") as UIButtonRovio).setComponentVisualState(param1);
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
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:LevelSlingshotObject = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in AngryBirdsEngine.mIsRunning.slingshot.mBirds)
               {
                  AngryBirdsBase.singleton.dataModel.userProgress.setTutorialSeen(_loc6_.name,false);
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
               _loc4_ = !AngryBirdsBase.getSoundsEnabled();
               AngryBirdsBase.setSoundsEnabled(_loc4_);
               mUIView.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !AngryBirdsEngine.LINEAR_SLEEP_TOLERANCE_SPACE();
               AngryBirdsEngine.setParticlesEnabled(_loc5_);
               mUIView.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
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
