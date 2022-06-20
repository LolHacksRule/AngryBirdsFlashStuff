package com.angrybirds.popups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.salescampaign.SalesCampaignManager;
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.ShopTab;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.angrybirds.shoppopup.events.QuickPurchaseEvent;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithPremiumCurrency;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithVC;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.utils.FriendsUtil;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class QuickPurchaseSlingshotPopup extends AbstractPopup implements INavigable, IVirtualPageView, IWalletContainer
   {
      
      public static const ID:String = "QuickPurchaseSlingshotPopup";
      
      private static const SHOP_NAME:String = "Quick Purchase Slingshot";
       
      
      private var mPowerupId:String = "";
      
      private var mShopItem:ShopItem;
      
      private var mSlingshotDef:SlingShotDefinition;
      
      private var mIsVC:Boolean;
      
      private var mBuyItemWithPremiumCurrency:BuyItemWithPremiumCurrency;
      
      private var mPremiumCurrencyPurchaseTimer:Timer;
      
      private var mWallet:Wallet;
      
      private var mCurrentTotalCoins:Number;
      
      private var mSalesCampaignManager:SalesCampaignManager;
      
      public function QuickPurchaseSlingshotPopup(viewContainer:MovieClip, shopItem:ShopItem, slingshotDef:SlingShotDefinition)
      {
         super(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,ViewXMLLibrary.mLibrary.Views.PopupView_QuickPurchaseSlingshotPopup[0],ID);
         this.mShopItem = shopItem;
         this.mSlingshotDef = slingshotDef;
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         var offerMC:UIMovieClipRovio = null;
         super.show(useTransition);
         (mContainer.getItemByName("TextField_Header") as UITextFieldRovio).setText(this.mSlingshotDef.prettyName);
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         var iconId:String = "Icon_Slingshot_" + this.mSlingshotDef.identifier;
         var cls:Class = AssetCache.getAssetFromCache(iconId);
         var mc:MovieClip = new cls();
         mc.scaleX = mc.scaleY = mc.scaleY * 1.5;
         mc.y -= 20;
         (mContainer.getItemByName("Tab_icon_1") as UIMovieClipRovio).mClip.addChild(mc);
         (mContainer.getItemByName("Tab_quantity_1") as UITextFieldRovio).setText(ShopTab.MULTIPLIER_STRING + "1");
         var pp:PricePoint = this.mShopItem.getPricePoint(0);
         if(pp.campaignPrice > 0)
         {
            mContainer.mClip["Tab_button_1"].visible = false;
            this.setTabButtonText("" + pp.campaignPrice,"Tab_offer_button_1","" + pp.price);
            offerMC = mContainer.getItemByName("Tab_offer_1") as UIMovieClipRovio;
            (offerMC.mClip.getChildByName("Sale_Percentage") as TextField).text = pp.campaignSalePercentage + "%";
            mContainer.mClip["Tab_offer_button_1"].addEventListener(MouseEvent.CLICK,this.onBuyClick);
         }
         else
         {
            mContainer.mClip["Tab_offer_button_1"].visible = false;
            this.setTabButtonText("" + pp.price,"Tab_button_1");
            mContainer.mClip["Tab_button_1"].addEventListener(MouseEvent.CLICK,this.onBuyClick);
         }
         this.mIsVC = this.mShopItem.currencyID == "IVC";
         this.initWallet();
         this.enableBuyArea(true);
         FriendsUtil.markItemToBeSeen(this.mShopItem);
         this.mSalesCampaignManager = SalesCampaignManager.instance;
         this.mSalesCampaignManager.addEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
         FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("QUICK_PURCHASE_SLINGSHOT_POPUP");
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         mContainer.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.onCloseClick);
         mContainer.mClip["Tab_button_1"].removeEventListener(MouseEvent.CLICK,this.onBuyClick);
         mContainer.mClip["Tab_offer_button_1"].removeEventListener(MouseEvent.CLICK,this.onBuyClick);
         this.mSalesCampaignManager.removeEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
         this.mSalesCampaignManager = null;
         super.hide(useTransition,waitForAnimationsToStop);
      }
      
      private function initWallet() : void
      {
         this.addWallet(new Wallet(this,true,true));
         this.mWallet.walletClip.visible = true;
         this.mCurrentTotalCoins = DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel).virtualCurrencyModel.totalCoins;
         this.mWallet.setCoinsAmountText(this.mCurrentTotalCoins);
      }
      
      public function addWallet(wallet:Wallet) : void
      {
         this.mWallet = wallet;
      }
      
      public function get walletContainer() : Sprite
      {
         if(mContainer)
         {
            return mContainer.getItemByName("walletContainer").mClip;
         }
         return null;
      }
      
      public function removeWallet(wallet:Wallet) : void
      {
         wallet.dispose();
         wallet = null;
      }
      
      public function get wallet() : Wallet
      {
         return this.mWallet;
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         dispatchEvent(e);
         this.close();
      }
      
      private function onBuyClick(e:MouseEvent) : void
      {
         var pp:PricePoint = null;
         var price:Number = NaN;
         var buyItemVC:BuyItemWithVC = null;
         var coinsNeeded:int = 0;
         var coinWord:String = null;
         var popup:IPopup = null;
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.enableBuyArea(false);
         if(this.mIsVC)
         {
            pp = this.mShopItem.getPricePoint(0);
            price = pp.campaignPrice > 0 ? Number(pp.campaignPrice) : Number(pp.price);
            if((AngryBirdsBase.singleton.dataModel as DataModelFriends).virtualCurrencyModel.totalCoins < price)
            {
               coinsNeeded = price - (AngryBirdsBase.singleton.dataModel as DataModelFriends).virtualCurrencyModel.totalCoins;
               coinWord = coinsNeeded > 1 ? "coins" : "coin";
               popup = new NotEnoughCoinsPopup(mContainer.mClip,"Not enough coins!","You need " + coinsNeeded + " more " + coinWord + " to buy this. \nVisit the Coin Shop now!",PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP);
               if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(popup.id))
               {
                  AngryBirdsBase.singleton.popupManager.closePopupById(popup.id);
               }
               AngryBirdsBase.singleton.popupManager.openPopup(popup);
               return;
            }
            buyItemVC = new BuyItemWithVC(this.mShopItem,this.mShopItem.getPricePoint(0),ID,AngryBirdsEngine.smLevelMain.currentLevel.name);
            buyItemVC.addEventListener(BuyItemEvent.ITEM_BOUGHT,this.onBuyComplete);
            buyItemVC.addEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyWithVCFailed);
         }
         else
         {
            if(this.mBuyItemWithPremiumCurrency)
            {
               this.mBuyItemWithPremiumCurrency.removeEventListeners();
               this.mBuyItemWithPremiumCurrency = null;
            }
            this.mBuyItemWithPremiumCurrency = new BuyItemWithPremiumCurrency(this.mShopItem,this.mShopItem.getPricePoint(0),BuyItemWithPremiumCurrency.PAYMENT_TYPE_CASH,ID,AngryBirdsEngine.smLevelMain.currentLevel.name);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
            this.mPremiumCurrencyPurchaseTimer = new Timer(2000,1);
            this.mPremiumCurrencyPurchaseTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onPurchaseTimerComplete);
            this.mPremiumCurrencyPurchaseTimer.start();
         }
      }
      
      private function enableBuyArea(value:Boolean) : void
      {
         if(!mContainer)
         {
            return;
         }
         mContainer.mClip.mouseEnabled = value;
         mContainer.mClip.mouseChildren = value;
         mContainer.mClip.getChildByName("Tab_button_1").visible = value;
         mContainer.mClip.getChildByName("Tab_offer_button_1").visible = value;
         var pp:PricePoint = this.mShopItem.getPricePoint(0);
         if(pp)
         {
            if(pp.campaignPrice && pp.campaignPrice > 0)
            {
               mContainer.mClip.getChildByName("Tab_button_1").visible = false;
               mContainer.getItemByName("Tab_offer_1").visible = value;
            }
            else
            {
               mContainer.getItemByName("Tab_offer_1").visible = false;
               mContainer.mClip.getChildByName("Tab_offer_button_1").visible = false;
            }
         }
         else
         {
            mContainer.mClip.getChildByName("Tab_button_1").visible = false;
            mContainer.mClip.getChildByName("Tab_offer_button_1").visible = false;
         }
         (mContainer.getItemByName("MovieClip_LoadingImage") as UIMovieClipRovio).setVisibility(!value);
      }
      
      protected function onBuyWithVCFailed(event:BuyItemEvent) : void
      {
         ItemsInventory.instance.loadInventory();
         this.enableBuyArea(true);
         this.showWarningPopup(event.errorMessage,event.errorTitle,event.errorCode.toString());
      }
      
      protected function showWarningPopup(message:String = null, title:String = null, imageLabel:String = null) : void
      {
         var popup:WarningPopup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,message,title,imageLabel,false);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function onBuyComplete(e:BuyItemEvent) : void
      {
         var buyItem:BuyItemWithVC = e.currentTarget as BuyItemWithVC;
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT,this.onBuyComplete);
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         FacebookGoogleAnalyticsTracker.trackTransaction(buyItem.orderId,SHOP_NAME,buyItem.shopItem.id,buyItem.shopItem.id,buyItem.pricePoint.totalQuantity + " x",0,1,0);
         var price:Number = buyItem.pricePoint.campaignPrice > 0 ? Number(buyItem.pricePoint.campaignPrice) : Number(buyItem.pricePoint.price);
         ItemsInventory.instance.loadInventory();
         this.enableBuyArea(true);
         dispatchEvent(new QuickPurchaseEvent(QuickPurchaseEvent.PURCHASE_COMPLETED,buyItem.shopItem.id));
         close();
      }
      
      protected function onBuyWithPremiumCurrencyCompleted(e:BuyItemEvent) : void
      {
         var price:Number = NaN;
         var buyItem:BuyItemWithPremiumCurrency = e.currentTarget as BuyItemWithPremiumCurrency;
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
         if(e.changedItems && e.changedItems.length > 0)
         {
         }
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         FacebookGoogleAnalyticsTracker.trackTransaction(buyItem.orderId,SHOP_NAME,buyItem.shopItem.id,buyItem.shopItem.id,buyItem.pricePoint.totalQuantity + " x",0,1,0);
         var obj:Object = {};
         FacebookGoogleAnalyticsTracker.trackShopProductBuyCompleted(buyItem.shopItem.id,this.mBuyItemWithPremiumCurrency.pricePoint.totalQuantity);
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         if(buyItem.pricePoint)
         {
            price = buyItem.pricePoint.campaignPrice > 0 ? Number(buyItem.pricePoint.campaignPrice) : Number(buyItem.pricePoint.price);
            obj = {
               "product":buyItem.shopItem.id,
               "pricePoint":price
            };
            FacebookGoogleAnalyticsTracker.trackTransaction(buyItem.orderId,SHOP_NAME,buyItem.shopItem.id,buyItem.shopItem.id,price + " x",price,1,0);
         }
         if(this.mBuyItemWithPremiumCurrency)
         {
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
            this.mBuyItemWithPremiumCurrency = null;
         }
         buyItem.removeEventListeners();
         ItemsInventory.instance.loadInventory();
         dispatchEvent(new QuickPurchaseEvent(QuickPurchaseEvent.PURCHASE_COMPLETED,buyItem.shopItem.id));
         close();
      }
      
      protected function onBuyItemWithPremiumCurrencyFailed(event:BuyItemEvent) : void
      {
         this.showWarningPopup(event.errorMessage,event.errorTitle,event.errorCode.toString());
         if(this.mBuyItemWithPremiumCurrency)
         {
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
            this.mBuyItemWithPremiumCurrency = null;
         }
         this.enableBuyArea(true);
      }
      
      public function getName() : String
      {
         return ID;
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_SHOP;
      }
      
      public function getIdentifier() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_QUICKBUY_SHOP;
      }
      
      public function handleUserCancelled() : void
      {
         this.enableBuyArea(true);
      }
      
      private function onPurchaseTimerComplete(e:TimerEvent) : void
      {
         if(this.mPremiumCurrencyPurchaseTimer)
         {
            this.mPremiumCurrencyPurchaseTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPurchaseTimerComplete);
         }
         this.enableBuyArea(true);
      }
      
      private function onSaleCampaignDataSet(e:Event) : void
      {
         this.enableBuyArea(false);
         close();
      }
      
      private function setTabButtonText(text:String, buttonName:String, secondText:String = null) : void
      {
         var stateDoc:DisplayObjectContainer = mContainer.mClip[buttonName].upState as DisplayObjectContainer;
         var textFieldCounter:int = 1;
         for(var i:int = 0; i < stateDoc.numChildren; i++)
         {
            if(stateDoc.getChildAt(i) is TextField)
            {
               if(textFieldCounter == 1)
               {
                  (stateDoc.getChildAt(i) as TextField).text = text;
                  if(!secondText)
                  {
                     break;
                  }
               }
               else if(textFieldCounter == 2)
               {
                  (stateDoc.getChildAt(i) as TextField).text = secondText;
                  break;
               }
               textFieldCounter++;
            }
         }
         textFieldCounter = 1;
         stateDoc = mContainer.mClip[buttonName].overState as DisplayObjectContainer;
         for(i = 0; i < stateDoc.numChildren; i++)
         {
            if(stateDoc.getChildAt(i) is TextField)
            {
               if(textFieldCounter == 1)
               {
                  (stateDoc.getChildAt(i) as TextField).text = text;
                  if(!secondText)
                  {
                     break;
                  }
               }
               else if(textFieldCounter == 2)
               {
                  (stateDoc.getChildAt(i) as TextField).text = secondText;
                  break;
               }
               textFieldCounter++;
            }
         }
         textFieldCounter = 1;
         stateDoc = mContainer.mClip[buttonName].downState as DisplayObjectContainer;
         for(i = 0; i < stateDoc.numChildren; i++)
         {
            if(stateDoc.getChildAt(i) is TextField)
            {
               if(textFieldCounter == 1)
               {
                  (stateDoc.getChildAt(i) as TextField).text = text;
                  if(!secondText)
                  {
                     break;
                  }
               }
               else if(textFieldCounter == 2)
               {
                  (stateDoc.getChildAt(i) as TextField).text = secondText;
                  break;
               }
               textFieldCounter++;
            }
         }
      }
   }
}
