package com.angrybirds.popups.coinshop
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.events.MouseEvent;
   
   public class VirtualCurrencyTutorialPopup extends AbstractPopup
   {
       
      
      public function VirtualCurrencyTutorialPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_VCTutorial[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         mContainer.mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.onOkClick);
      }
      
      private function onOkClick(e:MouseEvent) : void
      {
         close();
         AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopTutorialPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP));
      }
   }
}
