package com.angrybirds.popups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.angrybirds.states.StateFacebookMainMenuSelection;
   import com.angrybirds.states.tournament.StateOverlappingTournamentsMenu;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournamentEvents.tournamentEventStarCollection.StarCollectionPopup;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentEndedPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentEndedPopup";
       
      
      private var mTournamentEndedId:int;
      
      public function TournamentEndedPopup(layerIndex:int, priority:int)
      {
         if(TournamentModel.instance.currentTournament)
         {
            this.mTournamentEndedId = TournamentModel.instance.currentTournament.id;
         }
         else
         {
            this.mTournamentEndedId = 0;
         }
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupTournamentEnded[0],ID);
         AngryBirdsBase.singleton.popupManager.closePopupById(StarCollectionPopup.ID);
         AngryBirdsBase.singleton.popupManager.closePopupById(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var view:MovieClip = mContainer.mClip;
         view.btnBack.addEventListener(MouseEvent.CLICK,this.onReloadClick);
         AngryBirdsEngine.pause();
      }
      
      private function onReloadClick(e:MouseEvent) : void
      {
         var levelScores:Array = null;
         var tournamentEntered:Boolean = false;
         var levelScore:Object = null;
         if(TournamentModel.instance.isOverlappingTournamentsEnabled())
         {
            StateOverlappingTournamentsMenu.forceRefreshOverlappingTournamentData();
            AngryBirdsBase.singleton.setNextState(StateOverlappingTournamentsMenu.STATE_NAME);
         }
         else
         {
            levelScores = TournamentModel.instance.getLevelScores();
            tournamentEntered = false;
            if(levelScores)
            {
               for each(levelScore in levelScores)
               {
                  if(levelScore.p && levelScore.p > 0)
                  {
                     tournamentEntered = true;
                     break;
                  }
               }
            }
            if(tournamentEntered)
            {
               StateTournamentLevelSelection.checkTheTournamentForResults(this.mTournamentEndedId);
               TournamentModel.forceReloadStandings();
               AngryBirdsBase.singleton.setNextState(StateTournamentLevelSelection.STATE_NAME);
            }
            else
            {
               StateTournamentLevelSelection.setNextTournamentToLoad();
               TournamentModel.forceReloadStandings();
               AngryBirdsBase.singleton.setNextState(StateFacebookMainMenuSelection.STATE_NAME);
            }
         }
         close();
      }
   }
}
