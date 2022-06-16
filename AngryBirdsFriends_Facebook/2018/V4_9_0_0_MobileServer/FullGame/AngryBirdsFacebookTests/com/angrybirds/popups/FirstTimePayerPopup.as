package com.angrybirds.popups
{
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.graphapi.FirstTimePayerBuyItem;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.utils.analytics.INavigable;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FirstTimePayerPopup extends AbstractPopup implements INavigable
   {
      
      public static const ID:String = "FirstTimePayerPopup";
      
      public static const EVENT_PAYER_PROMOTION_COMPLETED:String = "PayerPromotionCompleted";
       
      
      private var mFirstTimePayerBuy:FirstTimePayerBuyItem;
      
      public function FirstTimePayerPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_FreePowerups[0],ID);
      }
      
      protected function onItemBought(event:BuyItemEvent) : void
      {
         ExternalInterfaceHandler.performCall("flashShowFirstTimeNewPayerPromotion",event.changedItems[0].toString());
         ExternalInterfaceHandler.addCallback("newPayerPromotionSent",this.onNewPayerPromotionSent);
      }
      
      override protected function init() : void
      {
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         mContainer.mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.onGetThemNowClick);
      }
      
      private function onGetThemNowClick(e:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.mFirstTimePayerBuy = new FirstTimePayerBuyItem(null,null);
         this.mFirstTimePayerBuy.addEventListener(BuyItemEvent.ITEM_BOUGHT,this.onItemBought);
         this.mFirstTimePayerBuy.addEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onItemBoughtFailed);
      }
      
      protected function onItemBoughtFailed(event:Event) : void
      {
         close();
      }
      
      private function onNewPayerPromotionSent(response:Object) : void
      {
         AngryBirdsFacebook.sSingleton.firstTimePayerPromotion.isEligible = false;
         dispatchEvent(new Event(EVENT_PAYER_PROMOTION_COMPLETED));
         this.mFirstTimePayerBuy.removeEventListener(BuyItemEvent.ITEM_BOUGHT,this.onItemBought);
         this.mFirstTimePayerBuy.removeEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onItemBoughtFailed);
         ExternalInterfaceHandler.removeCallback("newPayerPromotionSent",this.onNewPayerPromotionSent);
         ItemsInventory.instance.loadInventory();
         close();
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         close();
      }
      
      public function getName() : String
      {
         return ID;
      }
   }
}
