package com.angrybirds.spiningwheel
{
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.spiningwheel.data.BaseItemVO;
   import com.angrybirds.spiningwheel.data.DailyRewardVO;
   import com.angrybirds.spiningwheel.data.SpinningWheelDataLoader;
   import com.angrybirds.spiningwheel.data.WheelItemVO;
   import com.angrybirds.spiningwheel.events.SpinningWheelEvent;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.IPopupManager;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class SpinningWheelController extends EventDispatcher implements ISpinningWheelControllerDelegate
   {
      
      private static var _instance:SpinningWheelController = new SpinningWheelController();
      
      public static const STATE_NONE:uint = 0;
      
      public static const STATE_SPIN:uint = 1;
      
      public static const STATE_DAILY_SPIN_COMPLETED:uint = 3;
      
      private static var ITEMS_NAME_FOR_ANALYTICS:Dictionary;
       
      
      private var mPopUpManager:IPopupManager;
      
      private var mLoader:SpinningWheelDataLoader;
      
      private var mDailyRewardVO:DailyRewardVO;
      
      private var mPopUp:SpinningWheelPopUp;
      
      private var mLoading:Boolean;
      
      private var mState:uint;
      
      private var mFacebookAnalyticsCollector:FacebookAnalyticsCollector;
      
      private var mDelayedSpinTaken:Boolean;
      
      public function SpinningWheelController()
      {
         super();
         this.initAnalytics();
         if(_instance)
         {
            throw new Error("SpinningWheelController is singleton");
         }
      }
      
      public static function get instance() : SpinningWheelController
      {
         return _instance;
      }
      
      private function initAnalytics() : void
      {
         ITEMS_NAME_FOR_ANALYTICS = new Dictionary();
         ITEMS_NAME_FOR_ANALYTICS["VirtualCurrency"] = "BIRDCOINS";
         ITEMS_NAME_FOR_ANALYTICS["BirdFood"] = "POWERPOTION";
         ITEMS_NAME_FOR_ANALYTICS["LaserSight"] = "SLINGSCOPE";
         ITEMS_NAME_FOR_ANALYTICS["Earthquake"] = "BIRDQUAKE";
         ITEMS_NAME_FOR_ANALYTICS["ExtraBird"] = "WINGMAN";
         ITEMS_NAME_FOR_ANALYTICS["ExtraSpeed"] = "KINGSLING";
         ITEMS_NAME_FOR_ANALYTICS["PowerupBundle"] = "POWERUPBUNDLE";
         this.mFacebookAnalyticsCollector = FacebookAnalyticsCollector.getInstance();
      }
      
      public function init(popUpManager:IPopupManager) : void
      {
         this.mLoading = true;
         this.mPopUpManager = popUpManager;
         this.mLoader = new SpinningWheelDataLoader();
         this.mLoader.addEventListener(SpinningWheelEvent.DAILY_REWARDS_DATA_LOADED,this.cbOnDailyRewardDataLoaded);
         this.mLoader.addEventListener(SpinningWheelEvent.SPIN_REWARD_RECEIVED,this.cbOnDailyRewardReceived);
         this.mLoader.addEventListener(SpinningWheelEvent.EVENT_SPINNING_WHEEL_DATA_ERROR,this.cbOnServerError);
         this.mLoader.loadRewardData();
      }
      
      private function cbOnServerError(event:SpinningWheelEvent) : void
      {
         var popup:IPopup = new ErrorPopup(PopupLayerIndexFacebook.ERROR,PopupPriorityType.TOP,ErrorPopup.ERROR_GENERAL);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      private function cbOnDailyRewardReceived(event:SpinningWheelEvent) : void
      {
         var reward:BaseItemVO = this.mDailyRewardVO.getItemForID(this.mDailyRewardVO.getPredictedWheelRewardID());
         var name:String = reward.inventoryName;
         if(name == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
         {
            name = this.getNameForCurrencyPack(reward.quantity);
            if(name == null)
            {
               throw new Error("Failed to find the right VC Package name for the quantity " + reward.quantity);
            }
         }
         this.addToInventory(reward);
         this.trackReward(reward);
         if(this.mPopUp)
         {
            this.mPopUp.stopWheelAt(name);
         }
         this.mState = STATE_DAILY_SPIN_COMPLETED;
         dispatchEvent(new SpinningWheelEvent(SpinningWheelEvent.SPIN_REWARD_RECEIVED,null));
      }
      
      private function getItemsCountInWheel() : uint
      {
         var wheelItems:Vector.<WheelItemVO> = this.mDailyRewardVO.getWheelItems();
         return wheelItems.length;
      }
      
      private function trackReward(reward:BaseItemVO) : void
      {
         var name:String = ITEMS_NAME_FOR_ANALYTICS[reward.inventoryName];
         if(name == null)
         {
            name = reward.inventoryName;
         }
         var quantity:uint = reward.quantity;
         this.mFacebookAnalyticsCollector.trackDailySpinReward(name,quantity,this.getItemsCountInWheel());
      }
      
      private function trackItemRemove(item:WheelItemVO) : void
      {
         var name:* = item.inventoryName;
         if(name == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
         {
            name = item.quantity + "COINS";
         }
         else
         {
            name = ITEMS_NAME_FOR_ANALYTICS[item.inventoryName];
         }
         if(name == null)
         {
            name = item.inventoryName;
         }
         this.mFacebookAnalyticsCollector.trackItemRemovedFromSpinningWheel(name);
      }
      
      private function addToInventory(reward:BaseItemVO) : void
      {
         var coins:int = 0;
         var powerupCount:int = 0;
         var currencyEvent:Boolean = false;
         var ao1:AnalyticsObject = new AnalyticsObject();
         ao1.screen = SpinningWheelPopUp.ID;
         if(reward.inventoryName == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
         {
            ao1.currency = "IVC";
            coins = (AngryBirdsBase.singleton.dataModel as DataModelFriends).virtualCurrencyModel.totalCoins;
            ao1.amount = reward.quantity - coins;
            currencyEvent = true;
         }
         else
         {
            powerupCount = ItemsInventory.instance.getCountForPowerup(reward.inventoryName);
            ao1.amount = reward.quantity - powerupCount;
         }
         ao1.itemType = reward.inventoryName;
         ao1.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_DAILY_REWARD;
         ItemsInventory.instance.injectInventoryUpdate(this.mDailyRewardVO.getRewardRawData(),currencyEvent,[ao1]);
      }
      
      private function getNameForCurrencyPack(quantity:uint) : String
      {
         var item:WheelItemVO = null;
         var name:String = null;
         var wheelItems:Vector.<WheelItemVO> = this.mDailyRewardVO.getWheelItems();
         for each(item in wheelItems)
         {
            if(item.inventoryName == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID && item.quantity == quantity)
            {
               name = item.mType;
               break;
            }
         }
         return name;
      }
      
      public function isSpinAvailable() : Boolean
      {
         return this.mState == STATE_SPIN;
      }
      
      public function isDailyRewardDataLoading() : Boolean
      {
         return this.mLoading;
      }
      
      public function showSpinningWheel() : void
      {
         this.mPopUp = new SpinningWheelPopUp(this.mDailyRewardVO,this);
         this.mPopUp.addEventListener(PopupEvent.CLOSE,this.cbOnPopUpClose);
         this.mPopUp.addEventListener(SpinningWheelEvent.WHEEL_SPUN,this.cbOnWheelSpun);
         this.mPopUp.addEventListener(SpinningWheelEvent.REWARD_CLAIMED_FROM_WHEEL,this.cbOnRewardClaimedFromWheel);
         this.mPopUpManager.openPopup(this.mPopUp);
      }
      
      private function cbOnRewardClaimedFromWheel(event:SpinningWheelEvent) : void
      {
         this.mPopUp.updateState();
      }
      
      private function cbOnWheelSpun(event:SpinningWheelEvent) : void
      {
         this.mLoader.getReward();
         dispatchEvent(new SpinningWheelEvent(SpinningWheelEvent.WHEEL_SPUN));
      }
      
      private function cbOnPopUpClose(event:PopupEvent) : void
      {
         this.mPopUp.removeEventListener(PopupEvent.CLOSE,this.cbOnPopUpClose);
         this.mPopUp.removeEventListener(SpinningWheelEvent.WHEEL_SPUN,this.cbOnWheelSpun);
         this.mPopUp.removeEventListener(SpinningWheelEvent.REWARD_CLAIMED_FROM_WHEEL,this.cbOnRewardClaimedFromWheel);
         this.mPopUp = null;
      }
      
      private function cbOnDailyRewardDataLoaded(event:SpinningWheelEvent) : void
      {
         this.mLoading = false;
         this.mDailyRewardVO = DailyRewardVO(event.data);
         this.mState = !this.mDailyRewardVO.hasRewardToShow() ? uint(STATE_DAILY_SPIN_COMPLETED) : uint(STATE_SPIN);
         if(this.mPopUp)
         {
            this.mPopUp.updateState();
            this.mPopUp.showLoadingScreen(false);
         }
         dispatchEvent(new SpinningWheelEvent(SpinningWheelEvent.NEW_SPIN_AVAILABLE));
      }
      
      public function getState() : uint
      {
         return this.mState;
      }
      
      private function getItemForName(name:String) : WheelItemVO
      {
         var item:WheelItemVO = null;
         var wheelItem:WheelItemVO = null;
         var wheelItems:Vector.<WheelItemVO> = this.mDailyRewardVO.getWheelItems();
         for each(item in wheelItems)
         {
            if(item.mType && item.mType == name || item.inventoryName == name)
            {
               wheelItem = item;
               break;
            }
         }
         return wheelItem;
      }
   }
}
