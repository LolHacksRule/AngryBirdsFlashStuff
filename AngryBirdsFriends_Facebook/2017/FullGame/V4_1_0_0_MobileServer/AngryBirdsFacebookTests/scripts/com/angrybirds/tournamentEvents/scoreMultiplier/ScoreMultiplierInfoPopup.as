package com.angrybirds.tournamentEvents.scoreMultiplier
{
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class ScoreMultiplierInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "ScoreMultiplierInfoPopup";
       
      
      public function ScoreMultiplierInfoPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_ScoreMultiplierInfoPopup[0],ID);
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
