package com.angrybirds.popups
{
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class BirdBotTutorialPopup extends AbstractPopup
   {
       
      
      public function BirdBotTutorialPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupBirdBotHelp[0],"BirdBotTutorialPopup");
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onClose);
      }
      
      private function onClose(e:MouseEvent) : void
      {
         close();
      }
   }
}
