package com.angrybirds.shoppopup
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.salescampaign.SalesCampaignManager;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithPremiumCurrency;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class NonSpenderAutoSalePopup extends AbstractPopup implements IVirtualPageView
   {
      
      public static const ID:String = "PERSONALIZED_OFFER";
      
      private static var smOfferStillAvailable:Boolean = true;
       
      
      private var mSalesCampaignManager:SalesCampaignManager;
      
      private var mTimeLeftTextField:TextField;
      
      private var mBuyItemWithPremiumCurrency:BuyItemWithPremiumCurrency;
      
      private var mPremiumCurrencyPurchaseTimer:Timer;
      
      public function NonSpenderAutoSalePopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_NonSpenderAutoSale[0],ID);
         this.mSalesCampaignManager = SalesCampaignManager.instance;
         this.mSalesCampaignManager.addEventListener(SalesCampaignManager.EVENT_UPDATE_WALLET,this.update);
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      public static function isOfferStillAvailable() : Boolean
      {
         return smOfferStillAvailable;
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_SHOP;
      }
      
      public function getIdentifier() : String
      {
         return ID;
      }
      
      override protected function init() : void
      {
         super.init();
         this.loadData();
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         this.mTimeLeftTextField = mContainer.mClip.Textfield_TimeLeft as TextField;
      }
      
      private function setLoadingImage(value:Boolean) : void
      {
         if(!mContainer)
         {
            return;
         }
         mContainer.mClip.mouseEnabled = !value;
         mContainer.mClip.mouseChildren = !value;
         mContainer.getItemByName("btnBuy").visible = !value;
         mContainer.getItemByName("ItemsImage").visible = !value;
         mContainer.getItemByName("DiscountImage").visible = !value;
         mContainer.mClip.AngryBirdLoader.visible = value;
      }
      
      private function loadData() : void
      {
         this.setLoadingImage(true);
         if(!dataModel.shopListing.targetedSaleBundle)
         {
            ItemsInventory.instance.loadInventory();
            dataModel.shopListing.addEventListener(Event.COMPLETE,this.onShopListingComplete);
         }
         else
         {
            this.onShopListingComplete(null);
         }
      }
      
      private function onShopListingComplete(e:Event = null) : void
      {
         if(!dataModel.shopListing.targetedSaleBundle || dataModel.shopListing.targetedSaleBundle.length == 0 || !smOfferStillAvailable)
         {
            mContainer.mClip.mouseEnabled = true;
            mContainer.mClip.mouseChildren = true;
            return;
         }
         var data:ShopItem = dataModel.shopListing.targetedSaleBundle[0];
         var pp:PricePoint = data.getPricePoint(0);
         this.setLoadingImage(false);
         var buyButton:UIButtonRovio = mContainer.getItemByName("btnBuy") as UIButtonRovio;
         (buyButton.mClip.getChildByName("NormalPrice") as TextField).text = dataModel.currencyModel.getPriceTag(pp.price,true,"",data.currencyID);
         (buyButton.mClip.getChildByName("CampaignPrice") as TextField).text = dataModel.currencyModel.getPriceTag(pp.campaignPrice,true,"",data.currencyID);
         var discountImage:UIMovieClipRovio = mContainer.getItemByName("DiscountImage") as UIMovieClipRovio;
         (discountImage.mClip.getChildByName("DiscountPercentage") as TextField).text = pp.campaignSalePercentage + "%";
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName.toUpperCase())
         {
            case "BUY":
               this.setLoadingImage(true);
               AngryBirdsBase.singleton.exitFullScreen();
               if(this.mBuyItemWithPremiumCurrency)
               {
                  this.mBuyItemWithPremiumCurrency.removeEventListeners();
                  this.mBuyItemWithPremiumCurrency = null;
               }
               this.mBuyItemWithPremiumCurrency = new BuyItemWithPremiumCurrency(dataModel.shopListing.targetedSaleBundle[0],dataModel.shopListing.targetedSaleBundle[0].getPricePoint(0),BuyItemWithPremiumCurrency.PAYMENT_TYPE_CASH,ID);
               this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
               this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
               this.mPremiumCurrencyPurchaseTimer = new Timer(3000,1);
               this.mPremiumCurrencyPurchaseTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onPurchaseTimerComplete);
               this.mPremiumCurrencyPurchaseTimer.start();
         }
      }
      
      private function update(e:Event) : void
      {
         var timeString:String = null;
         if(this.mSalesCampaignManager)
         {
            if(!this.mSalesCampaignManager.isCampaignActive())
            {
               dispatchEvent(new PopupEvent(PopupEvent.CLOSE,this));
               return;
            }
            if(this.mTimeLeftTextField)
            {
               timeString = this.mSalesCampaignManager.getSaleTimeLeftAsPrettyString();
               if(timeString != this.mTimeLeftTextField.text)
               {
                  this.mTimeLeftTextField.text = timeString;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.mSalesCampaignManager)
         {
            this.mSalesCampaignManager.removeEventListener(SalesCampaignManager.EVENT_UPDATE_WALLET,this.update);
            this.mSalesCampaignManager = null;
         }
         if(this.mPremiumCurrencyPurchaseTimer)
         {
            this.mPremiumCurrencyPurchaseTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPurchaseTimerComplete);
            this.mPremiumCurrencyPurchaseTimer = null;
         }
         if(this.mBuyItemWithPremiumCurrency)
         {
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
            this.mBuyItemWithPremiumCurrency = null;
         }
      }
      
      protected function onBuyWithPremiumCurrencyCompleted(e:BuyItemEvent) : void
      {
         var price:Number = NaN;
         smOfferStillAvailable = false;
         var buyItem:BuyItemWithPremiumCurrency = e.currentTarget as BuyItemWithPremiumCurrency;
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
         if(this.mBuyItemWithPremiumCurrency)
         {
            FacebookGoogleAnalyticsTracker.trackShopProductBuyCompleted(buyItem.shopItem.id,this.mBuyItemWithPremiumCurrency.pricePoint.totalQuantity);
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
            this.mBuyItemWithPremiumCurrency = null;
         }
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         if(buyItem.pricePoint)
         {
            price = buyItem.pricePoint.campaignPrice > 0 ? Number(buyItem.pricePoint.campaignPrice) : Number(buyItem.pricePoint.price);
            FacebookGoogleAnalyticsTracker.trackTransaction(buyItem.orderId,ID,buyItem.shopItem.id,buyItem.shopItem.id,price + " x",price,1,0);
         }
         buyItem.removeEventListeners();
         dataModel.shopListing.loadStoreItems(true);
         ItemsInventory.instance.loadInventory();
         if(this.mSalesCampaignManager)
         {
            this.mSalesCampaignManager.stopCampaign();
         }
         dispatchEvent(new PopupEvent(PopupEvent.CLOSE,this));
      }
      
      protected function onBuyItemWithPremiumCurrencyFailed(event:BuyItemEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,event.errorMessage,event.errorTitle,event.errorCode.toString(),false));
         if(this.mBuyItemWithPremiumCurrency)
         {
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
            this.mBuyItemWithPremiumCurrency = null;
         }
         this.setLoadingImage(false);
      }
      
      private function onPurchaseTimerComplete(e:TimerEvent) : void
      {
         if(this.mPremiumCurrencyPurchaseTimer)
         {
            this.mPremiumCurrencyPurchaseTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPurchaseTimerComplete);
            this.mPremiumCurrencyPurchaseTimer = null;
         }
         this.setLoadingImage(false);
      }
   }
}
