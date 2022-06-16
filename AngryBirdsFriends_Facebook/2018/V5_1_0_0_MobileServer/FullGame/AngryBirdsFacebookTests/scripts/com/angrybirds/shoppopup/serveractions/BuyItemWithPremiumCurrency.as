package com.angrybirds.shoppopup.serveractions
{
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.shoppopup.MobilePricePoint;
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.utils.ErrorCode;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class BuyItemWithPremiumCurrency extends BuyItem
   {
      
      public static const EVENT_PURCHASE_TIMER_COMPLETED:String = "PurchaseTimerCompleted";
      
      public static const PAYMENT_TYPE_CASH:int = 0;
      
      public static const PAYMENT_TYPE_MOBILE:int = 1;
      
      public static const PAYMENT_TYPE_REDEEM:int = 2;
       
      
      private var mPurchaseTimer:Timer;
      
      private var mPurchaceRequested:Boolean = false;
      
      private var mRefreshInventoryOnClose:Boolean = false;
      
      private var mOnPurchaseListenerAdded:Boolean;
      
      private var mOnPurchaseFailedListenerAdded:Boolean;
      
      private var mPurchaseType:int = 0;
      
      public function BuyItemWithPremiumCurrency(shopItem:ShopItem, pricePoint:PricePoint, purchaseType:int = 0, screen:String = "", level:String = "")
      {
         this.mPurchaseTimer = new Timer(3000,1);
         this.mPurchaseType = purchaseType;
         super(shopItem,pricePoint,screen,level);
      }
      
      override protected function loadBuyItems() : void
      {
         if(mBuyItemLoader)
         {
            return;
         }
         mBuyItemLoader = new ABFLoader();
         mBuyItemLoader.addEventListener(Event.COMPLETE,this.onBuyItemComplete);
         mBuyItemLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         mBuyItemLoader.load(urlReq);
      }
      
      private function purchaseFromFacebook(requestId:String = "") : void
      {
         var orderMethod:String = null;
         var trackingId:String = null;
         if(ExternalInterface.available)
         {
            if(!this.mPurchaceRequested)
            {
               if(!this.mOnPurchaseListenerAdded)
               {
                  ExternalInterfaceHandler.addCallback("purchaseComplete",this.onPurchaseCompleted);
                  this.mOnPurchaseListenerAdded = true;
               }
               if(!this.mOnPurchaseFailedListenerAdded)
               {
                  ExternalInterfaceHandler.addCallback("purchaseFailed",this.onPurchaseFailed);
                  this.mOnPurchaseFailedListenerAdded = true;
               }
               this.mRefreshInventoryOnClose = true;
               AngryBirdsBase.singleton.exitFullScreen();
               orderMethod = this.getOrderMethod();
               if(this.mPurchaseType == PAYMENT_TYPE_MOBILE)
               {
                  ExternalInterfaceHandler.performCall(orderMethod,(mPricePoint as MobilePricePoint).id,mPricePoint.totalQuantity,requestId);
               }
               else if(this.mPurchaseType == PAYMENT_TYPE_REDEEM)
               {
                  ExternalInterfaceHandler.performCall(orderMethod,requestId);
               }
               else
               {
                  if(!shopItem || !shopItem.ogo || !mPricePoint)
                  {
                     this.mPurchaseTimer.reset();
                     dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT_FAILED,false,false,null,3001));
                     return;
                  }
                  ExternalInterfaceHandler.performCall(orderMethod,shopItem.ogo + "_" + mPricePoint.totalQuantity + "_" + requestId);
               }
               this.mPurchaceRequested = true;
               this.mPurchaseTimer.reset();
               this.mPurchaseTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onPurchaseTimerComplete);
               this.mPurchaseTimer.start();
               trackingId = this.getTrackingId();
               FacebookGoogleAnalyticsTracker.trackShopProductBuySelected(trackingId,mPricePoint.totalQuantity);
            }
         }
      }
      
      private function getTrackingId() : String
      {
         var trackingId:* = shopItem.id;
         switch(this.mPurchaseType)
         {
            case PAYMENT_TYPE_CASH:
               trackingId = shopItem.id;
               break;
            case PAYMENT_TYPE_MOBILE:
               trackingId = shopItem.id + "_PayByMobile_";
               break;
            case PAYMENT_TYPE_REDEEM:
               trackingId = "_PayByGiftCard";
         }
         return trackingId;
      }
      
      private function getOrderMethod() : String
      {
         var orderMethod:String = "placeOrder";
         switch(this.mPurchaseType)
         {
            case PAYMENT_TYPE_CASH:
               orderMethod = "placeOrder";
               break;
            case PAYMENT_TYPE_MOBILE:
               orderMethod = "placeOrderMobile";
               break;
            case PAYMENT_TYPE_REDEEM:
               orderMethod = "placeOrderRedeemGiftCard";
         }
         return orderMethod;
      }
      
      override protected function onBuyItemComplete(e:Event) : void
      {
         var rawJSONData:Object = null;
         mBuyItemLoader.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = mBuyItemLoader.data;
            mOrderId = rawJSONData.toString();
            if(mOrderId)
            {
               this.purchaseFromFacebook(mOrderId);
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Error parsing JSON: " + mBuyItemLoader.data + "\nError code: " + ErrorCode.JSON_PARSE_ERROR));
         }
      }
      
      private function onPurchaseTimerComplete(e:TimerEvent) : void
      {
         if(this.mPurchaseTimer)
         {
            this.mPurchaseTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPurchaseTimerComplete);
         }
         this.mPurchaceRequested = false;
         dispatchEvent(new Event(EVENT_PURCHASE_TIMER_COMPLETED));
      }
      
      public function get purchaceRequested() : Boolean
      {
         return this.mPurchaceRequested;
      }
      
      public function set purchaceRequested(value:Boolean) : void
      {
         this.mPurchaceRequested = value;
      }
      
      public function get refreshInventoryOnClose() : Boolean
      {
         return this.mRefreshInventoryOnClose;
      }
      
      public function set refreshInventoryOnClose(value:Boolean) : void
      {
         this.mRefreshInventoryOnClose = value;
      }
      
      public function removeEventListeners() : void
      {
         ExternalInterfaceHandler.removeCallback("purchaseComplete",this.onPurchaseCompleted);
         ExternalInterfaceHandler.removeCallback("purchaseFailed",this.onPurchaseFailed);
         this.mOnPurchaseListenerAdded = false;
         this.mOnPurchaseFailedListenerAdded = false;
      }
      
      protected function onPurchaseCompleted(orderId:String, amount:Number, signedRequest:String, status:String) : void
      {
         mBuyItemLoader = new ABFLoader();
         mBuyItemLoader.addEventListener(Event.COMPLETE,this.onABFPurchaseComplete);
         mBuyItemLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/complete");
         var postData:Object = {"signed_request":signedRequest};
         urlReq.data = JSON.stringify(postData);
         urlReq.method = URLRequestMethod.POST;
         urlReq.contentType = "application/json";
         mBuyItemLoader.load(urlReq);
      }
      
      protected function onABFPurchaseComplete(event:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:AnalyticsObject = null;
         if(mBuyItemLoader)
         {
            mBuyItemLoader.removeEventListener(Event.COMPLETE,this.onABFPurchaseComplete);
         }
         try
         {
            rawJSONData = mBuyItemLoader.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Error parsing JSON: " + mBuyItemLoader.data + "\nError code: " + ErrorCode.JSON_PARSE_ERROR));
         }
         if(rawJSONData.errorCode)
         {
            if(rawJSONData.errorCode == 3001 || rawJSONData.errorCode == 3002)
            {
               dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT_FAILED,false,false,null,rawJSONData.errorCode));
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Error: [" + rawJSONData.errorCode + "], " + rawJSONData.errorMessage + " " + rawJSONData.additionalMessage));
            }
            return;
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            mErrorCode = rawJSONData.errorCode;
            mErrorMessage = rawJSONData.errorMessage;
         }
         else
         {
            if(pricePoint && shopItem)
            {
               ao = new AnalyticsObject();
               ao.itemType = shopItem.id;
               ao.paidAmount = pricePoint.price;
               ao.currency = shopItem.currencyID;
               ao.receiptId = mOrderId;
               ao.amount = pricePoint.totalQuantity;
               ao.screen = mScreen;
               ao.level = mLevel;
               ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_PURCHASE;
               aoArray = [ao];
            }
            changedItems = ItemsInventory.instance.injectInventoryUpdate(rawJSONData.items,false,aoArray);
            dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT,false,false,changedItems));
         }
         this.refreshInventoryOnClose = false;
         this.purchaceRequested = false;
         if(shopItem)
         {
            dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,false,false,changedItems));
         }
      }
      
      private function onPurchaseFailed() : void
      {
         dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT_FAILED));
         this.mPurchaceRequested = false;
         this.removeEventListeners();
      }
   }
}
