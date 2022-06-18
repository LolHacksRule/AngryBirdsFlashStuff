package com.angrybirds.states.tournament.branded
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   import com.angrybirds.states.StateFacebookLevelLoad;
   import com.angrybirds.states.tournament.StateTournamentLevelLoad;
   import com.angrybirds.states.tournament.StateTournamentPlay;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class StateTournamentLevelLoadBranded extends StateFacebookLevelLoad
   {
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function StateTournamentLevelLoadBranded(levelManager:LevelManager, levelItemManager:LevelItemManagerSpace, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "TournamentLevelLoad")
      {
         super(levelManager,levelItemManager,localizationManager,initState,name);
      }
      
      override protected function initLoadingView() : void
      {
         this.mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_LevelLoad[0]);
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
            levelData.theme = StateTournamentLevelLoad.TOURNAMENT_THEME;
         }
         super.initLevelMain(levelData);
      }
   }
}
