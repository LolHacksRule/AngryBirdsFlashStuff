package com.angrybirds.dailyrewardpopup
{
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DailyRewardPopup extends AbstractPopup implements IWalletContainer, INavigable
   {
      
      public static const ID:String = "DailyRewardPopup";
      
      private static var sDailyRewardData:Object;
      
      private static const MINUTE:Number = 60 * 1000;
      
      private static const HOUR:Number = 60 * MINUTE;
      
      private static const DAY:Number = 24 * HOUR;
       
      
      private var mWallet:Wallet;
      
      private var mView:MovieClip;
      
      private var mRevealTimer:Timer;
      
      private var mRewardItems:Vector.<RewardItem>;
      
      private var mTournamentResultCoinsAddedToInventory:Boolean;
      
      public function DailyRewardPopup(layerIndex:int, priority:int, tournamentResultCoinsAddedToInventory:Boolean = false)
      {
         this.mRewardItems = new Vector.<RewardItem>();
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_DailyReward[0],ID);
         this.mTournamentResultCoinsAddedToInventory = tournamentResultCoinsAddedToInventory;
         if(!sDailyRewardData)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Can\'t open daily gift popup when there is no gifts."));
            return;
         }
      }
      
      public static function injectDailyRewardItems(dataObject:Object) : void
      {
         sDailyRewardData.items = dataObject.items;
      }
      
      public static function injectPrizeSchedule(dataObject:Object) : void
      {
         if(sDailyRewardData == null)
         {
            sDailyRewardData = new Object();
         }
         sDailyRewardData = dataObject;
      }
      
      public static function get hasDailyReward() : Boolean
      {
         return sDailyRewardData && sDailyRewardData.items;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
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
      
      override protected function init() : void
      {
         this.mView = mContainer.mClip;
         this.addWallet(new Wallet(this,false,false));
         this.mWallet.walletClip.x -= 20;
         this.mWallet.walletClip.y -= 4;
         this.mView.txtPowerup.text = "";
         this.mView.btnContinue.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         this.mRevealTimer = new Timer(300,1);
         this.mRevealTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
         this.mRevealTimer.start();
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         var rewardItem:RewardItem = null;
         super.show(useTransition);
         if(!sDailyRewardData || !sDailyRewardData.prizeSchedule)
         {
            return;
         }
         for(var i:int = sDailyRewardData.prizeSchedule.length - 1; i >= 0; i--)
         {
            rewardItem = new RewardItem(sDailyRewardData.prizeSchedule[i],sDailyRewardData.dayInSchedule,i);
            this.mRewardItems.push(rewardItem);
            this.mView.mcContainer.addChild(rewardItem);
            rewardItem.x = 110 + 500 * (i / (sDailyRewardData.prizeSchedule.length - 1));
            rewardItem.y = 385;
         }
         this.mView.mcReward.visible = false;
      }
      
      private function onTimerComplete(e:TimerEvent) : void
      {
         this.mRevealTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
         this.mRevealTimer.stop();
         if(!this.mWallet || !sDailyRewardData || !sDailyRewardData.items)
         {
            close();
            return;
         }
         var currentReward:Object = sDailyRewardData.prizeSchedule[sDailyRewardData.dayInSchedule - 1];
         this.mView.mcReward.visible = true;
         var powerupText:String = VirtualCurrencyModel.VIRTUAL_CURRENCY_PRETTY_NAME;
         this.mView.mcCount.awardCount.text = "x " + currentReward.quantity;
         this.mView.txtPowerup.text = powerupText;
         FacebookGoogleAnalyticsTracker.trackPowerupGained(FacebookGoogleAnalyticsTracker.POWERUP_SOURCE_DAILY_REWARD,VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID,currentReward.quantity);
         FacebookGoogleAnalyticsTracker.trackVirtualCurrencyGained(FacebookGoogleAnalyticsTracker.POWERUP_SOURCE_DAILY_REWARD,VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID,currentReward.quantity);
         var ao:AnalyticsObject = new AnalyticsObject();
         ao.screen = ID;
         ao.amount = currentReward.quantity;
         ao.currency = "IVC";
         ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_DAILY_REWARD;
         ao.itemType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
         ao.iapType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
         ao.itemName = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
         var aoArray:Array = [ao];
         FacebookAnalyticsCollector.getInstance().trackInventoryGainedEvent(false,ao.itemType,ao.amount,ao.gainType,ao.screen,ao.level,ao.itemName,ao.iapType,ao.paidAmount,ao.currency,ao.receiptId);
         ItemsInventory.instance.loadInventory();
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         close();
      }
      
      override public function dispose() : void
      {
         var rewardItem:RewardItem = null;
         super.dispose();
         for each(rewardItem in this.mRewardItems)
         {
            rewardItem.dispose();
         }
         this.mRewardItems = new Vector.<RewardItem>();
         sDailyRewardData = null;
         this.mRevealTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
         this.mRevealTimer.reset();
         this.removeWallet(this.mWallet);
      }
      
      public function get walletContainer() : Sprite
      {
         return this.mView.mcContainer;
      }
      
      public function get wallet() : Wallet
      {
         return this.mWallet;
      }
      
      public function getName() : String
      {
         return ID;
      }
   }
}
