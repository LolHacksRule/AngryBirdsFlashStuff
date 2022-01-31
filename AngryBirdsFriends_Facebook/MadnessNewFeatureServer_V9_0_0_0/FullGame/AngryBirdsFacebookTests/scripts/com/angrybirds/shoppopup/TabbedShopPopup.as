package com.angrybirds.shoppopup
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.engine.TunerFriends;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.ShopItemInfoPopup;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.popups.coinshop.CoinShopPopup;
   import com.angrybirds.powerups.PowerupDefinition;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.salescampaign.SalesCampaignManager;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.angrybirds.shoppopup.events.RedeemItemEvent;
   import com.angrybirds.shoppopup.events.ShopTabEvent;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithPremiumCurrency;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithVC;
   import com.angrybirds.shoppopup.serveractions.FacebookRedeemItem;
   import com.angrybirds.shoppopup.serveractions.IRedeemItem;
   import com.angrybirds.shoppopup.serveractions.ShopListing;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.utils.FriendsUtil;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.assets.AssetCache;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class TabbedShopPopup extends AbstractPopup implements IVirtualPageView, IWalletContainer, INavigable
   {
      
      public static const ID:String = "TabbedShopPopup";
      
      private static const NEW_TAG_OFFSET_X:int = -35;
      
      private static const NEW_TAG_OFFSET_Y:int = -15;
      
      private static const SHOP_NAME:String = "In-app Shop";
      
      public static const UI_SOUNDS_CHANNEL:String = "uiSoundsChannel";
      
      private static const TOTAL_TABS:int = 8;
      
      public static const SHOP_ID_SLINGSHOT:String = "SLINGSHOT";
      
      public static const SHOP_ID_GENERAL:String = "GENERAL";
      
      public static const SHOP_ID_SPECIAL:String = "SPECIAL";
      
      private static var sHasAddedEventListeners:Boolean;
      
      public static const SHOP_SLINGSHOT_FIRST_TAB:String = "SlingshotFirstTab";
       
      
      public var mWallet:Wallet;
      
      private var POWERUP_PACK:ShopTab;
      
      private var SUPER_SEEDS:ShopTab;
      
      private var SLING_SCOPE:ShopTab;
      
      private var KING_SLING:ShopTab;
      
      private var BIRD_QUAKE:ShopTab;
      
      private var BOOMBOX:ShopTab;
      
      private var WINGMAN:ShopTab;
      
      private var MIGHTY_EAGLE:ShopTab;
      
      private var mAllShopTabs:Array;
      
      private var mCurrentShopTab:ShopTab;
      
      private var mPreviousShopItemId:String = "";
      
      private var mTabToShow:String;
      
      private var mCheckMarkPosition:Point;
      
      private var mContainerBranded:UIContainerRovio;
      
      private var mContainerSlingshots:UIContainerRovio;
      
      private var mContainerPowerups:UIContainerRovio;
      
      private var mContainerShopSelectionButtons:UIContainerRovio;
      
      private var mContainerShopSelectionExtras:UIContainerRovio;
      
      private var mButtonBrandedBundle:MovieClip;
      
      private var mPowerupPackIcon:MovieClip;
      
      private var mShopType:String;
      
      private var mBuyItemWithPremiumCurrency:BuyItemWithPremiumCurrency;
      
      private var mPremiumPurchaseItemRefreshTimer:Timer;
      
      private var shopItemInfoPopup:ShopItemInfoPopup;
      
      private var mShowBackButton:Boolean = true;
      
      private var SHOP_TABS_INITIALZED:String = "ShopTabsInitialzed";
      
      private var mFacebookRedeemItem:IRedeemItem;
      
      private var mAddedStoreObservationIcons:Dictionary;
      
      private var mBuyAreaDisabledTimer:Timer;
      
      private var mFromWallet:Boolean;
      
      private var mSalesCampaignManager:SalesCampaignManager;
      
      private var mInitTabCounter:int;
      
      public function TabbedShopPopup(layerIndex:int, priority:int, tabToShow:String = "", shopType:String = "GENERAL", fromWallet:Boolean = false)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_TabbedShop[0],ID);
         this.mShopType = shopType;
         this.mTabToShow = tabToShow;
         this.mFromWallet = fromWallet;
         addEventListener(this.SHOP_TABS_INITIALZED,this.onAllShopTabsLoaded);
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      override protected function init() : void
      {
         var tabMovieClip:MovieClip = null;
         super.init();
         this.setLoadingImage(true);
         this.mContainerBranded = mContainer.getItemByName("Container_Shop_Branded") as UIContainerRovio;
         this.mContainerSlingshots = mContainer.getItemByName("Container_Shop_Slingshots") as UIContainerRovio;
         this.mContainerPowerups = mContainer.getItemByName("Container_TabbedShopPopup") as UIContainerRovio;
         this.mContainerShopSelectionButtons = mContainer.getItemByName("Container_Shop_Selection_Buttons") as UIContainerRovio;
         this.mContainerShopSelectionExtras = mContainer.getItemByName("Container_Shop_Selection_Extras") as UIContainerRovio;
         mContainer.mClip.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         ExternalInterfaceHandler.addCallback("handleUserCancelledOrder",this.onUserCancelledOrder);
         ExternalInterfaceHandler.addCallback("purchaseFailed",this.onPurchaseFailed);
         if(!sHasAddedEventListeners)
         {
            sHasAddedEventListeners = true;
         }
         ItemsInventory.instance.addEventListener(Event.CHANGE,this.onInventoryCountUpdated);
         for(var i:int = 0; i < TOTAL_TABS; i++)
         {
            tabMovieClip = mContainer.mClip.Container_TabbedShopPopup["powerupTab" + i];
            if(tabMovieClip)
            {
               tabMovieClip.gotoAndStop("Normal");
            }
         }
         this.loadData();
         this.mFacebookRedeemItem = new FacebookRedeemItem();
         (this.mFacebookRedeemItem as FacebookRedeemItem).addEventListener(RedeemItemEvent.ITEM_REDEEM_COMPLETED,this.onRedeemItemCompleted);
         (this.mFacebookRedeemItem as FacebookRedeemItem).addEventListener(RedeemItemEvent.ITEM_REDEEM_FAILED,this.onRedeemItemFailed);
         (this.mFacebookRedeemItem as FacebookRedeemItem).addEventListener(RedeemItemEvent.ITEM_REDEEM_USER_CANCELLED,this.onRedeemItemUserCancelled);
         if(this.mTabToShow == "")
         {
            FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("SHOP_MAIN",this.mFromWallet);
         }
         this.mSalesCampaignManager = SalesCampaignManager.instance;
         this.mSalesCampaignManager.addEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
      }
      
      private function onSaleCampaignDataSet(e:Event) : void
      {
         var shopTab:ShopTab = null;
         this.setLoadingImage(true);
         for each(shopTab in this.mAllShopTabs)
         {
            shopTab.dispose();
         }
         this.loadData();
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
      
      private function onPurchaseFailed() : void
      {
      }
      
      private function onUserCancelledOrder() : void
      {
      }
      
      private function loadData() : void
      {
         if(!dataModel.shopListing.powerupItems)
         {
            ItemsInventory.instance.loadInventory();
            dataModel.shopListing.addEventListener(Event.COMPLETE,this.onShopListingComplete);
         }
         else
         {
            this.onShopListingComplete(null,dataModel.shopListing.powerupItems);
         }
      }
      
      protected function onAddCoinsClicked(event:Event) : void
      {
      }
      
      protected function onBrandedBundleClicked(event:Event) : void
      {
         var shopTabEvent:ShopTabEvent = null;
         var shopItem:ShopItem = this.getShopItemByID("BrandedShopBundle",dataModel.shopListing.specialItems);
         if(shopItem)
         {
            shopTabEvent = new ShopTabEvent(ShopTabEvent.ITEM_BUY,TabbedShopPopup.SHOP_ID_SPECIAL,false,false,shopItem,shopItem.getPricePoint(0));
            this.onItemBuy(shopTabEvent);
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var popup:CoinShopPopup = null;
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "SHOP_BRANDED":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.toggleShopBranded(true);
               FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("SHOP_BRANDED");
               break;
            case "SHOP_SLINGSHOTS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.toggleShopSlingshots(true);
               FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("SHOP_SLINGSHOTS");
               break;
            case "SHOP_POWERUPS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.toggleShopPowerups(true);
               FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("SHOP_POWERUPS");
               break;
            case "SHOP_VC":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               popup = new CoinShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(popup);
               break;
            case "BACK":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               this.toggleShopSelection(true);
               break;
            case "INFO":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.showInfoPopup();
               break;
            case "REDEEM":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.redeemItem();
               break;
            case "EARNCOINS":
               SoundEngine.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.exitFullScreen();
               ExternalInterfaceHandler.performCall("earnCredits");
         }
      }
      
      private function showInfoPopup() : void
      {
         var powerupDefinition:PowerupDefinition = PowerupType.getPowerupByID(this.mTabToShow);
         var header:String = "";
         var description:String = "";
         if(powerupDefinition)
         {
            header = powerupDefinition.prettyName;
            description = powerupDefinition.description;
         }
         if(!powerupDefinition)
         {
            if(this.mTabToShow == PowerupType.sPowerupBundle.identifier)
            {
               header = PowerupType.sPowerupBundle.prettyName;
               description = PowerupType.sPowerupBundle.description;
            }
            switch(this.mShopType)
            {
               case SHOP_ID_SLINGSHOT:
                  header = "Slingshots";
                  description = "Slingshots are permanent items that can be used in any level and changed between shots. Buy once, keep forever!";
                  break;
               case SHOP_ID_SPECIAL:
                  header = "Specials";
                  description = "These items are only available for a limited time!";
            }
         }
         this.shopItemInfoPopup = new ShopItemInfoPopup(mContainer.mClip,header,description,PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.shopItemInfoPopup);
      }
      
      private function toggleShopSelection(visible:Boolean) : void
      {
         this.mTabToShow = "";
         this.mContainerShopSelectionButtons.setVisibility(visible);
         this.mContainerShopSelectionExtras.setVisibility(this.mContainerShopSelectionButtons.visible);
         this.mContainerBranded.setVisibility(!visible);
         this.mContainerSlingshots.setVisibility(!visible);
         this.mContainerPowerups.setVisibility(!visible);
         if(visible)
         {
            this.setStoreObservationIcons();
         }
      }
      
      private function toggleShopBranded(visible:Boolean, tabToShow:String = "") : void
      {
         if(tabToShow == "")
         {
            this.mTabToShow = this.getSpecialTab(0);
         }
         this.mShopType = SHOP_ID_SPECIAL;
         this.openTabByString(this.mTabToShow,SHOP_ID_SPECIAL);
         this.mContainerShopSelectionButtons.setVisibility(!visible);
         this.mContainerShopSelectionExtras.setVisibility(this.mContainerShopSelectionButtons.visible);
         this.mContainerBranded.setVisibility(visible);
         this.mContainerSlingshots.setVisibility(!visible);
         this.mContainerPowerups.setVisibility(!visible);
      }
      
      private function getSpecialTab(index:int) : String
      {
         var shopTab:ShopTab = null;
         var brandedShopTabs:Array = [];
         var tabName:String = "";
         for each(shopTab in this.mAllShopTabs)
         {
            if(shopTab is BrandedShopTab)
            {
               brandedShopTabs.push(shopTab);
            }
         }
         if(brandedShopTabs.length > index && brandedShopTabs[index])
         {
            tabName = BrandedShopTab(brandedShopTabs[index]).shopItem.id;
         }
         return tabName;
      }
      
      private function toggleShopSlingshots(visible:Boolean, tabToShow:String = "") : void
      {
         if(tabToShow == "")
         {
            tabToShow = "GoldenSling";
         }
         else if(tabToShow == SHOP_SLINGSHOT_FIRST_TAB)
         {
            if(this.slingshotTabs().length > 0)
            {
               tabToShow = (this.slingshotTabs()[0] as SlingshotShopTab).shopItem.id;
            }
         }
         this.mTabToShow = tabToShow;
         this.mShopType = SHOP_ID_SLINGSHOT;
         this.openTabByString(this.mTabToShow,SHOP_ID_SLINGSHOT);
         this.mContainerShopSelectionButtons.setVisibility(!visible);
         this.mContainerShopSelectionExtras.setVisibility(this.mContainerShopSelectionButtons.visible);
         this.mContainerBranded.setVisibility(!visible);
         this.mContainerSlingshots.setVisibility(visible);
         this.mContainerPowerups.setVisibility(!visible);
      }
      
      private function toggleShopPowerups(visible:Boolean, tabToShow:String = "ExtraBird") : void
      {
         this.mTabToShow = tabToShow;
         this.mShopType = SHOP_ID_GENERAL;
         this.openTabByString(this.mTabToShow);
         this.mContainerShopSelectionButtons.setVisibility(!visible);
         this.mContainerShopSelectionExtras.setVisibility(this.mContainerShopSelectionButtons.visible);
         this.mContainerBranded.setVisibility(!visible);
         this.mContainerSlingshots.setVisibility(!visible);
         this.mContainerPowerups.setVisibility(visible);
         this.mContainerPowerups.getItemByName("Button_Back").setVisibility(this.mShowBackButton);
      }
      
      private function onShopListingComplete(e:Event = null, data:Vector.<ShopItem> = null) : void
      {
         var shop:Object = null;
         var shopButton:UIButtonRovio = null;
         this.setLoadingImage(false);
         if(e)
         {
            data = dataModel.shopListing.powerupItems;
         }
         this.populateStore(data);
         var showOnlyPowerups:Boolean = true;
         if(dataModel.shopListing.specialItems && dataModel.shopListing.specialItems.length > 0)
         {
            this.populateBrandedStore(dataModel.shopListing.specialItems);
            showOnlyPowerups = false;
         }
         if(dataModel.shopListing.slingshots && dataModel.shopListing.slingshots.length > 0)
         {
            this.populateSlingshotStore(dataModel.shopListing.slingshots);
            showOnlyPowerups = false;
         }
         dispatchEvent(new Event(this.SHOP_TABS_INITIALZED));
         var buttonSpecial:UIButtonRovio = this.mContainerShopSelectionButtons.getItemByName("Button_Shop_Selection_" + ShopListing.SHOP_NAME_SPECIAL) as UIButtonRovio;
         var buttonSlingshot:UIButtonRovio = this.mContainerShopSelectionButtons.getItemByName("Button_Shop_Selection_" + ShopListing.SHOP_NAME_SLINGSHOT) as UIButtonRovio;
         var buttonGeneral:UIButtonRovio = this.mContainerShopSelectionButtons.getItemByName("Button_Shop_Selection_" + ShopListing.SHOP_NAME_POWERUP) as UIButtonRovio;
         var buttonCoinShop:UIButtonRovio = this.mContainerShopSelectionButtons.getItemByName("Button_Shop_Selection_" + ShopListing.SHOP_NAME_VC) as UIButtonRovio;
         if(buttonSpecial && dataModel.shopListing.specialItems.length == 0)
         {
            this.mContainerShopSelectionButtons.removeComponent(buttonSpecial);
         }
         if(buttonSlingshot && dataModel.shopListing.slingshots.length == 0)
         {
            this.mContainerShopSelectionButtons.removeComponent(buttonSlingshot);
         }
         if(buttonGeneral && dataModel.shopListing.powerupItems.length == 0)
         {
            this.mContainerShopSelectionButtons.removeComponent(buttonGeneral);
         }
         if(buttonCoinShop && dataModel.shopListing.coinItems.length == 0)
         {
            this.mContainerShopSelectionButtons.removeComponent(buttonCoinShop);
         }
         if(showOnlyPowerups)
         {
            this.mShowBackButton = false;
            if(this.mTabToShow == "")
            {
               this.mTabToShow = "ExtraBird";
            }
            this.toggleShopPowerups(true,this.mTabToShow);
            return;
         }
         var counter:int = 0;
         for each(shop in dataModel.shopListing.shops)
         {
            shopButton = this.mContainerShopSelectionButtons.getItemByName("Button_Shop_Selection_" + shop.id) as UIButtonRovio;
            if(shopButton)
            {
               shopButton.x = counter * (shopButton.width + 15);
               counter++;
            }
         }
         this.setStoreObservationIcons();
         this.mContainerShopSelectionButtons.x = AngryBirdsBase.screenWidth / 2 - this.mContainerShopSelectionButtons.width / 2;
         dataModel.shopListing.removeEventListener(Event.COMPLETE,this.onShopListingComplete);
      }
      
      private function setStoreObservationIcons() : void
      {
         var shop:Object = null;
         var shopButton:UIButtonRovio = null;
         var hasItemsOnSale:Boolean = false;
         var hasNewItemsIn:Boolean = false;
         var storeValue:Object = null;
         var tagAsset:Class = null;
         var tagMovieClip:MovieClip = null;
         var childMC:MovieClip = null;
         var i:int = 0;
         if(!this.mAddedStoreObservationIcons)
         {
            this.mAddedStoreObservationIcons = new Dictionary();
         }
         DataModelFriends(AngryBirdsBase.singleton.dataModel).hasSlingshotsOnSale = false;
         DataModelFriends(AngryBirdsBase.singleton.dataModel).hasPowerupsOnSale = false;
         DataModelFriends(AngryBirdsBase.singleton.dataModel).hasCoinShopItemsOnSale = false;
         for each(shop in dataModel.shopListing.shops)
         {
            shopButton = this.mContainerShopSelectionButtons.getItemByName("Button_Shop_Selection_" + shop.id) as UIButtonRovio;
            if(shopButton)
            {
               hasItemsOnSale = false;
               hasNewItemsIn = false;
               switch(shop.id)
               {
                  case ShopListing.SHOP_NAME_SPECIAL:
                     shopButton.setVisibility(dataModel.shopListing.specialItems.length > 0);
                     hasItemsOnSale = this.checkForOnSaleItems(dataModel.shopListing.specialItems,false);
                     if(hasItemsOnSale)
                     {
                        DataModelFriends(AngryBirdsBase.singleton.dataModel).hasPowerupsOnSale = true;
                     }
                     hasNewItemsIn = this.checkForNewItems(dataModel.shopListing.specialItems);
                     break;
                  case ShopListing.SHOP_NAME_SLINGSHOT:
                     shopButton.setVisibility(dataModel.shopListing.slingshots.length > 0);
                     hasItemsOnSale = this.checkForOnSaleItems(dataModel.shopListing.slingshots,true);
                     if(hasItemsOnSale)
                     {
                        DataModelFriends(AngryBirdsBase.singleton.dataModel).hasSlingshotsOnSale = true;
                     }
                     hasNewItemsIn = this.checkForNewItems(dataModel.shopListing.slingshots);
                     break;
                  case ShopListing.SHOP_NAME_POWERUP:
                     shopButton.setVisibility(dataModel.shopListing.powerupItems.length > 0);
                     hasItemsOnSale = this.checkForOnSaleItems(dataModel.shopListing.powerupItems,false);
                     if(hasItemsOnSale)
                     {
                        DataModelFriends(AngryBirdsBase.singleton.dataModel).hasPowerupsOnSale = true;
                     }
                     hasNewItemsIn = this.checkForNewItems(dataModel.shopListing.powerupItems);
                     break;
                  case ShopListing.SHOP_NAME_VC:
                     shopButton.setVisibility(dataModel.shopListing.coinItems.length > 0);
                     hasItemsOnSale = this.checkForOnSaleItems(dataModel.shopListing.coinItems,false);
                     if(hasItemsOnSale)
                     {
                        DataModelFriends(AngryBirdsBase.singleton.dataModel).hasCoinShopItemsOnSale = true;
                     }
                     hasNewItemsIn = this.checkForNewItems(dataModel.shopListing.coinItems);
               }
               shopButton.mClip.title.text = shop.name;
               if(hasNewItemsIn)
               {
                  if(!this.mAddedStoreObservationIcons[shop.id] || !this.mAddedStoreObservationIcons[shop.id].newIconAdded)
                  {
                     tagAsset = AssetCache.getAssetFromCache("Tag_New_Big");
                     tagMovieClip = new tagAsset();
                     tagMovieClip.name = "Tag_New_Big";
                     shopButton.mClip.addChild(tagMovieClip);
                     storeValue = !!this.mAddedStoreObservationIcons[shop.id] ? this.mAddedStoreObservationIcons[shop.id] : new Object();
                     storeValue.newIconAdded = true;
                     this.mAddedStoreObservationIcons[shop.id] = storeValue;
                  }
               }
               else
               {
                  childMC = shopButton.mClip.getChildByName("Tag_New_Big") as MovieClip;
                  if(childMC)
                  {
                     shopButton.mClip.removeChild(childMC);
                  }
                  if(this.mAddedStoreObservationIcons[shop.id] && this.mAddedStoreObservationIcons[shop.id].newIconAdded)
                  {
                     this.mAddedStoreObservationIcons[shop.id].newIconAdded = false;
                  }
               }
               if(hasItemsOnSale)
               {
                  if(!this.mAddedStoreObservationIcons[shop.id] || !this.mAddedStoreObservationIcons[shop.id].saleIconAdded)
                  {
                     if(hasNewItemsIn)
                     {
                        tagAsset = AssetCache.getAssetFromCache("Tag_Sale_Big_right_side");
                        tagMovieClip = new tagAsset();
                        tagMovieClip.x = (shopButton.width >> 1) + 5;
                     }
                     else
                     {
                        tagAsset = AssetCache.getAssetFromCache("Tag_Sale_Big");
                        tagMovieClip = new tagAsset();
                     }
                     tagMovieClip.name = "Tag_Sale_Big";
                     shopButton.mClip.addChild(tagMovieClip);
                     storeValue = !!this.mAddedStoreObservationIcons[shop.id] ? this.mAddedStoreObservationIcons[shop.id] : new Object();
                     storeValue.saleIconAdded = true;
                     this.mAddedStoreObservationIcons[shop.id] = storeValue;
                  }
               }
               else
               {
                  childMC = shopButton.mClip.getChildByName("Tag_Sale_Big") as MovieClip;
                  if(childMC)
                  {
                     shopButton.mClip.removeChild(childMC);
                  }
                  if(this.mAddedStoreObservationIcons[shop.id] && this.mAddedStoreObservationIcons[shop.id].saleIconAdded)
                  {
                     this.mAddedStoreObservationIcons[shop.id].saleIconAdded = false;
                  }
               }
            }
            i++;
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).updateFriendsbarShopButton();
      }
      
      private function checkForNewItems(list:Vector.<ShopItem>) : Boolean
      {
         var item:ShopItem = null;
         for each(item in list)
         {
            if(this.checkForNewItem(item.id))
            {
               return true;
            }
         }
         return false;
      }
      
      private function checkForNewItem(id:String) : Boolean
      {
         var index:int = DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopItems.indexOf(id);
         var value:* = DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopItems.indexOf(id) > -1;
         if(!value)
         {
            value = DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopPricePoints.indexOf(id) > -1;
         }
         return value;
      }
      
      private function checkForOnSaleItems(list:Vector.<ShopItem>, canOnlyHaveOne:Boolean) : Boolean
      {
         var item:ShopItem = null;
         for each(item in list)
         {
            if(!(canOnlyHaveOne && ItemsInventory.instance.getCountForPowerup(item.id) > 0 && !TunerFriends.SHOW_SALE_TAG_ON_OWNED_ITEMS))
            {
               if(item.isOnSale)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function checkForSpecialOfferItems(list:Vector.<ShopItem>) : Boolean
      {
         var item:ShopItem = null;
         for each(item in list)
         {
            if(item.isOnSpecialOffer)
            {
               return true;
            }
         }
         return false;
      }
      
      private function populateSlingshotStore(slingshotItems:Vector.<ShopItem>) : void
      {
         var itemsAmount:int = 0;
         var tabsHolder:MovieClip = null;
         var slingshotTab:MovieClip = null;
         var singleTabRealWidth:Number = NaN;
         var allTabsWidth:Number = NaN;
         itemsAmount = slingshotItems.length;
         tabsHolder = this.mContainerSlingshots.mClip.getChildByName("TabsHolder") as MovieClip;
         var assetSlingshotTab:Class = AssetCache.getAssetFromCache("slingshotTab");
         slingshotTab = new assetSlingshotTab();
         singleTabRealWidth = slingshotTab.width >> 1;
         allTabsWidth = itemsAmount * singleTabRealWidth;
         var startX:Number = tabsHolder.width > allTabsWidth ? Number(tabsHolder.width - allTabsWidth >> 1) : Number(0);
         for(var i:int = 0; i < itemsAmount; i++)
         {
            slingshotTab.y = 0;
            slingshotTab.x = startX + i * singleTabRealWidth;
            slingshotTab.name = "TabSlingshot_" + i;
            slingshotTab.visible = false;
            tabsHolder.addChild(slingshotTab);
            slingshotTab = new assetSlingshotTab();
         }
         this.initSlingshotTabs(slingshotItems);
      }
      
      private function initSlingshotTabs(slingshotItems:Vector.<ShopItem>) : int
      {
         var s:ShopItem = null;
         var slingShotDefinition:SlingShotDefinition = null;
         var slingshotTab:ShopTab = null;
         var i:int = 0;
         for each(s in slingshotItems)
         {
            slingShotDefinition = SlingShotType.getSlingShotByID(s.id);
            if(slingShotDefinition)
            {
               slingshotTab = this.initializeSlingshotShopTab(this.getShopItemByID(s.id,slingshotItems),"Icon_Slingshot_" + s.id,"SlingshopContent" + s.id,slingShotDefinition.description,slingShotDefinition.prettyName,i);
               i++;
            }
         }
         return i;
      }
      
      private function populateBrandedStore(specialItems:Vector.<ShopItem>) : void
      {
         var itemPositionX:Number = NaN;
         var assetPowerupPack:Class = null;
         var tabContainer:MovieClip = null;
         var totalWidth:Number = this.mContainerBranded.mClip.width;
         var items:int = specialItems.length;
         var tabsHolder:MovieClip = this.mContainerBranded.mClip.getChildByName("TabsHolder") as MovieClip;
         for(var i:int = 0; i < items; i++)
         {
            itemPositionX = totalWidth * (i / items) + totalWidth / items * 0.5;
            assetPowerupPack = AssetCache.getAssetFromCache("powerupTab");
            this.mPowerupPackIcon = new assetPowerupPack();
            this.mPowerupPackIcon.x = i * 118;
            this.mPowerupPackIcon.y = 12;
            this.mPowerupPackIcon.name = "TabBranded_" + i;
            this.mPowerupPackIcon.visible = false;
            tabsHolder.addChild(this.mPowerupPackIcon);
            tabsHolder.x = 40;
            if(!this.mContainerBranded.mClip.contains(tabsHolder))
            {
               this.mContainerBranded.mClip.addChild(tabsHolder);
            }
            tabContainer = new MovieClip();
            tabContainer.graphics.beginFill(16777215,0);
            tabContainer.graphics.drawRect(0,0,this.mContainerBranded.mClip.width,this.mContainerBranded.mClip.height);
            tabContainer.graphics.endFill();
            tabContainer.visible = false;
            tabContainer.name = "BrandedTabContainer_" + i;
            tabContainer.width = totalWidth;
            tabContainer.y = this.mPowerupPackIcon.y + this.mPowerupPackIcon.height;
            this.mContainerBranded.mClip.addChildAt(tabContainer,1);
         }
         this.initBrandedTabs(specialItems);
      }
      
      private function initBrandedTabs(shopItems:Vector.<ShopItem>) : void
      {
         var s:ShopItem = null;
         var powerupDef:PowerupDefinition = null;
         var isSpecialPowerup:Boolean = false;
         var owned:Boolean = false;
         var validUntil:Date = null;
         var title:String = null;
         var brandedTab:ShopTab = null;
         var i:int = 0;
         for each(s in shopItems)
         {
            powerupDef = PowerupType.getPowerupBySubscriptionName(s.id);
            isSpecialPowerup = false;
            if(!powerupDef)
            {
               powerupDef = PowerupType.getSpecialPowerupByID(s.id);
               if(powerupDef)
               {
                  isSpecialPowerup = true;
               }
            }
            owned = powerupDef && ItemsInventory.instance.getSubscriptionExpirationForPowerup(powerupDef.identifier) > 0;
            try
            {
               validUntil = new Date();
               validUntil.time = s.getPricePoint(0).subscriptionTime;
               title = powerupDef.prettyName;
               if(!isSpecialPowerup)
               {
                  title = "Infinite " + powerupDef.prettyName;
               }
               brandedTab = this.initializeBrandedShopTab(this.getShopItemByID(s.id,shopItems),s.id + "_Icon","Button_Shop_Branded_" + s.id,powerupDef.subscriptionDescription,title,i,owned,validUntil);
            }
            catch(e:Error)
            {
            }
            i++;
         }
      }
      
      private function initializeBrandedShopTab(shopItem:ShopItem, iconAssetName:String, shopContentAssetName:String, copyText:String, title:String, index:int, owned:Boolean = false, validUntil:Date = null) : ShopTab
      {
         var tabsHolder:MovieClip = this.mContainerBranded.mClip.getChildByName("TabsHolder") as MovieClip;
         var tabMovieClip:MovieClip = tabsHolder.getChildByName("TabBranded_" + index) as MovieClip;
         tabMovieClip.visible = true;
         if(shopItem == null)
         {
            tabMovieClip.visible = false;
            return null;
         }
         var shopTab:BrandedShopTab = new BrandedShopTab(shopItem,iconAssetName,shopContentAssetName,tabMovieClip,copyText,title,1,owned,validUntil);
         shopTab.addEventListener(ShopTabEvent.TAB_CLICKED,this.onBrandedTabClicked);
         shopTab.addEventListener(ShopTabEvent.ITEM_BUY,this.onItemBuy);
         this.mAllShopTabs.push(shopTab);
         return shopTab;
      }
      
      private function initializeSlingshotShopTab(shopItem:ShopItem, iconAssetName:String, shopContentAssetName:String, copyText:String, title:String, index:int, owned:Boolean = false) : ShopTab
      {
         var newTagAsset:Class = null;
         var newTagMovieClip:MovieClip = null;
         var saleTagAsset:Class = null;
         var saleTagMovieClip:MovieClip = null;
         var tabsHolder:MovieClip = this.mContainerSlingshots.mClip.getChildByName("TabsHolder") as MovieClip;
         var tabMovieClip:MovieClip = tabsHolder.getChildByName("TabSlingshot_" + index) as MovieClip;
         tabMovieClip.visible = true;
         if(shopItem == null)
         {
            tabMovieClip.visible = false;
            return null;
         }
         var shopTab:SlingshotShopTab = new SlingshotShopTab(shopItem,iconAssetName,shopContentAssetName,tabMovieClip,copyText,title,1,owned);
         shopTab.addEventListener(ShopTabEvent.TAB_CLICKED,this.onSlingshotShopTabClicked);
         shopTab.addEventListener(ShopTabEvent.ITEM_BUY,this.onItemBuy);
         this.mAllShopTabs.push(shopTab);
         if(this.checkForNewItem(shopItem.id))
         {
            newTagAsset = AssetCache.getAssetFromCache("MovieClip_NewTag_TopBar");
            newTagMovieClip = new newTagAsset();
            newTagMovieClip.name = "MovieClip_NewTag_TopBar";
            newTagMovieClip.y = NEW_TAG_OFFSET_Y;
            tabMovieClip.addChild(newTagMovieClip);
         }
         else
         {
            newTagMovieClip = tabMovieClip.getChildByName("MovieClip_NewTag_TopBar") as MovieClip;
            if(newTagMovieClip && newTagMovieClip.parent)
            {
               newTagMovieClip.parent.removeChild(newTagMovieClip);
            }
         }
         if(shopItem.isOnSale && (!shopTab.isOwned() || TunerFriends.SHOW_SALE_TAG_ON_OWNED_ITEMS))
         {
            saleTagAsset = AssetCache.getAssetFromCache("MovieClip_SaleTag_TopBar");
            saleTagMovieClip = new saleTagAsset();
            saleTagMovieClip.name = "Sale";
            saleTagMovieClip.y = NEW_TAG_OFFSET_Y;
            tabMovieClip.addChild(saleTagMovieClip);
         }
         else
         {
            saleTagMovieClip = tabMovieClip.getChildByName("Sale") as MovieClip;
            if(saleTagMovieClip && saleTagMovieClip.parent)
            {
               saleTagMovieClip.parent.removeChild(saleTagMovieClip);
            }
         }
         return shopTab;
      }
      
      protected function onSlingshotShopTabClicked(e:ShopTabEvent) : void
      {
         var shopTab:ShopTab = e.currentTarget as ShopTab;
         if(shopTab)
         {
            this.mTabToShow = shopTab.shopItem.id;
            this.mShopType = SHOP_ID_SLINGSHOT;
            this.openTab(shopTab,SHOP_ID_SLINGSHOT);
            SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
         }
      }
      
      protected function onBrandedTabClicked(e:ShopTabEvent) : void
      {
         var shopTab:ShopTab = e.currentTarget as ShopTab;
         if(shopTab)
         {
            this.mTabToShow = shopTab.shopItem.id;
            this.mShopType = SHOP_ID_SPECIAL;
            this.openTab(shopTab,SHOP_ID_SPECIAL);
            SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
         }
      }
      
      private function populateStore(shopItems:Vector.<ShopItem>) : void
      {
         this.initTabs(shopItems);
         this.openTabByString(this.mTabToShow);
      }
      
      private function initTabs(shopItems:Vector.<ShopItem>) : void
      {
         this.mAllShopTabs = [];
         this.mInitTabCounter = 0;
         this.POWERUP_PACK = this.initializeShopTab(this.getShopItemByID(PowerupType.POWERUP_BUNDLE_ID,shopItems),"PowerupBundleIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
         this.SUPER_SEEDS = this.initializeShopTab(this.getShopItemByID(PowerupType.sBirdFood.identifier,shopItems),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
         this.KING_SLING = this.initializeShopTab(this.getShopItemByID(PowerupType.sExtraSpeed.identifier,shopItems),"KingSlingIcon","ShopContentKingSling","Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!");
         this.SLING_SCOPE = this.initializeShopTab(this.getShopItemByID(PowerupType.sLaserSight.identifier,shopItems),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
         this.BIRD_QUAKE = this.initializeShopTab(this.getShopItemByID(PowerupType.sEarthquake.identifier,shopItems),"BirdQuakeIcon","ShopContentBirdQuake","Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!");
         this.BOOMBOX = this.initializeShopTab(this.getShopItemByID(PowerupType.sBoombox.identifier,shopItems),"BoomboxIcon","ShopContentBoombox","Sling TNT");
         this.WINGMAN = this.initializeShopTab(this.getShopItemByID(PowerupType.sExtraBird.identifier,shopItems),"ExtraBirdIcon","ShopContentExtraBird","Call the Wingman to demolish your enemies and impress your friends. Only useable in Tournaments.");
         this.MIGHTY_EAGLE = this.initializeShopTab(this.getShopItemByID(PowerupType.sMightyEagle.identifier,shopItems),"MightyEagleIcon","ShopContentMightyEagle","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.");
      }
      
      private function getShopItemByID(id:String, shopItems:Vector.<ShopItem>) : ShopItem
      {
         var shopItem:ShopItem = null;
         for each(shopItem in shopItems)
         {
            if(shopItem.id == id)
            {
               return shopItem;
            }
         }
         return null;
      }
      
      private function initializeShopTab(shopItem:ShopItem, iconAssetName:String, shopContentAssetName:String, copyText:String) : ShopTab
      {
         var newTagAsset:Class = null;
         var newTagMovieClip:MovieClip = null;
         var saleTagAsset:Class = null;
         var saleTagMovieClip:MovieClip = null;
         var tabMovieClip:MovieClip = mContainer.mClip.Container_TabbedShopPopup["powerupTab" + this.mInitTabCounter];
         ++this.mInitTabCounter;
         if(shopItem == null)
         {
            tabMovieClip.visible = false;
            return null;
         }
         var brandedIconAssetName:String = iconAssetName + "_" + TournamentModel.instance.brandedTournamentAssetId;
         if(AssetCache.assetInCache(brandedIconAssetName))
         {
            iconAssetName = brandedIconAssetName;
         }
         var shopTab:ShopTab = new ShopTab(shopItem,iconAssetName,shopContentAssetName,tabMovieClip,copyText,4);
         if(this.checkForNewItem(shopItem.id))
         {
            newTagAsset = AssetCache.getAssetFromCache("MovieClip_NewTag_TopBar");
            newTagMovieClip = new newTagAsset();
            newTagMovieClip.name = "MovieClip_NewTag_TopBar";
            newTagMovieClip.x = NEW_TAG_OFFSET_X;
            newTagMovieClip.y = NEW_TAG_OFFSET_Y;
            tabMovieClip.addChild(newTagMovieClip);
         }
         else
         {
            newTagMovieClip = tabMovieClip.getChildByName("MovieClip_NewTag_TopBar") as MovieClip;
            if(newTagMovieClip && newTagMovieClip.parent)
            {
               newTagMovieClip.parent.removeChild(newTagMovieClip);
            }
         }
         if(shopItem.isOnSale)
         {
            saleTagAsset = AssetCache.getAssetFromCache("MovieClip_SaleTag_TopBar");
            saleTagMovieClip = new saleTagAsset();
            saleTagMovieClip.name = "MovieClip_SaleTag_TopBar";
            saleTagMovieClip.x = NEW_TAG_OFFSET_X;
            saleTagMovieClip.y = NEW_TAG_OFFSET_Y;
            tabMovieClip.addChild(saleTagMovieClip);
         }
         else
         {
            saleTagMovieClip = tabMovieClip.getChildByName("MovieClip_SaleTag_TopBar") as MovieClip;
            if(saleTagMovieClip && saleTagMovieClip.parent)
            {
               saleTagMovieClip.parent.removeChild(saleTagMovieClip);
            }
         }
         shopTab.addEventListener(ShopTabEvent.TAB_CLICKED,this.onTabClicked);
         shopTab.addEventListener(ShopTabEvent.ITEM_BUY,this.onItemBuy);
         this.mAllShopTabs.push(shopTab);
         return shopTab;
      }
      
      private function onTabClicked(e:ShopTabEvent) : void
      {
         var shopTab:ShopTab = e.currentTarget as ShopTab;
         if(shopTab)
         {
            this.mTabToShow = shopTab.shopItem.id;
            this.mShopType = SHOP_ID_GENERAL;
            this.openTab(shopTab,SHOP_ID_GENERAL);
            SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
         }
      }
      
      private function onItemBuy(e:ShopTabEvent) : void
      {
         var popup:CoinShopPopup = null;
         var buyItemVC:BuyItemWithVC = null;
         var isVC:* = e.shopItem.currencyID == "IVC";
         if(e.point)
         {
            this.mCheckMarkPosition = new Point(e.point.x,e.point.y);
         }
         this.mPreviousShopItemId = this.mCurrentShopTab.shopItem.id;
         if(isVC && (dataModel.virtualCurrencyModel.totalCoins < e.pricePoint.price && (isNaN(e.pricePoint.campaignPrice) || Number(e.pricePoint.campaignPrice) <= 0) || dataModel.virtualCurrencyModel.totalCoins < Number(e.pricePoint.campaignPrice)))
         {
            popup = new CoinShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,CoinShopPopup.NOT_ENOUGH_COINS);
            AngryBirdsBase.singleton.popupManager.openPopup(popup);
            return;
         }
         SoundEngine.playSound("Shop_Buy",SoundEngine.UI_CHANNEL);
         this.disableBuyArea();
         if(isVC)
         {
            buyItemVC = new BuyItemWithVC(e.shopItem,e.pricePoint,ID);
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
            this.mBuyItemWithPremiumCurrency = new BuyItemWithPremiumCurrency(e.shopItem,e.pricePoint,BuyItemWithPremiumCurrency.PAYMENT_TYPE_CASH,ID);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
            this.mBuyItemWithPremiumCurrency.addEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
         }
      }
      
      protected function onBuyItemWithPremiumCurrencyFailed(event:BuyItemEvent) : void
      {
         this.enableBuyArea();
         this.showWarningPopup(event.errorMessage,event.errorTitle,event.errorCode.toString());
         if(this.mBuyItemWithPremiumCurrency)
         {
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
            this.mBuyItemWithPremiumCurrency = null;
         }
      }
      
      protected function onBuyWithVCFailed(event:BuyItemEvent) : void
      {
         ItemsInventory.instance.loadInventory();
         this.enableBuyArea();
      }
      
      protected function showWarningPopup(message:String = null, title:String = null, imageLabel:String = null) : void
      {
         var popup:WarningPopup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,message,title,imageLabel,false);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function onBuyWithPremiumCurrencyCompleted(e:BuyItemEvent) : void
      {
         var checkmark:CheckMarkAnimation = null;
         ItemsInventory.instance.addEventListener(ItemsInventory.EVENT_PROCESSING_POPUP_CLOSED,this.onProcessingPopupClosed);
         this.enableBuyArea();
         if(this.displayCheckMarkAnimation())
         {
            checkmark = new CheckMarkAnimation();
            if(mContainer)
            {
               switch(this.mShopType)
               {
                  case SHOP_ID_GENERAL:
                     mContainer.mClip.Container_TabbedShopPopup.contentArea.addChild(checkmark);
                     break;
                  case SHOP_ID_SPECIAL:
                     this.mContainerBranded.mClip.contentArea.addChild(checkmark);
                     break;
                  case SHOP_ID_SLINGSHOT:
                     this.mContainerSlingshots.mClip.contentArea.addChild(checkmark);
               }
               checkmark.x = this.mCheckMarkPosition.x - 40;
               checkmark.y = this.mCheckMarkPosition.y + 40;
               this.mCheckMarkPosition = null;
            }
         }
         var buyItem:BuyItemWithPremiumCurrency = e.currentTarget as BuyItemWithPremiumCurrency;
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT_PREMIUM_CURRENCY,this.onBuyWithPremiumCurrencyCompleted);
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyItemWithPremiumCurrencyFailed);
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         FacebookGoogleAnalyticsTracker.trackTransaction(buyItem.orderId,SHOP_NAME,buyItem.shopItem.id,buyItem.shopItem.id,buyItem.pricePoint.totalQuantity + " x",0,1,0);
         FacebookGoogleAnalyticsTracker.trackShopProductBuyCompleted(buyItem.shopItem.id,this.mBuyItemWithPremiumCurrency.pricePoint.totalQuantity);
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         if(buyItem.pricePoint)
         {
            FacebookGoogleAnalyticsTracker.trackTransaction(buyItem.orderId,SHOP_NAME,buyItem.shopItem.id,buyItem.shopItem.id,buyItem.pricePoint.price + " x",buyItem.pricePoint.price,1,0);
         }
         if(this.mBuyItemWithPremiumCurrency)
         {
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
            this.mBuyItemWithPremiumCurrency = null;
         }
         buyItem.removeEventListeners();
      }
      
      private function displayCheckMarkAnimation() : Boolean
      {
         return this.mCheckMarkPosition && this.mPreviousShopItemId == this.mCurrentShopTab.shopItem.id;
      }
      
      private function onProcessingPopupClosed(e:Event) : void
      {
         var shopTab:ShopTab = null;
         ItemsInventory.instance.removeEventListener(ItemsInventory.EVENT_PROCESSING_POPUP_CLOSED,this.onProcessingPopupClosed);
         for each(shopTab in this.mAllShopTabs)
         {
            shopTab.refreshItemCount();
         }
         this.enableBuyArea();
         this.setStoreObservationIcons();
      }
      
      private function disableBuyArea() : void
      {
         mContainer.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         mContainer.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
         mContainer.mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
         this.mContainerBranded.mClip.contentArea.mouseEnabled = false;
         this.mContainerBranded.mClip.contentArea.mouseChildren = false;
         this.mContainerBranded.mClip.contentArea.alpha = 0.5;
         this.mContainerSlingshots.mClip.contentArea.mouseEnabled = false;
         this.mContainerSlingshots.mClip.contentArea.mouseChildren = false;
         this.mContainerSlingshots.mClip.contentArea.alpha = 0.5;
         this.mBuyAreaDisabledTimer = new Timer(2000,1);
         this.mBuyAreaDisabledTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onBuyAreaDisabledTimer,false,0,true);
         this.mBuyAreaDisabledTimer.start();
      }
      
      private function enableBuyArea() : void
      {
         if(mContainer && mContainer.mClip && mContainer.mClip.Container_TabbedShopPopup && mContainer.mClip.Container_TabbedShopPopup.contentArea)
         {
            mContainer.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
            mContainer.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
            mContainer.mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
         }
         if(this.mContainerBranded && this.mContainerBranded.mClip && this.mContainerBranded.mClip.contentArea)
         {
            this.mContainerBranded.mClip.contentArea.mouseEnabled = true;
            this.mContainerBranded.mClip.contentArea.mouseChildren = true;
            this.mContainerBranded.mClip.contentArea.alpha = 1;
         }
         if(this.mContainerSlingshots && this.mContainerSlingshots.mClip && this.mContainerSlingshots.mClip.contentArea)
         {
            this.mContainerSlingshots.mClip.contentArea.mouseEnabled = true;
            this.mContainerSlingshots.mClip.contentArea.mouseChildren = true;
            this.mContainerSlingshots.mClip.contentArea.alpha = 1;
         }
      }
      
      private function onBuyComplete(e:BuyItemEvent) : void
      {
         var checkmark:CheckMarkAnimation = null;
         var shopTab:ShopTab = null;
         if(this.displayCheckMarkAnimation())
         {
            checkmark = new CheckMarkAnimation();
            if(mContainer)
            {
               switch(this.mShopType)
               {
                  case SHOP_ID_GENERAL:
                     mContainer.mClip.Container_TabbedShopPopup.contentArea.addChild(checkmark);
                     break;
                  case SHOP_ID_SLINGSHOT:
                     this.mContainerSlingshots.mClip.contentArea.addChild(checkmark);
                     break;
                  case SHOP_ID_SPECIAL:
                     this.mContainerBranded.mClip.contentArea.addChild(checkmark);
               }
               checkmark.x = this.mCheckMarkPosition.x - 40;
               checkmark.y = this.mCheckMarkPosition.y + 40;
               this.mCheckMarkPosition = null;
            }
         }
         var buyItem:BuyItemWithVC = e.currentTarget as BuyItemWithVC;
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT,this.onBuyComplete);
         if(e.changedItems && e.changedItems.length > 0)
         {
            for each(shopTab in this.mAllShopTabs)
            {
               shopTab.refreshItemCount();
            }
         }
         if(mContainer)
         {
            this.enableBuyArea();
         }
         this.setStoreObservationIcons();
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         FacebookGoogleAnalyticsTracker.trackTransaction(buyItem.orderId,SHOP_NAME,buyItem.shopItem.id,buyItem.shopItem.id,buyItem.pricePoint.totalQuantity + " x",0,1,0);
      }
      
      private function openTabByString(tabToShow:String, shopType:String = "GENERAL") : void
      {
         var shopTab:ShopTab = this.getShopTab(tabToShow);
         if(!shopTab)
         {
            shopTab = this.getShopTab("GoldenSling");
         }
         if(shopTab)
         {
            this.openTab(shopTab,shopType);
         }
      }
      
      private function getShopTab(tabId:String) : ShopTab
      {
         var shopTab:ShopTab = null;
         for each(shopTab in this.mAllShopTabs)
         {
            if(shopTab.shopItem.id == tabId)
            {
               return shopTab;
            }
         }
         return null;
      }
      
      private function openTab(shopTab:ShopTab, shopType:String = "GENERAL") : void
      {
         var mContentArea:MovieClip = null;
         var otherShopTab:ShopTab = null;
         if(shopType == SHOP_ID_GENERAL)
         {
            mContentArea = mContainer.mClip.Container_TabbedShopPopup.contentArea;
         }
         else if(shopType == SHOP_ID_SPECIAL)
         {
            mContentArea = this.mContainerBranded.mClip.contentArea;
         }
         else if(shopType == SHOP_ID_SLINGSHOT)
         {
            mContentArea = this.mContainerSlingshots.mClip.contentArea;
         }
         this.clearContentAreas();
         if(this.mCurrentShopTab)
         {
            if(mContentArea.contains(this.mCurrentShopTab.shopContent))
            {
               mContentArea.removeChild(this.mCurrentShopTab.shopContent);
            }
         }
         for each(otherShopTab in this.mAllShopTabs)
         {
            otherShopTab.unselect();
         }
         shopTab.select();
         this.mCurrentShopTab = shopTab;
         mContentArea.addChild(shopTab.shopContent);
         FacebookGoogleAnalyticsTracker.trackPageView(this,shopTab.shopItem.id);
         FriendsUtil.markItemToBeSeen(shopTab.shopItem);
      }
      
      private function clearContentAreas() : void
      {
         this.mContainerBranded.mClip.contentArea.removeChildren();
         mContainer.mClip.Container_TabbedShopPopup.contentArea.removeChildren();
         this.mContainerSlingshots.mClip.contentArea.removeChildren();
      }
      
      public function get walletContainer() : Sprite
      {
         return mContainer.mClip.Container_Shop_Background;
      }
      
      public function removeWallet(wallet:Wallet) : void
      {
         wallet.removeEventListener(Wallet.ADD_COINS,this.onAddCoinsClicked);
         wallet.dispose();
         wallet = null;
      }
      
      public function get wallet() : Wallet
      {
         return this.mWallet;
      }
      
      public function addWallet(wallet:Wallet) : void
      {
         this.mWallet = wallet;
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_SHOP;
      }
      
      public function getIdentifier() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_TABBED_SHOP;
      }
      
      override protected function show(useTransition:Boolean = true) : void
      {
         super.show(useTransition);
         if(!this.mAllShopTabs || this.mAllShopTabs.length == 0)
         {
            this.loadData();
         }
         else
         {
            this.onAllShopTabsLoaded();
         }
         FacebookGoogleAnalyticsTracker.trackPageView(this);
         FacebookGoogleAnalyticsTracker.trackShopOpened();
         var wallet:Wallet = new Wallet(this);
         this.addWallet(wallet);
         wallet.addEventListener(Wallet.ADD_COINS,this.onAddCoinsClicked);
      }
      
      private function onAllShopTabsLoaded(e:Event = null) : void
      {
         if(this.mTabToShow && this.mShopType)
         {
            switch(this.mShopType)
            {
               case SHOP_ID_GENERAL:
                  this.toggleShopPowerups(true,this.mTabToShow);
                  break;
               case SHOP_ID_SLINGSHOT:
                  this.toggleShopSlingshots(true,this.mTabToShow);
                  break;
               case SHOP_ID_SPECIAL:
                  this.toggleShopBranded(true,this.mTabToShow);
            }
         }
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         close();
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         var shopTab:ShopTab = null;
         if(this.mWallet)
         {
            this.removeWallet(this.mWallet);
         }
         if(this.mFacebookRedeemItem)
         {
            (this.mFacebookRedeemItem as FacebookRedeemItem).removeEventListener(RedeemItemEvent.ITEM_REDEEM_COMPLETED,this.onRedeemItemCompleted);
            (this.mFacebookRedeemItem as FacebookRedeemItem).removeEventListener(RedeemItemEvent.ITEM_REDEEM_FAILED,this.onRedeemItemFailed);
            (this.mFacebookRedeemItem as FacebookRedeemItem).removeEventListener(RedeemItemEvent.ITEM_REDEEM_USER_CANCELLED,this.onRedeemItemUserCancelled);
            this.mFacebookRedeemItem = null;
         }
         dataModel.shopListing.removeEventListener(Event.COMPLETE,this.onShopListingComplete);
         ItemsInventory.instance.removeEventListener(Event.CHANGE,this.onInventoryCountUpdated);
         ExternalInterfaceHandler.removeCallback("handleUserCancelledOrder",this.onUserCancelledOrder);
         ExternalInterfaceHandler.removeCallback("purchaseFailed",this.onPurchaseFailed);
         if(this.mBuyItemWithPremiumCurrency && this.mBuyItemWithPremiumCurrency.refreshInventoryOnClose)
         {
            this.mBuyItemWithPremiumCurrency.refreshInventoryOnClose = false;
            ItemsInventory.instance.loadInventory();
         }
         if(this.mBuyItemWithPremiumCurrency)
         {
            this.mBuyItemWithPremiumCurrency.removeEventListeners();
         }
         if(this.mAllShopTabs)
         {
            for each(shopTab in this.mAllShopTabs)
            {
               shopTab.dispose();
            }
         }
         this.mAddedStoreObservationIcons = null;
         this.mSalesCampaignManager.removeEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
         this.mSalesCampaignManager = null;
         super.hide(useTransition,waitForAnimationsToStop);
      }
      
      public function getName() : String
      {
         return this.getCategoryName() + "-" + this.getIdentifier();
      }
      
      protected function onInventoryCountUpdated(event:Event) : void
      {
         var shopTab:ShopTab = null;
         for each(shopTab in this.mAllShopTabs)
         {
            shopTab.refreshItemCount();
         }
      }
      
      private function setLoadingImage(value:Boolean) : void
      {
         if(!mContainer)
         {
            return;
         }
         mContainer.mClip.AngryBirdLoader.visible = value;
      }
      
      public function slingshotTabs() : Array
      {
         var shopTab:ShopTab = null;
         var slingshotTabs:Array = new Array();
         for each(shopTab in this.mAllShopTabs)
         {
            if(shopTab is SlingshotShopTab)
            {
               slingshotTabs.push(shopTab);
            }
         }
         return slingshotTabs;
      }
      
      private function redeemItem() : void
      {
         this.mFacebookRedeemItem.initialize();
         this.mFacebookRedeemItem.redeem();
      }
      
      private function onBuyAreaDisabledTimer(e:TimerEvent) : void
      {
         if(this.mBuyAreaDisabledTimer)
         {
            this.mBuyAreaDisabledTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onBuyAreaDisabledTimer);
            this.mBuyAreaDisabledTimer = null;
            this.enableBuyArea();
         }
      }
   }
}
