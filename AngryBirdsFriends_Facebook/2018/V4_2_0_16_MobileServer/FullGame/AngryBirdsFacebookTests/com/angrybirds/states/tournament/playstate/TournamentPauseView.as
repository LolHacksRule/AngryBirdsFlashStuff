package com.angrybirds.states.tournament.playstate
{
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.rovionews.RovioNewsManager;
   import com.angrybirds.states.playstate.pauseview.FacebookPauseView;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.Components.UIContainerRovio;
   
   public class TournamentPauseView extends FacebookPauseView
   {
       
      
      public function TournamentPauseView(viewContainer:UIContainerRovio, levelManager:LevelManager, dataModel:DataModel, localizationManager:LocalizationManager, newsManager:RovioNewsManager)
      {
         super(viewContainer,levelManager,dataModel,localizationManager,newsManager);
      }
      
      override protected function getLevelNameToDisplay(levelid:String) : String
      {
         return TournamentModel.instance.getLevelActualNumber(levelid) + "";
      }
      
      override protected function getLevelSelectionState() : String
      {
         return StateTournamentLevelSelection.STATE_NAME;
      }
   }
}
