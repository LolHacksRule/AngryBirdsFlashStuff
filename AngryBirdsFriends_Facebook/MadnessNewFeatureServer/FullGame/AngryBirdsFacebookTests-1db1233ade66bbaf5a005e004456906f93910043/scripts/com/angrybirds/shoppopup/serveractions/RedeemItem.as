package com.angrybirds.shoppopup.serveractions
{
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.popups.coinshop.CoinShopPopup;
   import com.angrybirds.shoppopup.events.RedeemItemEvent;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   
   public class RedeemItem extends EventDispatcher implements IRedeemItem
   {
       
      
      public function RedeemItem()
      {
         super();
         this.initialize();
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function initialize() : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterfaceHandler.addCallback("purchaseCompleted",this.onPurchaseCompletedGiftCard);
            ExternalInterfaceHandler.addCallback("purchaseFailed",this.onPurchaseFailedGiftCard);
            ExternalInterfaceHandler.addCallback("handleUserCancelledOrder",this.onPurchaseGiftCardUserCancelled);
         }
      }
      
      private function removeEventListeners() : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterfaceHandler.removeCallback("purchaseCompleted",this.onPurchaseCompletedGiftCard);
            ExternalInterfaceHandler.removeCallback("purchaseFailed",this.onPurchaseFailedGiftCard);
            ExternalInterfaceHandler.removeCallback("handleUserCancelledOrder",this.onPurchaseGiftCardUserCancelled);
         }
      }
      
      private function onPurchaseCompletedGiftCard(orderId:String, amount:Number, signedRequest:String, status:String) : void
      {
         var ao:AnalyticsObject = null;
         if(status == "completed")
         {
            ItemsInventory.instance.loadInventory(amount > 0);
            ao = new AnalyticsObject();
            ao.currency = "IVC";
            ao.iapType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            ao.screen = CoinShopPopup.ID;
            ao.amount = amount;
            ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_FB_GIFT_CARD;
            ao.itemType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            ao.receiptId = orderId;
            FacebookAnalyticsCollector.getInstance().trackInventoryGainedEvent(false,ao.itemType,ao.amount,ao.gainType,ao.screen,ao.level,ao.itemType,ao.iapType,ao.paidAmount,ao.currency,ao.receiptId);
            dispatchEvent(new RedeemItemEvent(RedeemItemEvent.ITEM_REDEEM_COMPLETED,amount));
         }
         this.dispose();
      }
      
      private function onPurchaseFailedGiftCard() : void
      {
         dispatchEvent(new RedeemItemEvent(RedeemItemEvent.ITEM_REDEEM_FAILED));
         this.dispose();
      }
      
      private function onPurchaseGiftCardUserCancelled() : void
      {
         dispatchEvent(new RedeemItemEvent(RedeemItemEvent.ITEM_REDEEM_USER_CANCELLED));
         this.dispose();
      }
      
      public function redeem() : void
      {
         throw new Error("This method should be overridden.");
      }
   }
}
