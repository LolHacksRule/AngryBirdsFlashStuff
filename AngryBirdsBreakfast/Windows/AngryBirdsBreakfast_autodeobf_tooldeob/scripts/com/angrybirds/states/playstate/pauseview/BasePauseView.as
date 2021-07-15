package com.angrybirds.states.playstate.pauseview
{
   import com.angrybirds.data.DataModel;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.angrybirds.states.playstate.AbstractPlayStateView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.states.playstate.event.PlayStateEvent;
   import com.angrybirds.AngryBirdsEngine;
   import flash.display.MovieClip;
   
   public class BasePauseView extends AbstractPlayStateView
   {
      
      public static const OFFSCREEN_X:Number = -250;
       
      
      protected var mMenuTween:ISimpleTween = null;
      
      protected var mPauseMenuContainer:UIContainerRovio;
      
      protected var mMouseBlocker:MovieClip;
      
      protected var mButtonResume:UIButtonRovio;
      
      protected var mButtonMenu:UIButtonRovio;
      
      protected var mButtonReplay:UIButtonRovio;
      
      public function BasePauseView(param1:UIContainerRovio, param2:LevelManager, param3:DataModel, param4:LocalizationManager)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         mViewContainer.setVisibility(false);
         this.mPauseMenuContainer = UIContainerRovio(mViewContainer.getItemByName("Container_PauseMenu"));
         this.mPauseMenuContainer.x = OFFSCREEN_X;
         this.mMouseBlocker = mViewContainer.getItemByName("MovieClip_Bg").mClip;
         this.mButtonResume = UIButtonRovio(this.mPauseMenuContainer.getItemByName("Button_Resume"));
         this.mButtonMenu = UIButtonRovio(this.mPauseMenuContainer.getItemByName("Button_Menu"));
         this.mButtonReplay = UIButtonRovio(this.mPauseMenuContainer.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.closePauseMenu(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.openPauseMenu(param1);
         AngryBirdsEngine.smLevelMain.background.stopAmbientSound();
      }
      
      private function stopTweens() : void
      {
         if(this.mMenuTween)
         {
            this.mMenuTween.stop();
            this.mMenuTween = null;
         }
      }
      
      protected function openPauseMenu(param1:Boolean) : void
      {
         mViewContainer.setVisibility(true);
         this.stopTweens();
         AngryBirdsEngine.pause();
         this.setPauseMenuButtonsEnabled(false);
         if(param1)
         {
            this.mMenuTween = TweenManager.instance.createParallelTween(TweenManager.instance.createTween(this.mPauseMenuContainer,{"x":0},null,0.25),TweenManager.instance.createTween(this.mMouseBlocker,{"alpha":1},null,0.25));
            this.mMenuTween.onComplete = this.onOpenPauseMenuTweenComplete;
            this.mMenuTween.play();
         }
         else
         {
            this.mPauseMenuContainer.x = 0;
            this.mMouseBlocker.alpha = 1;
            this.onOpenPauseMenuTweenComplete();
         }
      }
      
      protected function onOpenPauseMenuTweenComplete() : void
      {
         this.stopTweens();
         mViewContainer.addEventListener(UIInteractionEvent.UI_INTERACTION,this.onUIInteraction);
         this.setPauseMenuButtonsEnabled(true);
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         this.mButtonResume.setEnabled(param1);
         this.mButtonReplay.setEnabled(param1);
         this.mButtonMenu.setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         this.mButtonResume.setComponentVisualState(param1);
         this.mButtonReplay.setComponentVisualState(param1);
         this.mButtonMenu.setComponentVisualState(param1);
      }
      
      protected function closePauseMenu(param1:Boolean) : void
      {
         mViewContainer.removeEventListener(UIInteractionEvent.UI_INTERACTION,this.onUIInteraction);
         this.stopTweens();
         if(param1)
         {
            this.mMenuTween = TweenManager.instance.createParallelTween(TweenManager.instance.createTween(this.mPauseMenuContainer,{"x":OFFSCREEN_X},null,0.25),TweenManager.instance.createTween(this.mMouseBlocker,{"alpha":0},null,0.25));
            this.mMenuTween.onComplete = this.onClosePauseMenuTweenComplete;
            this.mMenuTween.play();
         }
         else
         {
            this.mPauseMenuContainer.x = OFFSCREEN_X;
            this.mMouseBlocker.alpha = 0;
            this.onClosePauseMenuTweenComplete();
         }
      }
      
      protected function onClosePauseMenuTweenComplete() : void
      {
         mViewContainer.setVisibility(false);
         this.stopTweens();
         dispatchEvent(new PlayStateEvent(PlayStateEvent.DISABLE_COMPLETE));
         AngryBirdsEngine.resume();
      }
      
      protected function onUIInteraction(param1:UIInteractionEvent) : void
      {
         if(mIsDisabled)
         {
            return;
         }
         switch(param1.eventName)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new PlayStateEvent(PlayStateEvent.GO_TO_STATE,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new PlayStateEvent(PlayStateEvent.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new PlayStateEvent(PlayStateEvent.GO_TO_STATE,getLevelSelectionStateName()));
         }
      }
   }
}
