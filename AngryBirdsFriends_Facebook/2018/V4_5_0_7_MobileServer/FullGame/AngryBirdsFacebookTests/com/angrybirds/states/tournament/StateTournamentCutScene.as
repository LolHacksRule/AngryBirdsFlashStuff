package com.angrybirds.states.tournament
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.StateFacebookCutScene;
   import com.angrybirds.states.StateLevelSelection;
   import com.rovio.data.localization.LocalizationManager;
   import flash.events.Event;
   
   public class StateTournamentCutScene extends StateFacebookCutScene
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
       
      
      public function StateTournamentCutScene(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "tournamentCutscene")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      protected function getLevelSelectionState() : String
      {
         return StateTournamentLevelSelection.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return StateTournamentLevelLoad.STATE_NAME;
      }
      
      override protected function end() : void
      {
         if(mCutSceneManager)
         {
            mCutSceneManager.removeEventListener(Event.COMPLETE,onCutSceneAvailable);
            mCutSceneManager.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(getCutSceneName() && getCutSceneName().toUpperCase().indexOf("OUTRO") != -1)
         {
            StateLevelSelection.sPreviousState = StateTournamentCutScene.STATE_NAME;
            setNextState(this.getLevelSelectionState());
         }
         else
         {
            handleLevelLoad();
         }
      }
   }
}
