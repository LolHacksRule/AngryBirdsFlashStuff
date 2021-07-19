package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.playstate.BasePlayStateView;
   import com.angrybirds.states.playstate.IPlayStateView;
   import com.angrybirds.states.playstate.event.PlayStateEvent;
   import com.angrybirds.states.playstate.pauseview.BasePauseView;
   import com.angrybirds.states.playstate.playview.BasePlayView;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends StatePlayBase
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var mPlayView:BasePlayStateView;
      
      protected var mPauseView:IPlayStateView;
      
      public function StatePlay(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = true, name:String = "StatePlay")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      private function get playView() : BasePlayStateView
      {
         return this.mPlayView;
      }
      
      override protected function init() : void
      {
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function addViews() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.addEventListenersToViews();
      }
      
      protected function removeViews() : void
      {
         this.removeEventListenersToViews();
         if(this.mPlayView)
         {
            this.mPlayView.dispose();
            this.mPlayView = null;
         }
         if(this.mPauseView)
         {
            this.mPauseView.dispose();
            this.mPauseView = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var model:DataModel = AngryBirdsBase.singleton.dataModel;
         var pauseContainer:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Pause"));
         this.mPauseView = new BasePauseView(pauseContainer,mLevelManager,model,mLocalizationManager);
      }
      
      protected function addPlayView() : void
      {
         var model:DataModel = AngryBirdsBase.singleton.dataModel;
         var playContainer:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Play"));
         this.mPlayView = new BasePlayView(playContainer,mLevelManager,mLevelController,model,mLocalizationManager);
      }
      
      protected function addEventListenersToViews() : void
      {
         this.mPauseView.addEventListener(PlayStateEvent.DISABLE_COMPLETE,this.viewEventHandler);
         this.mPauseView.addEventListener(PlayStateEvent.GO_TO_STATE,this.viewEventHandler);
         this.mPauseView.addEventListener(PlayStateEvent.RESTART_LEVEL,this.viewEventHandler);
         this.mPauseView.addEventListener(PlayStateEvent.RESUME_LEVEL,this.viewEventHandler);
         this.mPlayView.addEventListener(PlayStateEvent.GO_TO_STATE,this.viewEventHandler);
         this.mPlayView.addEventListener(PlayStateEvent.RESTART_LEVEL,this.viewEventHandler);
         this.mPlayView.addEventListener(PlayStateEvent.RESUME_LEVEL,this.viewEventHandler);
         this.mPlayView.addEventListener(PlayStateEvent.PAUSE_LEVEL,this.viewEventHandler);
      }
      
      protected function removeEventListenersToViews() : void
      {
         this.mPauseView.removeEventListener(PlayStateEvent.DISABLE_COMPLETE,this.viewEventHandler);
         this.mPauseView.removeEventListener(PlayStateEvent.GO_TO_STATE,this.viewEventHandler);
         this.mPauseView.removeEventListener(PlayStateEvent.RESTART_LEVEL,this.viewEventHandler);
         this.mPauseView.removeEventListener(PlayStateEvent.RESUME_LEVEL,this.viewEventHandler);
         this.mPlayView.removeEventListener(PlayStateEvent.GO_TO_STATE,this.viewEventHandler);
         this.mPlayView.removeEventListener(PlayStateEvent.RESTART_LEVEL,this.viewEventHandler);
         this.mPlayView.removeEventListener(PlayStateEvent.RESUME_LEVEL,this.viewEventHandler);
         this.mPlayView.removeEventListener(PlayStateEvent.PAUSE_LEVEL,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.stopSoundsOnLevelStart();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function stopSoundsOnLevelStart() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         SoundEngine.stopSounds();
      }
      
      protected function playLevelStartSound() : void
      {
         SoundEngine.playSoundFromVariation("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         this.addViews();
         this.changeView(false,false);
      }
      
      override public function deActivate() : void
      {
         this.removeViews();
         AngryBirdsBase.singleton.isInPauseState = false;
         super.deActivate();
      }
      
      protected function changeView(isTargetPause:Boolean, useTransition:Boolean = true) : void
      {
         AngryBirdsBase.singleton.isInPauseState = isTargetPause;
         if(isTargetPause)
         {
            this.mPlayView.disable(useTransition);
            this.mPauseView.enable(useTransition);
         }
         else
         {
            this.mPlayView.enable(useTransition);
            this.mPauseView.disable(useTransition);
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         if(this.mPlayView && this.mPlayView.isEnabled())
         {
            this.mPlayView.update(deltaTime);
         }
         if(this.mPauseView && this.mPauseView.isEnabled())
         {
            this.mPauseView.update(deltaTime);
         }
      }
      
      protected function viewEventHandler(event:PlayStateEvent) : void
      {
         var targetState:String = null;
         switch(event.type)
         {
            case PlayStateEvent.DISABLE_COMPLETE:
               break;
            case PlayStateEvent.PAUSE_LEVEL:
               this.changeView(true);
               break;
            case PlayStateEvent.RESUME_LEVEL:
               this.changeView(false);
               break;
            case PlayStateEvent.RESTART_LEVEL:
               this.restartLevel();
               break;
            case PlayStateEvent.GO_TO_STATE:
               targetState = event.targetStateName;
               setNextState(targetState);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.playView.isEagleUsed())
         {
            return StateLevelEndEagle.STATE_NAME;
         }
         return StateLevelEnd.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return StateLevelEndFail.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function restartLevel() : void
      {
         setNextState(this.getLevelLoadStateName());
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         super.keyUp(e);
         switch(e.keyCode)
         {
            case Keyboard.R:
               if(!AngryBirdsEngine.isPaused)
               {
                  this.restartLevel();
               }
         }
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(AngryBirdsEngine.DEBUG_MODE_ENABLED)
         {
            switch(e.keyCode)
            {
               case Keyboard.NUMBER_5:
                  setNextState(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  setNextState(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(e);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.mPlayView.viewContainer.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
