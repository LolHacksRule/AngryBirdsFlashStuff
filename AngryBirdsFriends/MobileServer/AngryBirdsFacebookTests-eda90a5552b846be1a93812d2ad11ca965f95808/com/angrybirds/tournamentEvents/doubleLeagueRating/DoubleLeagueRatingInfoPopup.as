package com.angrybirds.tournamentEvents.doubleLeagueRating
{
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class DoubleLeagueRatingInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "DoubleLeagueRatingInfoPopup";
       
      
      public function DoubleLeagueRatingInfoPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_DoubleLeagueRatingInfoPopup[0],ID);
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         mContainer.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.onClose);
      }
      
      private function onClose(e:MouseEvent) : void
      {
         close();
      }
   }
}
