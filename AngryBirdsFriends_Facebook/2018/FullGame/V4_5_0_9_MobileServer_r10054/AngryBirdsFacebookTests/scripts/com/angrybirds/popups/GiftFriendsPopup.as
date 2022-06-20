package com.angrybirds.popups
{
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.data.OpenGraphData;
   import com.angrybirds.friendsdatacache.CachedFriendDataVO;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.giftinbox.GiftInboxPopup;
   import com.angrybirds.utils.RovioStringUtil;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.server.SessionRetryingURLLoader;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class GiftFriendsPopup extends CustomRequestPopup
   {
      
      public static const ID:String = "GiftFriendsPopup";
       
      
      private var mAllGiftExcludedFriends:Dictionary;
      
      private var mAllUninstalledFriends:Dictionary;
      
      private var mNotYetGiftedFriends:Array;
      
      private var mView:MovieClip;
      
      public function GiftFriendsPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupCustomGifting[0],ID);
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      override protected function init() : void
      {
         this.mView = mContainer.mClip;
         smUseSelectAllCheckBox = true;
         super.init();
         this.mView.btnSendGifts.addEventListener(MouseEvent.CLICK,this.onGiftClick);
         this.mView.btnSendMoreGifts.addEventListener(MouseEvent.CLICK,this.onGiftMoreClick);
         this.mView.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         this.mView.friendsCounterBar.gotoAndStop(0);
         mSelectAll.displayObject.y = 222;
         mFriendsScroller.scrollerSprite.y = 255;
      }
      
      override protected function set finalPlayerList(value:Array) : void
      {
         this.mNotYetGiftedFriends = value;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.mNotYetGiftedFriends;
      }
      
      override protected function showFriendsCount(friendsSelected:int, friendsTotal:int) : void
      {
         this.mView.friendsCounter.text = friendsSelected + "/" + friendsTotal + " " + LABEL_FRIENDS_SELECTED;
         var frameToGoto:int = Math.floor(friendsSelected / friendsTotal * 100);
         if(isNaN(frameToGoto))
         {
            frameToGoto = 0;
         }
         this.mView.friendsCounterBar.gotoAndStop(frameToGoto);
      }
      
      override protected function showRequestsCount(requestsSent:int, totalRequestableFriends:int) : void
      {
         mTotalFriendsInvited = 0;
         mRequestsSent = 0;
      }
      
      override protected function fetchFriendData() : void
      {
         var friendData:CachedFriendDataVO = null;
         var installedFriends:Vector.<CachedFriendDataVO> = FriendsDataCache.getPlayingFriendsOnly();
         var convertedFriends:Array = [];
         for each(friendData in installedFriends)
         {
            convertedFriends.push({
               "selected":false,
               "id":friendData.userID,
               "name":RovioStringUtil.shortenName(friendData.name)
            });
         }
         friendDataReady(convertedFriends);
      }
      
      override protected function setSendButtonsVisibility(value:Boolean) : void
      {
         if(value == false)
         {
            this.mView.btnSendMoreGifts.visible = false;
            this.mView.btnSendGifts.visible = false;
         }
         else if(this.mView.btnSendMoreGifts.visible)
         {
            this.mView.btnSendMoreGifts.visible = true;
            this.mView.btnSendGifts.visible = false;
         }
         else
         {
            this.mView.btnSendMoreGifts.visible = false;
            this.mView.btnSendGifts.visible = true;
         }
      }
      
      override protected function checkIfBatchInProgress() : void
      {
         if(mCurrentBatchIndex > 0)
         {
            this.mView.btnSendMoreGifts.visible = true;
            this.mView.btnSendGifts.visible = false;
         }
         else
         {
            this.mView.btnSendMoreGifts.visible = false;
            this.mView.btnSendGifts.visible = true;
         }
      }
      
      override protected function filterFriendsToShow(allFacebookFriends:Array) : void
      {
         this.mAllGiftExcludedFriends = ExceptionUserIDsManager.instance.getGiftExcludeIDs();
         this.mAllUninstalledFriends = ExceptionUserIDsManager.instance.getUninstallIDs();
         if(allFacebookFriends)
         {
            this.finalPlayerList = allFacebookFriends.filter(this.hasFriendBeenGifted);
         }
         this.mAllGiftExcludedFriends = null;
         this.mAllUninstalledFriends = null;
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.mView.cantFindGiftFriend;
      }
      
      private function hasFriendBeenGifted(friend:*, index:int, arr:Array) : Boolean
      {
         return this.mAllGiftExcludedFriends[friend.id] == null && this.mAllUninstalledFriends[friend.id] == null && !friend.sent && friend.id != userProgress.userID;
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         close();
      }
      
      private function onGiftMoreClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.sendGiftsToFacebook();
      }
      
      private function onGiftClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         currentBatchIndex = 0;
         this.sendGiftsToFacebook();
      }
      
      private function sendGiftsToFacebook() : void
      {
         var friend:Object = null;
         var jsonPeople:String = null;
         AngryBirdsBase.singleton.exitFullScreen();
         var peopleToGift:Array = [];
         var i:int = currentBatchIndex;
         for each(friend in this.finalPlayerList)
         {
            if(i >= MAXIMUM_PLAYERS_PER_REQUEST + currentBatchIndex)
            {
               break;
            }
            if(friend.selected)
            {
               peopleToGift.push(friend.id);
               i++;
            }
         }
         jsonPeople = JSON.stringify(peopleToGift);
         mTotalFriendsInvited += peopleToGift.length;
         ExternalInterfaceHandler.performCall("updateSessionToken",SessionRetryingURLLoader.sessionToken);
         ExternalInterfaceHandler.performCall("flashSendGiftToFriends",userProgress.userName,jsonPeople,OpenGraphData.getObjectId(OpenGraphData.MYSTERY_GIFT));
         ExternalInterfaceHandler.addCallback("giftsSentToUsers",this.onGiftBatchSent);
      }
      
      private function onGiftBatchSent(response:Object) : void
      {
         var batchBeforeNewFriends:int = 0;
         var giftSentCounter:int = 0;
         var i:int = 0;
         var nextCurrentBatchIndex:int = 0;
         var friendsSelected:int = 0;
         var friend:Object = null;
         ExternalInterfaceHandler.removeCallback("giftsSentToUsers",this.onGiftBatchSent);
         if(response != null)
         {
            this.mView.CheckAnimation.gotoAndPlay(1);
            batchBeforeNewFriends = currentBatchIndex;
            giftSentCounter = 0;
            i = currentBatchIndex;
            nextCurrentBatchIndex = 0;
            friendsSelected = 0;
            for each(friend in this.finalPlayerList)
            {
               if(i < MAXIMUM_PLAYERS_PER_REQUEST + currentBatchIndex)
               {
                  if(friend.selected)
                  {
                     friend.selected = false;
                     friend.sent = true;
                     i++;
                     giftSentCounter++;
                  }
               }
               else
               {
                  if(nextCurrentBatchIndex == 0)
                  {
                     nextCurrentBatchIndex = i;
                  }
                  if(friend.selected)
                  {
                     friendsSelected++;
                  }
               }
            }
            currentBatchIndex = nextCurrentBatchIndex;
            if(giftSentCounter > 0)
            {
               FacebookAnalyticsCollector.getInstance().trackSendGiftEvent(giftSentCounter,"INBOX");
            }
            mRequestsSent += i - batchBeforeNewFriends;
            this.checkIfBatchInProgress();
            friendDataReady(this.finalPlayerList,false);
            this.showFriendsCount(friendsSelected,this.finalPlayerList.length);
         }
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         super.hide(useTransition,waitForAnimationsToStop);
         var popup:IPopup = new GiftInboxPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,true);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
   }
}
