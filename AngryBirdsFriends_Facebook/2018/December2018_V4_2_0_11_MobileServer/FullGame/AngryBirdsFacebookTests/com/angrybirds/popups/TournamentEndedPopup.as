package com.angrybirds.popups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.tournamentEvents.tournamentEventStarCollection.StarCollectionPopup;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentEndedPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentEndedPopup";
       
      
      public function TournamentEndedPopup(layerIndex:int, priority:int)
      {
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
         AngryBirdsBase.singleton.setNextState(StateTournamentLevelSelection.STATE_NAME);
         dispatchEvent(new TournamentEvent(TournamentEvent.TOURNAMENT_RELOAD));
         close();
      }
   }
}
