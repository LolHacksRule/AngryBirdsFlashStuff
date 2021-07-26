package com.AngryBirds.states
{
   import com.AngryBirds.io.StatisticsList;
   import com.AngryBirds.io.StatisticsManager;
   import com.AngryBirds.ui.ViewLevelEndFail;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   
   public class StateLevelOverFail extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelOverFailState";
       
      
      private var mStatsRequested:Boolean = false;
      
      public function StateLevelOverFail(initState:Boolean = true, name:String = "LevelOverFailState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelEndFail(this);
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
         MouseCursorController.setCursor("");
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
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
            case "REPLAY_LEVEL":
               mNextState = StateLevelLoad.STATE_NAME;
               StateLevelLoad.prepareToRestartLastLevel();
               StatisticsManager.markEvent(StatisticsList.LEVEL_RESTARTED,AngryBirdsSocial.smLevelMain.mLevelData.levelID,null,true);
         }
      }
   }
}
