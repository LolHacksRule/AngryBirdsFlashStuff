package com.angrybirds.popups
{
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.friendsdatacache.CachedInviteFriendDataVO;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.utils.RovioStringUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class InviteFriendsPopup extends CustomRequestPopup implements INavigable
   {
      
      private static const MAX_LIMIT_FOR_INVITE:uint = 50;
      
      public static const ID:String = "InviteFriendsPopup";
       
      
      private var mAllUninstalledFriends:Dictionary;
      
      private var mAvailableInvitableFriends:Array;
      
      private var mView:MovieClip;
      
      private var mIsInvitingEnabled:Boolean = true;
      
      private var mInvitePauseTimer:Timer;
      
      public function InviteFriendsPopup(layerIndex:int, priority:int)
      {
         var checkboxClass:Class = AssetCache.getAssetFromCache("SelectMaxCheckBox");
         var mc:MovieClip = new checkboxClass();
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupCustomInvite[0],ID,MAX_LIMIT_FOR_INVITE,mc);
      }
      
      override protected function init() : void
      {
         this.mView = mContainer.mClip;
         this.mView.btnInvite.addEventListener(MouseEvent.CLICK,this.onInviteClick);
         this.mView.btnInviteMore.addEventListener(MouseEvent.CLICK,this.onInviteMoreClick);
         this.mView.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         this.mView.friendsCounterBar.gotoAndStop(0);
         smUseSelectAllCheckBox = true;
         this.mIsInvitingEnabled = true;
         this.mInvitePauseTimer = null;
         this.mView.WaitingForReply.visible = false;
         super.init();
         mSelectAll.displayObject.y = 254;
         mFriendsScroller.scrollerSprite.y = 288;
      }
      
      override protected function set finalPlayerList(value:Array) : void
      {
         this.mAvailableInvitableFriends = value;
      }
      
      override protected function get finalPlayerList() : Array
      {
         return this.mAvailableInvitableFriends;
      }
      
      override protected function showFriendsCount(friendsSelected:int, friendsTotal:int) : void
      {
         var upperLimit:int = Math.min(MAX_LIMIT_FOR_INVITE,friendsTotal);
         this.mView.friendsCounter.text = friendsSelected + "/" + upperLimit + " " + LABEL_FRIENDS_SELECTED;
         var frameToGoto:int = Math.floor(friendsSelected / upperLimit * 100);
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
         var friend:CachedInviteFriendDataVO = null;
         var inviteFriendObject:Object = null;
         var friends:Vector.<CachedInviteFriendDataVO> = FriendsDataCache.getInvitableFriendsOnly();
         var inviteCandidates:Array = new Array();
         for each(friend in friends)
         {
            inviteFriendObject = {
               "id":friend.userID,
               "name":RovioStringUtil.shortenName(friend.name),
               "selected":false
            };
            inviteCandidates.push(inviteFriendObject);
         }
         this.finalPlayerList = inviteCandidates;
         friendDataReady(this.finalPlayerList,true);
      }
      
      override protected function filterFriendsToShow(invitableFriends:Array) : void
      {
         this.mAllUninstalledFriends = ExceptionUserIDsManager.instance.getUninstallIDs();
         invitableFriends = invitableFriends.filter(this.hasFriendInstalled);
      }
      
      override protected function get noFriendsMessage() : MovieClip
      {
         return this.mView.cantFindInviteFriend;
      }
      
      private function hasFriendInstalled(friend:Object, index:int, arr:Array) : Boolean
      {
         return this.mAllUninstalledFriends[friend.id] == null && !friend.sent;
      }
      
      private function onInviteMoreClick(e:MouseEvent) : void
      {
         if(!this.mInvitePauseTimer)
         {
            this.mInvitePauseTimer = new Timer(1000);
            this.mInvitePauseTimer.addEventListener(TimerEvent.TIMER,this.onInvitePauseTimer);
            this.mInvitePauseTimer.start();
            SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
            this.sendInvitationsToFacebook();
         }
      }
      
      private function onInviteClick(e:MouseEvent) : void
      {
         if(!this.mInvitePauseTimer)
         {
            this.mInvitePauseTimer = new Timer(1000);
            this.mInvitePauseTimer.addEventListener(TimerEvent.TIMER,this.onInvitePauseTimer);
            this.mInvitePauseTimer.start();
            SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
            this.sendInvitationsToFacebook();
         }
      }
      
      private function onInvitePauseTimer(e:TimerEvent) : void
      {
         if(this.mInvitePauseTimer)
         {
            this.mInvitePauseTimer.stop();
            this.mInvitePauseTimer.removeEventListener(TimerEvent.TIMER,this.onInvitePauseTimer);
            this.mInvitePauseTimer = null;
         }
      }
      
      private function sendInvitationsToFacebook() : void
      {
         var friend:Object = null;
         var jsonPeople:String = null;
         if(!this.mIsInvitingEnabled)
         {
            return;
         }
         this.mIsInvitingEnabled = false;
         var peopleToInvite:Array = [];
         var i:int = 0;
         for each(friend in this.finalPlayerList)
         {
            if(i >= MAXIMUM_PLAYERS_PER_REQUEST)
            {
               break;
            }
            if(friend.selected)
            {
               peopleToInvite.push(friend.id);
               i++;
            }
         }
         if(peopleToInvite.length > 0)
         {
            jsonPeople = JSON.stringify(peopleToInvite);
            mTotalFriendsInvited += peopleToInvite.length;
            ExternalInterfaceHandler.addCallback("inviteRequestReceived",this.onInviteBatchRequestReceived);
            ExternalInterfaceHandler.addCallback("invitationBatchSent",this.onInviteBatchSent);
            ExternalInterfaceHandler.addCallback("invitationBatchCancel",this.onInviteBatchCancel);
            dispatchEvent(new FriendsBarEvent(FriendsBarEvent.INVITE_FRIENDS_REQUESTED,{
               "userId":jsonPeople,
               "requireReceipt":true,
               "origin":"INBOX"
            },true));
         }
         else
         {
            this.mIsInvitingEnabled = true;
            friendDataReady(this.finalPlayerList,false);
            mSelectAll.selected = false;
         }
      }
      
      private function onInviteBatchCancel() : void
      {
         ExternalInterfaceHandler.removeCallback("invitationBatchCancel",this.onInviteBatchSent);
         ExternalInterfaceHandler.removeCallback("invitationBatchSent",this.onInviteBatchSent);
         this.mIsInvitingEnabled = true;
         friendDataReady(this.finalPlayerList,false);
         TextField(this.mView.searchbar).text = "Search...";
      }
      
      private function onInviteBatchSent(toUsers:Object) : void
      {
         var invitedFriendsList:Array = null;
         var i:int = 0;
         var friend:Object = null;
         var invitedUser:Object = null;
         var finalPlayerIndex:int = 0;
         ExternalInterfaceHandler.removeCallback("invitationBatchSent",this.onInviteBatchSent);
         ExternalInterfaceHandler.removeCallback("invitationBatchCancel",this.onInviteBatchSent);
         this.mIsInvitingEnabled = true;
         if(toUsers != null)
         {
            this.mView.CheckAnimation.gotoAndPlay(1);
            invitedFriendsList = [];
            i = 0;
            for each(friend in this.finalPlayerList)
            {
               if(i >= MAXIMUM_PLAYERS_PER_REQUEST)
               {
                  break;
               }
               if(friend.selected)
               {
                  friend.selected = false;
                  friend.sent = true;
                  invitedFriendsList.push(friend);
                  i++;
               }
            }
            for each(invitedUser in invitedFriendsList)
            {
               for(finalPlayerIndex = 0; finalPlayerIndex < this.finalPlayerList.length; finalPlayerIndex++)
               {
                  if(this.finalPlayerList[finalPlayerIndex].id == invitedUser.id)
                  {
                     this.finalPlayerList.splice(finalPlayerIndex,1);
                     break;
                  }
               }
            }
            mRequestsSent += i;
            checkIfBatchInProgress();
            dispatchEvent(new FriendsBarEvent(FriendsBarEvent.INVITE_FRIENDS_SENT,invitedFriendsList,true));
            this.sendInvitationsToFacebook();
         }
         else
         {
            friendDataReady(this.finalPlayerList,false);
         }
      }
      
      private function onInviteBatchRequestReceived() : void
      {
         ExternalInterfaceHandler.removeCallback("inviteRequestReceived",this.onInviteBatchRequestReceived);
         this.mIsInvitingEnabled = true;
      }
      
      override protected function setSendButtonsVisibility(value:Boolean) : void
      {
         if(value == false)
         {
            this.mView.btnInviteMore.visible = false;
            this.mView.btnInvite.visible = false;
         }
         else if(this.mView.btnInviteMore.visible)
         {
            this.mView.btnInviteMore.visible = true;
            this.mView.btnInvite.visible = false;
         }
         else
         {
            this.mView.btnInviteMore.visible = false;
            this.mView.btnInvite.visible = true;
         }
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         close();
      }
      
      public function getName() : String
      {
         return ID;
      }
   }
}
