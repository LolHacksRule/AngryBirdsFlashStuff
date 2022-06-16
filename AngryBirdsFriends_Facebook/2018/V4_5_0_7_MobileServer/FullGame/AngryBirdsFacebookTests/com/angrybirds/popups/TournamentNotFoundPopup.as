package com.angrybirds.popups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.angrybirds.states.StateFacebookMainMenuSelection;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentNotFoundPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentNotFoundPopup";
       
      
      public function TournamentNotFoundPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupTournamentNotFound[0],ID);
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
         AngryBirdsBase.singleton.setNextState(StateFacebookMainMenuSelection.STATE_NAME);
         close();
      }
   }
}
