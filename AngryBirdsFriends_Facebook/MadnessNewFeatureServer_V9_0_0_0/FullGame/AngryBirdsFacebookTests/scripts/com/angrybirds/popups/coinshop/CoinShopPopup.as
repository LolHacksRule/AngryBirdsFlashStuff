package com.angrybirds.popups.coinshop
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.popups.requests.Country;
   import com.angrybirds.popups.requests.CountryItemRenderer;
   import com.angrybirds.salescampaign.SalesCampaignManager;
   import com.angrybirds.shoppopup.CheckMarkAnimation;
   import com.angrybirds.shoppopup.MobilePricePoint;
   import com.angrybirds.shoppopup.MobilePricePointItem;
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.angrybirds.shoppopup.events.MobilePricePointEvent;
   import com.angrybirds.shoppopup.events.RedeemItemEvent;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithPremiumCurrency;
   import com.angrybirds.shoppopup.serveractions.FacebookRedeemItem;
   import com.angrybirds.shoppopup.serveractions.IRedeemItem;
   import com.angrybirds.utils.FriendsUtil;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.factory.XMLFactory;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class CoinShopPopup extends AbstractPopup implements IWalletContainer, IVirtualPageView, INavigable
   {
      
      public static const ID:String = "CoinShopPopup";
      
      public static const NOT_ENOUGH_COINS:String = "Not enough coins!";
      
      public static const DEFAULT_TITLE:String = "Coin Shop";
      
      public static var smPurchaceRequested:Boolean = false;
      
      protected static const NUMBER_OF_COIN_BUTTONS_IN_ROW:int = 3;
      
      private static const NUMBER_OF_COIN_BUTTONS_IN_CCSHOP_ROW_1:uint = 2;
      
      protected static const COIN_ROW_WIDTH:int = 550;
      
      private static const PAY_BY_CREDIT_BUTTON_NAME:String = "Button_Pay0";
      
      private static const PAY_BY_MOBILE_BUTTON_NAME:String = "Button_Pay1";
      
      private static const REDEEM_GIFTCARD_BUTTON_NAME:String = "Button_Redeem";
      
      private static const SHOP_NAME:String = "In-app Shop Coins";
      
      private static var sCoinsPopupBin:Class = CoinShopPopup_sCoinsPopupBin;
      
      private static var sSelectedCountry:Country;
       
      
      private var mPurchaseTimer:Timer;
      
      private var mPreviousProduct:String;
      
      private var mPreviousProductCount:int;
      
      private var mRefreshInventoryOnClose:Boolean = false;
      
      private var mCoinShopButtons:Vector.<AbsCoinShopButton>;
      
      private var mOnPurchaseListenerAdded:Boolean = false;
      
      private var mOnPurchaseFailedListenerAdded:Boolean = false;
      
      private var mTitle:String = "";
      
      private var mWallet:Wallet;
      
      private var mCurrentButton:AbsCoinShopButton;
      
      private const TAB_PAY_BY_CC:int = 0;
      
      private const TAB_PAY_BY_MOBILE:int = 1;
      
      private const TAB_EARN_TRIAL_PAY:int = 2;
      
      private const TAB_REDEEM_GIFTCARD:int = 3;
      
      private var mActivateTab:int = 0;
      
      private var mCountryDropDownMenu:DropDownMenuScrollBar;
      
      private var countryDropDownContainer:MovieClip;
      
      private var mContainerPayByMobile:UIContainerRovio;
      
      private var mPricePointLoadingCompleted:Boolean;
      
      private var mShopListingLoadingCompleted:Boolean;
      
      private var mShopListingItems:ShopItem;
      
      private var mActivePricePoint:PricePoint;
      
      private var mActiveMobilePricePoint:MobilePricePoint;
      
      private var mLoader:ABFLoader;
      
      private var MAX_SCROLLER_HEIGHT:Number = 240;
      
      private var mBuyItemWithPremiumCurrency:BuyItemWithPremiumCurrency;
      
      private var mPreviousCurrency:String = "";
      
      private var mFacebookRedeemItem:IRedeemItem;
      
      private var mCanClose:Boolean = true;
      
      private var mCheckMarkAnimationPlaying:Boolean;
      
      private var mReloadinShopItems:Boolean;
      
      private var mSalesCampaignManager:SalesCampaignManager;
      
      public function CoinShopPopup(layerIndex:int, priority:int, title:String = "", xmlLayout:XML = null)
      {
         if(xmlLayout == null)
         {
            xmlLayout = XMLFactory.fromOctetStreamClass(sCoinsPopupBin);
         }
         super(layerIndex,priority,xmlLayout,ID);
         this.mTitle = title;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      override protected function init() : void
      {
         var payMobileButton:DisplayObject = null;
         mContainer.getItemByName("Container_CoinShopPopup").setVisibility(true);
         this.mContainerPayByMobile = mContainer.getItemByName("Container_Tab_PayByMobile") as UIContainerRovio;
         if(this.mContainerPayByMobile)
         {
            payMobileButton = mContainer.mClip.Container_CoinShopPopup[PAY_BY_MOBILE_BUTTON_NAME];
            payMobileButton.addEventListener(MouseEvent.CLICK,this.onPayByMobileClicked);
            this.countryDropDownContainer = this.mContainerPayByMobile.getItemByName("Container_Country").mClip;
            this.countryDropDownContainer.visible = false;
            (this.mContainerPayByMobile.getItemByName("TextField_ChooseCountry") as UITextFieldRovio).setText("Choose your country:");
            this.mContainerPayByMobile.getItemByName("Button_ActiveCountry").mClip.addEventListener(MouseEvent.CLICK,this.onActiveCountryClicked);
            this.mContainerPayByMobile.mClip.btnOK.visible = false;
            this.mContainerPayByMobile.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.onSelectCountryClicked);
         }
         this.mCoinShopButtons = new Vector.<AbsCoinShopButton>();
         if(mContainer.mClip.Container_CoinShopPopup.Button_ShopClose)
         {
            mContainer.mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.onClose);
         }
         if(this.mTitle == "")
         {
            this.mTitle = DEFAULT_TITLE;
         }
         mContainer.mClip.Container_CoinShopPopup.coinShopTitle.text = this.mTitle;
         if(mContainer.getItemByName(PAY_BY_CREDIT_BUTTON_NAME))
         {
            mContainer.getItemByName(PAY_BY_CREDIT_BUTTON_NAME).mClip.gotoAndStop("Active_Selected");
         }
         mContainer.mClip.Container_CoinShopPopup.coinShopTitle.text = this.mTitle;
         var payCButton:UIComponentRovio = mContainer.getItemByName(PAY_BY_CREDIT_BUTTON_NAME);
         if(payCButton)
         {
            payCButton.mClip.gotoAndStop("Active_Selected");
         }
         this.mPurchaseTimer = new Timer(2000,1);
         this.setTabButtonsMouseAvailability();
         this.mFacebookRedeemItem = new FacebookRedeemItem();
         (this.mFacebookRedeemItem as FacebookRedeemItem).addEventListener(RedeemItemEvent.ITEM_REDEEM_COMPLETED,this.onRedeemItemCompleted);
         (this.mFacebookRedeemItem as FacebookRedeemItem).addEventListener(RedeemItemEvent.ITEM_REDEEM_FAILED,this.onRedeemItemFailed);
         (this.mFacebookRedeemItem as FacebookRedeemItem).addEventListener(RedeemItemEvent.ITEM_REDEEM_USER_CANCELLED,this.onRedeemItemUserCancelled);
         this.mCheckMarkAnimationPlaying = false;
         this.mReloadinShopItems = false;
         this.mSalesCampaignManager = SalesCampaignManager.instance;
         this.mSalesCampaignManager.addEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
      }
      
      private function onSaleCampaignDataSet(e:Event) : void
      {
         this.setLoadingImage(true);
         if(!dataModel.shopListing.coinItems)
         {
            dataModel.shopListing.addEventListener(Event.COMPLETE,this.onShopListingComplete);
         }
         else
         {
            this.onShopListingComplete(null,dataModel.shopListing.coinItems);
         }
      }
      
      protected function onRedeemItemUserCancelled(event:RedeemItemEvent) : void
      {
      }
      
      protected function onRedeemItemFailed(event:RedeemItemEvent) : void
      {
      }
      
      protected function onRedeemItemCompleted(event:RedeemItemEvent) : void
      {
         FacebookGoogleAnalyticsTracker.trackShopProductRedeemCompleted("FacebookGiftCard",event.quantity);
      }
      
      private function onActiveCountryHandler(event:MouseEvent) : void
      {
      }
      
      protected function onActiveCountryClicked(event:Event) : void
      {
         this.setSelectedPayByMobileCountry(null);
         this.onPayByMobileClicked(null);
      }
      
      private function onSelectCountryClicked(event:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.setSelectedPayByMobileCountry(this.mCountryDropDownMenu.selectedData as Country);
      }
      
      private function setSelectedPayByMobileCountry(value:Country) : void
      {
         sSelectedCountry = value;
         if(sSelectedCountry)
         {
            this.countryDropDownContainer.visible = false;
            this.mContainerPayByMobile.mClip.btnOK.visible = false;
            this.updateMobilePaymentButtons();
            this.mContainerPayByMobile.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.mContainerPayByMobile.getItemByName("Button_ActiveCountry").setVisibility(true);
            this.mContainerPayByMobile.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "<b><u>Country: " + sSelectedCountry.name + "</u></b>";
         }
      }
      
      override protected function show(useFadeEffect:Boolean = true) : void
      {
         var button:AbsCoinShopButton = null;
         super.show(useFadeEffect);
         AngryBirdsEngine.pause();
         this.addWallet(new Wallet(this,false,true,true));
         this.mPricePointLoadingCompleted = false;
         this.mShopListingLoadingCompleted = false;
         this.setLoadingImage(true);
         for each(button in this.mCoinShopButtons)
         {
            button.setVisible(true);
            button.addEventListener(AbsCoinShopButton.EVENT_COIN_SHOP_BUTTON_BUY_CLICKED,this.onBuyClick);
         }
         if(this.mContainerPayByMobile)
         {
            if(!dataModel.mobilePricePoints.mobilePricePointItems)
            {
               dataModel.mobilePricePoints.addEventListener(Event.COMPLETE,this.onMobilePricePointsComplete);
               dataModel.mobilePricePoints.loadMobilePricePointItems();
               mContainer.getItemByName(PAY_BY_MOBILE_BUTTON_NAME).setVisibility(false);
            }
            else
            {
               this.onMobilePricePointsComplete(null);
            }
         }
         var payCCButton:DisplayObject = mContainer.mClip.Container_CoinShopPopup[PAY_BY_CREDIT_BUTTON_NAME];
         if(payCCButton)
         {
            payCCButton.visible = true;
            payCCButton.addEventListener(MouseEvent.CLICK,this.onPayByCCClicked);
         }
         var redeemButton:Object = mContainer.mClip.Container_CoinShopPopup[REDEEM_GIFTCARD_BUTTON_NAME];
         if(redeemButton)
         {
            redeemButton.addEventListener(MouseEvent.CLICK,this.onRedeemGiftCardClick);
         }
         if(!dataModel.shopListing.coinItems)
         {
            dataModel.shopListing.addEventListener(Event.COMPLETE,this.onShopListingComplete);
         }
         else
         {
            this.onShopListingComplete(null,dataModel.shopListing.coinItems);
         }
         FacebookGoogleAnalyticsTracker.trackPageView(this);
         FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("COIN_SHOP");
         smPurchaceRequested = false;
         this.mPurchaseTimer.stop();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "COUNTRY_DROPDOWN":
               if(this.mCountryDropDownMenu.isOpen)
               {
                  this.mCountryDropDownMenu.close();
               }
               else
               {
                  this.mCountryDropDownMenu.open();
               }
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
         if(this.mActivateTab == this.TAB_PAY_BY_CC && mContainer.getItemByName(PAY_BY_CREDIT_BUTTON_NAME))
         {
            mContainer.getItemByName(PAY_BY_CREDIT_BUTTON_NAME).mClip.gotoAndStop("Active_Selected");
         }
         else if(this.mActivateTab == this.TAB_PAY_BY_MOBILE && mContainer.getItemByName(PAY_BY_MOBILE_BUTTON_NAME))
         {
            mContainer.getItemByName(PAY_BY_MOBILE_BUTTON_NAME).mClip.gotoAndStop("Active_Selected");
         }
      }
      
      private function deSelectTabs() : void
      {
         if(mContainer.getItemByName(PAY_BY_CREDIT_BUTTON_NAME) && mContainer.getItemByName(PAY_BY_MOBILE_BUTTON_NAME))
         {
            mContainer.getItemByName(PAY_BY_CREDIT_BUTTON_NAME).mClip.gotoAndStop("Active_Up_Default");
            mContainer.getItemByName(PAY_BY_MOBILE_BUTTON_NAME).mClip.gotoAndStop("Active_Up_Default");
         }
         if(mContainer.getItemByName(REDEEM_GIFTCARD_BUTTON_NAME))
         {
            mContainer.getItemByName(REDEEM_GIFTCARD_BUTTON_NAME).mClip.gotoAndStop("Active_Up_Default");
         }
      }
      
      protected function onPayByCCClicked(event:Event) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.mContainerPayByMobile.setVisibility(false);
         this.mActivateTab = this.TAB_PAY_BY_CC;
         this.mCurrentButton = null;
         this.deSelectTabs();
         mContainer.getItemByName(PAY_BY_CREDIT_BUTTON_NAME).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.shopListing.coinItems)
         {
            dataModel.shopListing.addEventListener(Event.COMPLETE,this.onShopListingComplete);
         }
         else
         {
            this.onShopListingComplete(null,dataModel.shopListing.coinItems);
         }
         this.setTabButtonsMouseAvailability();
      }
      
      protected function onMobilePricePointsComplete(e:MobilePricePointEvent) : void
      {
         dataModel.mobilePricePoints.removeEventListener(Event.COMPLETE,this.onMobilePricePointsComplete);
         this.mPricePointLoadingCompleted = true;
         this.setLoadingImage(false);
         if(!dataModel.mobilePricePoints.countries() || dataModel.mobilePricePoints.countries().length == 0)
         {
            mContainer.getItemByName(PAY_BY_MOBILE_BUTTON_NAME).setVisibility(false);
            return;
         }
         mContainer.getItemByName(PAY_BY_MOBILE_BUTTON_NAME).setVisibility(true);
         if(this.mActivateTab == this.TAB_PAY_BY_MOBILE)
         {
            this.mContainerPayByMobile.setVisibility(true);
            mContainer.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            mContainer.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         if(e)
         {
            if(e.mobileCountry || dataModel.mobilePricePoints.countries().length == 1)
            {
               if(e.mobileCountry)
               {
                  this.setSelectedPayByMobileCountry(e.mobileCountry);
               }
               else
               {
                  this.setSelectedPayByMobileCountry(dataModel.mobilePricePoints.countries()[0]);
               }
               this.mContainerPayByMobile.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "";
            }
            else if(!e.predictedMobileCountry)
            {
            }
         }
         else if(dataModel.mobilePricePoints.countries().length == 1)
         {
            this.setSelectedPayByMobileCountry(dataModel.mobilePricePoints.countries()[0]);
         }
         else
         {
            this.setSelectedPayByMobileCountry(sSelectedCountry);
         }
         this.mCountryDropDownMenu = new DropDownMenuScrollBar(this.countryDropDownContainer,CountryItemRenderer,dataModel.mobilePricePoints.countries());
         this.mCountryDropDownMenu.scrollerWidth = 140;
         var scrollerHeight:Number = (this.mCountryDropDownMenu.data.length + 1) * this.mCountryDropDownMenu.valueRenderer.height;
         if(scrollerHeight > this.MAX_SCROLLER_HEIGHT)
         {
            scrollerHeight = this.MAX_SCROLLER_HEIGHT;
         }
         this.mCountryDropDownMenu.scrollerHeight = scrollerHeight;
         this.countryDropDownContainer.Country_DropDownContainer.height = scrollerHeight + 30;
         this.mCountryDropDownMenu.selectedIndex = 0;
         this.countryDropDownContainer.selectedValue.mouseChildren = false;
         this.countryDropDownContainer.selectedValue.mouseEnabled = false;
         this.countryDropDownContainer.arrow.mouseEnabled = false;
         this.mCountryDropDownMenu.addEventListener(Event.CLOSE,this.onDropDownClose);
         this.mCountryDropDownMenu.addEventListener(Event.OPEN,this.onDropDownOpen);
         this.onDropDownClose(null);
         this.mCountryDropDownMenu.addEventListener(Event.CHANGE,this.onCountryChanged);
      }
      
      protected function onDropDownOpen(event:Event) : void
      {
         this.countryDropDownContainer.Country_DropDownContainer.visible = true;
      }
      
      protected function onDropDownClose(event:Event) : void
      {
         this.countryDropDownContainer.Country_DropDownContainer.visible = false;
      }
      
      protected function onCountryChanged(event:Event) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.hidePaymentButtons();
         mContainer.mClip.Container_CoinShopPopup.Container_Tab_PayByMobile.btnOK.visible = true;
      }
      
      protected function onPayByMobileClicked(event:Event) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.mActivateTab = this.TAB_PAY_BY_MOBILE;
         this.mCurrentButton = null;
         this.deSelectTabs();
         mContainer.getItemByName(PAY_BY_MOBILE_BUTTON_NAME).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.mobilePricePoints.mobilePricePointItems)
         {
            this.mContainerPayByMobile.setVisibility(false);
         }
         else
         {
            this.mContainerPayByMobile.setVisibility(true);
         }
         mContainer.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
         mContainer.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         if(sSelectedCountry == null)
         {
            this.countryDropDownContainer.visible = true;
            this.mContainerPayByMobile.getItemByName("TextField_ChooseCountry").setVisibility(true);
            this.mContainerPayByMobile.mClip.btnOK.visible = true;
            this.mContainerPayByMobile.getItemByName("Button_ActiveCountry").setVisibility(false);
            this.hidePaymentButtons();
         }
         else
         {
            this.countryDropDownContainer.visible = false;
            this.mContainerPayByMobile.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.mContainerPayByMobile.mClip.btnOK.visible = false;
            this.mContainerPayByMobile.getItemByName("Button_ActiveCountry").setVisibility(dataModel.mobilePricePoints.countries().length > 1);
            this.updateMobilePaymentButtons();
         }
         this.setTabButtonsMouseAvailability();
      }
      
      private function hidePaymentButtons() : void
      {
         var button:AbsCoinShopButton = null;
         var rowMovieClip:MovieClip = null;
         for each(button in this.mCoinShopButtons)
         {
            button.setVisible(false);
         }
         rowMovieClip = mContainer.mClip.Container_CoinShopPopup.ContentUpperRow;
         rowMovieClip.visible = false;
         rowMovieClip = mContainer.mClip.Container_CoinShopPopup.ContentLowerRow;
         rowMovieClip.visible = false;
      }
      
      private function updateMobilePaymentButtons() : void
      {
         var previousCoinButton:AbsCoinShopButton = null;
         var rowMovieClip:MovieClip = null;
         var buttonInRowCounter:int = 0;
         var mobilePricePoint:MobilePricePoint = null;
         var coinButton:AbsCoinShopButton = null;
         if(sSelectedCountry == null)
         {
         }
         if(this.mShopListingItems == null)
         {
            this.hidePaymentButtons();
            return;
         }
         if(this.mCoinShopButtons && this.mCoinShopButtons.length > 0)
         {
            for each(previousCoinButton in this.mCoinShopButtons)
            {
               previousCoinButton.disable();
            }
         }
         var activePricePointItem:MobilePricePointItem = this.getMobilePricePointByCountryCode(sSelectedCountry.countryCode);
         var buttonIndex:int = 0;
         for(var rowCounter:int = 0; rowCounter < 2; rowCounter++)
         {
            rowMovieClip = rowCounter == 0 ? mContainer.mClip.Container_CoinShopPopup.ContentUpperRow : mContainer.mClip.Container_CoinShopPopup.ContentLowerRow;
            rowMovieClip.visible = false;
            for(buttonInRowCounter = 0; buttonInRowCounter < NUMBER_OF_COIN_BUTTONS_IN_ROW; buttonInRowCounter++)
            {
               if(!activePricePointItem)
               {
                  break;
               }
               mobilePricePoint = activePricePointItem.getPricePointByIndex(buttonIndex);
               if(!mobilePricePoint)
               {
                  break;
               }
               coinButton = new CoinShopButtonMedium(buttonIndex,mobilePricePoint,activePricePointItem.currencyID,"ButtonBuyBirdCoinAll",mobilePricePoint.id);
               coinButton.addEventListener(AbsCoinShopButton.EVENT_COIN_SHOP_BUTTON_BUY_CLICKED,this.onBuyClick);
               this.mCoinShopButtons.push(coinButton);
               rowMovieClip.visible = true;
               rowMovieClip.addChild(coinButton.getGraphics());
               coinButton.x = COIN_ROW_WIDTH / NUMBER_OF_COIN_BUTTONS_IN_ROW * buttonInRowCounter;
               buttonIndex++;
            }
         }
      }
      
      private function getMobilePricePointByCountryCode(country:String) : MobilePricePointItem
      {
         var activePricePointItem:MobilePricePointItem = null;
         var pricePointItem:MobilePricePointItem = null;
         for each(pricePointItem in dataModel.mobilePricePoints.mobilePricePointItems)
         {
            if(pricePointItem.countryCode == country)
            {
               activePricePointItem = pricePointItem;
               break;
            }
         }
         return activePricePointItem;
      }
      
      public function addWallet(wallet:Wallet) : void
      {
         this.mWallet = wallet;
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
      
      public function get walletContainer() : Sprite
      {
         return mContainer.mClip.Container_CoinShopPopup;
      }
      
      private function onPurchaseFailed() : void
      {
         this.mCanClose = true;
         this.mPreviousProduct = null;
         this.mPreviousProductCount = 0;
      }
      
      protected function onPurchaseCompleted(orderId:String, amount:Number, reloadShopListing:Boolean) : void
      {
         var checkmark:CheckMarkAnimation = null;
         var changedItems:Array = null;
         var obj:Object = null;
         var currencyID:String = null;
         this.mCanClose = true;
         this.mRefreshInventoryOnClose = false;
         this.mReloadinShopItems = reloadShopListing;
         if(this.mCurrentButton)
         {
            checkmark = new CheckMarkAnimation();
            this.mCurrentButton.getGraphics().addChild(checkmark);
            this.mCheckMarkAnimationPlaying = true;
            if(reloadShopListing)
            {
               checkmark.addEventListener(CheckMarkAnimation.EVENT_CHECKMARK_ANIMATION_COMPLETED,this.onCheckmarkAnimationCompletedReloadShop,false,0,true);
            }
            else
            {
               checkmark.addEventListener(CheckMarkAnimation.EVENT_CHECKMARK_ANIMATION_COMPLETED,this.onCheckmarkAnimationCompleted,false,0,true);
            }
         }
         else
         {
            this.mCheckMarkAnimationPlaying = false;
            if(reloadShopListing)
            {
               this.mShopListingLoadingCompleted = false;
               dataModel.shopListing.addEventListener(Event.COMPLETE,this.onShopListingComplete);
               dataModel.shopListing.loadStoreItems(true);
            }
         }
         if(this.mBuyItemWithPremiumCurrency)
         {
            this.mBuyItemWithPremiumCurrency.removeEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
            this.mBuyItemWithPremiumCurrency.removeEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
            this.mBuyItemWithPremiumCurrency = null;
         }
         smPurchaceRequested = false;
         if(this.mPreviousProduct)
         {
            changedItems = [obj];
            dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT,false,false,changedItems));
            obj = {};
            FacebookGoogleAnalyticsTracker.trackShopProductBuyCompleted(this.mPreviousProduct,this.mPreviousProductCount);
            FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
            currencyID = dataModel.shopListing && dataModel.shopListing.coinItems && dataModel.shopListing.coinItems.length > 0 && dataModel.shopListing.coinItems[0] && dataModel.shopListing.coinItems[0].currencyID ? dataModel.shopListing.coinItems[0].currencyID : this.mPreviousCurrency;
            if(currencyID && currencyID != "")
            {
               this.mPreviousCurrency = currencyID;
            }
            if(this.mActivePricePoint)
            {
               obj = {
                  "product":this.mPreviousProduct,
                  "pricePoint":this.mActivePricePoint.convertedPrice
               };
               FacebookGoogleAnalyticsTracker.trackTransaction(orderId,SHOP_NAME,this.mPreviousProduct,this.mPreviousProduct,this.mPreviousProductCount + " x",this.mActivePricePoint.convertedPrice,1,0);
            }
            else if(this.mActiveMobilePricePoint)
            {
               obj = {
                  "product":"VirtualCurrency_" + amount,
                  "pricePoint":this.mActiveMobilePricePoint.convertedPrice
               };
               FacebookGoogleAnalyticsTracker.trackTransaction(orderId,SHOP_NAME,this.mPreviousProduct,this.mPreviousProduct,this.mPreviousProductCount + " x",this.mActiveMobilePricePoint.convertedPrice,1,0);
            }
            this.mPreviousProduct = null;
            this.mPreviousProductCount = 0;
            this.mActivePricePoint = null;
            this.mActiveMobilePricePoint = null;
         }
      }
      
      private function onCheckmarkAnimationCompleted(e:Event) : void
      {
         this.mCheckMarkAnimationPlaying = false;
      }
      
      private function onCheckmarkAnimationCompletedReloadShop(e:Event) : void
      {
         this.mShopListingLoadingCompleted = false;
         dataModel.shopListing.addEventListener(Event.COMPLETE,this.onShopListingComplete);
         dataModel.shopListing.loadStoreItems(true);
         this.mCheckMarkAnimationPlaying = false;
         this.mReloadinShopItems = true;
      }
      
      private function getPricePoint(productName:String) : PricePoint
      {
         var shopItem:ShopItem = null;
         var i:int = 0;
         var pricePoint:PricePoint = null;
         var quantity:int = parseInt(productName.replace("VirtualCurrency_",""));
         if(dataModel.shopListing.coinItems)
         {
            for each(shopItem in dataModel.shopListing.coinItems)
            {
               if(shopItem.id == "VirtualCurrency")
               {
                  for(i = 0; i < shopItem.getPricePointCount(); i++)
                  {
                     pricePoint = shopItem.getPricePoint(i);
                     if(pricePoint.totalQuantity == quantity)
                     {
                        return pricePoint;
                     }
                  }
               }
            }
         }
         return null;
      }
      
      private function onShopListingComplete(e:Event = null, data:Vector.<ShopItem> = null) : void
      {
         if(e)
         {
            data = dataModel.shopListing.coinItems;
         }
         if(data.length > 0)
         {
            this.mShopListingItems = data[0];
         }
         else
         {
            this.mShopListingItems = null;
            this.hidePaymentButtons();
         }
         if(this.mShopListingItems && this.mShopListingItems.currencyID)
         {
            this.mPreviousCurrency = this.mShopListingItems.currencyID;
         }
         this.mShopListingLoadingCompleted = true;
         dataModel.shopListing.removeEventListener(Event.COMPLETE,this.onShopListingComplete);
         if(!this.mCheckMarkAnimationPlaying)
         {
            this.setLoadingImage(false);
         }
         this.mReloadinShopItems = false;
         if(dataModel.shopListing.coinItems && dataModel.shopListing.coinItems.length > 0)
         {
            FriendsUtil.markItemToBeSeen(dataModel.shopListing.coinItems[0]);
         }
      }
      
      public function injectData(coinsItem:ShopItem) : void
      {
         var previousCoinButton:AbsCoinShopButton = null;
         var coinButton1:AbsCoinShopButton = null;
         var coinButton:AbsCoinShopButton = null;
         var index:int = 0;
         if(this.mActivateTab != this.TAB_PAY_BY_CC)
         {
            return;
         }
         if(this.mCoinShopButtons && this.mCoinShopButtons.length > 0)
         {
            for each(previousCoinButton in this.mCoinShopButtons)
            {
               previousCoinButton.disable();
            }
         }
         this.mCoinShopButtons = new Vector.<AbsCoinShopButton>();
         var firstRowLimit:uint = Math.min(2,coinsItem.getPricePointCount());
         for(var buttonIndex:uint = 0; buttonIndex < firstRowLimit; )
         {
            coinButton1 = new CoinShopButtonLarge(buttonIndex,coinsItem.getPricePoint(buttonIndex),coinsItem.currencyID,"ButtonCoinshopNewLarge",coinsItem.id);
            coinButton1.addEventListener(AbsCoinShopButton.EVENT_COIN_SHOP_BUTTON_BUY_CLICKED,this.onBuyClick);
            this.mCoinShopButtons.push(coinButton1);
            buttonIndex++;
         }
         while(buttonIndex < coinsItem.getPricePointCount())
         {
            coinButton = new CoinShopButtonSmall(buttonIndex,coinsItem.getPricePoint(buttonIndex),coinsItem.currencyID,"ButtonCoinshopNewSmall",coinsItem.id);
            coinButton.addEventListener(AbsCoinShopButton.EVENT_COIN_SHOP_BUTTON_BUY_CLICKED,this.onBuyClick);
            this.mCoinShopButtons.push(coinButton);
            buttonIndex++;
         }
         var rowMC:MovieClip = mContainer.mClip.Container_CoinShopPopup.ContentUpperRow;
         rowMC.visible = false;
         for(var i:int = NUMBER_OF_COIN_BUTTONS_IN_CCSHOP_ROW_1 - 1; i >= 0; i--)
         {
            if(i < this.mCoinShopButtons.length)
            {
               rowMC.visible = true;
               rowMC.addChild(this.mCoinShopButtons[i].getGraphics());
               this.mCoinShopButtons[i].x = COIN_ROW_WIDTH / NUMBER_OF_COIN_BUTTONS_IN_CCSHOP_ROW_1 * i;
            }
         }
         rowMC = mContainer.mClip.Container_CoinShopPopup.ContentLowerRow;
         rowMC.visible = false;
         for(var j:int = NUMBER_OF_COIN_BUTTONS_IN_ROW - 1; j >= 0; j--)
         {
            index = NUMBER_OF_COIN_BUTTONS_IN_CCSHOP_ROW_1 + j;
            if(index < this.mCoinShopButtons.length)
            {
               rowMC.visible = true;
               rowMC.addChild(this.mCoinShopButtons[index].getGraphics());
               this.mCoinShopButtons[index].x = COIN_ROW_WIDTH / NUMBER_OF_COIN_BUTTONS_IN_ROW * j;
            }
         }
      }
      
      protected function onBuyClick(e:Event) : void
      {
         var shopItem:ShopItem = null;
         var activePricePointItem:MobilePricePointItem = null;
         if(!dataModel.shopListing.coinItems)
         {
            return;
         }
         this.mCanClose = false;
         var targetButton:AbsCoinShopButton = e.currentTarget as AbsCoinShopButton;
         var buttonIndex:int = targetButton.getButtonIndex();
         var itemName:String = dataModel.shopListing.coinItems[0].id;
         this.mCurrentButton = e.currentTarget as AbsCoinShopButton;
         switch(this.mActivateTab)
         {
            case this.TAB_PAY_BY_CC:
               shopItem = dataModel.shopListing.coinItems[0];
               this.mActivePricePoint = shopItem.getPricePoint(buttonIndex);
               this.mActivePricePoint.resetPriceConvertion();
               if(shopItem.currencyID != "USD")
               {
                  this.mLoader = new ABFLoader();
                  this.mLoader.addEventListener(Event.COMPLETE,this.onConversionLoaded);
                  this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onConversionLoadError);
                  this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onConversionLoadError);
                  this.mLoader.dataFormat = URLLoaderDataFormat.TEXT;
                  this.mLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + shopItem.currencyID + "&to=USD"));
               }
               else
               {
                  this.buyItem();
               }
               break;
            case this.TAB_PAY_BY_MOBILE:
               activePricePointItem = this.getMobilePricePointByCountryCode(sSelectedCountry.countryCode);
               this.mActiveMobilePricePoint = activePricePointItem.getPricePointByIndex(buttonIndex);
               this.mActiveMobilePricePoint.resetPriceConvertion();
               if(activePricePointItem.currencyID != "USD")
               {
                  this.mLoader = new ABFLoader();
                  this.mLoader.addEventListener(Event.COMPLETE,this.onConversionLoadedMobile);
                  this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onConversionLoadMobileError);
                  this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onConversionLoadMobileError);
                  this.mLoader.dataFormat = URLLoaderDataFormat.TEXT;
                  this.mLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + activePricePointItem.currencyID + "&to=USD"));
               }
               else
               {
                  this.buyItemMobile();
               }
         }
         FacebookGoogleAnalyticsTracker.trackPageView(this,itemName);
      }
      
      private function onConversionLoadError(e:Event) : void
      {
         this.buyItem();
      }
      
      private function onConversionLoaded(e:Event = null) : void
      {
         if(e && e.currentTarget && e.currentTarget.data != null && e.currentTarget.data != "" && this.mActivePricePoint)
         {
            if(this.mActivePricePoint)
            {
               this.mActivePricePoint.convertedPrice *= e.currentTarget.data;
            }
         }
         this.buyItem();
      }
      
      private function onConversionLoadMobileError(e:Event) : void
      {
         this.buyItemMobile();
      }
      
      private function onConversionLoadedMobile(e:Event = null) : void
      {
         if(e.currentTarget.data != null && e.currentTarget.data != "")
         {
            this.mActiveMobilePricePoint.convertedPrice *= e.currentTarget.data;
         }
         this.buyItemMobile();
      }
      
      protected function buyItemMobile() : void
      {
         if(!smPurchaceRequested)
         {
            this.mRefreshInventoryOnClose = true;
            this.mPreviousProductCount = this.mActiveMobilePricePoint.totalQuantity;
            this.mPreviousProduct = dataModel.shopListing.coinItems[0].id + "_PayByMobile_" + this.mActiveMobilePricePoint.totalQuantity + "_" + this.mActiveMobilePricePoint.countryID;
            AngryBirdsBase.singleton.exitFullScreen();
            smPurchaceRequested = true;
            if(this.mBuyItemWithPremiumCurrency)
            {
               this.mBuyItemWithPremiumCurrency.removeEventListeners();
               this.mBuyItemWithPremiumCurrency = null;
            }
            this.toggleButtons(false);
            this.mBuyItemWithPremiumCurrency = new BuyItemWithPremiumCurrency(dataModel.shopListing.coinItems[0],this.mActiveMobilePricePoint,BuyItemWithPremiumCurrency.PAYMENT_TYPE_MOBILE,ID);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemWithPremiumCurrency.EVENT_PURCHASE_TIMER_COMPLETED,this.onBuyItemTimerCompleted);
            FacebookGoogleAnalyticsTracker.trackShopProductBuySelected(this.mPreviousProduct,this.mPreviousProductCount);
         }
      }
      
      protected function onBuyItemWithPremiumCurrencyFailed(event:BuyItemEvent) : void
      {
         this.showWarningPopup(event.errorMessage,event.errorTitle,event.errorCode.toString());
         this.mCanClose = true;
         this.mRefreshInventoryOnClose = false;
         if(this.mBuyItemWithPremiumCurrency)
         {
            this.mBuyItemWithPremiumCurrency.removeEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
            this.mBuyItemWithPremiumCurrency = null;
         }
         smPurchaceRequested = false;
         this.mPreviousProduct = null;
         this.mPreviousProductCount = 0;
         this.mActivePricePoint = null;
         this.mActiveMobilePricePoint = null;
         this.toggleButtons(true);
      }
      
      protected function showWarningPopup(message:String, title:String, imageLabel:String) : void
      {
         var popup:WarningPopup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,message,title,imageLabel,false);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      private function onPurchaseTimerComplete(e:TimerEvent) : void
      {
         this.mPurchaseTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPurchaseTimerComplete);
         smPurchaceRequested = false;
      }
      
      protected function buyItem() : void
      {
         var itemToPurchase:ShopItem = null;
         if(!smPurchaceRequested && !this.mCheckMarkAnimationPlaying && !this.mReloadinShopItems && this.mShopListingLoadingCompleted)
         {
            this.mRefreshInventoryOnClose = true;
            if(this.mActivePricePoint)
            {
               this.mPreviousProductCount = this.mActivePricePoint.totalQuantity;
               this.mPreviousProduct = dataModel.shopListing.coinItems && dataModel.shopListing.coinItems.length > 0 && dataModel.shopListing.coinItems[0].ogo ? dataModel.shopListing.coinItems[0].ogo + "_" + this.mActivePricePoint.totalQuantity : "";
            }
            AngryBirdsBase.singleton.exitFullScreen();
            smPurchaceRequested = true;
            if(this.mBuyItemWithPremiumCurrency)
            {
               this.mBuyItemWithPremiumCurrency.removeEventListeners();
               this.mBuyItemWithPremiumCurrency = null;
            }
            itemToPurchase = dataModel.shopListing && dataModel.shopListing.coinItems && dataModel.shopListing.coinItems.length > 0 ? dataModel.shopListing.coinItems[0] : null;
            this.toggleButtons(false);
            this.mBuyItemWithPremiumCurrency = new BuyItemWithPremiumCurrency(itemToPurchase,this.mActivePricePoint,BuyItemWithPremiumCurrency.PAYMENT_TYPE_CASH,ID);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
            FacebookGoogleAnalyticsTracker.trackShopProductBuySelected(this.mPreviousProduct,this.mPreviousProductCount);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemWithPremiumCurrency.EVENT_PURCHASE_TIMER_COMPLETED,this.onBuyItemTimerCompleted);
         }
      }
      
      protected function onBuyWithPremiumCurrencyCompleted(e:Event) : void
      {
         var buyItem:BuyItemWithPremiumCurrency = e.currentTarget as BuyItemWithPremiumCurrency;
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
         this.onPurchaseCompleted(buyItem.orderId,buyItem.pricePoint.totalQuantity,buyItem.pricePoint.needsReloadAfterPurchase);
         this.toggleButtons(true);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         var button:AbsCoinShopButton = null;
         var redeemButton:Object = null;
         for each(button in this.mCoinShopButtons)
         {
            button.removeEventListener(AbsCoinShopButton.EVENT_COIN_SHOP_BUTTON_BUY_CLICKED,this.onBuyClick);
         }
         redeemButton = mContainer.mClip.Container_CoinShopPopup[REDEEM_GIFTCARD_BUTTON_NAME];
         if(redeemButton)
         {
            redeemButton.removeEventListener(MouseEvent.CLICK,this.onRedeemGiftCardClick);
         }
         super.hide(useTransition,waitForAnimationsToStop);
         this.mOnPurchaseListenerAdded = false;
         this.mOnPurchaseFailedListenerAdded = false;
         if(this.mRefreshInventoryOnClose)
         {
            this.mRefreshInventoryOnClose = false;
            ItemsInventory.instance.loadInventory();
         }
         dataModel.shopListing.removeEventListener(Event.COMPLETE,this.onShopListingComplete);
         dataModel.mobilePricePoints.removeEventListener(Event.COMPLETE,this.onMobilePricePointsComplete);
         if(this.mContainerPayByMobile && this.mContainerPayByMobile.mClip)
         {
            this.mContainerPayByMobile.setVisibility(false);
         }
         if(this.mFacebookRedeemItem)
         {
            (this.mFacebookRedeemItem as FacebookRedeemItem).removeEventListener(RedeemItemEvent.ITEM_REDEEM_COMPLETED,this.onRedeemItemCompleted);
            (this.mFacebookRedeemItem as FacebookRedeemItem).removeEventListener(RedeemItemEvent.ITEM_REDEEM_FAILED,this.onRedeemItemFailed);
            (this.mFacebookRedeemItem as FacebookRedeemItem).removeEventListener(RedeemItemEvent.ITEM_REDEEM_USER_CANCELLED,this.onRedeemItemUserCancelled);
            this.mFacebookRedeemItem = null;
         }
         this.mSalesCampaignManager.removeEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
         this.mSalesCampaignManager = null;
      }
      
      override public function dispose() : void
      {
         this.removeWallet(this.mWallet);
         super.dispose();
      }
      
      private function onClose(e:MouseEvent) : void
      {
         if(!this.mCanClose)
         {
            return;
         }
         close();
         dispatchEvent(new PopupEvent(PopupEvent.CLOSE,this));
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_SHOP;
      }
      
      public function getIdentifier() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_COINS;
      }
      
      public function getName() : String
      {
         return this.getCategoryName() + "-" + this.getIdentifier();
      }
      
      private function setTabButtonsMouseAvailability() : void
      {
         mContainer.getItemByName(PAY_BY_CREDIT_BUTTON_NAME).setEnabled(this.mActivateTab != this.TAB_PAY_BY_CC);
         mContainer.getItemByName(PAY_BY_MOBILE_BUTTON_NAME).setEnabled(this.mActivateTab != this.TAB_PAY_BY_MOBILE);
         mContainer.getItemByName(REDEEM_GIFTCARD_BUTTON_NAME).setEnabled(this.mActivateTab != this.TAB_REDEEM_GIFTCARD);
      }
      
      private function setLoadingImage(value:Boolean) : void
      {
         if(!mContainer)
         {
            return;
         }
         if(value)
         {
            mContainer.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = true;
            mContainer.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            mContainer.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         else if(this.mPricePointLoadingCompleted && this.mShopListingLoadingCompleted)
         {
            mContainer.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
            if(this.mShopListingItems)
            {
               this.injectData(this.mShopListingItems);
            }
         }
      }
      
      private function onRedeemGiftCardClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         mContainer.getItemByName(REDEEM_GIFTCARD_BUTTON_NAME).mClip.gotoAndStop("Active_Selected");
         this.mFacebookRedeemItem.initialize();
         this.mFacebookRedeemItem.redeem();
      }
      
      private function toggleButtons(enabled:Boolean) : void
      {
         var button:AbsCoinShopButton = null;
         for each(button in this.mCoinShopButtons)
         {
            button.setEnabled(enabled);
         }
      }
      
      public function handleUserCancelled() : void
      {
         this.mCanClose = true;
         smPurchaceRequested = false;
         this.toggleButtons(true);
      }
      
      public function handleOrderReceived() : void
      {
         smPurchaceRequested = false;
         this.mCanClose = true;
         this.toggleButtons(true);
      }
      
      private function onBuyItemTimerCompleted(e:Event) : void
      {
         smPurchaceRequested = false;
         this.mCanClose = true;
         this.toggleButtons(true);
      }
   }
}
