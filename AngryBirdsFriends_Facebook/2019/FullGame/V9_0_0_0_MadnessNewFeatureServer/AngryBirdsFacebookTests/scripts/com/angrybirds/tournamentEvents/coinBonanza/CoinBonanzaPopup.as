package com.angrybirds.tournamentEvents.coinBonanza
{
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class CoinBonanzaPopup extends AbstractPopup
   {
      
      public static const ID:String = "CoinBonanzaPopup";
       
      
      public function CoinBonanzaPopup(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup")
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_CoinBonanzaPopup[0],ID);
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
