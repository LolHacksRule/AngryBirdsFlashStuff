package com.angrybirds.states.tournament.branded
{
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.states.tournament.playstate.TournamentPlayView;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.Components.UIContainerRovio;
   
   public class TournamentBrandedPlayView extends TournamentPlayView
   {
       
      
      public function TournamentBrandedPlayView(viewContainer:UIContainerRovio, levelManager:LevelManager, levelController:GameLogicController, dataModel:DataModel, localizationManager:LocalizationManager)
      {
         super(viewContainer,levelManager,levelController,dataModel,localizationManager);
      }
   }
}
