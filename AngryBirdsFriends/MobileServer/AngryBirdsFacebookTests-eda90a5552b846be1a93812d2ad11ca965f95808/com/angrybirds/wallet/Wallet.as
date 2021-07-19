package com.angrybirds.wallet
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.coinshop.CoinShopPopup;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.salescampaign.SalesCampaignManager;
   import com.angrybirds.shoppopup.NonSpenderAutoSalePopup;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class Wallet extends EventDispatcher implements INavigable
   {
      
      public static const ADD_COINS:String = "AddCoins";
      
      private static const SALE_BUTTON_NAME:String = "SALE_BUTTON";
      
      private static var smWaitingForPersonalizedOffer:Boolean = false;
       
      
      private var mContainer:IWalletContainer;
      
      private var mWalletClip:MovieClip;
      
      private var mAutomaticallyAnimateCoinsOnChange:Boolean;
      
      private var mEnableSaleButton:Boolean;
      
      private var mShowAddCoinsButton:Boolean;
      
      private var mOffsetValueX:Number;
      
      private var mOffsetValueY:Number;
      
      private var mSaleButtonTextFields:Vector.<TextField>;
      
      private var mSalesCampaignManager:SalesCampaignManager;
      
      public function Wallet(container:IWalletContainer, showAddCoinsButton:Boolean = true, automaticallyAnimateCoinsOnChange:Boolean = true, addDefaultOffset:Boolean = true, enableSaleButton:Boolean = false)
      {
         super();
         this.mSalesCampaignManager = SalesCampaignManager.instance;
         this.mSalesCampaignManager.addEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
         this.mSalesCampaignManager.addEventListener(SalesCampaignManager.EVENT_UPDATE_WALLET,this.updateWallet);
         if(addDefaultOffset)
         {
            this.mOffsetValueY = 10;
            this.mOffsetValueX = -24;
            if(!showAddCoinsButton)
            {
               this.mOffsetValueY = 15;
               this.mOffsetValueX = -5;
            }
         }
         else
         {
            this.mOffsetValueX = 0;
            this.mOffsetValueY = 0;
         }
         this.mContainer = container;
         this.mAutomaticallyAnimateCoinsOnChange = automaticallyAnimateCoinsOnChange;
         this.mEnableSaleButton = enableSaleButton;
         this.mShowAddCoinsButton = showAddCoinsButton;
         dataModel.virtualCurrencyModel.addEventListener(WalletEvent.AMOUNT_CHANGED,this.onAmountChanged);
         this.createWalletGraphic();
         this.updateSaleButtonVisibility();
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      private function createWalletGraphic() : void
      {
         var brandedWalletName:String = null;
         var wallet:Class = null;
         var stateDoc:DisplayObjectContainer = null;
         var i:int = 0;
         var walletName:String = "WALLET";
         if(this.mSalesCampaignManager && this.mSalesCampaignManager.isCampaignActive() && AssetCache.assetInCache("WALLET_CAMPAIGN_" + this.mSalesCampaignManager.saleCampaignID))
         {
            walletName = "WALLET_CAMPAIGN_" + this.mSalesCampaignManager.saleCampaignID;
         }
         else if(TournamentModel.instance.tournamentRules)
         {
            brandedWalletName = "WALLET_" + TournamentModel.instance.tournamentRules.brandedFrameLabel;
            if(AssetCache.assetInCache(brandedWalletName))
            {
               walletName = brandedWalletName;
            }
         }
         if(!this.mWalletClip || this.mWalletClip.name != walletName)
         {
            if(this.mWalletClip)
            {
               if(this.mWalletClip.parent)
               {
                  this.mWalletClip.parent.removeChild(this.mWalletClip);
               }
               this.mWalletClip = null;
            }
            wallet = AssetCache.getAssetFromCache(walletName);
            this.mWalletClip = new wallet();
            this.mWalletClip.x = this.mOffsetValueX;
            this.mWalletClip.y = this.mOffsetValueY;
            this.mWalletClip.name = walletName;
            if(this.mContainer.walletContainer)
            {
               this.mContainer.walletContainer.addChild(this.mWalletClip);
            }
            this.mWalletClip.coinsAddButton.visible = this.mShowAddCoinsButton;
            this.mWalletClip.coinsAddButton.addEventListener(MouseEvent.CLICK,this.onAddCoinsClicked);
            this.mWalletClip.birdCoin.gotoAndStop("Normal");
            this.setCoinsAmountText(dataModel.virtualCurrencyModel.totalCoins);
            if(this.mWalletClip[SALE_BUTTON_NAME])
            {
               this.mSaleButtonTextFields = new Vector.<TextField>();
               stateDoc = this.mWalletClip[SALE_BUTTON_NAME].upState as DisplayObjectContainer;
               for(i = 0; i < stateDoc.numChildren; i++)
               {
                  if(stateDoc.getChildAt(i) is TextField)
                  {
                     this.mSaleButtonTextFields.push(stateDoc.getChildAt(i));
                     break;
                  }
               }
               stateDoc = this.mWalletClip[SALE_BUTTON_NAME].overState as DisplayObjectContainer;
               for(i = 0; i < stateDoc.numChildren; i++)
               {
                  if(stateDoc.getChildAt(i) is TextField)
                  {
                     this.mSaleButtonTextFields.push(stateDoc.getChildAt(i));
                     break;
                  }
               }
               stateDoc = this.mWalletClip[SALE_BUTTON_NAME].downState as DisplayObjectContainer;
               for(i = 0; i < stateDoc.numChildren; i++)
               {
                  if(stateDoc.getChildAt(i) is TextField)
                  {
                     this.mSaleButtonTextFields.push(stateDoc.getChildAt(i));
                     break;
                  }
               }
               this.mWalletClip[SALE_BUTTON_NAME].addEventListener(MouseEvent.CLICK,this.onSaleButtonClicked);
            }
         }
         this.showPersonalizedOfferPopup();
      }
      
      private function showPersonalizedOfferPopup() : void
      {
         smWaitingForPersonalizedOffer = false;
         if(SalesCampaignManager.instance.saleCampaignID != SalesCampaignManager.NON_SPENDER_AUTO_SALE || !SalesCampaignManager.instance.isCampaignActive())
         {
            return;
         }
         if(DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.getData(ClientStorage.PERSONALIZED_OFFER_STORAGE_NAME) == SalesCampaignManager.instance.saleExpiresTimestamp)
         {
            return;
         }
         smWaitingForPersonalizedOffer = true;
      }
      
      public function enableCoinsButton(value:Boolean) : void
      {
         this.mWalletClip.coinsAddButton.enabled = value;
         this.mWalletClip.coinsAddButton.alpha = !!value ? 1 : 0.5;
         this.mWalletClip.coinsAddButton.mouseEnabled = value;
      }
      
      public function updateSaleButtonVisibility() : void
      {
         if(this.mWalletClip[SALE_BUTTON_NAME])
         {
            if(this.mEnableSaleButton && this.mSalesCampaignManager && this.mSalesCampaignManager.isCampaignActive())
            {
               this.mWalletClip[SALE_BUTTON_NAME].visible = true;
            }
            else
            {
               this.mWalletClip[SALE_BUTTON_NAME].visible = false;
            }
         }
      }
      
      public function get walletClip() : MovieClip
      {
         return this.mWalletClip;
      }
      
      private function onAmountChanged(e:WalletEvent) : void
      {
         if(this.mAutomaticallyAnimateCoinsOnChange)
         {
            this.animateGotCoins(e.changedAmount);
         }
         this.setCoinsAmountText(e.totalAmount);
      }
      
      public function setCoinsAmountText(coinsAmount:Number) : void
      {
         var myFormat:TextFormat = new TextFormat();
         if(coinsAmount >= 100000)
         {
            myFormat.size = 24;
            this.mWalletClip.coinsTextfield.defaultTextFormat = myFormat;
            this.mWalletClip.coinsTextfield.text = "99999+";
         }
         else
         {
            myFormat.size = 26;
            this.mWalletClip.coinsTextfield.defaultTextFormat = myFormat;
            this.mWalletClip.coinsTextfield.text = coinsAmount;
         }
      }
      
      private function onAddCoinsClicked(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm");
         var popup:CoinShopPopup = new CoinShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
         dispatchEvent(new Event(ADD_COINS));
      }
      
      public function dispose() : void
      {
         if(this.mWalletClip)
         {
            this.mWalletClip.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.onAddCoinsClicked);
            if(this.mWalletClip.parent)
            {
               this.mWalletClip.parent.removeChild(this.mWalletClip);
            }
         }
         dataModel.virtualCurrencyModel.removeEventListener(WalletEvent.AMOUNT_CHANGED,this.onAmountChanged);
         if(this.mSalesCampaignManager)
         {
            this.mSalesCampaignManager.removeEventListener(SalesCampaignManager.EVENT_UPDATE_WALLET,this.updateWallet);
            this.mSalesCampaignManager.removeEventListener(SalesCampaignManager.EVENT_SALE_DATA_SET,this.onSaleCampaignDataSet);
            this.mSalesCampaignManager = null;
         }
      }
      
      private function updateWallet(e:Event) : void
      {
         var timeString:String = null;
         var i:int = 0;
         if(this.mWalletClip)
         {
            if(this.mWalletClip.birdCoin.currentFrame >= this.mWalletClip.birdCoin.totalFrames)
            {
               this.mWalletClip.birdCoin.gotoAndStop("Normal");
            }
         }
         if(this.mSalesCampaignManager && this.mEnableSaleButton)
         {
            timeString = this.mSalesCampaignManager.getSaleTimeLeftAsPrettyString();
            if(timeString != this.mSaleButtonTextFields[0].text)
            {
               for(i = 0; i < this.mSaleButtonTextFields.length; i++)
               {
                  if(this.mSaleButtonTextFields[i])
                  {
                     this.mSaleButtonTextFields[i].text = timeString;
                  }
               }
            }
         }
         if(smWaitingForPersonalizedOffer)
         {
            if(ApplicationDomain.currentDomain.hasDefinition("NonSpenderAutoSalePopup"))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
               FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered(NonSpenderAutoSalePopup.ID,false);
               DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.PERSONALIZED_OFFER_STORAGE_NAME,[SalesCampaignManager.instance.saleExpiresTimestamp],true);
               smWaitingForPersonalizedOffer = false;
            }
         }
      }
      
      public function animateGotCoins(amount:int) : void
      {
         SoundEngine.playSound("Get_Coins",SoundEngine.UI_CHANNEL);
         var coinGained:CoinsGainedAnimation = new CoinsGainedAnimation(amount);
         this.mWalletClip.addChild(coinGained);
         this.mWalletClip.birdCoin.gotoAndPlay("GetCoins");
      }
      
      public function getName() : String
      {
         return "Wallet";
      }
      
      private function onSaleButtonClicked(e:MouseEvent) : void
      {
         var saleTypes:Array = null;
         if(!this.mSalesCampaignManager)
         {
            return;
         }
         if(this.mSalesCampaignManager.saleCampaignID == SalesCampaignManager.NON_SPENDER_AUTO_SALE)
         {
            if(!NonSpenderAutoSalePopup.isOfferStillAvailable())
            {
               return;
            }
            AngryBirdsBase.singleton.popupManager.openPopup(new NonSpenderAutoSalePopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
            FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered(NonSpenderAutoSalePopup.ID,true);
         }
         else
         {
            saleTypes = this.mSalesCampaignManager.getSaleCampaignTypes();
            if(saleTypes)
            {
               if(saleTypes.length > 1)
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,"",TabbedShopPopup.SHOP_ID_GENERAL,true));
               }
               else if(saleTypes[0] == "Powerups")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,PowerupType.sExtraBird.identifier,TabbedShopPopup.SHOP_ID_GENERAL));
                  FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("SHOP_POWERUPS",true);
               }
               else if(saleTypes[0] == "Slingshots")
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,SlingShotType.SLING_SHOT_GOLDEN.identifier,TabbedShopPopup.SHOP_ID_SLINGSHOT));
                  FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("SHOP_SLINGSHOTS",true);
               }
               else
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP));
                  dispatchEvent(new Event(ADD_COINS));
               }
            }
            else
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,"",TabbedShopPopup.SHOP_ID_GENERAL,true));
            }
         }
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
      }
      
      private function onSaleCampaignDataSet(e:Event) : void
      {
         this.createWalletGraphic();
         this.updateSaleButtonVisibility();
      }
   }
}
