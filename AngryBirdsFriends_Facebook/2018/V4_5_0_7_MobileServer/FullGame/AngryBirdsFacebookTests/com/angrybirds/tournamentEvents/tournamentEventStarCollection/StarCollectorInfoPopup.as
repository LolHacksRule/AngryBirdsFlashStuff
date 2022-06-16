package com.angrybirds.tournamentEvents.tournamentEventStarCollection
{
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class StarCollectorInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "StarCollectorInfoPopup";
       
      
      public function StarCollectorInfoPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_StarCollectorInfo[0],ID);
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
