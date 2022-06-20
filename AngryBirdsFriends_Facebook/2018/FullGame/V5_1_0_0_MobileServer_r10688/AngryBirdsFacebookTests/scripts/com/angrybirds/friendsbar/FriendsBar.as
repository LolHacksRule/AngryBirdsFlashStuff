package com.angrybirds.friendsbar
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.AddFriendsVO;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.InviteVO;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.LeagueLevelScoreVO;
   import com.angrybirds.data.OpenGraphData;
   import com.angrybirds.data.UserLevelScoreVO;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.friendsbar.data.CachedFacebookFriends;
   import com.angrybirds.friendsbar.data.HighScoreListManager;
   import com.angrybirds.friendsbar.events.CachedDataEvent;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.friendsbar.ui.FriendItemRenderer;
   import com.angrybirds.friendsbar.ui.HighScoreScroller;
   import com.angrybirds.friendsbar.ui.IGiftingPlate;
   import com.angrybirds.friendsdatacache.CachedInviteFriendDataVO;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.giftinbox.GiftInboxPopup;
   import com.angrybirds.league.LeagueDefinition;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.LeagueType;
   import com.angrybirds.league.events.LeagueEvent;
   import com.angrybirds.popups.coinshop.CoinShopTutorialPopup;
   import com.angrybirds.server.TournamentLoader;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.angrybirds.states.StateLevelEnd;
   import com.angrybirds.states.StateLevelEndFail;
   import com.angrybirds.states.StatePlay;
   import com.angrybirds.states.tournament.StateTournamentLevelEnd;
   import com.angrybirds.states.tournament.StateTournamentLevelEndFail;
   import com.angrybirds.states.tournament.StateTournamentPlay;
   import com.angrybirds.states.tournament.StateTournamentResults;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.assets.AssetCache;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.factory.Log;
   import com.rovio.server.SessionRetryingURLLoader;
   import com.rovio.sound.SoundEngine;
   import com.rovio.utils.AmountToFourCharacterString;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class FriendsBar extends Sprite implements INavigable
   {
      
      public static var FRIEND_LIST_PERMISSION_GRANTED:Boolean = false;
      
      public static const SIDEBAR_BUTTON_STATE_INFO:String = "SidebarButtonStateInfo";
      
      public static const SIDEBAR_BUTTON_STATE_PLAY:String = "SidebarButtonStatePlay";
      
      public static const SIDEBAR_BUTTON_STATE_NONE:String = "SidebarButtonStateNone";
      
      public static const SIDEBAR_BUTTON_STATE_NO_TUTORIAL:String = "SidebarButtonStateNoTutorial";
      
      public static const SIDEBAR_BUTTON_STATE_PAUSE:String = "SidebarButtonStatePause";
      
      public static const SCORE_LIST_TYPE_TOURNAMENT:int = 0;
      
      public static const SCORE_LIST_TYPE_LAST_WEEK_TOURNAMENT:int = 1;
      
      public static const SCORE_LIST_TYPE_LEAGUE:int = 2;
      
      public static const SCORE_LIST_TYPE_LAST_WEEK_LEAGUE:int = 3;
      
      public static const SCORE_LIST_TYPE_LAST_WEEK_LEAGUE_UNCONCLUDED:int = 4;
      
      public static const SCORE_LIST_TYPE_STORY_LEVELS_OVERALL:int = 5;
      
      public static const SCORE_LIST_TYPE_LEVEL:int = 6;
      
      public static const SCORE_LIST_TYPE_LEAGUE_LEVEL:int = 7;
      
      public static const SCORE_LIST_EMPTY:int = 8;
      
      public static const SCORE_LIST_EMPTY_STORY_LEVEL:int = 9;
      
      private static const TITLE_MOVIECLIP_Y_VALUE_NORMAL:int = 40;
      
      private static const TITLE_MOVIECLIP_Y_VALUE_ELEVATED:int = 20;
      
      public static var sInvitedFriends:Array = [];
      
      public static const TAB_DEFAULT:String = "Friends";
      
      public static const TAB_LEAGUE:String = "League";
       
      
      private var mCurrentScoreListDataType:int;
      
      private var mScoreListTournamentData:Object;
      
      private var mScoreListLastWeekTournamentData:Object;
      
      private var mScoreListLeagueData:Object;
      
      private var mScoreListLastWeekLeagueData:Object;
      
      private var mScoreListLastWeekLeagueUnconcludedData:Object;
      
      private var mScoreListStoryLevelsOverallData:Object;
      
      private var mScoreListLevelData:Object;
      
      private var mScoreListLeagueLevelData:Object;
      
      private var mFriendsBarScroller:HighScoreScroller;
      
      private var mFriendsScrollData:Array;
      
      private var mTitleMovieClip:MovieClip;
      
      private var mFriendsBarGraphic:MovieClip;
      
      private var mLeagueInfo:MovieClip;
      
      private var mServerRoot:String;
      
      private var mHighScoreListManager:HighScoreListManager;
      
      private var mCurrentlyShowingScoreFor:String = "";
      
      private var mCachedLevelScores:CachedFacebookFriends;
      
      private var mCurrentLevelFriendsStandings:Array;
      
      private var mCachedLevelScoresLeague:CachedFacebookFriends;
      
      private var mInfoActive:Boolean;
      
      private var mCurrentInfoButtonState:String;
      
      private var mUserId:String;
      
      private var mIsCustomData:Boolean;
      
      private var mSelectedTab:String;
      
      private var btnTabFriends:SimpleButton;
      
      private var btnTabLeague:SimpleButton;
      
      private var mTargetStageHeight:Number;
      
      private var mLevelManager:FacebookLevelManager;
      
      private var mBeatenUsers:Array;
      
      private var mBraggedUsers:Array;
      
      private var mUserScoreResultObject:Object;
      
      public function FriendsBar(highScoreListManager:HighScoreListManager, serverRoot:String, userId:String, levelManager:FacebookLevelManager)
      {
         this.mBeatenUsers = [];
         this.mBraggedUsers = [];
         super();
         FriendItemRenderer.sUserId = userId;
         this.mUserId = userId;
         this.mHighScoreListManager = highScoreListManager;
         this.mServerRoot = serverRoot;
         this.mLevelManager = levelManager;
         this.init();
         this.toggleLeagueTab(false,false);
      }
      
      private function init() : void
      {
         this.mFriendsBarGraphic = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.FriendsBarAsset")();
         this.mFriendsBarGraphic.tabChildren = false;
         addChild(this.mFriendsBarGraphic);
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipInfo).mouseEnabled = false;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipTutorial).visible = false;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipSoundOff).mouseEnabled = false;
         this.notYetInLeagueVisuals(false);
         this.mFriendsBarScroller = new HighScoreScroller(330,180,[],FriendItemRenderer,2,15);
         addChild(this.mFriendsBarScroller.scrollerSprite);
         this.mFriendsBarScroller.scrollerSprite.x = 180 + 7;
         this.mFriendsBarScroller.scrollerSprite.rotation = 90;
         this.mFriendsBarGraphic.mcButtonsContainer.btnScrollUp.addEventListener(MouseEvent.CLICK,this.onUpClick);
         this.mFriendsBarGraphic.mcButtonsContainer.btnScrollDown.addEventListener(MouseEvent.CLICK,this.onDownClick);
         this.mFriendsBarGraphic.mcButtonsContainer.btnAvatar.addEventListener(MouseEvent.CLICK,this.onAvatarClick);
         this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.addEventListener(MouseEvent.CLICK,this.onShopClick);
         this.mFriendsBarGraphic.mcButtonsContainer.btnInvite.addEventListener(MouseEvent.CLICK,this.onInviteClick);
         this.mFriendsBarGraphic.mcButtonsContainer.btnGift.addEventListener(MouseEvent.CLICK,this.onGiftClick);
         this.mFriendsBarGraphic.mcButtonsContainer.btnShop.addEventListener(MouseEvent.CLICK,this.onShopClick);
         this.mFriendsBarGraphic.mcButtonsContainer.btnFullscreen.addEventListener(MouseEvent.CLICK,this.onFullscreenClick);
         this.mFriendsBarGraphic.mcButtonsContainer.btnSound.addEventListener(MouseEvent.CLICK,this.onSoundClick);
         this.mFriendsBarGraphic.mcButtonsContainer.txtInboxItemCount.mouseEnabled = false;
         this.mFriendsBarGraphic.mcButtonsContainer.mcItemCountBg.mouseEnabled = false;
         this.mFriendsBarGraphic.mcButtonsContainer.txtInboxItemCount.mouseChildren = false;
         this.mFriendsBarGraphic.mcButtonsContainer.mcItemCountBg.mouseChildren = false;
         this.mLeagueInfo = this.mFriendsBarGraphic.LeagueInfo as MovieClip;
         this.mLeagueInfo.visible = false;
         this.mLeagueInfo.addEventListener(MouseEvent.CLICK,this.onLeagueSettingsClicked);
         this.mLeagueInfo.buttonMode = true;
         this.mLeagueInfo.useHandCursor = true;
         this.mLeagueInfo.mouseChildren = false;
         this.toggleLeagueSettingsButton(false);
         this.mFriendsBarScroller.scrollerSprite.addEventListener(FriendsBarEvent.INVITE_FRIENDS_CLICKED,this.onInvitePlateClicked);
         this.mFriendsBarScroller.scrollerSprite.addEventListener(FriendsBarEvent.SEND_GIFT_TO_USER_CLICKED,this.onSendGiftToUserClicked);
         this.mFriendsBarScroller.scrollerSprite.addEventListener(FriendsBarEvent.SEND_CHALLENGE_TO_USER_CLICKED,this.onSendChallengeToUserClicked);
         this.initTabs();
         this.mInfoActive = true;
         this.mTitleMovieClip = this.mFriendsBarGraphic.mcTitle as MovieClip;
         this.mTitleMovieClip.txtTitle.text = "";
         this.mTitleMovieClip.visible = false;
         this.setInboxItemCount(GiftInboxPopup.inboxItemCount);
         this.showGlowOnShopButton(true);
         this.updateAvatarShopButton(DataModelFriends(AngryBirdsBase.singleton.dataModel).hasAvatarShopNewItems);
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mcNewTagShop).mouseEnabled = false;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mcNewTagShop).mouseChildren = false;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.Tag_Sale_Shop).mouseEnabled = false;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.Tag_Sale_Shop).mouseChildren = false;
         this.updateShopButton();
         ExternalInterfaceHandler.addCallback("giftsSentToUsers",this.onGiftsSentToUsers);
         ExternalInterfaceHandler.addCallback("challengeSentToUser",this.onChallengeSentToUser);
         ExternalInterfaceHandler.addCallback("bragCompleted",this.onBragSentToUser);
         if(LeagueModel.instance.active)
         {
            this.toggleBackground(TAB_LEAGUE);
            this.changeTab(TAB_LEAGUE,false);
         }
         else
         {
            this.toggleBackground(TAB_DEFAULT);
            this.changeTab(TAB_DEFAULT,false);
         }
      }
      
      private function hasFriendsData() : Boolean
      {
         return this.mScoreListTournamentData != null && this.mCurrentScoreListDataType == SCORE_LIST_TYPE_TOURNAMENT || this.mScoreListLevelData != null && this.mCurrentScoreListDataType == SCORE_LIST_TYPE_LEVEL || this.mScoreListStoryLevelsOverallData != null && this.mCurrentScoreListDataType == SCORE_LIST_TYPE_STORY_LEVELS_OVERALL || this.mScoreListLastWeekTournamentData != null && this.mCurrentScoreListDataType == SCORE_LIST_TYPE_LAST_WEEK_TOURNAMENT;
      }
      
      private function hasLeagueData() : Boolean
      {
         return this.mScoreListLeagueData != null && this.mCurrentScoreListDataType == SCORE_LIST_TYPE_LEAGUE || this.mScoreListLeagueLevelData != null && this.mCurrentScoreListDataType == SCORE_LIST_TYPE_LEAGUE_LEVEL || this.mScoreListLastWeekLeagueData != null && this.mCurrentScoreListDataType == SCORE_LIST_TYPE_LAST_WEEK_LEAGUE || this.mScoreListLastWeekLeagueUnconcludedData != null && this.mCurrentScoreListDataType == SCORE_LIST_TYPE_LAST_WEEK_LEAGUE_UNCONCLUDED;
      }
      
      private function onLeagueSettingsClicked(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.LEAGUE_INFO_SETTINGS_REQUESTED));
      }
      
      private function toggleLeagueSettingsButton(visible:Boolean) : void
      {
         this.mFriendsBarGraphic.mcButtonsContainer.btnAvatar.visible = !visible;
         this.mFriendsBarGraphic.mcButtonsContainer.btnInvite.visible = !visible;
         this.mFriendsBarGraphic.mcButtonsContainer.btnGift.visible = !visible;
         this.mFriendsBarGraphic.mcButtonsContainer.btnShop.visible = !visible;
         this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.visible = visible;
         this.showGlowOnShopButton(false);
         this.setInboxItemCount(GiftInboxPopup.inboxItemCount);
      }
      
      private function initTabs() : void
      {
         this.btnTabFriends = this.mFriendsBarGraphic.btnTabFriends as SimpleButton;
         this.btnTabLeague = this.mFriendsBarGraphic.btnTabLeague as SimpleButton;
         this.btnTabFriends.addEventListener(MouseEvent.CLICK,this.onTabFriendsClick);
         this.btnTabLeague.addEventListener(MouseEvent.CLICK,this.onTabLeagueClick);
      }
      
      protected function onTabLeagueClick(event:MouseEvent) : void
      {
         if(this.mSelectedTab != TAB_LEAGUE)
         {
            SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         }
         if(this.isCurrentlyInLevel())
         {
            this.changeScoreList(SCORE_LIST_TYPE_LEAGUE_LEVEL);
         }
         else if(AngryBirdsBase.singleton.getCurrentState() == StateTournamentResults.STATE_NAME)
         {
            if(StateTournamentResults.resultType == StateTournamentResults.RESULTS_SCREEN)
            {
               this.changeScoreList(SCORE_LIST_TYPE_LAST_WEEK_LEAGUE_UNCONCLUDED);
            }
            else
            {
               this.changeScoreList(SCORE_LIST_TYPE_LAST_WEEK_LEAGUE);
            }
         }
         else
         {
            this.changeScoreList(SCORE_LIST_TYPE_LEAGUE);
         }
      }
      
      protected function onTabFriendsClick(event:MouseEvent) : void
      {
         if(this.mSelectedTab != TAB_DEFAULT)
         {
            SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         }
         if(this.isCurrentlyInLevel())
         {
            this.changeScoreList(SCORE_LIST_TYPE_LEVEL);
         }
         else if(AngryBirdsBase.singleton.getCurrentState() == StateTournamentResults.STATE_NAME)
         {
            this.changeScoreList(SCORE_LIST_TYPE_LAST_WEEK_TOURNAMENT);
         }
         else
         {
            this.changeScoreList(SCORE_LIST_TYPE_TOURNAMENT);
         }
      }
      
      private function changeTab(tab:String, saveSelection:Boolean = true) : void
      {
         if(this.mSelectedTab == tab)
         {
            return;
         }
         this.mSelectedTab = tab;
         this.toggleBackground(tab);
         this.toggleLeagueSettingsButton(this.mSelectedTab == TAB_LEAGUE);
         if(this.mSelectedTab == TAB_DEFAULT)
         {
            this.updateAvatarShopButton(DataModelFriends(AngryBirdsBase.singleton.dataModel).hasAvatarShopNewItems);
         }
         else
         {
            this.updateAvatarShopButton(false);
         }
         if(saveSelection)
         {
            DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.TAB_SELECTION_STORAGE_NAME,[this.mSelectedTab],true);
         }
         this.updateShopButton();
      }
      
      private function toggleBackground(frameName:String) : void
      {
         this.mFriendsBarGraphic.mcTop.gotoAndStop(frameName);
         this.mFriendsBarGraphic.mcMiddle.gotoAndStop(frameName);
         this.mFriendsBarGraphic.mcBottom.gotoAndStop(frameName);
      }
      
      private function onGiftsSentToUsers(users:Array) : void
      {
         var userId:String = null;
         var friendRenderer:FriendItemRenderer = null;
         if(!users)
         {
            return;
         }
         for each(userId in users)
         {
            for each(friendRenderer in this.mFriendsBarScroller.itemRenderers)
            {
               if(friendRenderer.currentPlate.data && userId == friendRenderer.currentPlate.data.userId)
               {
                  if(friendRenderer.currentPlate is IGiftingPlate)
                  {
                     IGiftingPlate(friendRenderer.currentPlate).setCanSendGift(false,true);
                  }
                  ExceptionUserIDsManager.instance.addGiftRequestToUser(friendRenderer.currentPlate.data.userId);
                  break;
               }
            }
         }
      }
      
      public function updateInfoButtonState(newState:String = "SidebarButtonStateInfo") : void
      {
         if(this.mCurrentInfoButtonState == newState)
         {
            return;
         }
         Log.log("Changing state");
         this.mCurrentInfoButtonState = newState;
         switch(this.mCurrentInfoButtonState)
         {
            case SIDEBAR_BUTTON_STATE_INFO:
               Log.log("Info state");
               this.setInfoButtonEventListener();
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipInfo).visible = true;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipInfo).alpha = 1;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipTutorial).visible = false;
               this.mFriendsBarGraphic.mcButtonsContainer.btnInfo.enabled = true;
               this.mInfoActive = true;
               break;
            case SIDEBAR_BUTTON_STATE_NONE:
            case SIDEBAR_BUTTON_STATE_PAUSE:
            case SIDEBAR_BUTTON_STATE_NO_TUTORIAL:
               Log.log("None state");
               this.unsetInfoButtonEventListener();
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipInfo).alpha = 0.5;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipTutorial).alpha = 0.5;
               this.mFriendsBarGraphic.mcButtonsContainer.btnInfo.enabled = false;
               break;
            case SIDEBAR_BUTTON_STATE_PLAY:
               Log.log("Play state");
               this.setInfoButtonEventListener();
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipInfo).mouseEnabled = false;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipTutorial).mouseEnabled = false;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipInfo).visible = false;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipTutorial).visible = true;
               MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipTutorial).alpha = 1;
               this.mFriendsBarGraphic.mcButtonsContainer.btnInfo.enabled = true;
               this.mInfoActive = false;
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setTrackableState(this.mCurrentInfoButtonState);
      }
      
      public function updateSoundButtonStates() : void
      {
         if(SoundEngine.soundsOn)
         {
            MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipSoundOff).visible = false;
         }
         else
         {
            MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mClipSoundOff).visible = true;
         }
         DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.SOUND_SETTING_STORAGE_NAME,[SoundEngine.soundsOn],true);
      }
      
      public function updatePopupButtonStates(currentState:String) : void
      {
         this.mFriendsBarGraphic.mcButtonsContainer.btnAvatar.enabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
         this.mFriendsBarGraphic.mcButtonsContainer.btnAvatar.alpha = currentState == SIDEBAR_BUTTON_STATE_NONE ? 0.5 : 1;
         this.mFriendsBarGraphic.mcButtonsContainer.btnAvatar.mouseEnabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
         this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.enabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
         this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.alpha = currentState == SIDEBAR_BUTTON_STATE_NONE ? 0.5 : 1;
         this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.mouseEnabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
         this.mFriendsBarGraphic.mcButtonsContainer.btnInvite.enabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
         this.mFriendsBarGraphic.mcButtonsContainer.btnInvite.alpha = currentState == SIDEBAR_BUTTON_STATE_NONE ? 0.5 : 1;
         this.mFriendsBarGraphic.mcButtonsContainer.btnInvite.mouseEnabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
         this.mFriendsBarGraphic.mcButtonsContainer.btnGift.enabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
         this.mFriendsBarGraphic.mcButtonsContainer.btnGift.alpha = currentState == SIDEBAR_BUTTON_STATE_NONE ? 0.5 : 1;
         this.mFriendsBarGraphic.mcButtonsContainer.btnGift.mouseEnabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
         this.mFriendsBarGraphic.mcButtonsContainer.btnShop.enabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
         this.mFriendsBarGraphic.mcButtonsContainer.btnShop.alpha = currentState == SIDEBAR_BUTTON_STATE_NONE ? 0.5 : 1;
         this.mFriendsBarGraphic.mcButtonsContainer.btnShop.mouseEnabled = currentState != SIDEBAR_BUTTON_STATE_NONE;
      }
      
      private function onAvatarClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.AVATAR_EDITOR_REQUESTED));
      }
      
      private function onInviteClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.INVITE_FRIENDS_REQUESTED));
      }
      
      private function onSendGiftToUserClicked(e:FriendsBarEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         ExternalInterfaceHandler.performCall("updateSessionToken",SessionRetryingURLLoader.sessionToken);
         ExternalInterfaceHandler.performCall("flashSendGiftFriend",(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName,e.data.userId,OpenGraphData.getObjectId(OpenGraphData.MYSTERY_GIFT));
         FacebookAnalyticsCollector.getInstance().trackSendGiftEvent(1,"SIDEBAR");
      }
      
      private function onSendChallengeToUserClicked(e:FriendsBarEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         ExternalInterfaceHandler.performCall("updateSessionToken",SessionRetryingURLLoader.sessionToken);
         ExternalInterfaceHandler.performCall("flashSendChallengeFriend",(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName,TournamentModel.instance.tournamentName,e.data.userId,OpenGraphData.getObjectId(OpenGraphData.CHALLENGE_TO_TOURNAMENT));
      }
      
      private function onBragSentToUser(userID:String) : void
      {
         var userObj:Object = null;
         for each(userObj in this.mBeatenUsers)
         {
            if(userObj.userId == userID)
            {
               userObj.beaten = false;
               break;
            }
         }
         if(this.mBraggedUsers)
         {
            this.mBraggedUsers.push(userID);
         }
      }
      
      private function onChallengeSentToUser(userID:String) : void
      {
         var activePlayersCount:int = 0;
         var player:Object = null;
         var tournamentLoader:TournamentLoader = new TournamentLoader();
         tournamentLoader.markChallengeSent([userID]);
         if(TournamentModel.instance.currentTournament)
         {
            activePlayersCount = 0;
            for each(player in TournamentModel.instance.players)
            {
               if(player.p && player.p > 0)
               {
                  activePlayersCount++;
               }
            }
            FacebookAnalyticsCollector.getInstance().trackSendChallenge((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,userID,TournamentModel.instance.currentTournament.id,activePlayersCount);
         }
         for(var index:int = 0; index < CachedFacebookFriends.challengeCandidates.length; index++)
         {
            if(CachedFacebookFriends.challengeCandidates[index].userId == userID)
            {
               CachedFacebookFriends.challengeCandidates.splice(index,1);
               break;
            }
         }
         CachedFacebookFriends.challengedIDs.push(userID);
         var scrollToIndex:int = this.mFriendsBarScroller.offset + this.mFriendsBarScroller.visibleItemsCount / 2;
         this.setScoreListData(this.mCurrentScoreListDataType,null,scrollToIndex);
      }
      
      private function onInvitePlateClicked(e:FriendsBarEvent) : void
      {
         ExternalInterfaceHandler.addCallback("invitationBatchSent",this.onInviteBatchSent);
         ExternalInterfaceHandler.addCallback("invitationBatchCancel",this.onInviteBatchCancel);
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.INVITE_FRIENDS_REQUESTED,e.data as InviteVO));
      }
      
      private function onInviteBatchSent(toUser:Object) : void
      {
         var halfway:int = 0;
         var invitedUserPreviousOffset:int = 0;
         var i:int = 0;
         ExternalInterfaceHandler.removeCallback("invitationBatchSent",this.onInviteBatchSent);
         ExternalInterfaceHandler.removeCallback("invitationBatchCancel",this.onInviteBatchCancel);
         if(toUser != null)
         {
            halfway = Math.floor(this.mFriendsBarScroller.visibleItemsCount / 2);
            invitedUserPreviousOffset = this.mFriendsBarScroller.offset + halfway;
            for(i = 0; i < this.mHighScoreListManager.getTotalScores().data.length; i++)
            {
               if(this.mHighScoreListManager.getTotalScores().data[i].userId == toUser)
               {
                  this.mHighScoreListManager.getTotalScores().data.splice(i,1);
                  break;
               }
            }
            sInvitedFriends.push(toUser);
            this.setBarScrollerData();
            this.mFriendsBarScroller.refresh();
            this.scrollToUser(invitedUserPreviousOffset);
            this.updateArrowGraphics();
         }
      }
      
      private function onInviteBatchCancel() : void
      {
         ExternalInterfaceHandler.removeCallback("invitationBatchSent",this.onInviteBatchSent);
         ExternalInterfaceHandler.removeCallback("invitationBatchCancel",this.onInviteBatchCancel);
      }
      
      private function onShopClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.SHOP_REQUESTED));
         this.showGlowOnShopButton(false);
      }
      
      private function onFullscreenClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.FULLSCREEN_TOGGLE_REQUESTED));
      }
      
      private function onSoundClick(e:MouseEvent) : void
      {
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.MUTE_TOGGLE_REQUESTED));
         this.updateSoundButtonStates();
      }
      
      private function onInfoClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         if(this.mInfoActive)
         {
            Log.log(FriendsBarEvent.INFO_REQUESTED);
            dispatchEvent(new FriendsBarEvent(FriendsBarEvent.INFO_REQUESTED));
         }
         else
         {
            Log.log(FriendsBarEvent.TUTORIAL_REQUESTED);
            dispatchEvent(new FriendsBarEvent(FriendsBarEvent.TUTORIAL_REQUESTED));
         }
      }
      
      override public function set height(value:Number) : void
      {
         this.resize(value);
      }
      
      private function resize(setHeight:Number) : void
      {
         this.mTargetStageHeight = Math.max(setHeight,330);
         this.mFriendsBarGraphic.mcMiddle.height = this.mTargetStageHeight - this.mFriendsBarGraphic.mcTop.height - this.mFriendsBarGraphic.mcBottom.height;
         this.mFriendsBarGraphic.mcBottom.y = this.mTargetStageHeight - this.mFriendsBarGraphic.mcBottom.height;
         this.mFriendsBarGraphic.mcButtonsContainer.y = this.mTargetStageHeight - this.mFriendsBarGraphic.mcButtonsContainer.height + 7;
         this.mFriendsBarScroller.scrollerSprite.y = 104;
         this.mFriendsBarScroller.setWidth(this.mTargetStageHeight - 255);
         this.updateArrowGraphics();
      }
      
      private function onUpClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL);
         this.scroll(-this.mFriendsBarScroller.visibleItemsCount);
      }
      
      private function onDownClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL);
         this.scroll(this.mFriendsBarScroller.visibleItemsCount);
      }
      
      private function onGiftClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.GIFT_POPUP_REQUESTED));
      }
      
      public function setScoreListData(type:int, standings:Array = null, scrollToUserIndex:int = -1) : void
      {
         var prevLeagueInfo:Object = null;
         var unconcludedLeagueInfo:Object = null;
         var activateTab:* = false;
         switch(type)
         {
            case SCORE_LIST_TYPE_TOURNAMENT:
               if(!this.mScoreListTournamentData)
               {
                  this.mScoreListTournamentData = new Object();
                  this.mScoreListTournamentData.title = "Tournament scores";
                  this.mScoreListTournamentData.data = [];
                  this.mScoreListTournamentData.standings = [];
               }
               if(standings)
               {
                  this.mScoreListTournamentData.standings = standings;
                  this.setInfoButtonEventListener();
               }
               if(FRIEND_LIST_PERMISSION_GRANTED)
               {
                  this.mScoreListTournamentData.data = this.mScoreListTournamentData.standings.concat(this.getChallengePlates());
                  this.mScoreListTournamentData.data = this.mScoreListTournamentData.data.concat(this.getInvitePlates());
               }
               else
               {
                  this.mScoreListTournamentData.data = this.mScoreListTournamentData.standings.concat(new AddFriendsVO(""));
               }
               activateTab = this.selectedTab() == TAB_DEFAULT;
               break;
            case SCORE_LIST_TYPE_LAST_WEEK_TOURNAMENT:
               if(!this.mScoreListLastWeekTournamentData)
               {
                  this.mScoreListLastWeekTournamentData = new Object();
                  this.mScoreListLastWeekTournamentData.title = "Previous scores";
               }
               this.mScoreListLastWeekTournamentData.standings = standings;
               if(LeagueModel.instance.active && (LeagueModel.instance.unconcludedResult || LeagueModel.instance.previousResult))
               {
                  activateTab = this.selectedTab() == TAB_DEFAULT;
               }
               else
               {
                  activateTab = true;
               }
               this.setInfoButtonEventListener();
               break;
            case SCORE_LIST_TYPE_LEAGUE:
               if(!this.mScoreListLeagueData)
               {
                  this.mScoreListLeagueData = new Object();
                  this.mScoreListLeagueData.leagueId = "NONE";
               }
               if(LeagueModel.instance.currentLeague())
               {
                  this.mScoreListLeagueData.leagueId = LeagueModel.instance.currentLeague().id;
               }
               if(!standings)
               {
                  standings = [];
               }
               this.mScoreListLeagueData.standings = standings;
               if(this.selectedTab() == TAB_LEAGUE && this.mCurrentScoreListDataType != SCORE_LIST_TYPE_LEAGUE_LEVEL)
               {
                  activateTab = true;
               }
               break;
            case SCORE_LIST_TYPE_LAST_WEEK_LEAGUE:
               if(!this.mScoreListLastWeekLeagueData)
               {
                  this.mScoreListLastWeekLeagueData = new Object();
                  this.mScoreListLastWeekLeagueData.leagueId = "NONE";
               }
               if(LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.l)
               {
                  prevLeagueInfo = LeagueModel.instance.previousResult.l;
                  this.mScoreListLastWeekLeagueData.leagueId = prevLeagueInfo.pli.tn;
               }
               this.mScoreListLastWeekLeagueData.standings = standings;
               activateTab = this.selectedTab() == TAB_LEAGUE;
               this.setInfoButtonEventListener();
               break;
            case SCORE_LIST_TYPE_LAST_WEEK_LEAGUE_UNCONCLUDED:
               if(!this.mScoreListLastWeekLeagueUnconcludedData)
               {
                  this.mScoreListLastWeekLeagueUnconcludedData = new Object();
                  this.mScoreListLastWeekLeagueUnconcludedData.title = "";
                  this.mScoreListLastWeekLeagueUnconcludedData.leagueId = "NONE";
               }
               if(LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.l && LeagueModel.instance.unconcludedResult.l.p)
               {
                  unconcludedLeagueInfo = LeagueModel.instance.unconcludedResult.l;
                  this.mScoreListLastWeekLeagueUnconcludedData.title = unconcludedLeagueInfo.pli.ln;
                  this.mScoreListLastWeekLeagueUnconcludedData.leagueId = unconcludedLeagueInfo.pli.tn;
               }
               this.mScoreListLastWeekLeagueUnconcludedData.standings = standings;
               activateTab = Boolean(this.selectedTab() == TAB_LEAGUE && StateTournamentResults.resultType == StateTournamentResults.RESULTS_SCREEN);
               this.setInfoButtonEventListener();
               break;
            case SCORE_LIST_TYPE_STORY_LEVELS_OVERALL:
               if(!this.mScoreListStoryLevelsOverallData)
               {
                  this.mScoreListStoryLevelsOverallData = new Object();
                  this.mScoreListStoryLevelsOverallData.title = "Total scores";
               }
               if(!standings)
               {
                  this.mScoreListStoryLevelsOverallData.standings = [];
               }
               else
               {
                  this.mScoreListStoryLevelsOverallData.standings = standings;
                  if(!FRIEND_LIST_PERMISSION_GRANTED)
                  {
                     this.mScoreListStoryLevelsOverallData.standings = this.mScoreListStoryLevelsOverallData.standings.concat(new AddFriendsVO(""));
                  }
                  this.setInfoButtonEventListener();
               }
               activateTab = true;
               break;
            case SCORE_LIST_TYPE_LEVEL:
               if(!this.mScoreListLevelData)
               {
                  this.mScoreListLevelData = new Object();
                  this.mScoreListLevelData.title = "Level scores";
               }
               if(!standings)
               {
                  standings = [];
                  this.loadLevelStandings(scrollToUserIndex);
                  return;
               }
               if(!FRIEND_LIST_PERMISSION_GRANTED)
               {
                  standings = standings.concat(new AddFriendsVO(""));
               }
               else
               {
                  if(this.mCachedLevelScores.isTournamentScores)
                  {
                     standings = standings.concat(this.getLevelChallengePlates());
                  }
                  standings = standings.concat(this.getInvitePlates());
               }
               this.mScoreListLevelData.standings = standings;
               activateTab = this.selectedTab() == TAB_DEFAULT;
               this.setInfoButtonEventListener();
               break;
            case SCORE_LIST_TYPE_LEAGUE_LEVEL:
               if(!this.mScoreListLeagueLevelData)
               {
                  this.mScoreListLeagueLevelData = new Object();
                  this.mScoreListLeagueLevelData.leagueId = "NONE";
                  this.mScoreListLeagueLevelData.loadingScores = false;
               }
               if(LeagueModel.instance.currentLeague())
               {
                  this.mScoreListLeagueLevelData.leagueId = LeagueModel.instance.currentLeague().id;
               }
               if(!standings)
               {
                  this.mScoreListLeagueLevelData.standings = [];
                  this.loadLeagueLevelStandings();
                  this.mScoreListLeagueLevelData.loadingScores = true;
                  return;
               }
               this.mScoreListLeagueLevelData.standings = standings;
               this.mScoreListLeagueLevelData.loadingScores = false;
               activateTab = this.selectedTab() == TAB_LEAGUE;
               this.setInfoButtonEventListener();
               break;
            case SCORE_LIST_EMPTY:
            case SCORE_LIST_EMPTY_STORY_LEVEL:
               if(this.mCachedLevelScoresLeague)
               {
                  this.mCachedLevelScoresLeague.removeEventListener(CachedDataEvent.DATA_LOADED,this.onLeagueLevelFriendsLoaded);
                  this.mCachedLevelScoresLeague = null;
               }
               if(this.mCachedLevelScores)
               {
                  this.mCachedLevelScores.removeEventListener(CachedDataEvent.DATA_LOADED,this.onLevelFriendsLoaded);
                  this.mCachedLevelScores = null;
               }
               activateTab = true;
               this.unsetInfoButtonEventListener();
         }
         if(activateTab)
         {
            this.changeScoreList(type,scrollToUserIndex);
         }
      }
      
      public function changeScoreList(type:int, scrollToUserIndex:int = -1) : void
      {
         var showTabs:Boolean = false;
         var i:int = 0;
         var userLeagueLevelScore:LeagueLevelScoreVO = null;
         this.mLeagueInfo.visible = false;
         this.mTitleMovieClip.visible = false;
         switch(type)
         {
            case SCORE_LIST_TYPE_TOURNAMENT:
               this.changeTab(TAB_DEFAULT);
               if(this.mScoreListTournamentData)
               {
                  this.mTitleMovieClip.txtTitle.text = this.mScoreListTournamentData.title;
                  this.mTitleMovieClip.visible = true;
                  this.mTitleMovieClip.y = TITLE_MOVIECLIP_Y_VALUE_NORMAL;
                  this.mFriendsScrollData = this.mScoreListTournamentData.data;
               }
               else
               {
                  this.mFriendsScrollData = [];
               }
               this.mCurrentlyShowingScoreFor = "";
               this.toggleLeagueTab(LeagueModel.instance.active,false);
               this.notYetInLeagueVisuals(false);
               this.setBarScrollerData();
               this.updateInfoButtonState(SIDEBAR_BUTTON_STATE_INFO);
               this.toggleSpinner(false);
               break;
            case SCORE_LIST_TYPE_LAST_WEEK_TOURNAMENT:
               this.changeTab(TAB_DEFAULT);
               if(this.mScoreListLastWeekTournamentData)
               {
                  this.mTitleMovieClip.txtTitle.text = this.mScoreListLastWeekTournamentData.title;
                  this.mTitleMovieClip.visible = true;
                  this.mTitleMovieClip.y = TITLE_MOVIECLIP_Y_VALUE_NORMAL;
                  this.mFriendsScrollData = this.mScoreListLastWeekTournamentData.standings;
               }
               else
               {
                  this.mFriendsScrollData = [];
               }
               this.mCurrentlyShowingScoreFor = "";
               showTabs = LeagueModel.instance.active && (LeagueModel.instance.unconcludedResult || LeagueModel.instance.previousResult);
               this.toggleLeagueTab(showTabs,false);
               this.notYetInLeagueVisuals(false);
               this.setBarScrollerData();
               this.updateInfoButtonState(SIDEBAR_BUTTON_STATE_INFO);
               this.toggleSpinner(false);
               break;
            case SCORE_LIST_TYPE_LEAGUE:
               this.changeTab(TAB_LEAGUE);
               this.toggleSpinner(false);
               if(this.mScoreListLeagueData)
               {
                  this.mLeagueInfo.visible = true;
                  this.displayLeagueIcon(this.mScoreListLeagueData.leagueId);
                  this.mFriendsScrollData = this.mScoreListLeagueData.standings;
                  this.notYetInLeagueVisuals(this.mScoreListLeagueData.standings != null && this.mScoreListLeagueData.standings.length == 0);
               }
               else
               {
                  this.mFriendsScrollData = [];
                  this.notYetInLeagueVisuals(false);
                  this.displayLeagueIcon(null);
               }
               this.mCurrentlyShowingScoreFor = "League";
               this.toggleLeagueTab(true,true);
               this.setBarScrollerData();
               this.updateInfoButtonState(SIDEBAR_BUTTON_STATE_INFO);
               break;
            case SCORE_LIST_TYPE_LAST_WEEK_LEAGUE:
               this.changeTab(TAB_LEAGUE);
               this.toggleSpinner(false);
               if(this.mScoreListLastWeekLeagueData)
               {
                  this.mLeagueInfo.visible = true;
                  this.displayLeagueIcon(this.mScoreListLastWeekLeagueData.leagueId,true);
                  this.mFriendsScrollData = this.mScoreListLastWeekLeagueData.standings;
                  this.notYetInLeagueVisuals(this.mScoreListLastWeekLeagueData.standings != null && this.mScoreListLastWeekLeagueData.standings.length == 0);
               }
               else
               {
                  this.mFriendsScrollData = [];
                  this.notYetInLeagueVisuals(true);
                  this.displayLeagueIcon(null);
               }
               this.mCurrentlyShowingScoreFor = "League";
               this.toggleLeagueTab(true,true);
               this.setBarScrollerData();
               this.updateInfoButtonState(SIDEBAR_BUTTON_STATE_INFO);
               break;
            case SCORE_LIST_TYPE_LAST_WEEK_LEAGUE_UNCONCLUDED:
               this.changeTab(TAB_LEAGUE);
               this.toggleSpinner(false);
               if(this.mScoreListLastWeekLeagueUnconcludedData)
               {
                  this.mLeagueInfo.visible = true;
                  this.displayLeagueIcon(this.mScoreListLastWeekLeagueUnconcludedData.leagueId,true);
                  this.mFriendsScrollData = this.mScoreListLastWeekLeagueUnconcludedData.standings;
                  this.notYetInLeagueVisuals(this.mScoreListLastWeekLeagueUnconcludedData.standings != null && this.mScoreListLastWeekLeagueUnconcludedData.standings.length == 0);
               }
               else
               {
                  this.mFriendsScrollData = [];
                  this.notYetInLeagueVisuals(true);
                  this.displayLeagueIcon(null);
               }
               this.mCurrentlyShowingScoreFor = "League";
               this.toggleLeagueTab(true,true);
               this.setBarScrollerData();
               this.updateInfoButtonState(SIDEBAR_BUTTON_STATE_INFO);
               break;
            case SCORE_LIST_TYPE_STORY_LEVELS_OVERALL:
               this.changeTab(TAB_DEFAULT);
               this.mTitleMovieClip.txtTitle.text = this.mScoreListStoryLevelsOverallData.title;
               this.mTitleMovieClip.visible = true;
               this.mTitleMovieClip.y = TITLE_MOVIECLIP_Y_VALUE_ELEVATED;
               this.mCurrentlyShowingScoreFor = "";
               this.toggleLeagueTab(false,false);
               this.mFriendsScrollData = this.mScoreListStoryLevelsOverallData.standings;
               this.setBarScrollerData();
               this.updateInfoButtonState(SIDEBAR_BUTTON_STATE_INFO);
               this.notYetInLeagueVisuals(false);
               this.toggleSpinner(this.mScoreListStoryLevelsOverallData.standings.length == 0);
               break;
            case SCORE_LIST_TYPE_LEVEL:
               this.changeTab(TAB_DEFAULT);
               if(this.mScoreListLevelData)
               {
                  this.mTitleMovieClip.txtTitle.text = this.mScoreListLevelData.title;
                  this.mTitleMovieClip.visible = true;
                  if(this.mCachedLevelScores.isTournamentScores)
                  {
                     this.mTitleMovieClip.y = TITLE_MOVIECLIP_Y_VALUE_NORMAL;
                  }
                  else
                  {
                     this.mTitleMovieClip.y = TITLE_MOVIECLIP_Y_VALUE_ELEVATED;
                  }
                  this.mCurrentlyShowingScoreFor = this.mLevelManager.currentLevel;
                  this.mFriendsScrollData = this.mScoreListLevelData.standings;
                  this.setBarScrollerData();
                  this.notYetInLeagueVisuals(false);
                  this.toggleSpinner(this.mScoreListLevelData.standings.length == 0);
                  if(scrollToUserIndex == -1)
                  {
                     for(i = 0; i < this.mScoreListLevelData.standings.length; i++)
                     {
                        if(this.mScoreListLevelData.standings[i] is UserLevelScoreVO && this.mScoreListLevelData.standings[i].userId == this.mUserId)
                        {
                           scrollToUserIndex = this.mScoreListLevelData.standings[i].rank - 1;
                           break;
                        }
                     }
                  }
               }
               else
               {
                  this.mFriendsScrollData = [];
                  this.notYetInLeagueVisuals(false);
                  this.toggleSpinner(false);
               }
               break;
            case SCORE_LIST_TYPE_LEAGUE_LEVEL:
               this.changeTab(TAB_LEAGUE);
               if(this.mScoreListLeagueLevelData)
               {
                  this.mCurrentlyShowingScoreFor = this.mLevelManager.currentLevel;
                  this.mLeagueInfo.visible = true;
                  this.displayLeagueIcon(this.mScoreListLeagueLevelData.leagueId);
                  this.mFriendsScrollData = this.mScoreListLeagueLevelData.standings;
                  this.notYetInLeagueVisuals(!this.mScoreListLeagueLevelData.loadingScores && this.mScoreListLeagueLevelData.standings.length == 0);
                  this.toggleSpinner(this.mScoreListLeagueLevelData.loadingScores);
                  if(scrollToUserIndex == -1)
                  {
                     for each(userLeagueLevelScore in this.mScoreListLeagueLevelData.standings)
                     {
                        if(userLeagueLevelScore.isMe)
                        {
                           scrollToUserIndex = userLeagueLevelScore.rank - 1;
                           break;
                        }
                     }
                  }
               }
               else
               {
                  this.mFriendsScrollData = [];
                  this.notYetInLeagueVisuals(false);
                  this.toggleSpinner(false);
                  this.displayLeagueIcon(null);
               }
               this.toggleLeagueTab(true,true);
               this.setBarScrollerData();
               break;
            case SCORE_LIST_EMPTY:
               this.toggleLeagueTab(LeagueModel.instance.active,this.selectedTab() == TAB_LEAGUE);
               this.mFriendsScrollData = [];
               this.setBarScrollerData();
               this.updateInfoButtonState(SIDEBAR_BUTTON_STATE_INFO);
               this.notYetInLeagueVisuals(false);
               this.toggleSpinner(true);
               this.displayLeagueIcon(null);
               break;
            case SCORE_LIST_EMPTY_STORY_LEVEL:
               this.changeTab(TAB_DEFAULT);
               this.toggleLeagueTab(false,false);
               this.mFriendsScrollData = [];
               this.setBarScrollerData();
               this.updateInfoButtonState(SIDEBAR_BUTTON_STATE_INFO);
               this.notYetInLeagueVisuals(false);
               this.toggleSpinner(true);
         }
         this.scrollToUser(scrollToUserIndex);
         this.updateArrowGraphics();
         if(this.mCurrentScoreListDataType != type)
         {
            this.mCurrentScoreListDataType = type;
            dispatchEvent(new FriendsBarEvent(FriendsBarEvent.FRIENDS_BAR_SCORE_LIST_TYPE_CHANGED,{"tab":this.mSelectedTab}));
         }
      }
      
      private function notYetInLeagueVisuals(showThem:Boolean) : void
      {
         this.mFriendsBarGraphic.mcNotInLeague.visible = showThem;
         this.mFriendsBarGraphic.NotInLeagueBirdCoinIcon.visible = showThem;
         this.mFriendsBarGraphic.NotInLeagueBG.visible = showThem;
         this.mFriendsBarGraphic.mcRankingBadgeBg.visible = showThem;
         if(showThem)
         {
            if(LeagueModel.instance.currentLeague())
            {
               this.mFriendsBarGraphic.mcNotInLeague.LeaguePrize.text = LeagueModel.instance.currentLeague().reward.toString();
            }
         }
      }
      
      private function scrollToUser(userIndex:int = -1) : void
      {
         var i:int = 0;
         if(userIndex == -1)
         {
            for(i = 0; i < this.mFriendsScrollData.length; i++)
            {
               if(this.mFriendsScrollData[i].userId == this.mUserId)
               {
                  userIndex = i;
                  break;
               }
            }
         }
         var currentOffset:int = this.mFriendsBarScroller.offset;
         var halfway:int = Math.floor(this.mFriendsBarScroller.visibleItemsCount / 2);
         var newOffset:int = userIndex - halfway - currentOffset;
         this.mFriendsBarScroller.scroll(newOffset,true);
      }
      
      private function scroll(offset:int) : void
      {
         if(offset != 0)
         {
            this.mFriendsBarScroller.scroll(offset);
            this.updateArrowGraphics();
         }
      }
      
      private function updateArrowGraphics() : void
      {
         var canGoLeft:* = this.mFriendsBarScroller.offset != 0;
         var canGoRight:* = this.mFriendsBarScroller.offset != this.mFriendsBarScroller.data.length - this.mFriendsBarScroller.visibleItemsCount;
         this.mFriendsBarGraphic.mcButtonsContainer.btnScrollUp.visible = canGoLeft;
         this.mFriendsBarGraphic.mcButtonsContainer.btnScrollDown.visible = canGoRight;
      }
      
      public function userNewScore(level:String, score:int, stars:int, eagle:int, isTournament:Boolean = false) : Object
      {
         var userBeaten:UserLevelScoreVO = null;
         var position:int = 0;
         if(!this.mCachedLevelScores || !this.mCurrentLevelFriendsStandings || this.mCurrentlyShowingScoreFor != level)
         {
            return {};
         }
         this.mBeatenUsers = new Array();
         var out_usersBeaten:Array = [];
         var out_usersBeatenLeague:Array = [];
         this.mUserScoreResultObject = new Object();
         this.mUserScoreResultObject.originalRank = 0;
         this.mUserScoreResultObject.rankAfterUpdate = 0;
         this.mUserScoreResultObject.leagueOriginalRank = 0;
         this.mUserScoreResultObject.leagueRankAfterUpdate = 0;
         if(this.mCachedLevelScoresLeague)
         {
            this.mUserScoreResultObject.leagueOriginalRank = this.mCachedLevelScoresLeague.getUserRank(this.mUserId);
            this.mUserScoreResultObject.leagueRankAfterUpdate = this.mCachedLevelScoresLeague.userNewScore(score,stars,eagle,out_usersBeatenLeague);
            this.setScoreListData(SCORE_LIST_TYPE_LEAGUE_LEVEL,this.mCachedLevelScoresLeague.data,this.mUserScoreResultObject.leagueRankAfterUpdate);
         }
         this.mUserScoreResultObject.originalRank = this.mCachedLevelScores.getUserRank(this.mUserId);
         this.mUserScoreResultObject.rankAfterUpdate = this.mCachedLevelScores.userNewScore(score,stars,eagle,out_usersBeaten);
         for each(userBeaten in out_usersBeaten)
         {
            this.mBeatenUsers.push(userBeaten);
            position = userBeaten.rank - 1;
            FacebookGoogleAnalyticsTracker.trackBragShown(position.toString());
         }
         this.setScoreListData(SCORE_LIST_TYPE_LEVEL,this.mCurrentLevelFriendsStandings,this.mUserScoreResultObject.rankAfterUpdate);
         return this.mUserScoreResultObject;
      }
      
      public function setInboxItemCount(count:int) : void
      {
         var text:String = null;
         var counterBackground:MovieClip = null;
         var oldWidth:int = 0;
         if(count == 0 || this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.visible)
         {
            this.mFriendsBarGraphic.mcButtonsContainer.txtInboxItemCount.visible = false;
            this.mFriendsBarGraphic.mcButtonsContainer.mcItemCountBg.visible = false;
         }
         else
         {
            this.mFriendsBarGraphic.mcButtonsContainer.txtInboxItemCount.visible = true;
            this.mFriendsBarGraphic.mcButtonsContainer.mcItemCountBg.visible = true;
            text = AmountToFourCharacterString.amountToString(count);
            this.mFriendsBarGraphic.mcButtonsContainer.txtInboxItemCount.text.text = text;
            counterBackground = this.mFriendsBarGraphic.mcButtonsContainer.mcItemCountBg;
            oldWidth = counterBackground.width;
            counterBackground.scaleX = 1 + (text.length - 1) / 7;
            counterBackground.x = this.mFriendsBarGraphic.mcButtonsContainer.txtInboxItemCount.x + this.mFriendsBarGraphic.mcButtonsContainer.txtInboxItemCount.width / 2 - counterBackground.width / 2;
         }
      }
      
      private function setBarScrollerData() : void
      {
         var userVO:FriendListItemVO = null;
         var blocked:Boolean = false;
         var userBlocked:String = null;
         var userId:String = null;
         var blockedList:Dictionary = ExceptionUserIDsManager.instance.getUninstallIDs();
         var newList:Array = this.mFriendsScrollData.concat();
         for(var i:int = this.mFriendsScrollData.length - 1; i >= 0; i--)
         {
            userVO = this.mFriendsScrollData[i];
            blocked = false;
            for each(userBlocked in blockedList)
            {
               if(userBlocked == userVO.userId)
               {
                  newList.splice(i,1);
                  blocked = true;
               }
            }
            for each(userId in sInvitedFriends)
            {
               if(userId == userVO.userId && !blocked)
               {
                  newList.splice(i,1);
                  this.mFriendsScrollData.splice(i,1);
               }
            }
         }
         this.mFriendsBarScroller.data = newList;
      }
      
      public function getName() : String
      {
         return "Friendsbar";
      }
      
      private function showGlowOnShopButton(value:Boolean) : void
      {
         if(ItemsInventory.instance.bundleHandler && ItemsInventory.instance.bundleHandler.isBundleClaimable(CoinShopTutorialPopup.FREE_COINS_BUNDLE) && value)
         {
            this.mFriendsBarGraphic.mcButtonsContainer.ButtonShop_Glow.gotoAndPlay(0);
            MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.ButtonShop_Glow).visible = true;
         }
         else
         {
            MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.ButtonShop_Glow).visible = false;
            this.mFriendsBarGraphic.mcButtonsContainer.ButtonShop_Glow.gotoAndStop(0);
         }
      }
      
      public function updateInvitePlates(data:Object) : void
      {
         var user:Object = null;
         for each(user in data)
         {
            sInvitedFriends.push(user.id);
         }
         this.setBarScrollerData();
         this.mFriendsBarScroller.refresh();
         this.updateArrowGraphics();
      }
      
      public function updateShopButton() : void
      {
         var showNewTag:Boolean = DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopItems.length > 0 || DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopPricePoints.length > 0;
         this.mFriendsBarGraphic.mcButtonsContainer.mcNewTagShop.visible = showNewTag && !this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.visible;
         this.mFriendsBarGraphic.mcButtonsContainer.mcNewTagShopLarge.visible = showNewTag && this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.visible;
         var dmf:DataModelFriends = DataModelFriends(AngryBirdsBase.singleton.dataModel);
         var showSaleTage:Boolean = dmf.hasPowerupsOnSale || dmf.hasSlingshotsOnSale || dmf.hasCoinShopItemsOnSale;
         this.mFriendsBarGraphic.mcButtonsContainer.Tag_Sale_Shop.visible = showSaleTage && !this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.visible;
         this.mFriendsBarGraphic.mcButtonsContainer.Tag_Sale_Shop_Large.visible = showSaleTage && this.mFriendsBarGraphic.mcButtonsContainer.btnShopLarge.visible;
         var gip:GiftInboxPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(GiftInboxPopup.ID) as GiftInboxPopup;
         if(gip)
         {
            gip.wallet.updateSaleButtonVisibility();
         }
      }
      
      public function updateAvatarShopButton(showNewTag:Boolean = false) : void
      {
         this.mFriendsBarGraphic.mcButtonsContainer.mcNewTagAvatar.visible = showNewTag && this.mSelectedTab == TAB_DEFAULT;
         this.mFriendsBarGraphic.mcButtonsContainer.Tag_Sale_Avatar.visible = DataModelFriends(AngryBirdsBase.singleton.dataModel).hasAvatarShopItemsOnSale && this.mSelectedTab == TAB_DEFAULT;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.Tag_Sale_Avatar).mouseEnabled = false;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.Tag_Sale_Avatar).mouseChildren = false;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mcNewTagAvatar).mouseEnabled = false;
         MovieClip(this.mFriendsBarGraphic.mcButtonsContainer.mcNewTagAvatar).mouseChildren = false;
      }
      
      public function toggleLeagueTab(showTabs:Boolean, activateLeagueTab:Boolean) : void
      {
         this.btnTabFriends.visible = showTabs;
         this.btnTabLeague.visible = showTabs;
         if(activateLeagueTab)
         {
            this.toggleBackground(this.mSelectedTab);
            this.toggleLeagueSettingsButton(this.mSelectedTab == TAB_LEAGUE);
         }
         else
         {
            this.toggleBackground(TAB_DEFAULT);
            this.toggleLeagueSettingsButton(false);
         }
      }
      
      public function selectedTab() : String
      {
         return this.mSelectedTab;
      }
      
      public function loadLevelStandings(scrollToUserIndex:int = -1) : void
      {
         var level:String = this.mLevelManager.currentLevel;
         this.mCachedLevelScores = null;
         if(level)
         {
            this.mCachedLevelScores = this.mHighScoreListManager.getScoresForLevel(this.mLevelManager.getEpisodeForLevel(level).name,level,this.mLevelManager.isCurrentEpisodeTournament(),this.mLevelManager.isCurrentEpisodeTournament());
            if(this.mCachedLevelScores.isLoading)
            {
               this.mCachedLevelScores.addEventListener(CachedDataEvent.DATA_LOADED,this.onLevelFriendsLoaded);
            }
            else
            {
               this.onLevelFriendsLoaded(null,scrollToUserIndex);
            }
         }
      }
      
      private function onLevelFriendsLoaded(e:CachedDataEvent, scrollToUserIndex:int = -1) : void
      {
         var scoreObject:UserLevelScoreVO = null;
         var beatenUser:Object = null;
         this.mCachedLevelScores.removeEventListener(CachedDataEvent.DATA_LOADED,this.onLevelFriendsLoaded);
         this.mCurrentLevelFriendsStandings = new Array();
         CachedFacebookFriends.levelChallengeCandidates = new Vector.<UserLevelScoreVO>();
         for(var i:int = 0; i < this.mCachedLevelScores.data.length; i++)
         {
            scoreObject = this.mCachedLevelScores.data[i];
            if(scoreObject)
            {
               scoreObject.isTournamentScore = this.mCachedLevelScores.isTournamentScores;
               if(scoreObject.canBeChallenged)
               {
                  if(CachedFacebookFriends.challengedIDs.indexOf(scoreObject.userId) == -1)
                  {
                     CachedFacebookFriends.levelChallengeCandidates.push(scoreObject);
                  }
               }
               else
               {
                  if(this.mBeatenUsers)
                  {
                     for each(beatenUser in this.mBeatenUsers)
                     {
                        if(beatenUser.userId == scoreObject.userId)
                        {
                           scoreObject.beaten = true;
                           break;
                        }
                     }
                  }
                  this.mCurrentLevelFriendsStandings.push(scoreObject);
               }
            }
         }
         if(this.mCurrentLevelFriendsStandings.length == 0)
         {
            scoreObject = new UserLevelScoreVO((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName,null,0,0,0,1,null,0,null);
            this.mCurrentLevelFriendsStandings.push(scoreObject);
            this.mCachedLevelScores.addUser(scoreObject);
         }
         else if(OpenGraphData.getObjectId(OpenGraphData.CHALLENGE_TO_TOURNAMENT))
         {
            for(i = 0; i < this.mCurrentLevelFriendsStandings.length; i++)
            {
               this.mCurrentLevelFriendsStandings[i].rank = i + 1;
            }
         }
         this.setScoreListData(SCORE_LIST_TYPE_LEVEL,this.mCurrentLevelFriendsStandings,scrollToUserIndex);
      }
      
      public function loadLeagueLevelStandings() : void
      {
         if(this.mLevelManager.isCurrentEpisodeTournament() && LeagueModel.instance.active)
         {
            if(!this.mCachedLevelScoresLeague || !this.mCachedLevelScoresLeague.isLoading)
            {
               this.mCachedLevelScoresLeague = LeagueModel.instance.getScoresForLevel(this.mLevelManager.currentLevel,true);
               if(this.mCachedLevelScoresLeague.isLoading)
               {
                  this.mCachedLevelScoresLeague.addEventListener(CachedDataEvent.DATA_LOADED,this.onLeagueLevelFriendsLoaded);
               }
               else
               {
                  this.onLeagueLevelFriendsLoaded(null);
               }
            }
         }
      }
      
      private function onLeagueLevelFriendsLoaded(e:CachedDataEvent) : void
      {
         this.mCachedLevelScoresLeague.removeEventListener(CachedDataEvent.DATA_LOADED,this.onLeagueLevelFriendsLoaded);
         this.setScoreListData(SCORE_LIST_TYPE_LEAGUE_LEVEL,this.mCachedLevelScoresLeague.data);
      }
      
      public function isCurrentlyInLevel() : Boolean
      {
         var currentState:String = AngryBirdsBase.singleton.getCurrentState();
         if(currentState == StatePlay.STATE_NAME || currentState == StateTournamentPlay.STATE_NAME || currentState == StateTournamentLevelEnd.STATE_NAME || currentState == StateLevelEnd.STATE_NAME || currentState == StateLevelEndFail.STATE_NAME || currentState == StateTournamentLevelEndFail.STATE_NAME)
         {
            return true;
         }
         return false;
      }
      
      public function changePlayerDataInLeagueScoreList(newNickname:String, newImage:String) : void
      {
         var obj:Object = null;
         if(this.mScoreListLeagueData && this.mScoreListLeagueData.standings)
         {
            for each(obj in this.mScoreListLeagueData.standings)
            {
               if(obj.isMe)
               {
                  obj.nickName = newNickname;
                  obj.userName = newNickname;
                  obj.profilePicture = newImage;
                  break;
               }
            }
         }
         if(this.mScoreListLeagueLevelData && this.mScoreListLeagueLevelData.standings)
         {
            for each(obj in this.mScoreListLeagueLevelData.standings)
            {
               if(obj.isMe)
               {
                  obj.nickName = newNickname;
                  obj.userName = newNickname;
                  obj.profilePicture = newImage;
                  break;
               }
            }
         }
         if(this.mScoreListLastWeekLeagueData && this.mScoreListLastWeekLeagueData.standings)
         {
            for each(obj in this.mScoreListLastWeekLeagueData.standings)
            {
               if(obj.isMe)
               {
                  obj.nickName = newNickname;
                  obj.userName = newNickname;
                  obj.profilePicture = newImage;
                  break;
               }
            }
         }
         if(this.mScoreListLastWeekLeagueUnconcludedData && this.mScoreListLastWeekLeagueUnconcludedData.standings)
         {
            for each(obj in this.mScoreListLastWeekLeagueUnconcludedData.standings)
            {
               if(obj.isMe)
               {
                  obj.nickName = newNickname;
                  obj.userName = newNickname;
                  obj.profilePicture = newImage;
                  break;
               }
            }
         }
         this.changeScoreList(this.mCurrentScoreListDataType);
      }
      
      private function toggleSpinner(show:Boolean) : void
      {
         this.mFriendsBarGraphic.mcLoadingSpinner.visible = show;
      }
      
      public function getVersusComponentLevelScores() : CachedFacebookFriends
      {
         if(this.mCurrentScoreListDataType == SCORE_LIST_TYPE_LEAGUE_LEVEL)
         {
            return this.mCachedLevelScoresLeague;
         }
         return this.mCachedLevelScores;
      }
      
      private function getInvitePlates() : Array
      {
         var friend:CachedInviteFriendDataVO = null;
         var invitableFriends:Vector.<CachedInviteFriendDataVO> = FriendsDataCache.getInvitableFriendsOnly();
         var invitePlates:Array = new Array();
         var inviteIndex:int = 0;
         for each(friend in invitableFriends)
         {
            if(inviteIndex >= CachedFacebookFriends.INVITE_LIST_MAX_VISIBE_AMOUNT)
            {
               break;
            }
            invitePlates.push(new InviteVO(friend.userID,friend.name));
            inviteIndex++;
         }
         return invitePlates;
      }
      
      private function getChallengePlates() : Array
      {
         var challengePlates:Array = new Array();
         var addedChallenges:int = 0;
         var challengeIndex:int = 0;
         while(challengeIndex < CachedFacebookFriends.challengeCandidates.length && addedChallenges < CachedFacebookFriends.CHALLENGE_LIST_MAX_VISIBE_AMOUNT)
         {
            if(CachedFacebookFriends.challengedIDs.indexOf(CachedFacebookFriends.challengeCandidates[challengeIndex].userId) == -1)
            {
               challengePlates.push(CachedFacebookFriends.challengeCandidates[challengeIndex]);
               addedChallenges++;
            }
            challengeIndex++;
         }
         return challengePlates;
      }
      
      private function getLevelChallengePlates() : Array
      {
         var challengePlates:Array = new Array();
         var addedChallenges:int = 0;
         var challengeIndex:int = 0;
         while(challengeIndex < CachedFacebookFriends.levelChallengeCandidates.length && addedChallenges < CachedFacebookFriends.CHALLENGE_LIST_MAX_VISIBE_AMOUNT)
         {
            if(CachedFacebookFriends.challengedIDs.indexOf(CachedFacebookFriends.levelChallengeCandidates[challengeIndex].userId) == -1)
            {
               challengePlates.push(CachedFacebookFriends.levelChallengeCandidates[challengeIndex]);
               addedChallenges++;
            }
            challengeIndex++;
         }
         return challengePlates;
      }
      
      public function getCurrentScoreListDataType() : int
      {
         return this.mCurrentScoreListDataType;
      }
      
      public function levelStarted() : void
      {
         this.mBeatenUsers = new Array();
         this.mBraggedUsers = new Array();
         this.mUserScoreResultObject = null;
      }
      
      private function setInfoButtonEventListener() : void
      {
         if(!this.mFriendsBarGraphic.hasEventListener(MouseEvent.CLICK))
         {
            this.mFriendsBarGraphic.mcButtonsContainer.btnInfo.addEventListener(MouseEvent.CLICK,this.onInfoClick);
         }
      }
      
      private function unsetInfoButtonEventListener() : void
      {
         this.mFriendsBarGraphic.mcButtonsContainer.btnInfo.removeEventListener(MouseEvent.CLICK,this.onInfoClick);
      }
      
      public function isUserBragged(userId:String) : Boolean
      {
         var id:String = null;
         if(this.mBraggedUsers)
         {
            for each(id in this.mBraggedUsers)
            {
               if(id == userId)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function getBeatenUsers() : Array
      {
         return this.mBeatenUsers;
      }
      
      public function getChangedLevelRank(onlyImprovedRank:Boolean) : int
      {
         if(this.mUserScoreResultObject)
         {
            if(!onlyImprovedRank)
            {
               return this.mUserScoreResultObject.rankAfterUpdate;
            }
            if(this.mUserScoreResultObject.originalRank > this.mUserScoreResultObject.rankAfterUpdate)
            {
               return this.mUserScoreResultObject.rankAfterUpdate;
            }
         }
         return -1;
      }
      
      private function displayLeagueIcon(leagueID:String, showOnlyLeagueIcon:Boolean = false) : void
      {
         var ld:LeagueDefinition = null;
         var currentLeagueRating:int = 0;
         var currentLeagueRatingMin:int = 0;
         var currentLeagueRatingMax:int = 0;
         var currentLeague:LeagueDefinition = null;
         var fullFillWidth:Number = NaN;
         var barFillUpScale:Number = NaN;
         var clipRect:Rectangle = null;
         var nextLeague:LeagueDefinition = null;
         var playerRankStarAmount:int = 0;
         var playerNextRankStarAmount:int = 0;
         var currentLeagueStanding:Object = null;
         var fn:Function = null;
         if(leagueID == null)
         {
            this.mLeagueInfo.LeagueProgBar.visible = false;
            this.mLeagueInfo.LeagueLogos.visible = false;
            return;
         }
         var playerLeagueProfile:Object = LeagueModel.instance.getPlayerProfileForLeague();
         this.mLeagueInfo.LeagueProgBar.visible = !showOnlyLeagueIcon;
         this.mLeagueInfo.LeagueLogos.visible = showOnlyLeagueIcon;
         if(showOnlyLeagueIcon)
         {
            this.mLeagueInfo.visible = playerLeagueProfile != null;
            this.mLeagueInfo.LeagueLogos.gotoAndStop(leagueID);
            return;
         }
         for each(ld in LeagueType.sAllLeagues)
         {
            this.mLeagueInfo.LeagueProgBar.getChildByName(ld.id).visible = ld.id == leagueID;
         }
         if(playerLeagueProfile)
         {
            this.mLeagueInfo.visible = true;
            currentLeagueRating = !!playerLeagueProfile.lr ? int(playerLeagueProfile.lr) : 0;
            currentLeagueRatingMin = 0;
            currentLeagueRatingMax = 1;
            currentLeague = LeagueModel.instance.currentLeague();
            if(currentLeague)
            {
               nextLeague = LeagueType.getNextLeagueId(currentLeague.id);
               currentLeagueRatingMin = currentLeague.minRating;
               currentLeagueRatingMax = nextLeague.minRating;
            }
            if(currentLeague.name == LeagueType.getLastLeagueName())
            {
               playerRankStarAmount = 0;
               playerNextRankStarAmount = 0;
               playerNextRankStarAmount = 1;
               currentLeagueStanding = LeagueModel.instance.getPlayerCurrentLeagueStanding();
               if(currentLeagueStanding)
               {
                  if(currentLeagueStanding.s && currentLeagueStanding.s > 0)
                  {
                     playerRankStarAmount = currentLeagueStanding.s;
                     playerNextRankStarAmount = playerRankStarAmount + 1;
                  }
               }
               else if(playerLeagueProfile && playerLeagueProfile.lr - LeagueType.STAR_PLAYER_RATING_RANGE >= currentLeagueRatingMax)
               {
                  playerRankStarAmount = int((playerLeagueProfile.lr - currentLeagueRatingMax) / LeagueType.STAR_PLAYER_RATING_RANGE);
                  playerNextRankStarAmount = playerRankStarAmount + 1;
               }
               currentLeagueRatingMin += LeagueType.STAR_PLAYER_RATING_RANGE * playerRankStarAmount;
               currentLeagueRatingMax += LeagueType.STAR_PLAYER_RATING_RANGE * playerNextRankStarAmount;
               if(playerRankStarAmount > 0)
               {
                  this.mLeagueInfo.LeagueProgBar.StarIcon.visible = true;
                  this.mLeagueInfo.LeagueProgBar.StarIcon.txtRakning.text = "" + playerRankStarAmount;
               }
               else
               {
                  this.mLeagueInfo.LeagueProgBar.StarIcon.visible = false;
               }
            }
            else
            {
               this.mLeagueInfo.LeagueProgBar.StarIcon.visible = false;
            }
            fullFillWidth = 156.1;
            barFillUpScale = (currentLeagueRating - currentLeagueRatingMin) / (currentLeagueRatingMax - currentLeagueRatingMin);
            if(barFillUpScale > 0)
            {
               barFillUpScale = 0.2 + barFillUpScale * 0.8;
            }
            clipRect = new Rectangle(0,0,fullFillWidth * barFillUpScale,this.mLeagueInfo.height);
            this.mLeagueInfo.LeagueProgBar.ProgBarFill.scrollRect = clipRect;
            if(currentLeagueRatingMax < 1000)
            {
               this.mLeagueInfo.LeagueProgBar.ProgText01.visible = true;
               this.mLeagueInfo.LeagueProgBar.ProgText02.visible = false;
               this.mLeagueInfo.LeagueProgBar.ProgText03.visible = false;
               this.mLeagueInfo.LeagueProgBar.ProgText01.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else if(currentLeagueRatingMax < 10000)
            {
               this.mLeagueInfo.LeagueProgBar.ProgText01.visible = false;
               this.mLeagueInfo.LeagueProgBar.ProgText02.visible = true;
               this.mLeagueInfo.LeagueProgBar.ProgText03.visible = false;
               this.mLeagueInfo.LeagueProgBar.ProgText02.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
            else
            {
               this.mLeagueInfo.LeagueProgBar.ProgText01.visible = false;
               this.mLeagueInfo.LeagueProgBar.ProgText02.visible = false;
               this.mLeagueInfo.LeagueProgBar.ProgText03.visible = true;
               this.mLeagueInfo.LeagueProgBar.ProgText03.text = currentLeagueRating + "/" + currentLeagueRatingMax;
            }
         }
         else
         {
            this.mLeagueInfo.visible = false;
            fn = function(e:LeagueEvent):void
            {
               LeagueModel.instance.removeEventListener(LeagueEvent.ALL_DATA_LOADED,fn);
               displayLeagueIcon(leagueID);
            };
            LeagueModel.instance.addEventListener(LeagueEvent.ALL_DATA_LOADED,fn);
         }
      }
   }
}
