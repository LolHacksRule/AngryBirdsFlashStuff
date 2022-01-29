package com.angrybirds.tournament
{
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.coinshop.CoinShopPopup;
   import com.angrybirds.shoppopup.serveractions.ShopListing;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.analytics.INavigable;
   import flash.events.Event;
   
   public class UnlockableLevelButton
   {
       
      
      protected var mParentView:INavigable;
      
      protected var mButton:UIButtonRovio;
      
      protected var mCurrentLevel:String;
      
      protected var mLevelId:String;
      
      protected var mLevelObject:Object;
      
      protected var mTournamentModel:TournamentModel;
      
      protected var mShopListing:ShopListing;
      
      protected var mVcModel:VirtualCurrencyModel;
      
      protected var mIsLevelOpen:Boolean;
      
      protected var mIsPurchasing:Boolean = false;
      
      protected var mIsPriceLoaded:Boolean = false;
      
      public function UnlockableLevelButton(parentView:INavigable, button:UIButtonRovio, tournamentModel:TournamentModel, shopListing:ShopListing, vcModel:VirtualCurrencyModel)
      {
         super();
         this.mParentView = parentView;
         this.mButton = button;
         this.mTournamentModel = tournamentModel;
         this.mShopListing = shopListing;
         this.mVcModel = vcModel;
      }
      
      public function activate(levelId:String) : void
      {
         this.mLevelId = levelId;
         this.mLevelObject = this.mTournamentModel.getLevelObject(this.mLevelId);
         this.mIsLevelOpen = this.mTournamentModel.isLevelOpen(this.mLevelId);
         this.setLocked(!this.mIsLevelOpen);
         if(this.mTournamentModel.levelBeingUnlocked == this.mLevelObject)
         {
            this.setPurchasable(false);
         }
         else if(this.mShopListing.tournamentLevelUnlock)
         {
            this.priceLoaded();
         }
         else
         {
            this.setPurchasable(false);
            this.mShopListing.addEventListener(Event.COMPLETE,this.onShopListingComplete);
         }
      }
      
      public function deactivate() : void
      {
         this.mShopListing.removeEventListener(Event.COMPLETE,this.onShopListingComplete);
      }
      
      public function get canPlay() : Boolean
      {
         return this.mIsLevelOpen;
      }
      
      public function get canPurchase() : Boolean
      {
         return !this.canPlay && this.mIsPriceLoaded && !this.mIsPurchasing;
      }
      
      public function purchase() : void
      {
         var popup:CoinShopPopup = null;
         if(this.canPurchase)
         {
            if(this.mVcModel.totalCoins < this.mShopListing.tournamentLevelUnlock[0].getPricePoint(0).price)
            {
               popup = new CoinShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,CoinShopPopup.NOT_ENOUGH_COINS);
               AngryBirdsBase.singleton.popupManager.openPopup(popup);
            }
            else
            {
               this.setPurchasable(false);
               this.mTournamentModel.unlockLevel(this.mLevelObject);
               FacebookGoogleAnalyticsTracker.trackLevelUnlock(this.mLevelId,this.sourceForTracking);
            }
         }
      }
      
      private function onShopListingComplete(e:Event) : void
      {
         this.priceLoaded();
      }
      
      private function priceLoaded() : void
      {
         if(this.mShopListing.tournamentLevelUnlock && this.mShopListing.tournamentLevelUnlock.length > 0)
         {
            this.mIsPriceLoaded = true;
            this.setPurchasable(true);
            this.showPrice(this.mShopListing.tournamentLevelUnlock[0].getPricePoint(0).price);
         }
         else
         {
            this.setPurchasable(false);
         }
      }
      
      public function update() : void
      {
         if(!this.mLevelId || this.mIsLevelOpen)
         {
            return;
         }
         if(this.mIsPurchasing)
         {
            if(!this.mTournamentModel.levelBeingUnlocked)
            {
               this.mIsLevelOpen = true;
               this.setLocked(!this.mIsLevelOpen);
            }
            return;
         }
         if(this.mTournamentModel.isLevelOpen(this.mLevelId))
         {
            this.mIsLevelOpen = true;
            this.setLocked(!this.mIsLevelOpen);
            return;
         }
         this.updateTimeUntilUnlocked();
      }
      
      private function updateTimeUntilUnlocked() : void
      {
         var timeLeft:* = null;
         var seconds:int = 0;
         var minutes:int = 0;
         var secondsLeft:int = this.mTournamentModel.secondsToUnlock(this.mLevelId);
         if(secondsLeft < 60 * 60)
         {
            seconds = secondsLeft;
            minutes = Math.floor(secondsLeft / 60);
            seconds -= minutes * 60;
            timeLeft = (minutes < 10 ? "0" : "") + minutes + ":" + (seconds < 10 ? "0" : "") + seconds;
         }
         else if(secondsLeft < 60 * 60 * 24)
         {
            timeLeft = Math.ceil(secondsLeft / (60 * 60)).toString() + " hours";
         }
         else
         {
            timeLeft = Math.ceil(secondsLeft / (60 * 60 * 24)).toString() + " days";
         }
         this.showTimeUntilUnlocked(timeLeft);
      }
      
      public function setScale(scale:Number) : void
      {
         this.mButton.scaleX = scale;
         this.mButton.scaleY = scale;
      }
      
      public function setPosition(posX:Number, posY:Number) : void
      {
         this.mButton.x = posX;
         this.mButton.y = posY;
      }
      
      protected function showTimeUntilUnlocked(prettyTime:String) : void
      {
      }
      
      protected function showPrice(price:int) : void
      {
      }
      
      protected function setPurchasable(value:Boolean) : void
      {
      }
      
      protected function setLocked(value:Boolean) : void
      {
      }
      
      protected function get buttonName() : String
      {
         return "";
      }
      
      protected function get sourceForTracking() : String
      {
         return "";
      }
   }
}
