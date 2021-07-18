package com.AngryBirds.states
{
   import com.AngryBirds.LevelPlayer.LevelMain;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.io.StatisticsList;
   import com.AngryBirds.io.StatisticsManager;
   import com.AngryBirds.ui.ViewLevelPlay;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class StateLevelPlay extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelPlayState";
       
      
      private var mPausePressed:Boolean = false;
      
      private var mEndLevel:Boolean = false;
      
      private var mHiscoreRequested:Boolean = false;
      
      private var mLastScore:Number = -1;
      
      private var mStartedPlayingTime:Number = -1;
      
      public function StateLevelPlay(param1:Boolean = true, param2:String = "LevelPlayState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelPlay(this);
         mUIView.init(null);
         if(AngryBirdsSocial.RUN_AS_EMBED_PLAYER)
         {
            mUIView.mMovieClip.scaleX = 0.5;
            mUIView.mMovieClip.scaleY = 0.5;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         addChildAt(AngryBirdsSocial.smLevelMain,0);
         this.updateCurrentScore(0);
         this.updateHiscore(0);
         MouseCursorController.setCursor("Cursor_Hand");
         this.mStartedPlayingTime = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(AngryBirdsSocial.smLevelMain.mLevelScoreVisible);
         if(!this.mHiscoreRequested && AngryBirdsSocial.USER.loggedIn)
         {
            this.mHiscoreRequested = true;
            AngryBirdsServer.getLevelScore(AngryBirdsSocial.smLevelMain.mLevelData.levelID,this.scoreResponseReceived);
         }
         if(this.mPausePressed)
         {
            this.mPausePressed = false;
            mNextState = StateLevelPause.STATE_NAME;
         }
         else if(!AngryBirdsSocial.smLevelMain.update(param1) || this.mEndLevel)
         {
            this.mEndLevel = false;
            if(AngryBirdsSocial.smLevelMain.mLevelState == LevelMain.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = StateLevelOverVictory.STATE_NAME;
            }
            else if(AngryBirdsSocial.smLevelMain.mLevelState == LevelMain.LEVEL_STATE_FAIL)
            {
               mNextState = StateLevelOverFail.STATE_NAME;
            }
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.mHiscoreRequested = false;
         removeChild(AngryBirdsSocial.smLevelMain);
         StatisticsManager.markEvent(StatisticsList.PLAY_TIME,(getTimer() - this.mStartedPlayingTime).toString());
         StatisticsManager.uploadPendingEvents();
         this.mStartedPlayingTime = -1;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         AngryBirdsSocial.smLevelMain.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         AngryBirdsSocial.smLevelMain.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "PAUSE":
               this.mPausePressed = true;
               break;
            case "END_LEVEL":
               this.mEndLevel = true;
               break;
            case "SOUNDS_TOGGLE":
               SoundEngine.setSounds(!SoundEngine.isEnabled());
               if(SoundEngine.isEnabled())
               {
                  AngryBirdsSocial.smLevelMain.mLevelBackground.playBackgroundMusic();
               }
               (mUIView as ViewLevelPlay).updateSoundsToggleButtonState();
               break;
            case "SOUNDS_OFF":
               SoundEngine.setSounds(false);
         }
      }
      
      private function updateCurrentScore(param1:Number) : void
      {
         if(param1 != this.mLastScore)
         {
            this.mLastScore = param1;
            mUIView.setText(this.mLastScore + "","TextField_CurrentScore");
         }
      }
      
      private function updateHiscore(param1:Number) : void
      {
         mUIView.setText(param1.toString(),"TextField_Hiscore");
         AngryBirdsSocial.smLevelMain.mLevelScoreMax = param1;
      }
      
      private function scoreResponseReceived(param1:Object) : void
      {
         var _loc2_:Number = 0;
         if(param1.score)
         {
            _loc2_ = param1.score;
         }
         this.updateHiscore(_loc2_);
      }
   }
}
