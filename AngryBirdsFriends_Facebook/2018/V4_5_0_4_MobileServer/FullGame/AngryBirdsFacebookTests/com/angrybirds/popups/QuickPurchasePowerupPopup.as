package com.angrybirds.popups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.powerups.PowerupDefinition;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.salescampaign.SalesCampaignManager;
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.ShopTab;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.angrybirds.shoppopup.events.QuickPurchaseEvent;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithVC;
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
   import com.rovio.utils.AddCommasToAmount;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class QuickPurchasePowerupPopup extends AbstractPopup implements INavigable, IVirtualPageView, IWalletContainer
   {
      
      private static const MAX_TAB_AMOUNT:int = 4;
      
      public static const ID:String = "QuickPurchasePowerupPopup";
      
      private static const SHOP_NAME:String = "Quick Purchase Powerup";
       
      
      private var mShopItem:ShopItem;
      
      private var mPowerupDef:PowerupDefinition;
      
      private var mWallet:Wallet;
      
      private var mSalesCampaignManager:SalesCampaignManager;
      
      public function QuickPurchasePowerupPopup(viewContainer:MovieClip, shopItem:ShopItem, powerupDef:PowerupDefinition)
      {
         super(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,ViewXMLLibrary.mLibrary.Views.PopupView_QuickPurchasePowerupPopup[0],ID);
         this.mPowerupDef = powerupDef;
         this.mShopItem = shopItem;
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         var iconId:String = null;
         var pp:PricePoint = null;
         var cls:Class = null;
         var mc:MovieClip = null;
         var extraMC:UIMovieClipRovio = null;
         var offerMC:UIMovieClipRovio = null;
         super.show(useTransition);
         (mContainer.getItemByName("TextField_Header") as UITextFieldRovio).setText(this.mPowerupDef.prettyName);
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         switch(this.mShopItem.id)
         {
            case PowerupType.sBirdFood.identifier:
               iconId = "SuperSeedsIcon";
               break;
            case PowerupType.sExtraSpeed.identifier:
               iconId = "KingSlingIcon";
               break;
            case PowerupType.sLaserSight.identifier:
               iconId = "SlingScopeIcon";
               break;
            case PowerupType.sEarthquake.identifier:
               iconId = "BirdQuakeIcon";
               break;
            case PowerupType.sExtraBird.identifier:
               iconId = "ExtraBirdIcon";
               break;
            case PowerupType.sMushroom.identifier:
               iconId = "MushroomIcon";
               break;
            case PowerupType.sMightyEagle.identifier:
               iconId = "MightyEagleIcon";
         }
         for(var ppIndex:int = 0; ppIndex < this.mShopItem.getPricePointCount(); ppIndex++)
         {
            if(ppIndex >= MAX_TAB_AMOUNT)
            {
               break;
            }
            pp = this.mShopItem.getPricePoint(ppIndex);
            if(iconId)
            {
               cls = AssetCache.getAssetFromCache(iconId);
               mc = new cls();
               mc.scaleX = mc.scaleY = mc.scaleY * 2;
               (mContainer.getItemByName("Tab_icon_" + (ppIndex + 1)) as UIMovieClipRovio).mClip.addChild(mc);
            }
            (mContainer.getItemByName("Tab_quantity_" + (ppIndex + 1)) as UITextFieldRovio).setText(ShopTab.MULTIPLIER_STRING + AddCommasToAmount.addCommasToAmount(pp.totalQuantity));
            if(pp.freeQuantity > 0)
            {
               extraMC = mContainer.getItemByName("Tab_extra_" + (ppIndex + 1)) as UIMovieClipRovio;
               (extraMC.mClip.getChildByName("txtAmount") as TextField).text = "" + pp.freeQuantity;
            }
            if(pp.campaignPrice > 0)
            {
               mContainer.mClip["Tab_button_" + (ppIndex + 1)].visible = false;
               this.setTabButtonText("" + pp.campaignPrice,"Tab_offer_button_" + (ppIndex + 1),"" + pp.price);
               offerMC = mContainer.getItemByName("Tab_offer_" + (ppIndex + 1)) as UIMovieClipRovio;
               (offerMC.mClip.getChildByName("Sale_Percentage") as TextField).text = pp.campaignSalePercentage + "%";
               mContainer.mClip["Tab_offer_button_" + (ppIndex + 1)].addEventListener(MouseEvent.CLICK,this.onBuyClick);
            }
            else
            {
               mContainer.mClip["Tab_offer_button_" + (ppIndex + 1)].visible = false;
               this.setTabButtonText("" + pp.price,"Tab_button_" + (ppIndex + 1));
               mContainer.mClip["Tab_button_" + (ppIndex + 1)].addEventListener(MouseEvent.CLICK,this.onBuyClick);
            }
         }
         this.initWallet();
         this.enableBuyArea(true);
         FriendsUtil.markItemToBeSeen(this.mShopItem);
         this.mSalesCampaignManager = SalesCampaignManager.instance;
         this.mSalesCampaignManager.addEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
         FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("QUICK_PURCHASE_POWERUP_POPUP");
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         for(var ppIndex:int = 0; ppIndex < this.mShopItem.getPricePointCount(); ppIndex++)
         {
            if(ppIndex >= MAX_TAB_AMOUNT)
            {
               break;
            }
            mContainer.mClip["Tab_offer_button_" + (ppIndex + 1)].removeEventListener(MouseEvent.CLICK,this.onBuyClick);
            mContainer.mClip["Tab_button_" + (ppIndex + 1)].removeEventListener(MouseEvent.CLICK,this.onBuyClick);
         }
         this.mSalesCampaignManager.removeEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
         this.mSalesCampaignManager = null;
         super.hide(useTransition);
      }
      
      private function initWallet() : void
      {
         this.addWallet(new Wallet(this,true,true));
         this.mWallet.walletClip.visible = true;
         this.mWallet.setCoinsAmountText(DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel).virtualCurrencyModel.totalCoins);
      }
      
      private function enableBuyArea(value:Boolean) : void
      {
         var pp:PricePoint = null;
         if(!mContainer)
         {
            return;
         }
         mContainer.mClip.mouseEnabled = value;
         mContainer.mClip.mouseChildren = value;
         for(var i:int = 1; i <= MAX_TAB_AMOUNT; i++)
         {
            mContainer.getItemByName("Tab_quantity_" + i).visible = value;
            mContainer.getItemByName("Tab_icon_" + i).visible = value;
            mContainer.mClip.getChildByName("Tab_button_" + i).visible = value;
            mContainer.mClip.getChildByName("Tab_offer_button_" + i).visible = value;
            pp = this.mShopItem.getPricePoint(i - 1);
            if(pp)
            {
               if(pp.campaignPrice && pp.campaignPrice > 0)
               {
                  mContainer.getItemByName("Tab_extra_" + i).visible = false;
                  mContainer.mClip.getChildByName("Tab_button_" + i).visible = false;
                  mContainer.getItemByName("Tab_offer_" + i).visible = value;
               }
               else
               {
                  mContainer.getItemByName("Tab_extra_" + i).visible = pp.freeQuantity > 0 && value;
                  mContainer.getItemByName("Tab_offer_" + i).visible = false;
                  mContainer.mClip.getChildByName("Tab_offer_button_" + i).visible = false;
               }
            }
            else
            {
               mContainer.getItemByName("Tab_extra_" + i).visible = false;
               mContainer.getItemByName("Tab_offer_" + i).visible = false;
               mContainer.getItemByName("Tab_quantity_" + i).visible = false;
               mContainer.getItemByName("Tab_icon_" + i).visible = false;
               mContainer.mClip.getChildByName("Tab_button_" + i).visible = false;
               mContainer.mClip.getChildByName("Tab_offer_button_" + i).visible = false;
            }
         }
         (mContainer.getItemByName("MovieClip_LoadingImage") as UIMovieClipRovio).setVisibility(!value);
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
         if(wallet)
         {
            wallet.dispose();
         }
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
      
      private function onBuyClick(e:MouseEvent) : void
      {
         var coinsNeeded:int = 0;
         var coinWord:String = null;
         var popup:IPopup = null;
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.enableBuyArea(false);
         var pricePointIndex:int = int(e.target.name.charAt(e.target.name.length - 1)) - 1;
         var pp:PricePoint = this.mShopItem.getPricePoint(pricePointIndex);
         var price:Number = pp.campaignPrice > 0 ? Number(pp.campaignPrice) : Number(pp.price);
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
         var buyItemVC:BuyItemWithVC = new BuyItemWithVC(this.mShopItem,pp,ID,AngryBirdsEngine.smLevelMain.currentLevel.name);
         buyItemVC.addEventListener(BuyItemEvent.ITEM_BOUGHT,this.onBuyComplete);
         buyItemVC.addEventListener(BuyItemEvent.ITEM_BOUGHT_FAILED,this.onBuyWithVCFailed);
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
      
      protected function onBuyWithVCFailed(event:BuyItemEvent) : void
      {
         ItemsInventory.instance.loadInventory();
         this.enableBuyArea(true);
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,event.errorMessage,event.errorTitle));
      }
      
      private function onSaleCampaignDataSet(e:Event) : void
      {
         this.enableBuyArea(false);
         close();
      }
   }
}
