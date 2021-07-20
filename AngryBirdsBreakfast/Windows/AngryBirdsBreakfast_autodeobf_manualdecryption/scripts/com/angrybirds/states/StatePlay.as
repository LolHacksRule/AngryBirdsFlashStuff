package com.angrybirds.states
{
   import com.angrybirds.data.DataModel;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.sound.SoundEngine;
   import com.angrybirds.states.playstate.playview.BasePlayView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.states.playstate.IPlayStateView;
   import com.angrybirds.states.playstate.BasePlayStateView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.states.playstate.pauseview.BasePauseView;
   import com.angrybirds.states.playstate.event.PlayStateEvent;
   import com.angrybirds.AngryBirdsEngine;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends StatePlayBase
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var mPlayView:BasePlayStateView;
      
      protected var mPauseView:IPlayStateView;
      
      public function StatePlay(param1:LevelManager, param2:LocalizationManager, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
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
         var _loc1_:DataModel = AngryBirdsBase.singleton.dataModel;
         var _loc2_:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Pause"));
         this.mPauseView = new BasePauseView(_loc2_,mLevelManager,_loc1_,mLocalizationManager);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:DataModel = AngryBirdsBase.singleton.dataModel;
         var _loc2_:UIContainerRovio = UIContainerRovio(mUIView.getItemByName("Container_Play"));
         this.mPlayView = new BasePlayView(_loc2_,mLevelManager,mLevelController,_loc1_,mLocalizationManager);
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
         SoundEngine.stopSounds();
      }
      
      protected function playLevelStartSound() : void
      {
         SoundEngine.playSoundFromVariation("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.addViews();
         this.changeView(false,false);
      }
      
      override public function deActivate() : void
      {
         this.removeViews();
         AngryBirdsBase.singleton.isInPauseState = false;
         super.deActivate();
      }
      
      protected function changeView(param1:Boolean, param2:Boolean = true) : void
      {
         AngryBirdsBase.singleton.isInPauseState = param1;
         if(param1)
         {
            this.mPlayView.disable(param2);
            this.mPauseView.enable(param2);
         }
         else
         {
            this.mPlayView.enable(param2);
            this.mPauseView.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.mPlayView && this.mPlayView.isEnabled())
         {
            this.mPlayView.update(param1);
         }
         if(this.mPauseView && this.mPauseView.isEnabled())
         {
            this.mPauseView.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:PlayStateEvent) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
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
               _loc2_ = param1.targetStateName;
               setNextState(_loc2_);
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
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         super.keyUp(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!AngryBirdsEngine.isPaused)
               {
                  this.restartLevel();
               }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(AngryBirdsEngine.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  setNextState(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  setNextState(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.mPlayView.viewContainer.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
