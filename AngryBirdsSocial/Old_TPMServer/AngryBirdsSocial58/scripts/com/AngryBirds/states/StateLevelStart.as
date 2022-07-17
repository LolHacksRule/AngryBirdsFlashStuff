package com.AngryBirds.states
{
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.ui.ViewLevelStart;
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   
   public class StateLevelStart extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var mStatsRequested:Boolean = false;
      
      public function StateLevelStart(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelStart(this);
         mUIView.init(null);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!contains(AngryBirdsSocial.smLevelMain))
         {
            addChildAt(AngryBirdsSocial.smLevelMain,0);
         }
         MouseCursorController.setCursor("");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.mStatsRequested && AngryBirdsSocial.USER.loggedIn)
         {
            this.mStatsRequested = true;
            AngryBirdsServer.getStats(this.statsResponseReceived);
            AngryBirdsServer.getLevelScore(AngryBirdsSocial.smLevelMain.mLevelData.levelID,this.scoreResponseReceived);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "PLAY_LEVEL":
               mNextState = StateLevelPlay.STATE_NAME;
               SoundEngine.playSoundFromVariation("LevelStartsBirdsMilitary2");
         }
      }
      
      private function statsResponseReceived(param1:Object) : void
      {
         AngryBirdsSocial.USER_STATS.playTimes = Number(param1["plays"]);
         Log.log("[StateLevelStart] You have played total of " + AngryBirdsSocial.USER_STATS.playTimes + " levels.");
      }
      
      private function scoreResponseReceived(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(param1.score)
         {
            _loc2_ = param1.score;
         }
         this.updatePreviousScore(_loc2_);
      }
      
      private function updatePreviousScore(param1:Number) : void
      {
      }
   }
}
