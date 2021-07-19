package com.angrybirds.states.tournament
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   import com.angrybirds.states.StateFacebookLevelLoad;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.data.localization.LocalizationManager;
   
   public class StateTournamentLevelLoad extends StateFacebookLevelLoad
   {
      
      public static var TOURNAMENT_THEME:String = "BACKGROUND_FB_DEFAULT_2016";
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function StateTournamentLevelLoad(levelManager:LevelManager, levelItemManager:LevelItemManagerSpace, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "TournamentLevelLoad")
      {
         super(levelManager,levelItemManager,localizationManager,initState,name);
      }
      
      override protected function getPlayState() : String
      {
         return StateTournamentPlay.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + TournamentModel.instance.getLevelActualNumber(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(levelData:LevelModel) : void
      {
         if(TournamentModel.instance.tournamentRules && TournamentModel.instance.tournamentRules.background)
         {
            levelData.theme = TournamentModel.instance.tournamentRules.background;
         }
         else
         {
            levelData.theme = TOURNAMENT_THEME;
         }
         super.initLevelMain(levelData);
      }
      
      override public function onLevelLoadError() : void
      {
         setNextState(StateTournamentLevelSelection.STATE_NAME);
      }
   }
}
