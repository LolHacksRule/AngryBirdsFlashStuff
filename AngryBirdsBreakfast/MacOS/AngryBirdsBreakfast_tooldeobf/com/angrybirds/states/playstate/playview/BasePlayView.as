package com.angrybirds.states.playstate.playview
{
   import com.rovio.utils.Integer;
   import com.angrybirds.data.DataModel;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.angrybirds.states.playstate.BasePlayStateView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.engine.LevelSlingshot;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.states.playstate.event.PlayStateEvent;
   import com.angrybirds.AngryBirdsEngine;
   import each.MouseCursorController;
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
      
      public function BasePlayView(param1:UIContainerRovio, param2:LevelManager, param3:GameLogicController, param4:DataModel, param5:LocalizationManager)
      {
         this.mLevelScoreVisible = new Integer();
         super(param1,param2,param4,param5);
         this.mLevelController = param3;
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
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
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
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
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
      
      override public function update(param1:Number) : void
      {
         this.updateCurrentScore(param1);
         if(this.mMightyEagleButtonState == MIGHTY_EAGLE_BUTTON_VISIBLE && !AngryBirdsEngine.smLevelMain.objects.isPigsAlive())
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
      
      protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = this.mLevelController.getScore(10);
         var _loc3_:int = mDataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.mLevelScoreVisible.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.mLevelScoreVisible.getValue() + param1 * SCORE_SPEED);
            this.mLevelScoreVisible.assign(_loc4_);
         }
      }
      
      protected function setMightyEagleScore() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
      }
      
      protected function useMightyEagle() : void
      {
         AngryBirdsEngine.smLevelMain.useMightyEagle();
         this.setMightyEagleScore();
         this.mIsMightyEagleUsed = true;
      }
      
      protected function onUIInteraction(param1:UIInteractionEvent) : void
      {
         if(mIsDisabled)
         {
            return;
         }
         if(param1.component is UIButtonRovio)
         {
            if(param1.eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN)
            {
               MouseCursorController.mouseDown();
            }
            else if(param1.eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP)
            {
               MouseCursorController.mouseUp();
            }
         }
         switch(param1.eventName)
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
