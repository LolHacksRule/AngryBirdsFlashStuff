package com.angrybirds.data
{
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.events.InventoryUpdatedEvent;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.popups.AvatarCreatorPopup;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.ProcessingPopup;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.powerups.BundleHandler;
   import com.angrybirds.powerups.PowerupDefinition;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.HashMap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class ItemsInventory extends EventDispatcher
   {
      
      public static const EVENT_INVENTORY_LOADED:String = "InventoryLoaded";
      
      public static const EVENT_PROCESSING_POPUP_CLOSED:String = "ProcessingPopupClosed";
      
      public static const BOUGHT_LEVELS:String = "BoughtLevels";
      
      protected static var sInstance:ItemsInventory;
      
      private static const RETRY_MECHANISM_RETRY_AMOUNT:int = 300;
      
      private static const RETRY_MECHANISM_TIMER_DELAY:int = 2000;
      
      private static const LEVELS_WITH_UNLIMITED_POWERUPS:Array = ["2000-83","Test-PlayLevel"];
       
      
      private var mRetryMechanismTimer:Timer;
      
      private var mRetryMechanismRetryCounter:int;
      
      private var mProcessingPopup:ProcessingPopup;
      
      protected var mLoaded:Boolean = false;
      
      protected var mInventoryLoader:ABFLoader;
      
      protected var mItems:HashMap;
      
      protected var mPowerupSubscriptions:HashMap;
      
      protected var mPowerupSubscriptionIds:HashMap;
      
      protected var mBundleHandler:BundleHandler;
      
      private var mLevelManager:LevelManager;
      
      public function ItemsInventory()
      {
         var powerupDefiniton:PowerupDefinition = null;
         this.mItems = new HashMap();
         this.mPowerupSubscriptions = new HashMap();
         this.mPowerupSubscriptionIds = new HashMap();
         super();
         if(sInstance)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Can\'t create more than one instance of PowerupsInventory."));
         }
         for each(powerupDefiniton in PowerupType.allPowerups)
         {
            this.mItems[powerupDefiniton.identifier] = 0;
         }
         sInstance = this;
      }
      
      public static function get instance() : ItemsInventory
      {
         if(!sInstance)
         {
            sInstance = new ItemsInventory();
         }
         return sInstance;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      public function loadInventory(useRetryMechanism:Boolean = false) : void
      {
         if(this.mInventoryLoader)
         {
            this.mInventoryLoader.removeEventListener(Event.COMPLETE,this.onInventoryLoaded);
            this.mInventoryLoader.removeEventListener(Event.COMPLETE,this.onInventoryLoadedRetryMechanism);
            this.mInventoryLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onInventoryLoadError);
            this.mInventoryLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onInventoryLoadError);
            this.mInventoryLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onInventoryLoadError);
            this.mInventoryLoader = null;
         }
         this.mInventoryLoader = new ABFLoader();
         this.mInventoryLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onInventoryLoadError);
         this.mInventoryLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onInventoryLoadError);
         this.mInventoryLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onInventoryLoadError);
         this.mInventoryLoader.dataFormat = URLLoaderDataFormat.TEXT;
         if(useRetryMechanism)
         {
            if(!this.mRetryMechanismTimer)
            {
               this.mRetryMechanismTimer = new Timer(RETRY_MECHANISM_TIMER_DELAY,1);
               this.mRetryMechanismTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onRetryMechanismTimerComplete);
               this.mRetryMechanismRetryCounter = 0;
            }
            this.mInventoryLoader.addEventListener(Event.COMPLETE,this.onInventoryLoadedRetryMechanism);
            this.mRetryMechanismTimer.start();
            this.setProcessingPopup(true);
         }
         else
         {
            this.mInventoryLoader.addEventListener(Event.COMPLETE,this.onInventoryLoaded);
            this.mInventoryLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
      }
      
      public function get bundleHandler() : BundleHandler
      {
         return this.mBundleHandler;
      }
      
      protected function injectFullInventory(dataObject:Object) : void
      {
         this.mItems = new HashMap();
         this.mPowerupSubscriptions = new HashMap();
         this.mPowerupSubscriptionIds = new HashMap();
         this.updateInventory(dataObject);
         this.mInventoryLoader = null;
         this.setProcessingPopup(false);
      }
      
      private function updateInventory(itemsObject:Object, skipVirtualCurrencyEvent:Boolean = false, aoArray:Array = null) : Array
      {
         var ao:AnalyticsObject = null;
         var responseObject:Object = null;
         var itemsPreviousMatch:Object = null;
         var oldAmount:int = 0;
         var changedAmount:int = 0;
         var powerupDef:PowerupDefinition = null;
         var changedCoins:int = 0;
         var slingShotDef:SlingShotDefinition = null;
         var deltaForChangedItems:Array = [];
         if(!this.mBundleHandler)
         {
            this.mBundleHandler = new BundleHandler(itemsObject.ownedBundles,itemsObject.claimableBundles,itemsObject.cbc);
         }
         else if(this.mBundleHandler && itemsObject.ownedBundles)
         {
            this.mBundleHandler.injectOwnedBundles(itemsObject.ownedBundles);
         }
         else if(this.mBundleHandler && itemsObject.claimableBundles)
         {
            this.mBundleHandler.injectClaimableBundles(itemsObject.claimableBundles);
         }
         else if(this.mBundleHandler && itemsObject.cbc)
         {
            this.mBundleHandler.injectClaimableBundleContent(itemsObject.cbc);
         }
         for each(ao in aoArray)
         {
            if(ao)
            {
               ao.itemName = ao.itemType;
               if(!ao.iapType)
               {
                  if(ao.screen == AvatarCreatorPopup.ID)
                  {
                     ao.iapType = "Avatar";
                  }
                  else if(ao.itemType == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
                  {
                     ao.iapType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
                  }
                  else if(ao.itemType == PowerupType.POWERUP_BUNDLE_ID)
                  {
                     ao.iapType = PowerupType.POWERUP_BUNDLE_ID;
                  }
                  else if(SlingShotType.getSlingShotByID(ao.itemType))
                  {
                     ao.iapType = "Slingshot";
                  }
                  else
                  {
                     ao.iapType = "Powerup";
                  }
               }
               ao.firstTimePurchased = !itemsObject.hasBought;
               FacebookAnalyticsCollector.getInstance().trackInventoryGainedEvent(ao.firstTimePurchased,ao.itemType,ao.amount,ao.gainType,ao.screen,ao.level,ao.itemName,ao.iapType,ao.paidAmount,ao.currency,ao.receiptId);
            }
         }
         for each(responseObject in itemsObject.items)
         {
            if(responseObject is Array)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Inventory response object can\'t be Array."));
            }
            if(itemsObject.itemsPrev)
            {
               itemsPreviousMatch = this.findObjectInPreviousItems(responseObject.i,itemsObject.itemsPrev);
            }
            if(responseObject.i == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
            {
               if(itemsPreviousMatch)
               {
                  dataModel.virtualCurrencyModel.updateCoinsTotal(itemsPreviousMatch.q,true);
               }
               changedCoins = dataModel.virtualCurrencyModel.updateCoinsTotal(responseObject.q,skipVirtualCurrencyEvent);
               if(changedCoins != 0)
               {
                  deltaForChangedItems.push(new ItemAmountChangeVO(changedCoins,VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID));
               }
               FacebookGoogleAnalyticsTracker.trackVirtualCurrencyCount(responseObject.q,dataModel.userModel.isPayer);
            }
            else if(responseObject.i != PiggyCurrencyModel.PIGGY_CURRENCY_ITEM_ID)
            {
               powerupDef = PowerupType.getPowerupByID(responseObject.i);
               if(powerupDef && responseObject.s)
               {
                  this.mPowerupSubscriptions[powerupDef.identifier] = Number(responseObject.s);
                  this.mPowerupSubscriptionIds[responseObject.i] = true;
                  this.mItems[responseObject.i] = responseObject.q;
                  deltaForChangedItems.push(new ItemAmountChangeVO(1,responseObject.i));
               }
               else
               {
                  slingShotDef = SlingShotType.getSlingShotByID(responseObject.i);
                  if(slingShotDef)
                  {
                     slingShotDef.purchased = true;
                  }
                  if(itemsPreviousMatch)
                  {
                     oldAmount = itemsPreviousMatch.q;
                  }
                  else
                  {
                     oldAmount = this.mItems[responseObject.i];
                  }
                  changedAmount = responseObject.q - oldAmount;
                  this.mItems[responseObject.i] = responseObject.q;
                  if(changedAmount != 0)
                  {
                     deltaForChangedItems.push(new ItemAmountChangeVO(changedAmount,responseObject.i));
                  }
                  FacebookGoogleAnalyticsTracker.trackPowerupCount(responseObject.i,responseObject.q);
               }
            }
         }
         if(itemsObject.boughtLevels)
         {
            this.mItems[BOUGHT_LEVELS] = itemsObject.boughtLevels;
         }
         if(itemsObject.items)
         {
            (AngryBirdsBase.singleton.dataModel as DataModelFriends).userModel.isPayer = itemsObject.items.hasBought;
         }
         dispatchEvent(new InventoryUpdatedEvent(Event.CHANGE,itemsObject.items));
         return deltaForChangedItems;
      }
      
      private function findObjectInPreviousItems(identifier:String, previousItems:Object) : Object
      {
         var responseObject:Object = null;
         for each(responseObject in previousItems)
         {
            if(responseObject.i == identifier)
            {
               return responseObject;
            }
         }
         return null;
      }
      
      public function injectInventoryUpdate(items:Object, skipVirtualCurrencyEvent:Boolean = false, ao:Array = null) : Array
      {
         if(items == null)
         {
            return [];
         }
         return this.updateInventory(items,skipVirtualCurrencyEvent,ao);
      }
      
      protected function onInventoryLoadedRetryMechanism(e:Event) : void
      {
         var result:Array = this.updateInventory(this.mInventoryLoader.data);
         if(!result || result.length == 0)
         {
            if(this.mRetryMechanismRetryCounter < RETRY_MECHANISM_RETRY_AMOUNT)
            {
               this.mRetryMechanismTimer.start();
               this.setProcessingPopup(true);
            }
            else
            {
               this.deactivateRetryMechanism();
               this.mInventoryLoader = null;
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Can\'t update the inventory."));
            }
         }
         else
         {
            this.deactivateRetryMechanism();
            this.mInventoryLoader = null;
         }
      }
      
      private function onRetryMechanismTimerComplete(e:TimerEvent) : void
      {
         if(this.mInventoryLoader)
         {
            this.mInventoryLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
         if(this.mRetryMechanismTimer)
         {
            this.mRetryMechanismTimer.reset();
            ++this.mRetryMechanismRetryCounter;
         }
      }
      
      protected function onInventoryLoaded(e:Event) : void
      {
         this.injectFullInventory(this.mInventoryLoader.data);
         dispatchEvent(new Event(EVENT_INVENTORY_LOADED));
      }
      
      protected function onInventoryLoadError(e:Event) : void
      {
         var popup:IPopup = null;
         this.deactivateRetryMechanism();
         if(e.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            popup = new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED);
         }
         else
         {
            popup = new WarningPopup(PopupLayerIndexFacebook.ERROR,PopupPriorityType.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
         this.mInventoryLoader = null;
      }
      
      public function getSubscriptionExpirationForPowerup(powerupId:String) : Number
      {
         if(!this.isTournament())
         {
            return 0;
         }
         if(this.mPowerupSubscriptions[powerupId] < new Date().time)
         {
            delete this.mPowerupSubscriptions[powerupId];
            delete this.mPowerupSubscriptionIds[powerupId];
         }
         return Number(this.mPowerupSubscriptions[powerupId]) || Number(0);
      }
      
      public function getCountForPowerup(powerupId:String, checkSubscription:Boolean = true) : int
      {
         if(this.getSubscriptionExpirationForPowerup(powerupId) > 0 && checkSubscription)
         {
            if(this.mItems[powerupId])
            {
               return this.mItems[powerupId];
            }
            return 1;
         }
         return this.mItems[powerupId];
      }
      
      public function setCountForPowerup(powerupId:String, newCount:int) : void
      {
         this.mItems[powerupId] = newCount;
      }
      
      public function usePowerup(powerupId:String) : void
      {
         var usedPowerupObject:Object = null;
         if(this.getSubscriptionExpirationForPowerup(powerupId) > 0)
         {
            usedPowerupObject = new Object();
            usedPowerupObject.i = powerupId;
            dispatchEvent(new InventoryUpdatedEvent(Event.CHANGE,[usedPowerupObject]));
            return;
         }
         if(this.getCountForPowerup(powerupId) <= 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Can\'t use powerup " + powerupId + ", user doesn\'t have any left."));
         }
         --this.mItems[powerupId];
      }
      
      private function isTournament() : Boolean
      {
         return this.mLevelManager.getCurrentEpisodeModel().isTournament;
      }
      
      public function isSubscriptionIDActive(pID:String) : Boolean
      {
         if(!this.mPowerupSubscriptions[pID] || this.mPowerupSubscriptions[pID] < new Date().time)
         {
            delete this.mPowerupSubscriptions[pID];
            delete this.mPowerupSubscriptionIds[pID];
         }
         return this.mPowerupSubscriptionIds[pID];
      }
      
      public function get isLoading() : Boolean
      {
         return this.mInventoryLoader != null;
      }
      
      private function setProcessingPopup(value:Boolean) : void
      {
         if(value && !this.mProcessingPopup)
         {
            this.mProcessingPopup = new ProcessingPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.mProcessingPopup);
         }
         else if(!value && this.mProcessingPopup)
         {
            this.mProcessingPopup.close();
            this.mProcessingPopup = null;
            dispatchEvent(new Event(EVENT_PROCESSING_POPUP_CLOSED));
         }
      }
      
      private function deactivateRetryMechanism() : void
      {
         if(this.mRetryMechanismTimer)
         {
            this.mRetryMechanismTimer.stop();
            this.mRetryMechanismTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onRetryMechanismTimerComplete);
            this.mRetryMechanismTimer = null;
         }
         this.setProcessingPopup(false);
      }
      
      public function setLevelManager(levelManager:LevelManager) : void
      {
         this.mLevelManager = levelManager;
      }
      
      public function isLevelBought(levelID:String) : Boolean
      {
         var lid:String = null;
         if(this.mItems[BOUGHT_LEVELS])
         {
            for each(lid in this.mItems[BOUGHT_LEVELS])
            {
               if(levelID == lid)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function getAmountOfItem(itemName:String) : int
      {
         var returnValue:int = 0;
         if(this.mItems[itemName])
         {
            returnValue = this.mItems[itemName];
         }
         return returnValue;
      }
   }
}
