package com.angrybirds.states.tournament
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.StateCredits;
   import com.angrybirds.states.StateLevelSelection;
   import com.angrybirds.states.tournament.branded.StateCutSceneBranded;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.graphics.cutscenes.CutScene;
   import flash.events.Event;
   
   public class StateTournamentCutScenePlain extends StateCutSceneBranded
   {
      
      public static const STATE_NAME:String = "tournamentCutscenePlain";
       
      
      public function StateTournamentCutScenePlain(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "tournamentCutscenePlain")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function end() : void
      {
         if(mCutSceneManager)
         {
            mCutSceneManager.removeEventListener(Event.COMPLETE,onCutSceneAvailable);
            mCutSceneManager.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(mCutScene && mCutScene.cutSceneType == CutScene.TYPE_OUTRO)
         {
            StateLevelSelection.sPreviousState = StateTournamentCutScenePlain.STATE_NAME;
            setNextState(getLevelSelectionState());
         }
         else if(mCutScene && mCutScene.cutSceneType == CutScene.TYPE_FINAL_OUTRO)
         {
            setNextState(StateCredits.STATE_NAME);
         }
         else
         {
            StateLevelSelection.sPreviousState = StateTournamentCutScene.STATE_NAME;
            setNextState(StateTournamentLevelSelection.STATE_NAME);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var levelId:String = mLevelManager.currentLevel;
         var cutScene:String = mLevelManager.getCurrentEpisodeModel().getCutScene(levelId + "-OUTRO");
         if(!cutScene)
         {
            cutScene = mLevelManager.getCurrentEpisodeModel().getCutScene(levelId + "-INTRO");
         }
         return cutScene;
      }
   }
}
