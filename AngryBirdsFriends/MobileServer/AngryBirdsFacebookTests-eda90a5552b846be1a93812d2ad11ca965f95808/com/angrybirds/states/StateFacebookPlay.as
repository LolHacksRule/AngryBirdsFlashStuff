package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.controllers.FacebookGameLogicController;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.popup.tutorial.TutorialPopup;
   import com.angrybirds.rovionews.RovioNewsManager;
   import com.angrybirds.states.playstate.event.PlayStateEvent;
   import com.angrybirds.states.playstate.pauseview.FacebookPauseView;
   import com.angrybirds.states.playstate.playview.FacebookPlayView;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.PopupManager;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.GoogleAnalyticsTracker;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   import starling.core.Starling;
   
   public class StateFacebookPlay extends StatePlay
   {
      
      public static var sPlaySessionToken:String;
      
      public static const EASTER_LEVEL_PREFIX:String = "4000-";
       
      
      protected var mIsAllowedToChangeState:Boolean;
      
      protected var mPendingTargetState:String;
      
      protected var mRovioNewsManager:RovioNewsManager;
      
      public function StateFacebookPlay(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = true, name:String = "StatePlay")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function init() : void
      {
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_FacebookLevelPlay[0]);
         var pauseContainer:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Pause"));
         this.mRovioNewsManager = new RovioNewsManager(pauseContainer);
         this.mRovioNewsManager.loadJSON();
      }
      
      override protected function addPauseView() : void
      {
         var model:DataModel = AngryBirdsBase.singleton.dataModel;
         var pauseContainer:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Pause"));
         mPauseView = new FacebookPauseView(pauseContainer,mLevelManager,model,mLocalizationManager,this.mRovioNewsManager);
         pauseContainer.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var model:DataModel = AngryBirdsBase.singleton.dataModel;
         var playContainer:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Play"));
         mPlayView = new FacebookPlayView(playContainer,mLevelManager,mLevelController,model,mLocalizationManager);
      }
      
      override protected function playLevelStartSound() : void
      {
         SoundEngine.playSoundFromVariation("level_start_military_a2");
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         this.friendsActivate(previousState);
      }
      
      protected function friendsActivate(previousState:String) : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         this.mPendingTargetState = "";
         this.mIsAllowedToChangeState = false;
         mUIView.movieClip.mouseChildren = true;
         Starling.current.trackRenderDelay = true;
      }
      
      override public function deActivate() : void
      {
         this.friendsDeactivate();
         super.deActivate();
      }
      
      protected function friendsDeactivate() : void
      {
         Starling.current.trackRenderDelay = false;
         mUIView.stage.frameRate = 60;
         AngryBirdsBase.singleton.popupManager.closePopupById(TutorialPopup.ID);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.showLevelScores();
      }
      
      override protected function getGameLogicController(levelMain:LevelMain) : GameLogicController
      {
         return new FacebookGameLogicController(levelMain,mLevelManager);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var score:int = mLevelController.getScore();
         FacebookGoogleAnalyticsTracker.trackFlashEvent(GoogleAnalyticsTracker.ACTION_GAME_LEVEL_COMPLETED,mLevelManager.currentLevel,score);
         var powerupsUsed:Array = (AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedPowerups();
      }
      
      override protected function resumeEngine() : void
      {
         var isPopupOpen:Boolean = PopupManager(AngryBirdsBase.singleton.popupManager).isPopupOpen();
         if(!isPopupOpen)
         {
            AngryBirdsEngine.resume();
         }
      }
      
      protected function showLevelScores() : void
      {
      }
      
      override public function getVictoryStateName() : String
      {
         if(mPlayView.isEagleUsed())
         {
            return StateLevelEndEagle.STATE_NAME;
         }
         return StateLevelEnd.STATE_NAME;
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var isPlayViewAllowingStateChange:Boolean = mPlayView.isAllowedToChangeVictoryState();
         if(isPlayViewAllowingStateChange)
         {
            mUIView.movieClip.mouseChildren = false;
            this.mIsAllowedToChangeState = true;
         }
         return isPlayViewAllowingStateChange && this.mIsAllowedToChangeState;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var isPlayViewAllowingStateChange:Boolean = mPlayView.isAllowedToChangeFailState();
         if(isPlayViewAllowingStateChange)
         {
            this.mIsAllowedToChangeState = true;
            mUIView.movieClip.mouseChildren = false;
         }
         return this.mIsAllowedToChangeState;
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         if(Starling.current.renderThresholdPassCount > 10)
         {
            mUIView.stage.frameRate = 30;
         }
         if(this.mPendingTargetState && this.mPendingTargetState != "" && mPlayView.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            setNextState(this.mPendingTargetState);
            this.mPendingTargetState = "";
         }
      }
      
      override protected function viewEventHandler(event:PlayStateEvent) : void
      {
         var targetState:String = null;
         switch(event.type)
         {
            case PlayStateEvent.DISABLE_COMPLETE:
               break;
            case PlayStateEvent.PAUSE_LEVEL:
               SoundEngine.pauseSounds();
               changeView(true);
               break;
            case PlayStateEvent.RESUME_LEVEL:
               SoundEngine.resumeSounds();
               changeView(false);
               break;
            case PlayStateEvent.RESTART_LEVEL:
               targetState = getLevelLoadStateName();
               if(!mPlayView.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.mPendingTargetState = targetState;
                  return;
               }
               setNextState(targetState);
               break;
            case PlayStateEvent.GO_TO_STATE:
               targetState = event.targetStateName;
               if(!mPlayView.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.mPendingTargetState = targetState;
                  return;
               }
               setNextState(targetState);
               break;
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.onUIInteraction(eventIndex,eventName,component);
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         super.keyUp(e);
         switch(e.keyCode)
         {
            case Keyboard.F8:
         }
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         super.keyDown(e);
      }
      
      override public function getTargetFrameRate() : int
      {
         if(Capabilities.manufacturer == "Google Pepper")
         {
            return 30;
         }
         return super.getTargetFrameRate();
      }
      
      override protected function restartLevel() : void
      {
         if((AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.isLoading())
         {
            return;
         }
         super.restartLevel();
      }
   }
}
