package com.AngryBirds.states
{
   import com.AngryBirds.LevelPlayer.LevelCamera;
   import com.AngryBirds.LevelPlayer.LevelMain;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.io.StatisticsList;
   import com.AngryBirds.io.StatisticsManager;
   import com.AngryBirds.ui.ViewLevelPlay;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
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
      
      private var mScreenHitAreasEnabled:Boolean = true;
      
      public function StateLevelPlay(param1:Boolean = true, param2:String = "LevelPlayState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelPlay(this);
         mUIView.init(null);
      }
      
      override public function activate() : void
      {
         super.activate();
         addChildAt(AngryBirdsSocial.smLevelMain,0);
         this.updateCurrentScore(0);
         this.updateHiscore(0);
         mUIView.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         MouseCursorController.setCursor("Cursor_Hand");
         this.mStartedPlayingTime = getTimer();
         this.setScreenHitAreasEnabled(true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.mScreenHitAreasEnabled != !(AngryBirdsSocial.smLevelMain.mLevelSlingshot.mDragging || AngryBirdsSocial.smLevelMain.mLevelCamera.mCurrentAction == LevelCamera.ACTION_DRAG))
         {
            this.setScreenHitAreasEnabled(!(AngryBirdsSocial.smLevelMain.mLevelSlingshot.mDragging || AngryBirdsSocial.smLevelMain.mLevelCamera.mCurrentAction == LevelCamera.ACTION_DRAG));
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
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param3 is UIButtonRovio)
         {
            if(param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN)
            {
               MouseCursorController.mouseDown();
            }
            else if(param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP)
            {
               MouseCursorController.mouseUp();
            }
         }
         switch(param2)
         {
            case "PLAY_VIEW_ROLLOVER":
               MouseCursorController.setCursor("Cursor_Grabbable");
               break;
            case "PLAY_VIEW_ROLLOUT":
               MouseCursorController.setCursor("");
               break;
            case "PAUSE":
               this.mPausePressed = true;
               break;
            case "END_LEVEL":
               this.mEndLevel = true;
               break;
            case "SOUNDS_OFF":
               AngryBirdsSocial.setSoundsEnabled(false);
               break;
            case "PAN_LEFT":
               AngryBirdsSocial.smLevelMain.mLevelCamera.goToBirdView();
               break;
            case "PAN_LEFT_OVER":
               MouseCursorController.setCursor("Cursor_Arrow_Left");
               break;
            case "PAN_LEFT_OUT":
               MouseCursorController.setCursor("");
               break;
            case "PAN_RIGHT":
               AngryBirdsSocial.smLevelMain.mLevelCamera.goToCastleView();
               break;
            case "PAN_RIGHT_OVER":
               MouseCursorController.setCursor("Cursor_Arrow_Right");
               break;
            case "PAN_RIGHT_OUT":
               MouseCursorController.setCursor("");
               break;
            case "TOGGLE_ZOOM":
               _loc4_ = AngryBirdsSocial.smLevelMain.mLevelCamera.mManualScale - LevelCamera.MANUAL_SCALE_MIN_PLAY_STATE;
               _loc5_ = (LevelCamera.MANUAL_SCALE_MAX_PLAY_STATE - LevelCamera.MANUAL_SCALE_MIN_PLAY_STATE) / 2;
               if(_loc4_ > _loc5_)
               {
                  AngryBirdsSocial.smLevelMain.mLevelCamera.adjustManualScale(false,true);
               }
               else
               {
                  AngryBirdsSocial.smLevelMain.mLevelCamera.adjustManualScale(true,true);
               }
               this.setZoomCursor();
               break;
            case "TOGGLE_ZOOM_OVER":
               this.setZoomCursor();
               break;
            case "TOGGLE_ZOOM_OUT":
               MouseCursorController.setCursor("");
         }
      }
      
      public function setZoomCursor() : void
      {
         var _loc1_:Number = AngryBirdsSocial.smLevelMain.mLevelCamera.mManualScale - LevelCamera.MANUAL_SCALE_MIN_PLAY_STATE;
         var _loc2_:Number = (LevelCamera.MANUAL_SCALE_MAX_PLAY_STATE - LevelCamera.MANUAL_SCALE_MIN_PLAY_STATE) / 2;
         if(_loc1_ > _loc2_)
         {
            MouseCursorController.setCursor("Cursor_Zoom_Out");
         }
         else
         {
            MouseCursorController.setCursor("Cursor_Zoom_In");
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
         if(_loc2_ > 0)
         {
            mUIView.getItemByName("Container_HiscoreContainer").goToFrame(1,false);
         }
         else
         {
            mUIView.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         }
         this.updateHiscore(_loc2_);
      }
      
      public function setScreenHitAreasEnabled(param1:Boolean) : void
      {
         mUIView.getItemByName("Movieclip_Play_Pan_Left").setEnabled(param1);
         mUIView.getItemByName("Movieclip_Play_Pan_Right").setEnabled(param1);
         mUIView.getItemByName("Movieclip_Play_Zoom").setEnabled(param1);
         this.mScreenHitAreasEnabled = param1;
      }
   }
}
