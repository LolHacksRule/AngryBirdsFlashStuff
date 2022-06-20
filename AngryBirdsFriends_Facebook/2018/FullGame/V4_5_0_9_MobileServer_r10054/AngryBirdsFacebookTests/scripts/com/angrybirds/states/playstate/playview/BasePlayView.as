package com.angrybirds.states.playstate.playview
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.LevelSlingshot;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.states.playstate.BasePlayStateView;
   import com.angrybirds.states.playstate.event.PlayStateEvent;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.utils.Integer;
   import flash.display.MovieClip;
   
   public class BasePlayView extends BasePlayStateView
   {
      
      public static const SCORE_SPEED:int = 50;
      
      protected static const MIGHTY_EAGLE_BUTTON_VISIBLE:String = "MightyEagleButtonVisible";
      
      protected static const MIGHTY_EAGLE_BUTTON_PREPARE_HIDE:String = "MightyEagleButtonPrepareHide";
      
      protected static const MIGHTY_EAGLE_BUTTON_HIDE:String = "MightyEagleButtonHide";
       
      
      protected var mLevelController:GameLogicController;
      
      protected var mLevelScoreVisible:Integer;
      
      protected var mMightyEagleButtonTween:ISimpleTween;
      
      protected var mMightyEagleButtonState:String;
      
      protected var mButtonMightEagle:UIButtonRovio;
      
      protected var mButtonPause:UIButtonRovio;
      
      protected var mButtonRestart:UIButtonRovio;
      
      protected var mButtonFullScreen:UIButtonRovio;
      
      protected var mContainerMightyEagle:MovieClip;
      
      protected var mIsMightyEagleUsed:Boolean = false;
      
      public function BasePlayView(viewContainer:UIContainerRovio, levelManager:LevelManager, levelController:GameLogicController, dataModel:DataModel, localizationManager:LocalizationManager)
      {
         this.mLevelScoreVisible = new Integer();
         super(viewContainer,levelManager,dataModel,localizationManager);
         this.mLevelController = levelController;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.mIsMightyEagleUsed;
      }
      
      override protected function init() : void
      {
         mViewContainer.setVisibility(false);
         this.mButtonMightEagle = UIButtonRovio(mViewContainer.getItemByName("Button_MightyEagle"));
         this.mButtonPause = UIButtonRovio(mViewContainer.getItemByName("Button_Pause"));
         this.mButtonRestart = UIButtonRovio(mViewContainer.getItemByName("Button_Restart"));
         this.mButtonFullScreen = UIButtonRovio(mViewContainer.getItemByName("Button_FullScreen"));
         this.mContainerMightyEagle = mViewContainer.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(useTransition:Boolean) : void
      {
         super.enable(useTransition);
         mViewContainer.setVisibility(true);
         mViewContainer.addEventListener(UIInteractionEvent.UI_INTERACTION,this.onUIInteraction);
         this.mLevelScoreVisible.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         this.mMightyEagleButtonState = MIGHTY_EAGLE_BUTTON_VISIBLE;
         this.mMightyEagleButtonTween = null;
         this.mIsMightyEagleUsed = false;
         if(this.mButtonMightEagle)
         {
            this.mButtonMightEagle.setVisibility(true);
         }
      }
      
      override public function disable(useTransition:Boolean) : void
      {
         super.disable(useTransition);
         mViewContainer.setVisibility(false);
         mViewContainer.removeEventListener(UIInteractionEvent.UI_INTERACTION,this.onUIInteraction);
         this.mButtonPause.setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.mButtonRestart.setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.mMightyEagleButtonTween != null)
         {
            this.mMightyEagleButtonTween.stop();
            this.mMightyEagleButtonTween = null;
         }
      }
      
      protected function showMEScore() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.mightyEagleBought && AngryBirdsBase.singleton.dataModel.userProgress.canUseMightyEagle(mLevelManager.currentLevel))
         {
         }
      }
      
      override public function update(deltaTime:Number) : void
      {
         this.updateCurrentScore(deltaTime);
         if(this.mMightyEagleButtonState == MIGHTY_EAGLE_BUTTON_VISIBLE && !AngryBirdsEngine.smLevelMain.objects.isLevelGoalObjectsAlive())
         {
            this.prepareHideMightyEagleButton();
         }
         if((this.mMightyEagleButtonState == MIGHTY_EAGLE_BUTTON_VISIBLE || this.mMightyEagleButtonState == MIGHTY_EAGLE_BUTTON_PREPARE_HIDE) && AngryBirdsEngine.smLevelMain.slingshot.mSlingShotState == LevelSlingshot.STATE_CELEBRATE)
         {
            this.hideMightyEagleButton();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         this.mContainerMightyEagle.scaleY = 1;
         this.mContainerMightyEagle.scaleX = 1;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         this.mButtonMightEagle.setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.mButtonMightEagle.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         this.mMightyEagleButtonState = MIGHTY_EAGLE_BUTTON_PREPARE_HIDE;
      }
      
      protected function hideMightyEagleButton() : void
      {
         this.mButtonMightEagle.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
         this.mButtonMightEagle.setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.mMightyEagleButtonTween == null)
         {
            this.mMightyEagleButtonTween = TweenManager.instance.createTween(this.mContainerMightyEagle,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.mMightyEagleButtonState = MIGHTY_EAGLE_BUTTON_HIDE;
         this.mMightyEagleButtonTween.onComplete = this.onHideMightyEagle;
         this.mMightyEagleButtonTween.play();
      }
      
      protected function onHideMightyEagle() : void
      {
         this.mMightyEagleButtonTween = TweenManager.instance.createTween(this.mContainerMightyEagle,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.mMightyEagleButtonTween.play();
         this.mMightyEagleButtonState = MIGHTY_EAGLE_BUTTON_HIDE;
      }
      
      protected function updateCurrentScore(deltaTime:Number) : void
      {
         var score:int = this.mLevelController.getScore();
         var highscore:int = mDataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var scoreVisible:int = this.mLevelScoreVisible.getValue();
         if(scoreVisible < score)
         {
            scoreVisible = Math.min(score,this.mLevelScoreVisible.getValue() + deltaTime * SCORE_SPEED);
            this.mLevelScoreVisible.assign(scoreVisible);
         }
      }
      
      protected function setMightyEagleScore() : void
      {
         var score:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
      }
      
      protected function useMightyEagle() : void
      {
         AngryBirdsEngine.smLevelMain.useMightyEagle();
         this.setMightyEagleScore();
         this.mIsMightyEagleUsed = true;
      }
      
      protected function onUIInteraction(event:UIInteractionEvent) : void
      {
         if(mIsDisabled)
         {
            return;
         }
         if(event.component is UIButtonRovio)
         {
            if(event.eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN)
            {
               MouseCursorController.mouseDown();
            }
            else if(event.eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP)
            {
               MouseCursorController.mouseUp();
            }
         }
         switch(event.eventName)
         {
            case "PAUSE":
               dispatchEvent(new PlayStateEvent(PlayStateEvent.PAUSE_LEVEL));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new PlayStateEvent(PlayStateEvent.GO_TO_STATE,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(AngryBirdsBase.singleton.dataModel.userProgress.canUseMightyEagle(mLevelManager.currentLevel))
               {
                  if(AngryBirdsBase.singleton.dataModel.userProgress.mightyEagleBought)
                  {
                     this.useMightyEagle();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
   }
}
