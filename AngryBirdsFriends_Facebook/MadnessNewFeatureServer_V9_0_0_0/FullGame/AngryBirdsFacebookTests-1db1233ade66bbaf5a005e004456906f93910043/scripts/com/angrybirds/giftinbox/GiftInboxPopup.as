package com.angrybirds.giftinbox
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.abtesting.ABTestingModel;
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.OpenGraphData;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.ui.VScroller;
   import com.angrybirds.friendsbar.ui.profile.BirdBotProfilePicture;
   import com.angrybirds.giftinbox.events.GiftInboxEvent;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.GiftFriendsPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.states.StateFacebookEpisodeSelection;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.SessionRetryingURLLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class GiftInboxPopup extends AbstractPopup implements IWalletContainer, INavigable
   {
      
      public static const ID:String = "GiftInboxPopup";
      
      public static const MAXIMUM_PLAYERS_PER_REQUEST:int = 25;
      
      private static const USE_CLAIM_ALL_BUTTON:Boolean = true;
      
      protected static var sLoader:ABFLoader;
      
      protected static var sCheckLoader:ABFLoader;
      
      protected static var sRequests:Array;
      
      protected static var sInstance:GiftInboxPopup;
      
      protected static var sOpenAfterLoading:Boolean;
      
      protected static var sBrags:Array = [];
      
      private static var sOldContentAmount:int = 0;
       
      
      protected var mGiftRequestScroller:VScroller;
      
      protected var mLoaders:Array;
      
      private var mWallet:Wallet;
      
      private var mForceReload:Boolean = false;
      
      private var mView:MovieClip;
      
      private var mClaimedGiftsList:Array;
      
      private var mClaimAllButton:UIButtonRovio;
      
      public function GiftInboxPopup(layerIndex:int, priority:int, forceReload:Boolean)
      {
         this.mLoaders = [];
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_GiftInbox[0],ID);
         this.mForceReload = forceReload;
      }
      
      public static function get instance() : GiftInboxPopup
      {
         return sInstance;
      }
      
      public static function loadGifts(openAfterLoading:Boolean) : void
      {
         if(sLoader)
         {
            return;
         }
         sOpenAfterLoading = openAfterLoading;
         sRequests = [];
         sLoader = new ABFLoader();
         sLoader.addEventListener(Event.COMPLETE,onGiftsLoaded);
         sLoader.addEventListener(IOErrorEvent.IO_ERROR,onGiftsLoadError);
         sLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onGiftsLoadError);
         sLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,onGiftsLoadError);
         sLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         sLoader.load(urlRequest);
      }
      
      protected static function onGiftsLoadError(event:Event) : void
      {
         var popup:IPopup = null;
         if(event.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            popup = new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED);
         }
         else
         {
            popup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
         sLoader = null;
      }
      
      private static function onGiftsLoaded(e:Event) : void
      {
         var bragObject:Object = null;
         var popup:IPopup = null;
         var dataObject:Object = sLoader.data;
         sBrags = dataObject.brags;
         sRequests = dataObject.gifts.concat(sBrags);
         sLoader = null;
         if(sInstance)
         {
            sInstance.giftsLoaded();
         }
         for each(bragObject in dataObject.brags)
         {
            ExternalInterfaceHandler.performCall("flashDeleteRequest",bragObject.r);
         }
         itemCountUpdated();
         if(sOpenAfterLoading && hasInboxItems)
         {
            sOpenAfterLoading = false;
            popup = new GiftInboxPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,false);
            AngryBirdsBase.singleton.popupManager.openPopup(popup);
         }
      }
      
      public static function injectData(dataObject:Object) : void
      {
         sBrags = dataObject.brags;
         sRequests = dataObject.gifts.concat(sBrags);
         if(sInstance)
         {
            sInstance.giftsLoaded();
         }
      }
      
      public static function get hasInboxItems() : Boolean
      {
         return sRequests.length > 0;
      }
      
      public static function get isLoading() : Boolean
      {
         return sLoader != null;
      }
      
      protected static function itemCountUpdated() : void
      {
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar)
         {
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.setInboxItemCount(inboxItemCount);
         }
      }
      
      public static function get inboxItemCount() : int
      {
         var request:Object = null;
         var count:int = 0;
         for each(request in sRequests)
         {
            if(request.lvl)
            {
               count++;
            }
            else if(!request.status || request.status == GiftRequestItemRenderer.GIFT_STATUS_UNCLAIMED)
            {
               count++;
            }
         }
         return count;
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      override protected function init() : void
      {
         sInstance = this;
         if(this.mForceReload)
         {
            loadGifts(false);
         }
         this.mGiftRequestScroller = new VScroller(678,285,sRequests || [],GiftRequestItemRenderer,5,10);
         this.mGiftRequestScroller.scrollerSprite.x = 16;
         this.mGiftRequestScroller.scrollerSprite.y = 111;
         this.mView = mContainer.mClip;
         this.mView.mcContainer.addChild(this.mGiftRequestScroller.scrollerSprite);
         this.addGiftRequestScrollerEventListeners();
         this.addButtonEventListeners();
         this.mClaimAllButton = UIButtonRovio(mContainer.getItemByName("Button_ClaimAll"));
         if(isLoading)
         {
            this.mView.mcStatuses.gotoAndStop(1);
         }
         else if(sRequests.length > 0)
         {
            this.mView.mcStatuses.visible = false;
         }
         else
         {
            this.mView.mcStatuses.gotoAndStop(2);
         }
         this.updateArrowGraphics();
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
      
      public function get walletContainer() : Sprite
      {
         return this.mView.mcContainer;
      }
      
      public function get wallet() : Wallet
      {
         return this.mWallet;
      }
      
      private function addGiftRequestScrollerEventListeners() : void
      {
         this.removeGiftRequestScrollerEventListeners();
         this.mGiftRequestScroller.scrollerSprite.addEventListener(GiftInboxEvent.CLAIM_GIFT,this.onClaimAndSendGift);
         this.mGiftRequestScroller.scrollerSprite.addEventListener(GiftInboxEvent.CLAIM_GIFT_ONLY,this.onClaimGiftOnly);
         this.mGiftRequestScroller.scrollerSprite.addEventListener(GiftInboxEvent.SERVER_GIFT,this.onServerGift);
         this.mGiftRequestScroller.scrollerSprite.addEventListener(GiftInboxEvent.SEND_BACK_GIFT,this.onSendBackGift);
         this.mGiftRequestScroller.scrollerSprite.addEventListener(GiftInboxEvent.REMOVE_REQUEST,this.onRemoveRequest);
         this.mGiftRequestScroller.scrollerSprite.addEventListener(GiftInboxEvent.PLAY_BRAGGED_LEVEL,this.onPlayLevelClicked);
      }
      
      private function removeGiftRequestScrollerEventListeners() : void
      {
         this.mGiftRequestScroller.scrollerSprite.removeEventListener(GiftInboxEvent.CLAIM_GIFT,this.onClaimAndSendGift);
         this.mGiftRequestScroller.scrollerSprite.removeEventListener(GiftInboxEvent.CLAIM_GIFT_ONLY,this.onClaimGiftOnly);
         this.mGiftRequestScroller.scrollerSprite.removeEventListener(GiftInboxEvent.SERVER_GIFT,this.onServerGift);
         this.mGiftRequestScroller.scrollerSprite.removeEventListener(GiftInboxEvent.SEND_BACK_GIFT,this.onSendBackGift);
         this.mGiftRequestScroller.scrollerSprite.removeEventListener(GiftInboxEvent.REMOVE_REQUEST,this.onRemoveRequest);
         this.mGiftRequestScroller.scrollerSprite.removeEventListener(GiftInboxEvent.PLAY_BRAGGED_LEVEL,this.onPlayLevelClicked);
      }
      
      private function addButtonEventListeners() : void
      {
         this.removeButtonEventListeners();
         this.mView.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.onEggClick);
         this.mView.btnUp.addEventListener(MouseEvent.CLICK,this.onUpClick);
         this.mView.btnDown.addEventListener(MouseEvent.CLICK,this.onDownClick);
         this.mView.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
      }
      
      private function removeButtonEventListeners() : void
      {
         this.mView.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.onEggClick);
         this.mView.btnUp.removeEventListener(MouseEvent.CLICK,this.onUpClick);
         this.mView.btnDown.removeEventListener(MouseEvent.CLICK,this.onDownClick);
         this.mView.btnClose.removeEventListener(MouseEvent.CLICK,this.onCloseClick);
      }
      
      override protected function show(useTransition:Boolean = true) : void
      {
         super.show(useTransition);
         if(!userProgress.isEggUnlocked("1000-4"))
         {
            this.mView.EasterEggButton4.visible = true;
         }
         else
         {
            this.mView.EasterEggButton4.visible = false;
         }
         this.setClaimAllButtonEnabled(false);
         var wallet:Wallet = new Wallet(this);
         this.addWallet(wallet);
         ExternalInterfaceHandler.addCallback("giftsSentToUsers",this.onGiftsSentToUsers);
      }
      
      public function checkIsTheContentAmountChanged() : void
      {
         var requestObject:Object = null;
         if(sCheckLoader)
         {
            return;
         }
         sOldContentAmount = 0;
         if(sRequests)
         {
            for each(requestObject in sRequests)
            {
               if(requestObject.status && requestObject.status == GiftRequestItemRenderer.GIFT_STATUS_UNCLAIMED)
               {
                  ++sOldContentAmount;
               }
            }
         }
         sCheckLoader = new ABFLoader();
         sCheckLoader.addEventListener(Event.COMPLETE,this.onGiftsCheckLoaded);
         sCheckLoader.addEventListener(ErrorEvent.ERROR,this.onGiftsCheckLoadError);
         sCheckLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/getrequests");
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         sCheckLoader.load(urlRequest);
      }
      
      private function onClaimAndSendGift(e:GiftInboxEvent) : void
      {
         this.claimGift(GiftRequestItemRenderer(e.target),e.data.uid);
         FacebookGoogleAnalyticsTracker.trackClaimAndSendGiftEvent();
         FacebookAnalyticsCollector.getInstance().trackClaimGiftEvent(1,false);
      }
      
      private function onClaimGiftOnly(e:GiftInboxEvent) : void
      {
         FacebookGoogleAnalyticsTracker.trackGiftClaimOnlyEvent();
         FacebookAnalyticsCollector.getInstance().trackClaimGiftEvent(1,true);
         this.claimGift(GiftRequestItemRenderer(e.target),null);
      }
      
      private function onServerGift(e:GiftInboxEvent) : void
      {
         this.claimGift(GiftRequestItemRenderer(e.target),null);
      }
      
      private function claimGift(inboxItem:GiftRequestItemRenderer, sendGiftBackToFBUserId:String) : void
      {
         inboxItem.data.status = GiftRequestItemRenderer.GIFT_STATUS_CLAIMING_STATE_START;
         this.setClaimAllButtonEnabled(false);
         var particleCount:int = 8;
         for(var i:int = 0; i < particleCount; i++)
         {
            this.mView.mcContainer.addChild(new GiftParticle(569 + Math.random() * 20,inboxItem.y + 140 + Math.random() * 20));
         }
         var claimGiftTimer:Timer = new Timer(500,1);
         claimGiftTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onClaimingAnimationDone(inboxItem,sendGiftBackToFBUserId),false,0,true);
         claimGiftTimer.start();
      }
      
      private function onClaimingAnimationDone(inboxItem:GiftRequestItemRenderer, sendGiftBackToFBUserId:String) : Function
      {
         return function(e:TimerEvent):void
         {
            if(inboxItem == null || inboxItem.data == null)
            {
               return;
            }
            inboxItem.data.status = GiftRequestItemRenderer.GIFT_STATUS_CLAIMING_STATE_END;
            var claimLoader:* = new ABFLoader();
            mLoaders.push({
               "loader":claimLoader,
               "data":inboxItem.data,
               "point":new Point(460,inboxItem.y + 140)
            });
            claimLoader.addEventListener(Event.COMPLETE,onGiftClaimed);
            claimLoader.addEventListener(IOErrorEvent.IO_ERROR,onClaimGiftError);
            claimLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onClaimGiftError);
            claimLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,onClaimGiftError);
            var urlReq:* = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/");
            urlReq.method = URLRequestMethod.POST;
            urlReq.contentType = "application/json";
            urlReq.data = JSON.stringify([inboxItem.data.r]);
            claimLoader.load(urlReq);
            sendBackGift(sendGiftBackToFBUserId);
            e.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      protected function onClaimGiftError(event:Event) : void
      {
         var popup:IPopup = null;
         if(event.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            popup = new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED);
         }
         else
         {
            popup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
         for(var i:int = 0; i < this.mLoaders.length; i++)
         {
            this.mLoaders[i].loader.close();
            this.mLoaders[i] = null;
         }
         this.mLoaders.length = 0;
      }
      
      private function onGiftClaimed(e:Event) : void
      {
         var responseData:Object = null;
         var fbGiftRequests:Array = null;
         var giftDataArray:Array = null;
         var giftIndexCounter:int = 0;
         var aoArray:Array = null;
         var giftData:Object = null;
         var itemDeltas:Array = null;
         var fbGiftRequest:Object = null;
         var ao:AnalyticsObject = null;
         for(var i:int = 0; i < this.mLoaders.length; )
         {
            if(this.mLoaders[i].loader == e.target)
            {
               responseData = (e.target as RetryingURLLoader).data;
               fbGiftRequests = responseData.fbGiftRequests;
               giftDataArray = this.mLoaders[i].data is Array ? this.mLoaders[i].data : [this.mLoaders[i].data];
               giftIndexCounter = 0;
               aoArray = null;
               for each(giftData in giftDataArray)
               {
                  giftData.status = GiftRequestItemRenderer.GIFT_STATUS_CLAIMED;
                  if(responseData.errorCode)
                  {
                     giftData.status = GiftRequestItemRenderer.GIFT_STATUS_ERROR;
                     giftData.error = responseData.errorMessage;
                  }
                  if(giftIndexCounter < fbGiftRequests.length)
                  {
                     fbGiftRequest = fbGiftRequests[giftIndexCounter];
                     if(fbGiftRequest.itemId == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID && fbGiftRequest.quantity > 0)
                     {
                        FacebookGoogleAnalyticsTracker.trackVirtualCurrencyGained(FacebookGoogleAnalyticsTracker.POWERUP_SOURCE_GIFT,VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID,fbGiftRequest.quantity);
                     }
                     else if(fbGiftRequest.quantity > 0)
                     {
                        FacebookGoogleAnalyticsTracker.trackPowerupGained(FacebookGoogleAnalyticsTracker.POWERUP_SOURCE_GIFT,fbGiftRequest.itemId,fbGiftRequest.quantity);
                     }
                     giftData.itemId = fbGiftRequest.itemId;
                     giftData.quantity = fbGiftRequest.quantity;
                     ao = new AnalyticsObject();
                     ao.screen = ID;
                     ao.amount = giftData.quantity;
                     if(fbGiftRequest.itemId == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID && fbGiftRequest.quantity > 0)
                     {
                        ao.currency = "IVC";
                     }
                     ao.itemType = fbGiftRequest.itemId;
                     switch(giftData.t)
                     {
                        case "INVITATION":
                           ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_INCENTIVIZED_FRIEND_INVITE;
                           break;
                        case "GIFT":
                           ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_GIFT_BIRTHDAY;
                           break;
                        default:
                           ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_GIFT;
                     }
                     if(!aoArray)
                     {
                        aoArray = new Array();
                     }
                     aoArray.push(ao);
                     ExternalInterfaceHandler.performCall("flashDeleteRequest",fbGiftRequest.facebookRequestId);
                     giftIndexCounter++;
                  }
                  this.reportGiftClaiming(giftData.content,giftData.quantity);
               }
               itemDeltas = ItemsInventory.instance.injectInventoryUpdate(responseData.items,false,aoArray);
            }
            continue;
            this.mGiftRequestScroller.refresh();
            this.mLoaders[i].loader.close();
            this.mLoaders[i] = null;
            this.mLoaders.splice(i,1);
            itemCountUpdated();
            i++;
            break;
         }
         this.updateClaimAllButtonVisibility();
      }
      
      public function giftsLoaded() : void
      {
         this.mGiftRequestScroller.data = sRequests;
         if(sRequests.length > 0)
         {
            this.mView.mcStatuses.visible = false;
            this.updateClaimAllButtonVisibility();
         }
         else
         {
            this.mView.mcStatuses.gotoAndStop(2);
            this.setClaimAllButtonEnabled(false);
         }
         this.updateArrowGraphics();
      }
      
      private function updateClaimAllButtonVisibility() : void
      {
         var dataObject:Object = null;
         for each(dataObject in this.mGiftRequestScroller.data)
         {
            if(!dataObject.status || dataObject.status == GiftRequestItemRenderer.GIFT_STATUS_UNCLAIMED)
            {
               if(!dataObject.lvl)
               {
                  this.setClaimAllButtonEnabled(true);
               }
               continue;
               break;
            }
         }
      }
      
      private function claimAllGifts(sendGiftBack:Boolean) : void
      {
         var dataObject:Object = null;
         var claimAllGiftTimer:Timer = null;
         this.setClaimAllButtonEnabled(false);
         this.mGiftRequestScroller.prepareAllItems();
         this.mClaimedGiftsList = new Array();
         var claimedGiftsListLocal:Array = new Array();
         for each(dataObject in this.mGiftRequestScroller.data)
         {
            if(dataObject && dataObject.status == GiftRequestItemRenderer.GIFT_STATUS_UNCLAIMED)
            {
               this.mClaimedGiftsList.push(dataObject);
               claimedGiftsListLocal.push(dataObject);
               dispatchEvent(new GiftInboxEvent(GiftInboxEvent.CLAIM_ALL_GIFT,dataObject,true));
            }
         }
         this.mGiftRequestScroller.updatePositions();
         claimAllGiftTimer = new Timer(500,1);
         claimAllGiftTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onClaimingAllAnimationDone(sendGiftBack,claimedGiftsListLocal),false,0,true);
         claimAllGiftTimer.start();
      }
      
      private function onClaimingAllAnimationDone(sendGiftBack:Boolean, claimedGiftsListLocal:Array) : Function
      {
         return function(e:TimerEvent):void
         {
            var claimAllLoader:* = new ABFLoader();
            mLoaders.push({
               "loader":claimAllLoader,
               "data":claimedGiftsListLocal
            });
            claimAllLoader.addEventListener(Event.COMPLETE,onGiftClaimed);
            claimAllLoader.addEventListener(IOErrorEvent.IO_ERROR,onClaimGiftError);
            claimAllLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onClaimGiftError);
            claimAllLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,onClaimGiftError);
            var claimedGiftIDs:* = new Array();
            for(var i:* = 0; i < mClaimedGiftsList.length; i++)
            {
               claimedGiftIDs.push(mClaimedGiftsList[i].r);
            }
            var urlReq:* = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/acceptrequest/");
            urlReq.method = URLRequestMethod.POST;
            urlReq.contentType = "application/json";
            urlReq.data = JSON.stringify(claimedGiftIDs);
            claimAllLoader.load(urlReq);
            FacebookGoogleAnalyticsTracker.trackClaimAndSendGiftEvent(mClaimedGiftsList.length);
            FacebookAnalyticsCollector.getInstance().trackClaimGiftEvent(mClaimedGiftsList.length,!sendGiftBack);
            if(sendGiftBack)
            {
               AngryBirdsBase.singleton.exitFullScreen();
               sendGiftBackToAll();
            }
            e.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
         };
      }
      
      private function sendGiftBackToAll() : void
      {
         var jsonPeople:String = null;
         var peopleToGift:Array = [];
         var counter:int = 0;
         for(var i:int = this.mClaimedGiftsList.length - 1; i >= 0; i--)
         {
            if(counter >= MAXIMUM_PLAYERS_PER_REQUEST)
            {
               break;
            }
            if(ExceptionUserIDsManager.instance.canSendGiftRequestTo(this.mClaimedGiftsList[i].uid) && !BirdBotProfilePicture.isBot(this.mClaimedGiftsList[i].uid))
            {
               peopleToGift.push(this.mClaimedGiftsList[i].uid);
               FacebookGoogleAnalyticsTracker.trackGiftSentPopupEvent();
               counter++;
               this.mClaimedGiftsList.splice(i,1);
            }
         }
         if(counter > 0)
         {
            FacebookAnalyticsCollector.getInstance().trackSendGiftEvent(counter,"REGIFT");
         }
         if(peopleToGift.length > 0)
         {
            jsonPeople = JSON.stringify(peopleToGift);
            ExternalInterfaceHandler.performCall("updateSessionToken",SessionRetryingURLLoader.sessionToken);
            ExternalInterfaceHandler.performCall("flashSendGiftFriend",userProgress.userName,jsonPeople,OpenGraphData.getObjectId(OpenGraphData.MYSTERY_GIFT));
         }
      }
      
      private function onSendBackGift(e:GiftInboxEvent) : void
      {
         this.sendBackGift(e.data.uid);
      }
      
      private function sendBackGift(fbUserId:String) : void
      {
         if(fbUserId && !BirdBotProfilePicture.isBot(fbUserId) && ExceptionUserIDsManager.instance.canSendGiftRequestTo(fbUserId))
         {
            AngryBirdsBase.singleton.exitFullScreen();
            ExternalInterfaceHandler.performCall("updateSessionToken",SessionRetryingURLLoader.sessionToken);
            ExternalInterfaceHandler.performCall("flashSendGiftFriend",userProgress.userName,fbUserId,OpenGraphData.getObjectId(OpenGraphData.MYSTERY_GIFT));
            FacebookGoogleAnalyticsTracker.trackGiftSentPopupEvent();
            FacebookAnalyticsCollector.getInstance().trackSendGiftEvent(1,"REGIFT");
         }
      }
      
      private function onGiftsSentToUsers(users:Array) : void
      {
         var userId:String = null;
         var dataObject:Object = null;
         if(!users)
         {
            return;
         }
         var hasBeenSent:Boolean = false;
         for each(userId in users)
         {
            for each(dataObject in this.mGiftRequestScroller.data)
            {
               if(userId == dataObject.uid && dataObject.status == GiftRequestItemRenderer.GIFT_STATUS_CLAIMED)
               {
                  dataObject.status = GiftRequestItemRenderer.GIFT_STATUS_GIFTED_BACK;
                  ExceptionUserIDsManager.instance.addGiftRequestToUser(dataObject.uid);
                  hasBeenSent = true;
               }
            }
         }
         if(hasBeenSent)
         {
            this.mGiftRequestScroller.refresh();
         }
         if(this.mClaimedGiftsList && this.mClaimedGiftsList.length > 0)
         {
            this.sendGiftBackToAll();
         }
      }
      
      private function onRemoveRequest(e:GiftInboxEvent) : void
      {
         sRequests.splice(sRequests.indexOf(e.data),1);
         this.removeBragFromServer(e);
         itemCountUpdated();
         this.mGiftRequestScroller.data = sRequests;
         this.scroll(this.mGiftRequestScroller.visibleItemsCount);
         this.updateArrowGraphics();
         this.updateClaimAllButtonVisibility();
      }
      
      private function removeBragFromServer(e:GiftInboxEvent) : void
      {
         var requestId:String = null;
         var removeBragLoader:RetryingURLLoader = null;
         var urlReq:URLRequest = null;
         if(sBrags.indexOf(e.data) != -1)
         {
            sBrags.splice(sBrags.indexOf(e.data),1);
            requestId = e.data.r as String;
            removeBragLoader = new ABFLoader();
            removeBragLoader.addEventListener(Event.COMPLETE,this.onBragRemoved);
            removeBragLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onClaimGiftError);
            removeBragLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onClaimGiftError);
            removeBragLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onClaimGiftError);
            urlReq = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/removeBrag?bragRequestId=" + requestId);
            urlReq.method = URLRequestMethod.GET;
            urlReq.contentType = "application/json";
            removeBragLoader.load(urlReq);
         }
      }
      
      protected function onBragRemoved(event:Event) : void
      {
         var dataObject:Object = null;
         if(event.currentTarget && event.currentTarget.data)
         {
            dataObject = event.currentTarget.data;
         }
      }
      
      private function onPlayLevelClicked(e:GiftInboxEvent) : void
      {
         if(userProgress.isLevelOpen(e.data.lvl))
         {
            AngryBirdsFacebook.sSingleton.setNextStateToLevel(e.data.lvl);
            if(e.data.lvl.indexOf("2000-") == -1)
            {
               if(ABTestingModel.getGroup(ABTestingModel.AB_TEST_CASE_WEB_STORY_MODE) != ABTestingModel.AB_TEST_GROUP_WEB_STORY_MODE_OFF)
               {
                  (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY_STORY_LEVEL);
               }
            }
            else
            {
               (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY);
            }
         }
         else if(e.data.lvl.indexOf("2000-") == -1)
         {
            if(ABTestingModel.getGroup(ABTestingModel.AB_TEST_CASE_WEB_STORY_MODE) != ABTestingModel.AB_TEST_GROUP_WEB_STORY_MODE_OFF)
            {
               AngryBirdsFacebook.sSingleton.setNextState(StateFacebookEpisodeSelection.STATE_NAME);
            }
         }
         else
         {
            AngryBirdsFacebook.sSingleton.setNextState(StateTournamentLevelSelection.STATE_NAME);
         }
         this.onRemoveRequest(e);
         hide();
      }
      
      private function onEggClick(e:MouseEvent) : void
      {
         this.mView.EasterEggButton4.visible = false;
         userProgress.setEggUnlocked("1000-4");
      }
      
      private function onUpClick(e:MouseEvent) : void
      {
         this.scroll(-this.mGiftRequestScroller.visibleItemsCount);
      }
      
      private function onDownClick(e:MouseEvent) : void
      {
         this.scroll(this.mGiftRequestScroller.visibleItemsCount);
      }
      
      private function scroll(offset:int) : void
      {
         if(offset != 0)
         {
            this.mGiftRequestScroller.scroll(offset);
            this.updateArrowGraphics();
         }
      }
      
      private function updateArrowGraphics() : void
      {
         var canGoLeft:* = this.mGiftRequestScroller.offset != 0;
         var canGoRight:* = this.mGiftRequestScroller.offset != this.mGiftRequestScroller.data.length - this.mGiftRequestScroller.visibleItemsCount;
         this.mView.btnUp.visible = canGoLeft;
         this.mView.btnDown.visible = canGoRight;
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         itemCountUpdated();
         close();
      }
      
      override public function dispose() : void
      {
         if(sInstance == this)
         {
            sInstance = null;
         }
         ExternalInterfaceHandler.removeCallback("giftsSentToUsers",this.onGiftsSentToUsers);
         this.removeWallet(this.mWallet);
         this.removeButtonEventListeners();
         this.removeGiftRequestScrollerEventListeners();
         this.mGiftRequestScroller.dispose();
         super.dispose();
      }
      
      private function reportGiftClaiming(id:String, count:int) : void
      {
         FacebookGoogleAnalyticsTracker.trackGiftClaimedEvent(id,count);
      }
      
      public function getName() : String
      {
         return ID;
      }
      
      private function onGiftsCheckLoaded(e:Event) : void
      {
         var dataObject:Object = sCheckLoader.data;
         var currentContentAmount:int = 0;
         if(dataObject.brags)
         {
            currentContentAmount += dataObject.brags.length;
         }
         if(dataObject.gifts)
         {
            currentContentAmount += dataObject.gifts.length;
         }
         sCheckLoader = null;
         var resultData:Object = new Object();
         if(currentContentAmount == sOldContentAmount)
         {
            resultData.result = false;
            dispatchEvent(new GiftInboxEvent(GiftInboxEvent.INBOX_CONTENT_AMOUNT_CHECKED,resultData));
         }
         else
         {
            resultData.result = true;
            dispatchEvent(new GiftInboxEvent(GiftInboxEvent.INBOX_CONTENT_AMOUNT_CHECKED,resultData));
         }
      }
      
      private function onGiftsCheckLoadError(event:Event) : void
      {
         sCheckLoader = null;
         var resultData:Object = new Object();
         resultData.result = false;
         dispatchEvent(new GiftInboxEvent(GiftInboxEvent.INBOX_CONTENT_AMOUNT_CHECKED,resultData));
      }
      
      private function setClaimAllButtonEnabled(value:Boolean) : void
      {
         this.mClaimAllButton.setEnabled(value);
         this.mClaimAllButton.setComponentState(value == true ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "CLAIM_ALL":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.claimAllGifts(true);
               break;
            case "SEND_GIFTS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               close();
               AngryBirdsBase.singleton.popupManager.openPopup(new GiftFriendsPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP));
         }
         super.onUIInteraction(eventIndex,eventName,component);
      }
   }
}
