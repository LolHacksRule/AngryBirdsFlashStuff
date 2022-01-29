package com.angrybirds.popups
{
   import com.angrybirds.friendsbar.ui.VScroller;
   import com.angrybirds.popups.custominvite.PlayerToInviteRowRenderer;
   import com.rovio.assets.AssetCache;
   import com.rovio.server.RetryingURLLoader;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.SimpleCheckbox;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class CustomRequestPopup extends AbstractPopup
   {
      
      public static const MAXIMUM_PLAYERS_PER_REQUEST:int = 10;
      
      public static var PRESELECT_FRIENDS:int = 10;
      
      public static const LABEL_REQUESTS_SENT:String = "Requests sent";
      
      public static const LABEL_FRIENDS_SELECTED:String = "selected";
      
      public static var smUseSelectAllCheckBox:Boolean = true;
       
      
      private var mMaxNumberOfSelection:int = -1;
      
      private const DISABLED_TINT_COLOR:uint = 10066329;
      
      private const DISABLED_TINT_COLOR_MULTIPLYER:Number = 0.5;
      
      private var mTotalSelected:int = 0;
      
      private var mFriendsInRows:Array;
      
      protected var mFriendsScroller:VScroller;
      
      protected var mSelectAll:SimpleCheckbox;
      
      protected var mRequestsSent:int;
      
      protected var mTotalFriendsInvited:int;
      
      protected var mCurrentBatchIndex:int;
      
      private var mView:MovieClip;
      
      private var mSelectAllMC:MovieClip;
      
      public function CustomRequestPopup(layerIndex:int, priority:int, data:XML, id:String, maxSelection:int = -1, selectAllCheckBoxMC:MovieClip = null)
      {
         super(layerIndex,priority,data,id);
         this.mMaxNumberOfSelection = maxSelection;
         this.mSelectAllMC = selectAllCheckBoxMC;
      }
      
      override protected function init() : void
      {
         var checkboxClass:Class = null;
         this.mView = mContainer.mClip;
         this.mView.CheckAnimation.gotoAndStop(0);
         this.mView.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.scrollUp);
         this.mView.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.scrollDown);
         if(this.mSelectAllMC == null)
         {
            checkboxClass = AssetCache.getAssetFromCache("SelectAllCheckBox");
            this.mSelectAllMC = new checkboxClass();
         }
         this.mSelectAll = new SimpleCheckbox(this.mSelectAllMC,false);
         this.mSelectAll.displayObject.addEventListener(MouseEvent.CLICK,this.onSelectAllClicked);
         this.mSelectAll.displayObject.addEventListener(Event.CHANGE,this.onSelectAllChanged);
         this.mView.addChildAt(this.mSelectAll.displayObject,this.mView.numChildren - 1);
         this.mSelectAll.displayObject.visible = smUseSelectAllCheckBox;
         this.mView.inviteScrollbar.scrollbarArea.visible = false;
         this.mView.inviteScrollbar.scrollbarThumb.visible = false;
         TextField(this.mView.searchbar).addEventListener(Event.CHANGE,this.onSearchChange);
         TextField(this.mView.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.onFocusIn);
         this.createScroller();
         this.checkIfBatchInProgress();
         this.fetchFriendData();
         this.mTotalFriendsInvited = 0;
         this.mSelectAll.displayObject.x = 184;
         this.mSelectAll.displayObject.y = 142;
         this.mFriendsScroller.scrollerSprite.x = 184;
         this.mFriendsScroller.scrollerSprite.y = 288;
      }
      
      public function get currentBatchIndex() : int
      {
         return this.mCurrentBatchIndex;
      }
      
      public function set currentBatchIndex(value:int) : void
      {
         this.mCurrentBatchIndex = value;
      }
      
      private function scrollUp(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.mFriendsScroller.scroll(-4);
         this.checkScrollBarLimits();
      }
      
      private function scrollDown(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.mFriendsScroller.scroll(4);
         this.checkScrollBarLimits();
      }
      
      private function checkScrollBarLimits() : void
      {
         if(this.mFriendsScroller.willBeOutOfBounds(1))
         {
            this.scrollButtonDisabled(this.mView.inviteScrollbar.btnScrollDown,true);
         }
         else
         {
            this.scrollButtonDisabled(this.mView.inviteScrollbar.btnScrollDown,false);
         }
         if(this.mFriendsScroller.willBeOutOfBounds(-1))
         {
            this.scrollButtonDisabled(this.mView.inviteScrollbar.btnScrollUp,true);
         }
         else
         {
            this.scrollButtonDisabled(this.mView.inviteScrollbar.btnScrollUp,false);
         }
      }
      
      private function scrollButtonDisabled(obj:SimpleButton, disable:Boolean = true) : void
      {
         if(disable)
         {
            if(obj.mouseEnabled)
            {
               obj.mouseEnabled = false;
               setTint(obj,this.DISABLED_TINT_COLOR,this.DISABLED_TINT_COLOR_MULTIPLYER);
            }
         }
         else if(!obj.mouseEnabled)
         {
            obj.mouseEnabled = true;
            setTint(obj,0,0);
         }
      }
      
      protected function checkIfBatchInProgress() : void
      {
         if(this.mCurrentBatchIndex > 0)
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
      
      private function onFocusIn(e:FocusEvent) : void
      {
         if(TextField(this.mView.searchbar).text == "Search...")
         {
            TextField(this.mView.searchbar).text = "";
         }
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function onSearchChange(e:Event) : void
      {
         var friend:Object = null;
         var searchText:String = TextField(this.mView.searchbar).text;
         if(searchText == "")
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.showFriendsInRows(this.finalPlayerList);
         }
         var friendsFilteredBySearch:Array = [];
         for each(friend in this.finalPlayerList)
         {
            if(friend.name.toLowerCase().indexOf(searchText.toLowerCase()) != -1)
            {
               friendsFilteredBySearch.push(friend);
            }
         }
         this.showFriendsInRows(friendsFilteredBySearch);
      }
      
      private function onSelectAllClicked(e:MouseEvent) : void
      {
         SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
      }
      
      public function selectAllChanged() : void
      {
         var row:Array = null;
         var object:Object = null;
         var selectedCounter:uint = this.getNumSelected();
         var selectAll:Boolean = this.mSelectAll.selected;
         for each(row in this.mFriendsInRows)
         {
            for each(object in row)
            {
               if(object)
               {
                  if(selectAll)
                  {
                     if(selectedCounter == this.mMaxNumberOfSelection)
                     {
                        object.selected = false;
                     }
                     else
                     {
                        object.selected = true;
                        selectedCounter++;
                     }
                  }
                  else
                  {
                     object.selected = false;
                  }
               }
            }
         }
         this.selectedChanged();
         this.mFriendsScroller.refresh();
      }
      
      private function getNumSelected() : int
      {
         var friend:Object = null;
         var friendsSelected:uint = 0;
         for each(friend in this.finalPlayerList)
         {
            if(friend && friend.selected)
            {
               friendsSelected++;
            }
         }
         return friendsSelected;
      }
      
      protected function selectedChanged() : void
      {
         var friend:Object = null;
         var nonSelectedfriend:Object = null;
         var friendsSelected:int = 0;
         var nonSelectedFriends:Array = [];
         for each(friend in this.finalPlayerList)
         {
            if(friend && friend.selected)
            {
               friendsSelected++;
            }
            else if(this.mMaxNumberOfSelection != -1)
            {
               nonSelectedFriends.push(friend);
            }
            friend.enabled = true;
         }
         if(nonSelectedFriends.length > 0 && friendsSelected == this.mMaxNumberOfSelection)
         {
            for each(nonSelectedfriend in nonSelectedFriends)
            {
               if(nonSelectedfriend)
               {
                  nonSelectedfriend.enabled = false;
               }
            }
         }
         this.mFriendsScroller.refresh();
         if(friendsSelected == 0)
         {
            this.setSendButtonsVisibility(false);
         }
         else
         {
            this.setSendButtonsVisibility(true);
         }
         this.mTotalSelected = friendsSelected;
         if(this.mFriendsInRows && this.mFriendsInRows.length == 0)
         {
            this.noFriendsMessage.visible = true;
         }
         else
         {
            this.noFriendsMessage.visible = false;
         }
         if(this.mRequestsSent > 0)
         {
            this.showRequestsCount(this.mRequestsSent,this.mTotalFriendsInvited);
         }
         else
         {
            if(!this.finalPlayerList)
            {
               return;
            }
            this.showFriendsCount(friendsSelected,this.finalPlayerList.length);
         }
         this.checkScrollBarLimits();
      }
      
      protected function setSendButtonsVisibility(value:Boolean) : void
      {
      }
      
      protected function get noFriendsMessage() : MovieClip
      {
         return null;
      }
      
      protected function showRequestsCount(requestsSent:int, totalRequestableFriends:int) : void
      {
      }
      
      protected function showFriendsCount(friendsSelected:int, friendsTotal:int) : void
      {
      }
      
      private function createScroller() : void
      {
         this.mFriendsScroller = new VScroller(615,255,null,PlayerToInviteRowRenderer,0,2);
         this.mFriendsScroller.scrollerSprite.addEventListener(MouseEvent.CLICK,this.onScrollerClick);
         this.mView.addChild(this.mFriendsScroller.scrollerSprite);
      }
      
      private function showFriendsInRows(friendsToShow:Array) : void
      {
         this.mFriendsInRows = [];
         for(var i:int = 0; i < friendsToShow.length; i += 2)
         {
            this.mFriendsInRows.push([friendsToShow[i],friendsToShow[i + 1]]);
         }
         this.mFriendsScroller.data = this.mFriendsInRows;
         this.selectedChanged();
      }
      
      private function onScrollerClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Select",SoundEngine.UI_CHANNEL);
         this.selectedChanged();
      }
      
      protected function filterFriendsToShow(allFacebookFriends:Array) : void
      {
      }
      
      protected function get facebookGraphCall() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         this.mView.WaitingForReply.visible = true;
         var urlReq:URLRequest = AngryBirdsFacebook.sSingleton.graphAPICaller.createGraphAPIRequest(this.facebookGraphCall);
         var urlLoad:RetryingURLLoader = new RetryingURLLoader(urlReq);
         urlLoad.addEventListener(Event.COMPLETE,this.onComplete);
         urlLoad.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
      }
      
      protected function onComplete(e:Event) : void
      {
         var object:Object = null;
         this.mView.WaitingForReply.visible = false;
         var jsonOb:Object = JSON.parse(e.target.data);
         var allFriends:Array = jsonOb.data;
         for each(object in allFriends)
         {
            if(object)
            {
               object.selected = false;
            }
         }
         this.friendDataReady(allFriends);
      }
      
      protected function friendDataReady(friendsArray:Array, preSelectFriends:Boolean = false) : void
      {
         this.filterFriendsToShow(friendsArray);
         this.showFriendsInRows(this.finalPlayerList);
         if(preSelectFriends && smUseSelectAllCheckBox && !this.mSelectAll.selected)
         {
            this.mSelectAll.selected = true;
         }
      }
      
      protected function onError(e:IOErrorEvent) : void
      {
         this.mView.WaitingForReply.visible = false;
         if(this.mSelectAll)
         {
            this.mSelectAll.displayObject.visible = false;
         }
         if(this.mView && this.mView.inviteScrollbar)
         {
            this.mView.inviteScrollbar.visible = false;
         }
         this.setSendButtonsVisibility(false);
      }
      
      private function preselectFriends(listOfFriends:Array, numberToPreselect:int) : void
      {
         numberToPreselect = Math.min(listOfFriends.length,numberToPreselect);
         for(var i:int = 0; i < numberToPreselect; i++)
         {
            listOfFriends[i].selected = true;
         }
      }
      
      public function alphabeticalSort(a:Object, b:Object) : int
      {
         if(a.name < b.name)
         {
            return -1;
         }
         if(a.name > b.name)
         {
            return 1;
         }
         return 0;
      }
      
      public function randomSort(a:Object, b:Object) : int
      {
         var randValue:int = Math.random() * 5;
         randValue -= 2;
         if(randValue <= -1)
         {
            return -1;
         }
         if(randValue >= 1)
         {
            return 1;
         }
         return 0;
      }
      
      protected function set finalPlayerList(value:Array) : void
      {
      }
      
      protected function get finalPlayerList() : Array
      {
         return [];
      }
      
      override public function dispose() : void
      {
         this.mSelectAll.displayObject.removeEventListener(Event.SELECT,this.onSelectAllClicked);
         this.mSelectAll.displayObject.removeEventListener(Event.CHANGE,this.onSelectAllChanged);
         super.dispose();
      }
      
      private function onSelectAllChanged(event:Event) : void
      {
         this.selectAllChanged();
      }
   }
}
