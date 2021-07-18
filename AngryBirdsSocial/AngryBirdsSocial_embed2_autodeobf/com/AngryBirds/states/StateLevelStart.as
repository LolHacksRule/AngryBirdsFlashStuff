package com.AngryBirds.states
{
   import com.AngryBirds.io.AngryBirdsExternalInterface;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.io.StatisticsList;
   import com.AngryBirds.io.StatisticsManager;
   import com.AngryBirds.ui.ViewLevelStart;
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import flash.utils.getTimer;
   
   public class StateLevelStart extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var mStatsRequested:Boolean = false;
      
      public function StateLevelStart(initState:Boolean = false, name:String = "LevelStartState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelStart(this);
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
         if(!contains(AngryBirdsSocial.smLevelMain))
         {
            addChildAt(AngryBirdsSocial.smLevelMain,0);
         }
         var displayLevelOfDay:Boolean = AngryBirdsSocial.smLevelMain.isLevelOfDay() && !AngryBirdsSocial.RUN_AS_EMBED_PLAYER;
         mUIView.getItemByName("Button_Play").setVisibility(displayLevelOfDay);
         mUIView.getItemByName("Button_PlayLevel").setVisibility(!displayLevelOfDay);
         mUIView.getItemByName("Icon_LevelOfTheDay").setVisibility(displayLevelOfDay);
         mUIView.getItemByName("Container_LevelOfTheDay_Competition").setVisibility(displayLevelOfDay);
         MouseCursorController.setCursor("");
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(!this.mStatsRequested && AngryBirdsSocial.USER.loggedIn)
         {
            this.mStatsRequested = true;
            AngryBirdsServer.getStats(this.statsResponseReceived);
            AngryBirdsServer.getLevelScore(AngryBirdsSocial.smLevelMain.mLevelData.levelID,this.scoreResponseReceived);
            AngryBirdsSocial.updateMetaGameData();
            if(AngryBirdsSocial.smLevelMain.isLevelOfDay())
            {
               AngryBirdsServer.getLevelOfDayInfo(AngryBirdsSocial.smLevelMain.mLevelOfDayId,this.getLevelOfDayInfoResponse);
            }
         }
         if(AngryBirdsSocial.smLevelMain.isLevelOfDay() && AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime > 0)
         {
            mUIView.setText("competition ends in: " + AngryBirdsSocial.generateTimeLeftStr(AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime),"TextFiels_LevelOfTheDay_Competition");
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         if(contains(AngryBirdsSocial.smLevelMain))
         {
            removeChild(AngryBirdsSocial.smLevelMain);
         }
         this.mStatsRequested = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "PLAY_LEVEL":
               mNextState = StateLevelPlay.STATE_NAME;
               SoundEngine.playSoundFromVariation("LevelStartsBirdsMilitary2");
               StatisticsManager.markEvent(StatisticsList.LEVEL_PLAYED,AngryBirdsSocial.smLevelMain.mLevelData.levelID,null,true);
               break;
            case "OPEN_LEVEL_OF_DAY":
               if(AngryBirdsSocial.USER.loggedIn)
               {
                  StateLevelOfTheDay.smInitiatingState = STATE_NAME;
                  this.mNextState = StateLevelOfTheDay.STATE_NAME;
               }
               else
               {
                  AngryBirdsExternalInterface.openLogin();
               }
         }
      }
      
      private function statsResponseReceived(response:Object) : void
      {
         AngryBirdsSocial.USER_STATS.playTimes = Number(response["plays"]);
         Log.log("[StateLevelStart] You have played total of " + AngryBirdsSocial.USER_STATS.playTimes + " levels.");
      }
      
      private function scoreResponseReceived(response:Object) : void
      {
         var score:int = 0;
         if(response.score)
         {
            score = response.score;
         }
         this.updatePreviousScore(score);
      }
      
      private function updatePreviousScore(score:Number) : void
      {
      }
      
      public function getLevelOfDayInfoResponse(response:Object) : void
      {
         var score:int = 0;
         if(response != null)
         {
            score = response.score;
         }
         AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime = getTimer() + response.timeLeft;
         AngryBirdsSocial.smLevelMain.mLevelOfDayScore = score;
      }
   }
}
