package com.angrybirds.popups.powerup
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.coinshop.CoinShopPopup;
   import com.angrybirds.powerups.PowerupDefinition;
   import com.angrybirds.powerups.PowerupEvent;
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithVC;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.utils.AddCommasToAmount;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PowerupSuggestionPopup extends AbstractPopup implements INavigable, IVirtualPageView, IWalletContainer
   {
       
      
      private var mSuggestedPowerupDefinition:PowerupDefinition;
      
      private var mShopItem:ShopItem;
      
      private var mPricePoint:PricePoint;
      
      private var mCurrentLevel:String;
      
      private const SUGGESTION_TEXT_USE_A_POWERUP:String = "Use a Power-up!";
      
      private const SUGGESTION_TEXT_GET_MORE:String = "Get Power-ups!";
      
      private var mWallet:Wallet;
      
      private var mCurrentTotalCoins:Number;
      
      public function PowerupSuggestionPopup(layerIndex:int, priority:int, suggestedPowerupDefinition:PowerupDefinition, currentLevel:String)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupPowerupSuggestion[0],"PowerupSuggestionPopup");
         this.mSuggestedPowerupDefinition = suggestedPowerupDefinition;
         this.mCurrentLevel = currentLevel;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         mContainer.setVisibility(false);
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onClose);
         mContainer.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(false);
         mContainer.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
         mContainer.mClip.MovieClip_PowerupSuggestion.gotoAndStop(0);
         mContainer.getItemByName("MovieClip_PowerupSuggestion").setVisibility(false);
         mContainer.getItemByName("Button_PowerupSuggestion").setVisibility(false);
         if((AngryBirdsBase.singleton.dataModel as DataModelFriends).shopListing.powerupItems)
         {
            this.onShopListingLoaded(null);
         }
         else
         {
            (AngryBirdsBase.singleton.dataModel as DataModelFriends).shopListing.addEventListener(Event.COMPLETE,this.onShopListingLoaded);
         }
         this.initWallet();
         AngryBirdsEngine.pause();
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
      
      protected function onShopListingLoaded(event:Event) : void
      {
         (AngryBirdsBase.singleton.dataModel as DataModelFriends).shopListing.removeEventListener(Event.COMPLETE,this.onShopListingLoaded);
         var items:int = ItemsInventory.instance.getCountForPowerup(this.mSuggestedPowerupDefinition.identifier);
         var coins:int = (AngryBirdsBase.singleton.dataModel as DataModelFriends).virtualCurrencyModel.totalCoins;
         this.mShopItem = (AngryBirdsBase.singleton.dataModel as DataModelFriends).shopListing.getPowerUpItemById(this.mSuggestedPowerupDefinition.identifier);
         this.mPricePoint = this.mShopItem.getPricePoint(3);
         if(mContainer)
         {
            mContainer.setVisibility(true);
            mContainer.mClip.MovieClip_PowerupSuggestion.visible = true;
            mContainer.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(true);
            mContainer.getItemByName("MovieClip_Powerup_Banner").setVisibility(false);
            (mContainer.getItemByName("TextField_PowerupSuggestion_Text") as UITextFieldRovio).setText("x " + this.mPricePoint.totalQuantity);
            mContainer.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
            mContainer.mClip.MovieClip_PowerupSuggestion.gotoAndStop(this.mSuggestedPowerupDefinition.identifier);
            mContainer.getItemByName("MovieClip_PowerupSuggestion").setVisibility(true);
            mContainer.getItemByName("Button_PowerupSuggestion").setVisibility(true);
            mContainer.getItemByName("TextField_Use").mClip.mouseChildren = false;
            mContainer.getItemByName("TextField_Use").mClip.mouseEnabled = false;
            mContainer.getItemByName("TextField_Price").mClip.mouseChildren = false;
            mContainer.getItemByName("TextField_Price").mClip.mouseEnabled = false;
            mContainer.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.onUseItem);
            mContainer.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.onOpenCoinShop);
            mContainer.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.onBuyItem);
            mContainer.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = false;
            if(items > 0)
            {
               (mContainer.getItemByName("TextField_PowerupSuggestion_Header") as UITextFieldRovio).setText(this.SUGGESTION_TEXT_USE_A_POWERUP);
               mContainer.getItemByName("TextField_Use").setVisibility(true);
               mContainer.getItemByName("TextField_Price").setVisibility(false);
               (mContainer.getItemByName("TextField_Use") as UITextFieldRovio).setText("USE");
               mContainer.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.onUseItem);
            }
            else
            {
               (mContainer.getItemByName("TextField_PowerupSuggestion_Header") as UITextFieldRovio).setText(this.SUGGESTION_TEXT_GET_MORE);
               mContainer.getItemByName("MovieClip_Powerup_Banner").setVisibility(true);
               mContainer.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(true);
               mContainer.getItemByName("TextField_Use").setVisibility(false);
               mContainer.getItemByName("TextField_Price").setVisibility(true);
               mContainer.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = true;
               (mContainer.getItemByName("TextField_Price") as UITextFieldRovio).setText(AddCommasToAmount.addCommasToAmount(this.mPricePoint.price).toString());
               if(coins < this.mPricePoint.price)
               {
                  mContainer.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.onOpenCoinShop);
               }
               else
               {
                  mContainer.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.onBuyItem);
               }
            }
         }
      }
      
      private function onUseItem(e:Event) : void
      {
         FacebookGoogleAnalyticsTracker.trackPowerupSuggestionUse(this.mCurrentLevel);
         mContainer.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.onUseItem);
         dispatchEvent(new PowerupEvent(PowerupEvent.POWERUP_USE,this.mSuggestedPowerupDefinition.eventName));
         close();
      }
      
      private function onOpenCoinShop(e:Event) : void
      {
         FacebookGoogleAnalyticsTracker.trackPowerupSuggestionBuyUnconfirmed(this.mCurrentLevel);
         var popup:CoinShopPopup = new CoinShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,CoinShopPopup.NOT_ENOUGH_COINS);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
         popup.addEventListener(BuyItemEvent.ITEM_BOUGHT,this.onCoinsBought);
         popup.addEventListener(PopupEvent.CLOSE_COMPLETE,this.onCoinShopClosed);
      }
      
      protected function onCoinShopClosed(event:Event) : void
      {
         this.updateUI();
      }
      
      protected function onCoinsBought(event:Event) : void
      {
         this.updateUI();
      }
      
      private function onBuyItem(e:MouseEvent) : void
      {
         mContainer.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.onBuyItem);
         SoundEngine.playSound("Shop_Buy",SoundEngine.UI_CHANNEL);
         var buyItem:BuyItemWithVC = new BuyItemWithVC(this.mShopItem,this.mPricePoint,id,AngryBirdsEngine.smLevelMain.currentLevel.name);
         buyItem.addEventListener(BuyItemEvent.ITEM_BOUGHT,this.onBuyComplete);
      }
      
      protected function onBuyComplete(e:BuyItemEvent) : void
      {
         FacebookGoogleAnalyticsTracker.trackPowerupSuggestionBuy(this.mCurrentLevel);
         var buyItem:BuyItemWithVC = e.currentTarget as BuyItemWithVC;
         buyItem.removeEventListener(BuyItemEvent.ITEM_BOUGHT,this.onBuyComplete);
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         FacebookGoogleAnalyticsTracker.trackTransaction(buyItem.orderId,this.getIdentifier(),buyItem.shopItem.id,buyItem.shopItem.id,buyItem.pricePoint.totalQuantity + " x",0,1,0);
         this.updateUI();
      }
      
      private function updateUI() : void
      {
         this.onShopListingLoaded(null);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         super.hide(useTransition,waitForAnimationsToStop);
         (AngryBirdsBase.singleton.dataModel as DataModelFriends).shopListing.removeEventListener(Event.COMPLETE,this.onShopListingLoaded);
         if(mContainer && mContainer.mClip.Button_PowerupSuggestion)
         {
            mContainer.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.onUseItem);
            mContainer.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.onOpenCoinShop);
            mContainer.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.onBuyItem);
         }
      }
      
      private function onClose(e:MouseEvent) : void
      {
         FacebookGoogleAnalyticsTracker.trackPowerupSuggestionClose(this.mCurrentLevel);
         close();
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_POWERUP_SUGGESTION;
      }
      
      public function getIdentifier() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_POWERUP_SUGGESTION_BUY;
      }
      
      public function getName() : String
      {
         return this.getCategoryName() + "-" + this.getIdentifier();
      }
   }
}
