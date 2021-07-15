package com.angrybirds.states
{
   import com.angrybirds.user.LevelPlayServerCall;
   import com.rovio.utils.DynamicLanguage;
   import com.rovio.utils.GoogleAnalyticsTracker;
   import com.rovio.utils.GoogleAnalyticsTrackerCustom;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.LevelItemManagerCustom;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.angrybirds.sfx.ColorFadeLayerEvent;
   import com.angrybirds.popup.tutorial.CustomTutorialMapping;
   import com.angrybirds.popup.tutorial.TutorialPopupManager;
   import com.rovio.tween.TweenManagerGameObjects;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.popups.PopupPause;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.engine.controllers.GameLogicControllerCustom;
   import starling.core.Starling;
   import com.angrybirds.AngryBirdsEngine;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayCustom extends StatePlayBase
   {
      
      private static const ZOOM_DELTATIME:Number = 50;
      
      private static const ZOOM_AMOUNT:Number = 0.05;
      
      private static const MAX_POWERUPS_SHOWN:int = 99;
      
      public static const STATE_NAME:String = "StatePlay";
      
      private static const FPS_MEASURE_TIME_START:Number = -10 * 1000;
      
      private static const FPS_MEASURE_TIME_MIN:Number = 15 * 1000;
       
      
      private var mFpsReported:Boolean = false;
      
      private var mActiveTime:Number = -10000.0;
      
      private var mUpdateCount:int = 0;
      
      private var mDoZoomAmount:Number = 0;
      
      private var mZoomTimeCounter:Number = 0;
      
      private var mLevelPlayServerCall:LevelPlayServerCall;
      
      private var mLevelItemManager:LevelItemManagerCustom;
      
      protected var mFadeSFX:ColorFadeLayer = null;
      
      private var mFadeStarted:Boolean;
      
      private var mFirstRun:Boolean;
      
      public function StatePlayCustom(param1:LevelManager, param2:LocalizationManager, param3:Boolean, param4:LevelItemManager, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.mLevelItemManager = param4 as LevelItemManagerCustom;
      }
      
      override protected function init() : void
      {
         this.mFadeSFX = new ColorFadeLayer(0,0,0,1);
         mUIView = new UIView(this);
         mUIView.init(this.getViewXML());
         mUIView.container.mClip.addChild(this.mFadeSFX);
         this.mLevelPlayServerCall = new LevelPlayServerCall(this);
         mUIView.movieClip.cacheAsBitmap = true;
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:XML = ViewXMLLibrary.mLibrary.Views.View_LevelPlay[0];
         return AngryBirdsCustom.changeXMLWitdh(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.mFadeStarted = false;
         this.startFade();
         GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTracker.ACTION_GAME_LEVEL_STARTED,mLevelManager.currentLevel);
         this.mFirstRun = true;
      }
      
      protected function startFade() : void
      {
         if(this.mFadeSFX && !this.mFadeStarted)
         {
            this.mFadeSFX.mouseEnabled = true;
            this.mFadeStarted = true;
            this.mFadeSFX.setAlpha(1);
            this.mFadeSFX.fadeToAlpha(0,0.25);
            this.mFadeSFX.addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.mFadeSFX.mouseEnabled = false;
         this.mFadeSFX.removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onFadeComplete);
         mUIView.container.mClip.removeChild(this.mFadeSFX);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         mUIView.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.resetFpsTracker();
         DynamicLanguage.instance.updateTextFields(mUIView.container,"StatePlay");
         this.updateCurrentScore();
         this.setInitialState();
         this.showTutorials();
         this.mDoZoomAmount = 0;
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:TutorialPopupManager = AngryBirdsBase.singleton.tutorialPopupManager;
         var _loc2_:Vector.<String> = _loc1_.tutorialNameMapping.getTutorialNamesForMapping(CustomTutorialMapping.LEVEL_BIRDS);
         _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,false,null,true,true);
      }
      
      override public function deActivate() : void
      {
         mUIView.container.mClip.addChild(this.mFadeSFX);
         super.deActivate();
         this.mLevelPlayServerCall.disposeServerCall();
         this.reportFps();
         this.resetFpsTracker();
      }
      
      private function reportFps() : void
      {
         var _loc1_:int = 0;
         if(!this.mFpsReported)
         {
            if(this.mActiveTime > FPS_MEASURE_TIME_MIN)
            {
               this.mFpsReported = true;
               _loc1_ = Math.round(1000 / this.mActiveTime * this.mUpdateCount);
               if(Starling.isSoftware)
               {
                  GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTracker.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTracker.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(AngryBirdsEngine.mIsRunning.slingshot.mDragging)
            {
               AngryBirdsEngine.mIsRunning.slingshot.shoot();
               mLevelController.changeGameState(GameLogicController.LEVEL_STATE_BIRD_FLYING);
               return;
            }
            AngryBirdsEngine.mIsRunning.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               this.openPauseMenu();
               break;
            case "RESTART_LEVEL":
               this.restartLevel();
               break;
            case "ZOOM_IN":
               this.mDoZoomAmount = ZOOM_AMOUNT;
               this.mZoomTimeCounter = ZOOM_DELTATIME;
               break;
            case "ZOOM_OUT":
               this.mDoZoomAmount = -ZOOM_AMOUNT;
               this.mZoomTimeCounter = ZOOM_DELTATIME;
               break;
            case "ZOOM_IN_RELEASE":
               this.mDoZoomAmount = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.mDoZoomAmount = 0;
               break;
            case "BUTTON_FULLSCREEN":
               (AngryBirdsBase.singleton as AngryBirdsCustom).getHeight();
         }
      }
      
      private function openPauseMenu() : void
      {
         var _loc1_:String = this.levelNameToShow();
         AngryBirdsBase.singleton.popupManager.openPopup(new PopupPause(_loc1_));
      }
      
      private function restartLevel() : void
      {
         StateLevelLoadClassic.prepareToRestartLastLevel();
         setNextState(StateLevelLoadClassic.STATE_NAME);
         this.mLevelPlayServerCall.completeServerCall();
      }
      
      protected function setInitialState() : void
      {
      }
      
      override protected function levelCompleted() : void
      {
         this.mLevelPlayServerCall.levelCompleted();
         GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTracker.ACTION_GAME_LEVEL_COMPLETED,mLevelManager.currentLevel,this.levelController.getScore(10));
      }
      
      override protected function getGameLogicController(param1:LevelMain) : GameLogicController
      {
         return new GameLogicControllerCustom(param1,mLevelManager);
      }
      
      private function UpdatePairs(param1:Number) : void
      {
         this.mActiveTime += param1;
         if(this.mActiveTime > 0)
         {
            ++this.mUpdateCount;
         }
      }
      
      private function resetFpsTracker() : void
      {
         this.mActiveTime = FPS_MEASURE_TIME_START;
         this.mUpdateCount = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.mFirstRun && !AngryBirdsEngine.isPaused)
         {
            this.mFirstRun = false;
            SoundEngine.stopSounds();
            AngryBirdsEngine.mIsRunning.background.playAmbientSound();
         }
         this.UpdatePairs(param1);
         if(!AngryBirdsEngine.isPaused)
         {
            TweenManagerGameObjects.instance.update(param1);
         }
         this.updateCurrentScore();
         this.handleZoom(param1);
         if(nextState.length > 0 && this.okToEndLevel())
         {
            this.mLevelPlayServerCall.completeServerCall();
         }
         else if(nextState == StateLevelEndFail.STATE_NAME)
         {
            this.mLevelPlayServerCall.completeServerCall();
         }
      }
      
      private function updateCurrentScore() : void
      {
         var _loc1_:int = mLevelController.getScore(10);
         mUIView.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.getScoreForLevel(mLevelManager.currentLevel);
         mUIView.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.okToEndLevel();
      }
      
      protected function okToEndLevel() : Boolean
      {
         return this.mLevelPlayServerCall.serverCallComplete;
      }
      
      override public function getVictoryStateName() : String
      {
         return StateLevelEndCustom.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return StateLevelEndFailCustom.STATE_NAME;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         DynamicLanguage.instance.updateTextFields(mUIView.container,"StatePlay");
      }
      
      private function handleZoom(param1:Number) : void
      {
         if(this.mDoZoomAmount)
         {
            this.mZoomTimeCounter += param1;
            if(this.mZoomTimeCounter > ZOOM_DELTATIME)
            {
               mLevelController.doUserZoom(this.mDoZoomAmount > 0);
               this.mZoomTimeCounter = 0;
            }
         }
      }
      
      public function get levelManager() : LevelManager
      {
         return mLevelManager;
      }
      
      public function get levelController() : GameLogicController
      {
         return mLevelController;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!AngryBirdsBase.singleton.popupManager.isPopupOpen())
               {
                  this.restartLevel();
               }
               break;
            case Keyboard.P:
               if(!AngryBirdsBase.singleton.popupManager.isPopupOpen())
               {
                  this.openPauseMenu();
               }
               break;
            case Keyboard.ESCAPE:
               if(!AngryBirdsBase.singleton.popupManager.isPopupOpen())
               {
                  this.openPauseMenu();
               }
         }
         AngryBirdsEngine.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         AngryBirdsEngine.controller.keyUp(param1);
      }
      
      private function levelNameToShow() : String
      {
         return mLevelManager.currentLevel.substr(2);
      }
   }
}
