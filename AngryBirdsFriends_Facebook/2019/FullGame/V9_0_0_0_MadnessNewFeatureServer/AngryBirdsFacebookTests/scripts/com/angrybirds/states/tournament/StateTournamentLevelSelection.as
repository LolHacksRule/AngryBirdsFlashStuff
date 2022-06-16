package com.angrybirds.states.tournament
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.ChallengeVO;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.InitDataLoader;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.OpenGraphData;
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.data.CachedFacebookFriends;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.friendsdatacache.CachedFriendDataVO;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.events.LeagueEvent;
   import com.angrybirds.popups.ChallengePopup;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.OverlappingTournamentsEndPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.qualifier.QualifierInterruptedPopUp;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.angrybirds.spiningwheel.SpinningWheelController;
   import com.angrybirds.spiningwheel.events.SpinningWheelEvent;
   import com.angrybirds.states.StateBaseLevel;
   import com.angrybirds.states.StateCredits;
   import com.angrybirds.states.StateFacebookLevelSelection;
   import com.angrybirds.states.StateFacebookMainMenuSelection;
   import com.angrybirds.tournament.TournamentLevelButton;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.campaign.CampaignDefinition;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.tournamentEvents.IEventManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.tournamentEvents.tournamentEventStarCollection.StarCollectionManager;
   import com.angrybirds.tournamentpopups.TournamentResultsPopup;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class StateTournamentLevelSelection extends StateBaseLevel implements INavigable, IWalletContainer
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static var smLoadTournamentId:int = 0;
      
      private static var smCheckForTournamentResultsTournamentId:int = 0;
      
      private static var smOverlappingTournamentIdSet:Boolean = false;
      
      protected static var smTournamentBrand:String = "";
      
      protected static const TEXT_CONTAINER_INSTANCE_NAME:String = "TextContainer";
      
      protected static const CAMPAIGN_BUTTON_HOLDER_LEFT:String = "leftTopCorner";
      
      protected static const CAMPAIGN_BUTTON_HOLDER_RIGHT:String = "rightTopCorner";
      
      private static const TOURNAMENT_BUTTON_ORIGINAL_AMOUNT:int = 6;
      
      private static const TOURNAMENT_BUTTON_AMOUNT:int = 8;
      
      private static const TOURNAMENT_BUTTONS_MULTIPLE_ROWS_BUTTONS_ON_ONE_ROW:int = 4;
      
      private static var smButtonsOnOneRow:int = TOURNAMENT_BUTTONS_MULTIPLE_ROWS_BUTTONS_ON_ONE_ROW;
      
      protected static const DATA_REFRESH_TIME:Number = 5 * 60 * 1000;
      
      private static const STARPILLAR_EXTRA_GAP:int = -20;
      
      private static const STARPILLAR_NO_GAP:int = 0;
      
      private static const LOADING_STEP_INDEX_INFO:int = 0;
      
      private static const LOADING_STEP_INDEX_SCORE:int = 1;
      
      private static const LOADING_STEP_INDEX_STANDINGS:int = 2;
      
      private static const LOADING_STEP_INDEX_ASSETS:int = 3;
      
      private static const LOADING_STEP_INDEX_LEAGUE:int = 4;
      
      private static var smActivatedEventManager:IEventManager;
      
      private static var smCheckTournamentEventButtonState:Boolean;
      
      private static var smActivateTournamentEventPopup:Boolean;
      
      private static var smTitleTFOriginalY:Object = null;
      
      private static var smTournamentNameOriginalY:Number = 0;
      
      private static const UPDATE_ROUNDS_TO_SCALE_UI:int = 5;
      
      private static const TOURNAMENT_EXPIRE_MIN_TIME:int = 3000;
      
      private static var mCutscenesAvailability:Array = [true,false,false,false];
       
      
      private var mPlayers:Array;
      
      private var mContentType:Array;
      
      protected var mLevelNames:Array;
      
      protected var mDataRefreshTimer:Number = 0;
      
      protected var mLevelButtons:Vector.<TournamentLevelButton>;
      
      protected var mTournamentModel:TournamentModel;
      
      protected var mLeagueModel:LeagueModel;
      
      private var mShowShareScoreWindowOnNextLoop:Boolean;
      
      private var mRemoveLoadingScreenOnNextLoop:Boolean = false;
      
      private var mLoadingSteps:Vector.<Boolean>;
      
      private var mActiveCampaign:CampaignDefinition;
      
      private var mPreviousButtonVisibilitySet:Boolean = false;
      
      private var mSpinButton:UIComponentRovio;
      
      private var mMoreGamesButton:UIComponentRovio;
      
      private var mDailyRewardController:SpinningWheelController;
      
      private var mDaysLeftTF:TextField;
      
      private var mTitleTF:TextField;
      
      private var mAnimateSpinningWheelNotifier:Boolean;
      
      private var mNotificationBounceStartTimer:uint;
      
      private const TIME_DELAY_TO_SHOW_SPIN_NOTIFIER_BOUNCE:uint = 2000;
      
      private var mSpinNotifierVisible:Boolean;
      
      private var mPreviousResultButton:UIComponentRovio;
      
      private var mCampaignButton:SimpleButton;
      
      private var mQualifierInterruptedPopUp:QualifierInterruptedPopUp;
      
      private var mWallet:Wallet;
      
      private var mUseWallet:Boolean;
      
      private var mUIScaledToFullScreenCounter:int;
      
      private var mUIScaledToNormalCounter:int;
      
      protected var mChallengeButton:UIComponentRovio;
      
      private var mShareButtonHolder:UIComponentRovio;
      
      private var mPreviousScreenWidth:Number;
      
      private var mTournamentEndServerCallPauseTimer:Timer;
      
      private var HALLOWEEN_LEVEL_IDS:Array;
      
      private var XMAS_LEVEL_IDS:Array;
      
      public function StateTournamentLevelSelection(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "TournamentState")
      {
         this.mContentType = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.HALLOWEEN_LEVEL_IDS = ["2000-279","2000-271","2000-267","2000-269"];
         this.XMAS_LEVEL_IDS = ["2000-303","2000-307","2000-313","2000-315"];
         this.mTournamentModel = TournamentModel.instance;
         this.mLeagueModel = LeagueModel.instance;
         this.mDailyRewardController = SpinningWheelController.instance;
         super(levelManager,initState,name,localizationManager);
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return DataModelFriends(AngryBirdsBase.singleton.dataModel);
      }
      
      public static function isCutsceneAvailable(index:int) : Boolean
      {
         if(index < 1)
         {
            return false;
         }
         if(index > 5)
         {
            return false;
         }
         return mCutscenesAvailability[index - 1];
      }
      
      public static function activateTournamentEventButtonStateCheck() : void
      {
         smCheckTournamentEventButtonState = true;
      }
      
      public static function resetActiveTournamentEventButton() : void
      {
         smCheckTournamentEventButtonState = true;
         smActivatedEventManager = null;
      }
      
      public static function activateTournamentEventPopup() : void
      {
         smActivateTournamentEventPopup = true;
      }
      
      public static function setTournamentToLoad(id:int, brand:String) : void
      {
         smTournamentBrand = brand.toUpperCase();
         smLoadTournamentId = id;
         smOverlappingTournamentIdSet = true;
      }
      
      public static function checkTheTournamentForResults(id:int) : void
      {
         smCheckForTournamentResultsTournamentId = id;
      }
      
      public static function getCheckTheTournamentForResults() : int
      {
         return smCheckForTournamentResultsTournamentId;
      }
      
      public static function setNextTournamentToLoad() : void
      {
         if(smLoadTournamentId == 0)
         {
            smLoadTournamentId = TournamentModel.instance.getCurrentTournamentId();
         }
         ++smLoadTournamentId;
      }
      
      public static function resetTournamentToLoadId() : void
      {
         smLoadTournamentId = 0;
      }
      
      protected function onCurrentTournamentLoaded(event:TournamentEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_INFO] = true;
         }
         this.mTournamentModel.removeEventListener(TournamentEvent.TOURNAMENT_LOADED,this.onCurrentTournamentLoaded);
         this.mTournamentModel.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,this.onCurrentTournamentAssetsLoaded);
         this.mTournamentModel.loadTournamentAssets();
      }
      
      protected function onCurrentTournamentScoreLoaded(event:TournamentEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_SCORE] = true;
         }
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreLoaded);
      }
      
      protected function onCurrentTournamentScoreRefreshed(event:TournamentEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_SCORE] = true;
         }
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreRefreshed);
         this.setLevelButtons();
         this.updateScoreData();
      }
      
      protected function onCurrentTournamentStandingsLoaded(event:TournamentEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_STANDINGS] = true;
         }
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
      }
      
      protected function onCurrentTournamentAssetsLoaded(event:TournamentEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_ASSETS] = true;
         }
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,this.onCurrentTournamentAssetsLoaded);
      }
      
      protected function onTournamentReloaded(event:TournamentEvent) : void
      {
         this.removeWallet(this.mWallet);
         this.loadTournamentData();
      }
      
      override protected function init() : void
      {
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_Tournament[0]);
         this.mRemoveLoadingScreenOnNextLoop = false;
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         FacebookAnalyticsCollector.getInstance().trackScreenView(FacebookAnalyticsCollector.SCREEN_EVENT_TOURNAMENT_LEVEl_SELECTION_SCREEN);
         this.mUIScaledToFullScreenCounter = 0;
         this.mUIScaledToNormalCounter = 0;
         this.setTitleInfoTexts();
         this.initNavigationButtons();
         activateTournamentEventButtonStateCheck();
         this.mPreviousResultButton = mUIView.getItemByName("Button_PreviousResults");
         this.mChallengeButton = mUIView.getItemByName("Button_Challenge");
         this.mChallengeButton.visible = true;
         AngryBirdsEngine.smLevelMain.clearLevel();
         AngryBirdsEngine.smLevelMain.setVisible(false);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setPopupButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
         if(mUIView.getItemByName("TournamentCutsceneSelection"))
         {
            mUIView.getItemByName("TournamentCutsceneSelection").setVisibility(false);
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY);
         this.loadTournamentData();
         this.mTournamentModel.addEventListener(TournamentEvent.TOURNAMENT_RELOAD,this.onTournamentReloaded);
         this.showQualifierInterrupted();
         this.mPreviousScreenWidth = AngryBirdsEngine.getCurrentScreenWidth();
         this.mDataRefreshTimer = DATA_REFRESH_TIME;
      }
      
      private function showQualifierInterrupted() : void
      {
         if(!this.mTournamentModel.hasShownQualifierInterruptPopUp() && this.mTournamentModel.hasQualifierInterrupted && ItemsInventory.instance.bundleHandler.isBundleClaimable(TournamentModel.QUALIFIER_INTERRUPTED_BUNDLE))
         {
            if(this.mQualifierInterruptedPopUp == null)
            {
               this.mQualifierInterruptedPopUp = new QualifierInterruptedPopUp(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
            }
            this.mTournamentModel.shownQualifierInterruptPopUp(true);
            AngryBirdsBase.singleton.popupManager.openPopup(this.mQualifierInterruptedPopUp);
         }
      }
      
      private function initNavigationButtons() : void
      {
         if(this.mMoreGamesButton == null)
         {
            this.mMoreGamesButton = mUIView.getItemByName("MoreGamesButton");
         }
         if(this.mSpinButton == null || this.mSpinButton.mClip == null)
         {
            this.mSpinButton = mUIView.getItemByName("Button_SpinningWheel");
         }
         this.mNotificationBounceStartTimer = 0;
         this.setSpinNotifierVisibility(false);
         this.mDailyRewardController.addEventListener(SpinningWheelEvent.SPIN_REWARD_RECEIVED,this.cbOnSpinRewardReceived);
         this.mDailyRewardController.addEventListener(SpinningWheelEvent.NEW_SPIN_AVAILABLE,this.cbOnNewSpinAvailable);
         if(this.mDailyRewardController.isDailyRewardDataLoading())
         {
            this.mSpinButton.setEnabled(false);
            this.mSpinButton.mClip.alpha = 0.5;
         }
         else if(this.mDailyRewardController.isSpinAvailable())
         {
            this.mAnimateSpinningWheelNotifier = true;
            this.setSpinNotifierVisibility(true);
         }
      }
      
      private function cbOnSpinRewardReceived(event:SpinningWheelEvent) : void
      {
         this.setSpinNotifierVisibility(false);
      }
      
      private function cbOnNewSpinAvailable(event:SpinningWheelEvent) : void
      {
         this.mSpinButton.setEnabled(true);
         this.mSpinButton.mClip.alpha = 1;
         var spinAvailable:Boolean = this.mDailyRewardController.isSpinAvailable();
         this.mAnimateSpinningWheelNotifier = spinAvailable;
         this.setSpinNotifierVisibility(spinAvailable);
      }
      
      private function animateSpinNotifier() : void
      {
         var mc:MovieClip = MovieClip(this.mSpinButton.mClip.getChildByName("notifier"));
         mc.gotoAndPlay(1);
      }
      
      private function setSpinNotifierVisibility(val:Boolean) : void
      {
         var mc:MovieClip = MovieClip(this.mSpinButton.mClip.getChildByName("notifier"));
         mc.visible = val;
         mc.gotoAndStop(1);
         this.mSpinNotifierVisible = val;
      }
      
      private function onAllLeagueDataLoaded(e:LeagueEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_LEAGUE] = true;
         }
         this.mLeagueModel.removeEventListener(LeagueEvent.ALL_DATA_LOADED,this.onAllLeagueDataLoaded);
      }
      
      private function displayLoadingText(value:Boolean) : void
      {
         mUIView.getItemByName("loadingTournament").setVisibility(value);
         if(value)
         {
            this.removeWallet(this.mWallet);
         }
      }
      
      private function onError(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Tournament level selection error: " + e.toString()));
         }
      }
      
      private function getContentType() : String
      {
         return this.getText(this.mContentType);
      }
      
      private function getText(data:Array) : String
      {
         var i:int = 0;
         var name:String = "";
         for each(i in data)
         {
            name += String.fromCharCode(i);
         }
         return name;
      }
      
      private function tournamentInfoLoadingComplete() : void
      {
         var episode:EpisodeModel = null;
         var levelObj:Object = null;
         var campaignButtonHolder:String = null;
         var campaignUI:UIComponentRovio = null;
         var cls:Class = null;
         var shareBrandName:String = null;
         var autoClaimedRewards:Array = null;
         if(smCheckForTournamentResultsTournamentId > 0)
         {
            if(this.mLeagueModel.unconcludedResult && this.mLeagueModel.unconcludedResult.t && this.mLeagueModel.unconcludedResult.t.a)
            {
               if(this.mLeagueModel.unconcludedResult.t.a.tid == smLoadTournamentId)
               {
                  TournamentModel.setTournamentSelectionDataLoaded(true);
                  StateTournamentResults.smClaimTournamentId = smCheckForTournamentResultsTournamentId;
                  smCheckForTournamentResultsTournamentId = 0;
                  resetTournamentToLoadId();
                  StateTournamentResults.resultType = StateTournamentResults.RESULTS_SCREEN;
                  setNextState(StateTournamentResults.STATE_NAME);
                  return;
               }
            }
            else if(!this.mLeagueModel.isRewardClaimed())
            {
               TournamentModel.setTournamentSelectionDataLoaded(true);
               StateTournamentResults.smClaimTournamentId = smCheckForTournamentResultsTournamentId;
               smCheckForTournamentResultsTournamentId = 0;
               resetTournamentToLoadId();
               StateTournamentResults.resultType = StateTournamentResults.RESULTS_SCREEN;
               setNextState(StateTournamentResults.STATE_NAME);
               return;
            }
            smCheckForTournamentResultsTournamentId = 0;
            setNextTournamentToLoad();
         }
         if(mLevelManager)
         {
            episode = mLevelManager.getEpisodeByName(StateFacebookLevelSelection.EPISODE_TOURNAMENT);
            for each(levelObj in this.mTournamentModel.currentTournament.levels)
            {
               episode.addLevelName(levelObj.levelId);
            }
         }
         if(this.mTournamentModel.containsLevel(AngryBirdsFacebook.smLevelToOpen))
         {
            this.startLevel(AngryBirdsFacebook.smLevelToOpen);
            AngryBirdsFacebook.smLevelToOpen = null;
            return;
         }
         if(!mUIView)
         {
            return;
         }
         this.setLevelButtons();
         this.updateScoreData();
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         this.updateTimeLeft();
         this.mRemoveLoadingScreenOnNextLoop = true;
         if(this.mTitleTF)
         {
            this.mTitleTF.text = this.mTournamentModel.tournamentPrettyName;
            if(!smTitleTFOriginalY)
            {
               smTitleTFOriginalY = this.mTitleTF.y;
            }
            this.mTitleTF.y = smTitleTFOriginalY + Math.round((this.mTitleTF.height - this.mTitleTF.textHeight) / 2);
         }
         if(this.mTournamentModel)
         {
            this.mActiveCampaign = this.mTournamentModel.activateTournamentCampaign(this.mTournamentModel.brandedTournamentAssetId);
         }
         else
         {
            this.mActiveCampaign = null;
         }
         this.mUseWallet = true;
         if(this.mActiveCampaign)
         {
            this.mCampaignButton = this.getCampaignButtonFromBG();
            if(this.mCampaignButton)
            {
               this.mCampaignButton.addEventListener(MouseEvent.CLICK,this.cbOnCampaignButtonClicked);
               this.mUseWallet = false;
            }
            else
            {
               campaignButtonHolder = this.mActiveCampaign.campaignPosition == CAMPAIGN_BUTTON_HOLDER_RIGHT ? CAMPAIGN_BUTTON_HOLDER_RIGHT : CAMPAIGN_BUTTON_HOLDER_LEFT;
               campaignUI = mUIView.getItemByName(campaignButtonHolder);
               if(campaignUI)
               {
                  cls = AssetCache.getAssetFromCache(this.mActiveCampaign.campaignSprite,false);
                  if(cls)
                  {
                     campaignUI.mClip.removeChildren();
                     campaignUI.mClip.addChild(new cls());
                     campaignUI.setVisibility(true);
                     this.mUseWallet = this.mActiveCampaign.campaignPosition == CAMPAIGN_BUTTON_HOLDER_RIGHT;
                  }
               }
            }
         }
         this.mShareButtonHolder = mUIView.getItemByName("share_button_holder");
         if(this.mShareButtonHolder && this.mTournamentModel.shareButtonData)
         {
            shareBrandName = "SHARE_BUTTON_" + this.mTournamentModel.tournamentRules.brandedFrameLabel;
            cls = AssetCache.getAssetFromCache(shareBrandName,false);
            if(cls)
            {
               this.mShareButtonHolder.mClip.removeChildren();
               this.mShareButtonHolder.mClip.addChild(new cls());
               this.mShareButtonHolder.mClip.addEventListener(MouseEvent.CLICK,this.onShareButtonClicked,false,0,true);
            }
         }
         if(this.mUseWallet)
         {
            this.addWallet(new Wallet(this,true,true,false,true));
         }
         this.showTournamentEventInfoPopup();
         if(smActivateTournamentEventPopup && smActivatedEventManager)
         {
            smActivatedEventManager.openEventPopup();
            smActivateTournamentEventPopup = false;
         }
         this.mUIScaledToFullScreenCounter = 0;
         this.mUIScaledToNormalCounter = 0;
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.addEventListener(FriendsBarEvent.FRIENDS_BAR_SCORE_LIST_TYPE_CHANGED,this.onFriendsTabChanged);
         TournamentModel.setTournamentSelectionDataLoaded(true);
         if(!this.mTournamentModel.isOverlappingTournamentsEnabled())
         {
            autoClaimedRewards = InitDataLoader.getAutoclaimedRewards();
            if(autoClaimedRewards)
            {
               autoClaimedRewards.sortOn(["start","id"],[Array.NUMERIC,Array.DESCENDING]);
               AngryBirdsBase.singleton.popupManager.openPopup(new OverlappingTournamentsEndPopup(autoClaimedRewards));
               InitDataLoader.resetAutoclaimedRewards();
            }
         }
      }
      
      private function showTournamentEventInfoPopup() : void
      {
         if(!smActivatedEventManager)
         {
            return;
         }
         if(DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.hasItemBeenSeen(smActivatedEventManager.ID))
         {
            return;
         }
         var popupOpened:Boolean = smActivatedEventManager.openInfoPopup();
         if(popupOpened)
         {
            SoundEngine.playSound("league_promotion_diamond",SoundEngine.DEFAULT_CHANNEL_NAME);
            DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.SEEN_ITEMS_STORAGE_NAME,[smActivatedEventManager.ID]);
         }
      }
      
      private function cbOnCampaignButtonClicked(event:MouseEvent) : void
      {
         this.mTournamentModel.campaignClicked();
      }
      
      protected function getCampaignButtonFromBG() : SimpleButton
      {
         return null;
      }
      
      private function setTitleInfoTexts() : void
      {
         var uiComp:UIComponentRovio = mUIView.container.getItemByName("TextContainer");
         var titleTextContainer:MovieClip = MovieClip(uiComp.mClip.getChildByName(TEXT_CONTAINER_INSTANCE_NAME));
         this.mDaysLeftTF = TextField((titleTextContainer.getChildByName("DaysLeftTextfield") as DisplayObjectContainer).getChildByName("text"));
         this.mTitleTF = TextField(titleTextContainer.getChildByName("Textfield_TournamentName"));
      }
      
      private function updateButtonPreviousResults() : void
      {
         var prevResult:Object = this.mLeagueModel.previousResult;
         var available:Boolean = this.mLeagueModel.unconcludedResult || prevResult && prevResult.t && prevResult.t.players.length > 0;
         if(available)
         {
            if(prevResult && prevResult.t && prevResult.t.qualifier && prevResult.l && prevResult.l.pli.tn == "QUALIFIER")
            {
               available = false;
            }
         }
         if(this.mPreviousResultButton)
         {
            if(available)
            {
               this.mPreviousResultButton.setEnabled(true);
               this.mPreviousResultButton.mClip.alpha = 1;
               this.mPreviousButtonVisibilitySet = true;
            }
            else
            {
               this.mPreviousResultButton.setEnabled(false);
               this.mPreviousResultButton.mClip.alpha = 0.5;
            }
         }
      }
      
      private function showPopups() : void
      {
         if(this.mTournamentModel.tournamentRules.tournamentResults)
         {
            this.showTournamentResultsPopup();
         }
         else
         {
            this.showTournamentResultsPopup();
         }
         var tournamentPopupId:String = FacebookUserProgress.BRANDED_TOURNAMENT_TUTORIAL + "_" + this.mTournamentModel.tournamentRules.tournamentName;
         if(this.mTournamentModel.tournamentRules.tournamentName == TournamentModel.STANDARD_TOURNAMENT_NAME)
         {
            tournamentPopupId = FacebookUserProgress.TOURNAMENT_TUTORIAL;
         }
      }
      
      override public function deActivate() : void
      {
         var levelButton:TournamentLevelButton = null;
         super.deActivate();
         this.mTournamentModel.removeEventListener(TournamentEvent.TOURNAMENT_LOADED,this.onCurrentTournamentLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreRefreshed);
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,this.onCurrentTournamentAssetsLoaded);
         this.mDailyRewardController.removeEventListener(SpinningWheelEvent.SPIN_REWARD_RECEIVED,this.cbOnSpinRewardReceived);
         this.mDailyRewardController.removeEventListener(SpinningWheelEvent.NEW_SPIN_AVAILABLE,this.cbOnNewSpinAvailable);
         this.mPreviousButtonVisibilitySet = false;
         this.mTournamentModel.removeEventListener(TournamentEvent.TOURNAMENT_RELOAD,this.onTournamentReloaded);
         this.mLeagueModel.removeEventListener(LeagueEvent.ALL_DATA_LOADED,this.onAllLeagueDataLoaded);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.removeEventListener(FriendsBarEvent.FRIENDS_BAR_SCORE_LIST_TYPE_CHANGED,this.onFriendsTabChanged);
         this.mLevelNames = this.mTournamentModel.levelIDs;
         mLevelManager.resetPreviousLevel();
         if(this.mActiveCampaign && mUIView)
         {
            mUIView.getItemByName(CAMPAIGN_BUTTON_HOLDER_LEFT).setVisibility(false);
            mUIView.getItemByName(CAMPAIGN_BUTTON_HOLDER_RIGHT).setVisibility(false);
         }
         if(this.mCampaignButton)
         {
            this.mCampaignButton.removeEventListener(MouseEvent.CLICK,this.cbOnCampaignButtonClicked);
         }
         smActivatedEventManager = null;
         this.removeWallet(this.mWallet);
         for each(levelButton in this.mLevelButtons)
         {
            levelButton.deactivate();
         }
      }
      
      private function updateScoreData() : void
      {
         var you:Object = null;
         var player:Object = null;
         var friendData:CachedFriendDataVO = null;
         var scoreVO:UserTournamentScoreVO = null;
         var yourId:String = null;
         var yourFriendData:CachedFriendDataVO = null;
         var yourName:String = null;
         var levelsTotalScore:int = 0;
         var i:int = 0;
         var scoreData:Array = [];
         this.mPlayers = [];
         var tournamentPlayingFriends:Array = this.mTournamentModel.getTournamentPlayingFriends();
         CachedFacebookFriends.challengeCandidates = new Vector.<UserTournamentScoreVO>();
         var lowestCoinReward:int = 0;
         for each(player in tournamentPlayingFriends)
         {
            friendData = FriendsDataCache.getFriendData(player.uid);
            if(friendData)
            {
               if(friendData.name)
               {
                  player.n = friendData.name;
               }
            }
            if(player.n == null)
            {
               player.n = "";
            }
            if(player.uid == (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID)
            {
               you = player;
            }
            if(player.c)
            {
               lowestCoinReward = player.c;
            }
            else
            {
               player.c = lowestCoinReward;
            }
            scoreVO = UserTournamentScoreVO.fromServerObject(player);
            if(scoreVO.canBeChallenged)
            {
               if(CachedFacebookFriends.challengedIDs.indexOf(scoreVO.userId) == -1)
               {
                  CachedFacebookFriends.challengeCandidates.push(scoreVO);
               }
            }
            else
            {
               scoreData.push(scoreVO);
            }
            this.mPlayers.push(scoreVO);
         }
         if(you == null)
         {
            yourId = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID;
            yourFriendData = FriendsDataCache.getFriendData(yourId);
            yourName = !!yourFriendData ? yourFriendData.name : "You";
            you = {
               "r":tournamentPlayingFriends.length + 1,
               "uid":yourId,
               "n":yourName
            };
            levelsTotalScore = 0;
            for(i = 0; i < this.mLevelNames.length; i++)
            {
               levelsTotalScore += FacebookUserProgress(AngryBirdsBase.singleton.dataModel.userProgress).getTournamentScoreForLevel(this.mLevelNames[i]);
            }
            you.p = levelsTotalScore;
            this.mPlayers.push(UserTournamentScoreVO.fromServerObject(you));
            scoreData.push(UserTournamentScoreVO.fromServerObject(you));
         }
         if(OpenGraphData.getObjectId(OpenGraphData.CHALLENGE_TO_TOURNAMENT))
         {
            for(i = 0; i < scoreData.length; i++)
            {
               scoreData[i].rank = i + 1;
            }
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_TOURNAMENT,scoreData);
         QualifierInterruptedPopUp.setFriendsData(scoreData);
         this.updateTimeLeft();
      }
      
      private function addChallengePlates(scoreData:Array) : void
      {
         var playingFriend:CachedFriendDataVO = null;
         var found:Boolean = false;
         var tournamentFriend:UserTournamentScoreVO = null;
         var foundUserID:String = null;
         var foundUserName:String = null;
         var allPlayingFriends:Vector.<CachedFriendDataVO> = FriendsDataCache.getPlayingFriendsOnly();
         for each(playingFriend in allPlayingFriends)
         {
            found = false;
            for each(tournamentFriend in this.mPlayers)
            {
               if(playingFriend.userID == tournamentFriend.userId)
               {
                  found = true;
                  break;
               }
            }
            if(!found)
            {
               foundUserID = "";
               if(playingFriend.userID)
               {
                  foundUserID = playingFriend.userID;
               }
               foundUserName = "";
               if(playingFriend.name)
               {
                  foundUserName = playingFriend.name;
               }
               scoreData.push(new ChallengeVO(foundUserID,foundUserName,"",!ExceptionUserIDsManager.instance.canSendChallengeRequestTo(foundUserID)));
            }
         }
      }
      
      protected function setLevelButtons() : void
      {
         var button:UIButtonRovio = null;
         this.mLevelButtons = new Vector.<TournamentLevelButton>();
         this.mLevelNames = this.mTournamentModel.levelIDs;
         for(var i:int = 0; i < TOURNAMENT_BUTTON_AMOUNT; i++)
         {
            button = UIButtonRovio(mUIView.getItemByName("LevelButton" + (i + 1)));
            if(!button)
            {
               break;
            }
            if(i < this.mLevelNames.length)
            {
               button.visible = true;
               this.mLevelButtons.push(this.makeLevelButton(i + 1,this.mTournamentModel.levelObjects[i],button));
            }
            else
            {
               button.visible = false;
            }
         }
         if(this.mLevelNames.length > TOURNAMENT_BUTTON_ORIGINAL_AMOUNT)
         {
            smButtonsOnOneRow = TOURNAMENT_BUTTONS_MULTIPLE_ROWS_BUTTONS_ON_ONE_ROW;
         }
         else
         {
            smButtonsOnOneRow = TOURNAMENT_BUTTON_ORIGINAL_AMOUNT;
         }
         this.positionButtons();
      }
      
      private function getButtonCoordinates() : Object
      {
         var obj:Object = new Object();
         obj.buttonGap = AngryBirdsEngine.getCurrentScreenWidth() / (smButtonsOnOneRow + 1);
         obj.buttonY = AngryBirdsEngine.getCurrentScreenHeight() * 0.5;
         obj.centerX = AngryBirdsEngine.getCurrentScreenWidth() >> 1;
         obj.buttonRightCorner = AngryBirdsEngine.getCurrentScreenWidth() - (AngryBirdsEngine.getCurrentScreenWidth() >> 3);
         if(this.mLevelNames.length > smButtonsOnOneRow)
         {
            obj.buttonY = AngryBirdsEngine.getCurrentScreenHeight() * 0.41;
            obj.buttonSecondRowY = obj.buttonY + AngryBirdsEngine.getCurrentScreenHeight() / 4.5;
         }
         return obj;
      }
      
      private function positionButtons() : void
      {
         var levelButton:TournamentLevelButton = null;
         var buttonCoordinates:Object = this.getButtonCoordinates();
         var fullscreenAddToY:Number = 0;
         var scale:Number = 1;
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).isFullScreenMode())
         {
            fullscreenAddToY = AngryBirdsEngine.getCurrentScreenHeight() >> 5;
            scale = StateFacebookMainMenuSelection.SCALE_LEVEL_BUTTONS_IN_FULL_SCREEN;
         }
         var counter:int = 1;
         for each(levelButton in this.mLevelButtons)
         {
            levelButton.setScale(scale);
            if(counter <= smButtonsOnOneRow)
            {
               levelButton.setPosition(buttonCoordinates.buttonGap * counter,buttonCoordinates.buttonY + fullscreenAddToY);
            }
            else
            {
               levelButton.setPosition(buttonCoordinates.buttonGap * (counter - smButtonsOnOneRow),buttonCoordinates.buttonSecondRowY + (AngryBirdsEngine.getCurrentScreenHeight() >> 5));
            }
            counter++;
         }
      }
      
      protected function makeLevelButton(levelNumber:int, levelObject:Object, uiButton:UIButtonRovio) : TournamentLevelButton
      {
         return new TournamentLevelButton(levelNumber,levelObject,this,uiButton,this.mTournamentModel,dataModel.shopListing,dataModel.virtualCurrencyModel,FacebookUserProgress(dataModel.userProgress));
      }
      
      private function getTournamentVOByRank(rank:int) : UserTournamentScoreVO
      {
         var player:FriendListItemVO = null;
         if(rank <= this.mPlayers.length)
         {
            player = this.mPlayers[rank - 1];
            if(player is UserTournamentScoreVO)
            {
               (player as UserTournamentScoreVO).rank = rank;
               return player as UserTournamentScoreVO;
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "BACK":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               if(this.mTournamentModel.isOverlappingTournamentsEnabled())
               {
                  setNextState(StateOverlappingTournamentsMenu.STATE_NAME);
               }
               else
               {
                  setNextState(StateFacebookMainMenuSelection.STATE_NAME);
               }
               break;
            case "SPINNING_WHEEL":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.mDailyRewardController.showSpinningWheel();
               FacebookAnalyticsCollector.getInstance().trackDailySpinUIAction(FacebookAnalyticsCollector.DAILY_SPIN_USER_ACTION_SPIN_ICON_CLICKED);
               break;
            case "PREVIOUS_RESULTS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               if(!this.mLeagueModel.active)
               {
                  setNextState(StateLastWeeksTournamentResults.STATE_NAME);
               }
               else
               {
                  StateTournamentResults.resultType = StateTournamentResults.PREVIOUS_WEEK;
                  setNextState(StateTournamentResults.STATE_NAME);
               }
               break;
            case "LEVEL_1":
               this.levelClicked(0);
               break;
            case "LEVEL_2":
               this.levelClicked(1);
               break;
            case "LEVEL_3":
               this.levelClicked(2);
               break;
            case "LEVEL_4":
               this.levelClicked(3);
               break;
            case "LEVEL_5":
               this.levelClicked(4);
               break;
            case "LEVEL_6":
               this.levelClicked(5);
               break;
            case "LEVEL_7":
               this.levelClicked(6);
               break;
            case "LEVEL_8":
               this.levelClicked(7);
               break;
            case "showCredits":
               setNextState(StateCredits.STATE_NAME);
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               this.gotoCutsceneState(int(eventName.charAt(eventName.length - 1)));
               break;
            case "SPECIAL_STORE":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
               break;
            case "CHALLENGE":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.popupManager.openPopup(new ChallengePopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
               break;
            case "MORE_GAMES":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest("http://www.rovio.com/games"),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         if(smActivatedEventManager)
         {
            smActivatedEventManager.onUIInteraction(eventName);
         }
         this.mTournamentModel.campaignUIInteractionEvent(eventName);
      }
      
      protected function levelClicked(levelIndex:int) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         var levelId:String = this.mLevelNames[levelIndex];
         var levelObject:Object = this.mTournamentModel.levelObjects[levelIndex];
         var levelButton:TournamentLevelButton = this.mLevelButtons[levelIndex];
         if(this.mTournamentModel.isLevelOpen(levelId))
         {
            this.startLevel(levelId);
         }
         else if(levelButton.canPurchase && !this.mTournamentModel.levelBeingUnlocked)
         {
            levelButton.purchase();
         }
      }
      
      private function gotoCutsceneState(index:int) : void
      {
         var levelId:String = "";
         if(this.mTournamentModel.tournamentRules.tournamentName.indexOf("HALLOWEEN") != -1)
         {
            levelId = this.HALLOWEEN_LEVEL_IDS[index - 1];
         }
         if(this.mTournamentModel.tournamentRules.tournamentName.indexOf("XMAS") != -1)
         {
            levelId = this.XMAS_LEVEL_IDS[index - 1];
         }
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(levelId.toLowerCase()));
         setNextState(StateTournamentCutScenePlain.STATE_NAME);
      }
      
      protected function startLevel(levelId:String) : void
      {
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(levelId.toLowerCase()));
         setNextState(StateTournamentCutScene.STATE_NAME);
      }
      
      protected function updateTimeLeft() : void
      {
         if(this.mTournamentEndServerCallPauseTimer)
         {
            this.displayLoadingText(true);
            return;
         }
         if(mUIView.getItemByName("loadingTournament").visible || AngryBirdsBase.singleton.popupManager.isPopupOpen())
         {
            return;
         }
         var timeLeftPretty:Array = this.mTournamentModel.getTournamentTimeLeftAsPrettyString();
         this.mDaysLeftTF.text = timeLeftPretty[0] + " left!";
         this.mDaysLeftTF.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.mTournamentEndServerCallPauseTimer = new Timer(TOURNAMENT_EXPIRE_MIN_TIME);
            this.mTournamentEndServerCallPauseTimer.addEventListener(TimerEvent.TIMER,function():void
            {
               mTournamentEndServerCallPauseTimer.stop();
               mTournamentEndServerCallPauseTimer = null;
               loadTournamentData();
            });
            this.displayLoadingText(true);
            this.mTournamentEndServerCallPauseTimer.start();
         }
         timeLeftPretty = null;
      }
      
      override protected function update(deltaTime:Number) : void
      {
         var levelButton:TournamentLevelButton = null;
         var isLoadingCompleted:Boolean = false;
         super.update(deltaTime);
         if(this.mAnimateSpinningWheelNotifier)
         {
            this.mNotificationBounceStartTimer += deltaTime;
            if(this.mNotificationBounceStartTimer >= this.TIME_DELAY_TO_SHOW_SPIN_NOTIFIER_BOUNCE)
            {
               this.mAnimateSpinningWheelNotifier = false;
               this.animateSpinNotifier();
            }
         }
         if(smCheckTournamentEventButtonState)
         {
            if(smActivatedEventManager)
            {
               smActivatedEventManager.updateEventButtonState();
               smCheckTournamentEventButtonState = false;
               this.mUIScaledToFullScreenCounter = 0;
               this.mUIScaledToNormalCounter = 0;
            }
            else if(TournamentEventManager.instance.isEventActivated())
            {
               smActivatedEventManager = TournamentEventManager.instance.getActivatedEventManager();
               smActivatedEventManager.initEventButton(mUIView);
            }
         }
         if(!this.mPreviousButtonVisibilitySet)
         {
            this.updateButtonPreviousResults();
         }
         if(this.mLoadingSteps)
         {
            for each(isLoadingCompleted in this.mLoadingSteps)
            {
               if(!isLoadingCompleted)
               {
                  break;
               }
            }
            if(isLoadingCompleted && this.mTournamentModel.currentTournament)
            {
               this.mLoadingSteps = null;
               this.tournamentInfoLoadingComplete();
            }
         }
         else
         {
            this.updateTimeLeft();
         }
         for each(levelButton in this.mLevelButtons)
         {
            levelButton.update();
         }
         if(this.mRemoveLoadingScreenOnNextLoop)
         {
            this.displayLoadingText(false);
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
            this.mRemoveLoadingScreenOnNextLoop = false;
         }
         if(this.mPreviousScreenWidth != AngryBirdsEngine.getCurrentScreenWidth())
         {
            this.mUIScaledToFullScreenCounter = 0;
            this.mUIScaledToNormalCounter = 0;
            this.mPreviousScreenWidth = AngryBirdsEngine.getCurrentScreenWidth();
         }
         if(this.mDataRefreshTimer > 0)
         {
            this.mDataRefreshTimer -= deltaTime;
            if(this.mDataRefreshTimer <= 0)
            {
               this.mDataRefreshTimer = DATA_REFRESH_TIME;
               this.mTournamentModel.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreRefreshed);
               this.mTournamentModel.loadCurrentTournamentLevelScores(smLoadTournamentId);
            }
         }
      }
      
      private function updateCutSceneButtons() : void
      {
         var currentWeek:int = 0;
         var isLastLevelCompleted:* = false;
         var levelId:String = null;
         var cutSceneButton:UIButtonRovio = null;
         var isCutSceneAvailable:Boolean = false;
         if(this.mTournamentModel.levelIDs.length > 0)
         {
            currentWeek = this.getCurrentXmasWeek();
            if(mUIView.getItemByName("TournamentCutsceneSelection"))
            {
               mUIView.getItemByName("TournamentCutsceneSelection").setVisibility(currentWeek > 1 && currentWeek <= 4);
            }
            isLastLevelCompleted = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).getTournamentScoreForLevel(this.XMAS_LEVEL_IDS[3]) > 0;
            mCutscenesAvailability[1] = currentWeek >= 3;
            mCutscenesAvailability[2] = currentWeek >= 4;
            mCutscenesAvailability[3] = currentWeek >= 4 && isLastLevelCompleted;
         }
         if(!this.mTournamentModel.tournamentRules)
         {
            return;
         }
         for(var i:int = 0; i < this.XMAS_LEVEL_IDS.length; i++)
         {
            levelId = "";
            if(this.mTournamentModel.tournamentRules.tournamentName.indexOf("XMAS") != -1)
            {
               levelId = this.XMAS_LEVEL_IDS[i];
            }
            cutSceneButton = mUIView.getItemByName("CutsceneButton" + int(i + 1)) as UIButtonRovio;
            if(cutSceneButton)
            {
               isCutSceneAvailable = isCutsceneAvailable(i + 1);
               if(isCutSceneAvailable)
               {
                  cutSceneButton.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  cutSceneButton.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
                  cutSceneButton.setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
         }
      }
      
      private function getCurrentXmasWeek() : int
      {
         var currentWeek:int = 1;
         switch(this.mTournamentModel.levelIDs[0])
         {
            case this.XMAS_LEVEL_IDS[0]:
               currentWeek = 2;
               break;
            case this.XMAS_LEVEL_IDS[1]:
               currentWeek = 3;
               break;
            case this.XMAS_LEVEL_IDS[2]:
            case this.XMAS_LEVEL_IDS[3]:
               currentWeek = 4;
         }
         return currentWeek;
      }
      
      protected function showTournamentResultsPopup(type:String = null) : void
      {
         var popup:TournamentResultsPopup = new TournamentResultsPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,false);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      public function getName() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var buttonCoordinates:Object = null;
         var buttonX:Number = NaN;
         var buttonSpace:int = 0;
         if(!this.mLevelNames || this.mLevelNames.length == 0 || this.mUseWallet && !this.mWallet)
         {
            return;
         }
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).isFullScreenMode())
         {
            if(this.mUIScaledToFullScreenCounter < UPDATE_ROUNDS_TO_SCALE_UI)
            {
               this.mUIScaledToNormalCounter = 0;
               if(this.mWallet)
               {
                  this.mWallet.walletClip.scaleX = StateFacebookMainMenuSelection.SCALE_LEVEL_BUTTONS_IN_FULL_SCREEN;
                  this.mWallet.walletClip.scaleY = StateFacebookMainMenuSelection.SCALE_LEVEL_BUTTONS_IN_FULL_SCREEN;
               }
               this.positionButtons();
               buttonCoordinates = this.getButtonCoordinates();
               buttonX = buttonCoordinates.centerX;
               if(smActivatedEventManager)
               {
                  smActivatedEventManager.updateEventButtonUIScale(buttonX,buttonCoordinates.buttonY + (this.mSpinButton.y - buttonCoordinates.buttonY) / 2,buttonCoordinates.buttonRightCorner);
               }
               if(this.mChallengeButton)
               {
                  this.mChallengeButton.x = buttonX;
               }
               if(this.mShareButtonHolder)
               {
                  this.mShareButtonHolder.mClip.visible = true;
                  this.mShareButtonHolder.x = AngryBirdsEngine.getCurrentScreenWidth() >> 1;
                  this.mShareButtonHolder.y = buttonCoordinates.buttonY + (this.mSpinButton.y - buttonCoordinates.buttonY) / 2;
               }
               buttonSpace = mUIView.getItemByName("Button_PreviousResults").x - mUIView.getItemByName("Button_Back").x;
               this.mSpinButton.x = mUIView.getItemByName("Button_Back").x + buttonSpace / 4;
               this.mMoreGamesButton.x = mUIView.getItemByName("Button_Back").x + buttonSpace / 4 * 3;
               ++this.mUIScaledToFullScreenCounter;
            }
         }
         else if(this.mUIScaledToNormalCounter < UPDATE_ROUNDS_TO_SCALE_UI)
         {
            this.mUIScaledToFullScreenCounter = 0;
            if(this.mWallet)
            {
               this.mWallet.walletClip.scaleX = 1;
               this.mWallet.walletClip.scaleY = 1;
            }
            this.positionButtons();
            buttonCoordinates = this.getButtonCoordinates();
            buttonX = buttonCoordinates.centerX;
            if(smActivatedEventManager)
            {
               smActivatedEventManager.updateEventButtonUIScale(buttonX,buttonCoordinates.buttonY + (this.mSpinButton.y - buttonCoordinates.buttonY) / 2,buttonCoordinates.buttonRightCorner);
            }
            if(this.mChallengeButton)
            {
               this.mChallengeButton.x = buttonX;
            }
            if(this.mShareButtonHolder)
            {
               this.mShareButtonHolder.mClip.visible = true;
               this.mShareButtonHolder.x = AngryBirdsEngine.getCurrentScreenWidth() >> 1;
               this.mShareButtonHolder.y = buttonCoordinates.buttonY + (this.mSpinButton.y - buttonCoordinates.buttonY) / 2;
            }
            buttonSpace = mUIView.getItemByName("Button_PreviousResults").x - mUIView.getItemByName("Button_Back").x;
            this.mSpinButton.x = mUIView.getItemByName("Button_Back").x + buttonSpace / 4;
            this.mMoreGamesButton.x = mUIView.getItemByName("Button_Back").x + buttonSpace / 4 * 3;
            ++this.mUIScaledToNormalCounter;
         }
      }
      
      public function addWallet(wallet:Wallet) : void
      {
         this.mWallet = wallet;
      }
      
      public function removeWallet(wallet:Wallet) : void
      {
         if(this.mWallet)
         {
            wallet.dispose();
         }
         wallet = null;
      }
      
      public function get wallet() : Wallet
      {
         return this.mWallet;
      }
      
      public function get walletContainer() : Sprite
      {
         return mUIView.movieClip;
      }
      
      protected function onShareButtonClicked(e:MouseEvent) : void
      {
         if(this.mTournamentModel.shareButtonData && this.mTournamentModel.shareButtonData.url)
         {
            ExternalInterfaceHandler.performCall("shareURL",this.mTournamentModel.shareButtonData.url);
         }
      }
      
      protected function onFriendsTabChanged(event:FriendsBarEvent) : void
      {
         var levelButton:TournamentLevelButton = null;
         for each(levelButton in this.mLevelButtons)
         {
            levelButton.setFriendsBarTab(true);
         }
      }
      
      public function loadTournamentData() : void
      {
         this.displayLoadingText(true);
         this.mLoadingSteps = new Vector.<Boolean>();
         this.mLoadingSteps[LOADING_STEP_INDEX_INFO] = false;
         this.mLoadingSteps[LOADING_STEP_INDEX_SCORE] = false;
         this.mLoadingSteps[LOADING_STEP_INDEX_STANDINGS] = false;
         this.mLoadingSteps[LOADING_STEP_INDEX_ASSETS] = false;
         if(TournamentModel.instance.isOverlappingTournamentsEnabled())
         {
            if(InitDataLoader.getLastClassicUnclaimedTournamentId() != -1)
            {
               TournamentModel.forceReloadStandings();
               smLoadTournamentId = InitDataLoader.getLastClassicUnclaimedTournamentId();
               smCheckForTournamentResultsTournamentId = InitDataLoader.getLastClassicUnclaimedTournamentId();
               InitDataLoader.resetLastClassicUnclaimedTournamentId();
            }
            else if(!smOverlappingTournamentIdSet)
            {
               TournamentModel.forceReloadStandings();
               if(smLoadTournamentId == 0)
               {
                  smLoadTournamentId = TournamentModel.instance.getCurrentTournamentId();
               }
               smCheckForTournamentResultsTournamentId = smLoadTournamentId;
            }
            else if(TournamentEventManager.instance.getActivatedEventManagerID() == StarCollectionManager.EVENT_ID)
            {
               TournamentModel.forceReloadStandings();
            }
         }
         else if(InitDataLoader.getLastClassicUnclaimedTournamentId() != -1)
         {
            smLoadTournamentId = InitDataLoader.getLastClassicUnclaimedTournamentId();
            smCheckForTournamentResultsTournamentId = smLoadTournamentId;
            InitDataLoader.resetLastClassicUnclaimedTournamentId();
         }
         else if(smCheckForTournamentResultsTournamentId > 0)
         {
            smLoadTournamentId = smCheckForTournamentResultsTournamentId;
         }
         else if(smLoadTournamentId == 0)
         {
            smLoadTournamentId = TournamentModel.instance.getCurrentTournamentId();
         }
         this.mTournamentModel.addEventListener(TournamentEvent.TOURNAMENT_LOADED,this.onCurrentTournamentLoaded);
         this.mTournamentModel.loadTournament(smLoadTournamentId);
         this.mTournamentModel.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
         this.mTournamentModel.loadCurrentTournamentStandings(smLoadTournamentId);
         this.mTournamentModel.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreLoaded);
         this.mTournamentModel.loadCurrentTournamentLevelScores(smLoadTournamentId);
         if(this.mLeagueModel.active)
         {
            if(this.mLoadingSteps)
            {
               this.mLoadingSteps[LOADING_STEP_INDEX_LEAGUE] = false;
            }
            AngryBirdsFacebook.smLoadLeaguePreviousData = true;
            this.mLeagueModel.addEventListener(LeagueEvent.ALL_DATA_LOADED,this.onAllLeagueDataLoaded);
            this.mLeagueModel.loadData(smLoadTournamentId);
         }
      }
      
      public function isLoading() : Boolean
      {
         return this.mLoadingSteps != null;
      }
   }
}
