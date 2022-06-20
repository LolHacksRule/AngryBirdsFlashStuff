package
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.abtesting.ABTestingModel;
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.dailyrewardpopup.DailyRewardPopup;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.data.InitDataLoader;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.LevelLoaderFriends;
   import com.angrybirds.data.OpenGraphData;
   import com.angrybirds.data.PackageManager;
   import com.angrybirds.data.PackageManagerFriends;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.data.events.DailyRewardEvent;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.LevelItemManagerFriends;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundManager;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundManagerFriends;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.data.CachedFacebookFriends;
   import com.angrybirds.friendsbar.data.HighScoreListManager;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.friendsbar.ui.LevelScorePlate;
   import com.angrybirds.friendsbar.ui.profile.AvatarProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.AvatarRenderer;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.giftinbox.GiftInboxPopup;
   import com.angrybirds.giftinbox.events.GiftInboxEvent;
   import com.angrybirds.graphapi.FirstTimePayerPromotion;
   import com.angrybirds.graphapi.GraphAPICaller;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.events.LeagueEvent;
   import com.angrybirds.notification.DynamicNotification;
   import com.angrybirds.notification.DynamicNotificationService;
   import com.angrybirds.notification.IDynamicNotificationService;
   import com.angrybirds.popups.AvatarCreatorPopup;
   import com.angrybirds.popups.ClaimBundlePopup;
   import com.angrybirds.popups.DynamicNotificationPopup;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.InviteFriendsPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.PopupManagerFriends;
   import com.angrybirds.popups.QuestionPopup;
   import com.angrybirds.popups.QuickPurchaseSlingshotPopup;
   import com.angrybirds.popups.coinshop.CoinShopPopup;
   import com.angrybirds.popups.coinshop.CoinShopTutorialPopup;
   import com.angrybirds.popups.coinshop.VirtualCurrencyTutorialPopup;
   import com.angrybirds.popups.events.QuestionPopupEvent;
   import com.angrybirds.popups.league.LeagueEditProfile;
   import com.angrybirds.popups.league.LeagueInfoPopup;
   import com.angrybirds.popups.league.LeagueTutorialPopup;
   import com.angrybirds.popups.league.SlingshotRewardInfoPopup;
   import com.angrybirds.popups.tutorial.FacebookTutorialLinkageSolver;
   import com.angrybirds.popups.tutorial.FacebookTutorialMapping;
   import com.angrybirds.popups.tutorial.TutorialPopupManagerFacebook;
   import com.angrybirds.powerups.BundleType;
   import com.angrybirds.salescampaign.SalesCampaignManager;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.angrybirds.spiningwheel.SpinningWheelController;
   import com.angrybirds.states.StateCredits;
   import com.angrybirds.states.StateCutScene;
   import com.angrybirds.states.StateFacebookCredits;
   import com.angrybirds.states.StateFacebookCutScene;
   import com.angrybirds.states.StateFacebookEpisodeSelection;
   import com.angrybirds.states.StateFacebookGoldenEggs;
   import com.angrybirds.states.StateFacebookLevelEnd;
   import com.angrybirds.states.StateFacebookLevelEndEagle;
   import com.angrybirds.states.StateFacebookLevelEndFail;
   import com.angrybirds.states.StateFacebookLevelLoad;
   import com.angrybirds.states.StateFacebookLevelSelection;
   import com.angrybirds.states.StateFacebookLoad;
   import com.angrybirds.states.StateFacebookMainMenuSelection;
   import com.angrybirds.states.StateFacebookPlay;
   import com.angrybirds.states.StateFacebookStart;
   import com.angrybirds.states.StateFacebookWonderlandLevelSelection;
   import com.angrybirds.states.StateLevelSelection;
   import com.angrybirds.states.StatePlay;
   import com.angrybirds.states.tournament.StateLastWeeksTournamentResults;
   import com.angrybirds.states.tournament.StateOverlappingTournamentsMenu;
   import com.angrybirds.states.tournament.StateTournamentCutScene;
   import com.angrybirds.states.tournament.StateTournamentCutScenePlain;
   import com.angrybirds.states.tournament.StateTournamentLevelEnd;
   import com.angrybirds.states.tournament.StateTournamentLevelEndFail;
   import com.angrybirds.states.tournament.StateTournamentLevelLoad;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.states.tournament.StateTournamentPlay;
   import com.angrybirds.states.tournament.StateTournamentResults;
   import com.angrybirds.states.tournament.branded.StateTournamentLevelSelectionBranded;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.TournamentRules;
   import com.angrybirds.tournament.campaign.TournamentCampaignManager;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.tournamentpopups.TournamentResultsPopup;
   import com.rovio.ApplicationCanvas;
   import com.rovio.assets.AssetCache;
   import com.rovio.assets.LoadingScreen;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.factory.Log;
   import com.rovio.factory.XMLFactory;
   import com.rovio.loader.FileNameMapper;
   import com.rovio.loader.ILevelLoader;
   import com.rovio.loader.PackageLoader;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.SessionRetryingURLLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.skynest.FriendsRovioAccessToken;
   import com.rovio.skynest.RovioAccessToken;
   import com.rovio.sound.FacebookThemeSongs;
   import com.rovio.sound.SoundChannelController;
   import com.rovio.sound.SoundEffect;
   import com.rovio.sound.SoundEngine;
   import com.rovio.sound.SoundEngineErrorEvent;
   import com.rovio.sound.SoundEngineEvent;
   import com.rovio.sound.ThemeMusicManager;
   import com.rovio.spritesheet.SpriteSheetJSONGGS;
   import com.rovio.states.StateBase;
   import com.rovio.states.StateLoad;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupLayerIndex;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.utils.ErrorCode;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.FacebookGraphRequestFriends;
   import com.rovio.utils.GoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.LuaUtils;
   import com.rovio.utils.ServerVersionChecker;
   import com.rovio.utils.UncaughtErrorHandlerFacebook;
   import data.user.FacebookUserProgress;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.external.ExternalInterface;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.ui.ContextMenu;
   import flash.utils.Timer;
   import flash.utils.clearInterval;
   import flash.utils.getTimer;
   import flash.utils.setInterval;
   
   public class AngryBirdsFacebook extends AngryBirdsBase implements IVirtualPageView, IAngryBirdsFacebook
   {
      
      public static const SVN_REVISION:String = "{svn_version}";
      
      public static const FB_API_VERSION:String = "v3.2";
      
      private static var smBeaconAppID:String = "AngryBirdsFriends";
      
      private static const BEACON_DEV_APP_ID:String = "angrybirdsfriendsdev_d8f18df";
      
      public static const IMAGE_UPLOAD_FEED_BIT_URL:String = "http://bit.ly/playfriends";
      
      public static const PRIVACY_WEB_URL:String = "https://cloud.rovio.com/privacyweb/index.html";
      
      public static const EXTERNAL_ASSETS_FOLDER:String = "external_assets/";
      
      public static const TOURNAMENT_SWF_FOLDER:String = EXTERNAL_ASSETS_FOLDER + "tournaments/";
      
      public static const SALE_CAMPAIGNS_SWF_FOLDER:String = EXTERNAL_ASSETS_FOLDER + "sale_campaigns/";
      
      public static const PACKAGES_FOLDER:String = "packages/";
      
      public static const TOURNAMENT_JSON_LEVELS_FOLDER_PREFIX:String = "tournamentJSONLevels-";
      
      public static const TOURNAMENT_JSON_LEVELS_FOLDER:String = "tournamentJSONLevels/";
      
      private static const LOCAL_STORAGE:String = "AngryBirdsFacebookSettings";
      
      public static const LOCAL_STORAGE_FOLDER:String = "/";
      
      public static const BRAND_LUA:String = "brand.lua";
      
      protected static var mFacebookAssetMapBin:Class = AngryBirdsFacebook_mFacebookAssetMapBin;
      
      protected static var mFacebookViewLibraryBin:Class = AngryBirdsFacebook_mFacebookViewLibraryBin;
      
      protected static var mFacebookPopupLibraryBin:Class = AngryBirdsFacebook_mFacebookPopupLibraryBin;
      
      protected static var mFacebookLevelBackgroundsBin:Class = AngryBirdsFacebook_mFacebookLevelBackgroundsBin;
      
      protected static var mFacebookItemDataTableBin:Class = AngryBirdsFacebook_mFacebookItemDataTableBin;
      
      protected static var mEmbeddedPopupsBytes:Class = AngryBirdsFacebook_mEmbeddedPopupsBytes;
      
      public static var sHighScoreListManager:HighScoreListManager;
      
      public static var sSingleton:IAngryBirdsFacebook;
      
      private static var sInitDataLoaded:Boolean = false;
      
      public static var smLevelToOpen:String = null;
      
      public static var smLoadLeaguePreviousData:Boolean;
      
      private static const LOADING_RESULTS_INDEX_TOURNAMENT:int = 0;
      
      private static const LOADING_RESULTS_INDEX_LEAGUE:int = 1;
      
      public static const TRACKABLE_STATE_NAMES:Array = [[StateFacebookMainMenuSelection.STATE_NAME,"MAIN_MENU"],[StateFacebookEpisodeSelection.STATE_NAME,"STORY_MODE_EPISOLE_SELECTION"],[StateTournamentLevelSelection.STATE_NAME,"LEVEL_SELECTION"],[StateOverlappingTournamentsMenu.STATE_NAME,"OVERLAPPING_TOURNAMENT_MENU"],[StateFacebookWonderlandLevelSelection.STATE_NAME,"STORY_MODE_LEVEL_SELECTION"],[StateLevelSelection.STATE_NAME,"STORY_MODE_LEVEL_SELECTION"],[StateFacebookGoldenEggs.STATE_NAME,"STORY_MODE_LEVEL_SELECTION"],[StateTournamentPlay.STATE_NAME,"INGAME"],[StatePlay.STATE_NAME,"INGAME"],[FriendsBar.SIDEBAR_BUTTON_STATE_PLAY,"INGAME"],[FriendsBar.SIDEBAR_BUTTON_STATE_PAUSE,"PAUSE_PAGE"]];
      
      private static var sTournamentInitializedCheck:Boolean = false;
      
      private static var sTournamentDataLoaded:Boolean = false;
      
      public static var sStandAloneTournamentData:Object;
      
      private static var sStandAloneTournamentBGData:XML;
       
      
      protected var mFriendsBar:FriendsBar;
      
      private var mInviteFriendsPopup:InviteFriendsPopup;
      
      public var mGraphAPICaller:GraphAPICaller;
      
      private var mFirstTimePayerPromotion:FirstTimePayerPromotion;
      
      private var mInput:String = "";
      
      private var mServerVersionChecker:ServerVersionChecker;
      
      private var mThemeSoundManager:FacebookThemeSongs;
      
      private var mFriendsbarContainer:Sprite;
      
      private var mGameLoaded:Boolean = false;
      
      protected var mUncaughtErrorsHandler:UncaughtErrorHandlerFacebook;
      
      private var mDebugUserId:String;
      
      private var mDebugAccessToken:String;
      
      private var mAnalyticsUrl:String;
      
      private var mAnalyticsUserId:String;
      
      private var mDynamicNotificationService:IDynamicNotificationService;
      
      private var delayTournamentExpiredLogic:uint = 0;
      
      private var mTournamentLoadingResults:Array;
      
      private var mBragPauseTimer:Timer;
      
      private var mFriendRequestGameStartPopup:QuestionPopup;
      
      private var mRecentTrackableStateIndex:int = 0;
      
      private var mRequestThemeMusicPlaying:Boolean;
      
      private var mSlingshotBundleLoaders:Vector.<ABFLoader>;
      
      private var mAccessTokenRefreshTimer:Timer;
      
      private var mLevelLoader:LevelLoaderFriends;
      
      public function AngryBirdsFacebook(canvas:ApplicationCanvas)
      {
         SERVER_VERSION = canvas.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         SERVER_ROOT = canvas.stage.loaderInfo.parameters.serverRoot || (!!DEBUG_MODE_ENABLED ? "http://angrybirds-facebook-staging.appspot.com" : "http://angrybirds-facebook-dev.appspot.com");
         this.loadStandAloneData();
         AngryBirdsEngine.DEBUG_MODE_ENABLED = false;
         SpriteSheetJSONGGS.sOverrideUsePivot = true;
         this.initErrorsHandler(SERVER_ROOT,canvas.loaderInfo.uncaughtErrorEvents,SVN_REVISION,canvas.stage.loaderInfo.parameters.userId || this.mDebugUserId);
         this.initEmbeddedPopupClasses();
         canvas.stage.addChild(this.mFriendsbarContainer = new Sprite());
         super(canvas,SERVER_VERSION,SERVER_ROOT);
         this.mUncaughtErrorsHandler.setLevelManager(mLevelManager);
         this.mUncaughtErrorsHandler.reportSessionStartToOwnServers();
         ExternalInterfaceHandler.addCallback("trialPayClosed",this.onTrialPayClosed);
         ExternalInterfaceHandler.addCallback("handleExpiredMobilePricePoints",this.onMobilePricePointsExpired);
         ExternalInterfaceHandler.addCallback("handleUserCancelledOrder",onUserCancelledOrder);
         ExternalInterfaceHandler.addCallback("orderReceived",onOrderReceived);
         this.mTournamentLoadingResults = new Array();
         this.mTournamentLoadingResults[LOADING_RESULTS_INDEX_TOURNAMENT] = false;
         this.mTournamentLoadingResults[LOADING_RESULTS_INDEX_LEAGUE] = false;
         smLoadLeaguePreviousData = true;
      }
      
      public static function get beaconAppId() : String
      {
         return smBeaconAppID;
      }
      
      public static function getLocalStorageID() : String
      {
         if((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID)
         {
            return LOCAL_STORAGE + "-" + (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID;
         }
         return null;
      }
      
      public static function get levelManager() : FacebookLevelManager
      {
         return (singleton as AngryBirdsFacebook).levelManagerInternal;
      }
      
      private static function onUserCancelledOrder() : void
      {
         CoinShopPopup.smPurchaceRequested = false;
         var coinShopPopup:CoinShopPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(CoinShopPopup.ID) as CoinShopPopup;
         if(coinShopPopup)
         {
            coinShopPopup.handleUserCancelled();
         }
         var qpPopup:QuickPurchaseSlingshotPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(QuickPurchaseSlingshotPopup.ID) as QuickPurchaseSlingshotPopup;
         if(qpPopup)
         {
            qpPopup.handleUserCancelled();
         }
      }
      
      private static function onOrderReceived() : void
      {
         var coinShopPopup:CoinShopPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(CoinShopPopup.ID) as CoinShopPopup;
         if(coinShopPopup)
         {
            coinShopPopup.handleOrderReceived();
         }
      }
      
      public static function initDataLoaded() : void
      {
         sInitDataLoaded = true;
         sSingleton.setFirstGameStateFacebook();
      }
      
      public static function isInitDataLoaded() : Boolean
      {
         if(sInitDataLoaded)
         {
            return true;
         }
         return false;
      }
      
      private function get levelManagerInternal() : FacebookLevelManager
      {
         return mLevelManager as FacebookLevelManager;
      }
      
      protected function initErrorsHandler(serverRoot:String, uncaughtErrorEvents:UncaughtErrorEvents, svnRevision:String, userID:String) : void
      {
         this.mUncaughtErrorsHandler = new UncaughtErrorHandlerFacebook(serverRoot,uncaughtErrorEvents,svnRevision,userID);
      }
      
      private function loadStandAloneData() : void
      {
      }
      
      protected function initEmbeddedPopupClasses() : void
      {
         var loader:Loader = new Loader();
         var context:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
         context.allowCodeImport = true;
         loader.loadBytes(new mEmbeddedPopupsBytes(),context);
      }
      
      private function onTrialPayClosed(completions:int, vcAmount:int, vcName:String = "") : void
      {
         FacebookGoogleAnalyticsTracker.trackShopProductEarnCompleted("TrialPay",vcAmount);
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         FacebookGoogleAnalyticsTracker.trackTransaction("TrialPay","In-app Shop Coins","TrialPay",vcName,vcAmount + " x",0,completions,0);
         ItemsInventory.instance.loadInventory();
         var ao:AnalyticsObject = new AnalyticsObject();
         ao.currency = "IVC";
         ao.iapType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
         ao.screen = FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU;
         ao.amount = vcAmount;
         ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_FB_OFFER_WALL;
         ao.itemType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
         FacebookAnalyticsCollector.getInstance().trackInventoryGainedEvent(false,ao.itemType,ao.amount,ao.gainType,ao.screen,ao.level,ao.itemType,ao.iapType,ao.paidAmount,ao.currency,ao.receiptId);
      }
      
      private function onMobilePricePointsExpired() : void
      {
         DataModelFriends(dataModel).mobilePricePoints.loadMobilePricePointItems();
      }
      
      protected function setup() : void
      {
         var stage3D:Stage3D = null;
         GoogleAnalyticsTracker.enabled = true;
         FacebookGoogleAnalyticsTracker.enabledVpv = false;
         var stage3Dcount:int = 0;
         try
         {
            stage3D = canvas.stage.stage3Ds[0];
            if(stage3D)
            {
               stage3Dcount = 1;
            }
         }
         catch(e:Error)
         {
         }
         if(stage3Dcount == 0)
         {
            FacebookGoogleAnalyticsTracker.trackError("no-stage3d");
         }
         sSingleton = this;
         FacebookGoogleAnalyticsTracker.trackFlashEvent(GoogleAnalyticsTracker.ACTION_FLASH_INITIALIZED);
         var contextMenu:ContextMenu = new ContextMenu();
         contextMenu.hideBuiltInItems();
         canvas.contextMenu = contextMenu;
         this.initServerVersionChecker();
         SoundEngine.addEventListener(SoundEngineErrorEvent.STREAM_ERROR,this.onSoundEngineStreamingSoundError);
         SoundEngine.addEventListener(SoundEngineEvent.STREAM_START,this.onSoundEngineStreamingStart);
         SoundEngine.addEventListener(SoundEngineEvent.STREAM_DATA_COMPLETE,this.onSoundEngineStreamingComplete);
      }
      
      protected function initServerVersionChecker() : void
      {
         this.mServerVersionChecker = new ServerVersionChecker("");
         this.mServerVersionChecker.start();
      }
      
      private function get accessToken() : String
      {
         return getFlashVar("accessToken") || this.mDebugAccessToken;
      }
      
      private function onSoundEngineStreamingSoundError(event:SoundEngineErrorEvent) : void
      {
         FacebookGoogleAnalyticsTracker.trackStreamingError(event.soundId,event.errorID);
      }
      
      private function onSoundEngineStreamingStart(event:SoundEngineEvent) : void
      {
         FacebookGoogleAnalyticsTracker.trackStreamingStart(event.soundId);
      }
      
      private function onSoundEngineStreamingComplete(event:SoundEngineEvent) : void
      {
         FacebookGoogleAnalyticsTracker.trackStreamingComplete(event.soundId);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function onGiftsSentToUsers(users:Array) : void
      {
         var user:String = null;
         if(!users)
         {
            return;
         }
         for each(user in users)
         {
            ExceptionUserIDsManager.instance.addGiftRequestToUser(user);
         }
      }
      
      private function onUrlUpdate(path:String) : void
      {
         var popup:GiftInboxPopup = null;
         if(this.mGameLoaded)
         {
            if(popupManager.isPopupInQueueById(GiftInboxPopup.ID) || popupManager.isPopupOpenById(GiftInboxPopup.ID))
            {
               GiftInboxPopup.loadGifts(false);
            }
            else
            {
               popup = new GiftInboxPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,false);
               popup.addEventListener(GiftInboxEvent.INBOX_CONTENT_AMOUNT_CHECKED,this.onInboxContentAmountChecked,false,0,true);
               popup.checkIsTheContentAmountChanged();
            }
         }
      }
      
      protected function onInboxContentAmountChecked(e:GiftInboxEvent) : void
      {
         var popup:IPopup = null;
         if(e.data.result == true)
         {
            popup = new GiftInboxPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,true);
            popupManager.openPopup(popup);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return XMLFactory.fromOctetStreamClass(mFacebookAssetMapBin);
      }
      
      override protected function getUIData() : XML
      {
         var vanillaUIData:XML = super.getUIData();
         var facebookUIData:XML = XMLFactory.fromOctetStreamClass(mFacebookViewLibraryBin);
         this.copyNodesBetweenTrees(facebookUIData,vanillaUIData,["Views","Components"],true);
         return vanillaUIData;
      }
      
      override protected function getPopupData() : XML
      {
         var out_vanillaPopupData:XML = super.getPopupData();
         var facebookPopupData:XML = XMLFactory.fromOctetStreamClass(mFacebookPopupLibraryBin);
         this.copyNodesBetweenTrees(facebookPopupData,out_vanillaPopupData,["Popups"],true);
         return out_vanillaPopupData;
      }
      
      override protected function getItemDataXML() : XML
      {
         var vanillaItemData:XML = super.getItemDataXML();
         var facebookItemData:XML = XMLFactory.fromOctetStreamClass(mFacebookItemDataTableBin);
         var treesToCopy:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers","Slingshot_Bonus_Damages_Multipliers","Slingshot_Bird_Materials","Slingshot_Bird_Collision_Effects","Powerup_Damage_Multipliers","Powerup_Velocity_Multipliers","Material_Damage_Factor_Limits"];
         this.copyNodesBetweenTrees(facebookItemData,vanillaItemData,treesToCopy);
         return vanillaItemData;
      }
      
      override protected function loadItems() : void
      {
         super.loadItems();
         this.initBlocks();
      }
      
      protected function initBlocks() : void
      {
         this.levelItemManagerFriends.initializeCustomTournamentBlocks(LuaUtils.luaToObject(this.packageManagerFriends.getFile(BRAND_LUA,"chaptertournament")),LuaUtils.luaToObject(this.packageManagerFriends.getFile("frommobile.lua","chaptertournament")),LuaUtils.luaToObject(this.packageManagerFriends.getFile("slingshots.lua","core")));
         for(var i:int = 0; i < this.packageManagerFriends.blockDefinitionCount; i++)
         {
            this.levelItemManagerFriends.loadBlocksFromLua(this.packageManagerFriends.getBlockDefinitions(i));
         }
      }
      
      override protected function getLevelBackgroundXML() : XML
      {
         var vanillaLevelBackgrounds:XML = super.getLevelBackgroundXML();
         var facebookLevelBackgrounds:XML = XMLFactory.fromOctetStreamClass(mFacebookLevelBackgroundsBin);
         this.copyNodesBetweenTrees(facebookLevelBackgrounds,vanillaLevelBackgrounds,["Backgrounds"]);
         return vanillaLevelBackgrounds;
      }
      
      protected function initDataFromServer() : void
      {
         if(stage.loaderInfo.url.indexOf("angrybirds-facebook-dev") > -1 || stage.loaderInfo.url.indexOf("angrybirds-friends-new-feature") > -1)
         {
            smBeaconAppID = BEACON_DEV_APP_ID;
         }
         var facebookUserId:String = stage.loaderInfo.parameters.userId;
         var facebookAccessToken:String = stage.loaderInfo.parameters.accessToken;
         var facebookAccessTokenExpiresIn:String = stage.loaderInfo.parameters.tokenExpiresIn;
         var acquisitionChannel:String = stage.loaderInfo.parameters.acquisitionChannel;
         if(!DEBUG_MODE_ENABLED)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               FacebookGoogleAnalyticsTracker.trackFlashVarMissing("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               FacebookGoogleAnalyticsTracker.trackFlashVarMissing("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               FacebookGoogleAnalyticsTracker.trackFlashVarMissing("tokenExpiresIn");
            }
         }
         if(!facebookUserId)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Did not receive a facebook user ID.\nError code: " + ErrorCode.NO_FACEBOOK_ID));
         }
         FacebookGraphRequestFriends.accessToken = this.accessToken;
         this.mGraphAPICaller = new GraphAPICaller(stage.loaderInfo.parameters.accessToken || this.mDebugAccessToken);
         var environment:String = RovioAccessToken.ENV_CLOUD;
         this.mAnalyticsUrl = "https://" + environment + ".rovio.com";
         if(stage.loaderInfo.parameters.analyticsUrl)
         {
            this.mAnalyticsUrl = stage.loaderInfo.parameters.analyticsUrl;
            if(this.mAnalyticsUrl.indexOf(RovioAccessToken.ENV_SMOKE) != -1)
            {
               environment = RovioAccessToken.ENV_SMOKE;
            }
            else if(this.mAnalyticsUrl.indexOf(RovioAccessToken.ENV_MIST) != -1)
            {
               environment = RovioAccessToken.ENV_MIST;
            }
            else
            {
               environment = RovioAccessToken.ENV_CLOUD;
            }
         }
         this.mAnalyticsUserId = stage.loaderInfo.parameters.userId;
         this.dataModelFriends.rovioAccessToken = new FriendsRovioAccessToken(facebookUserId,facebookAccessToken,environment);
         this.dataModelFriends.rovioAccessToken.requestAccessToken();
         InitDataLoader.load(facebookUserId,facebookAccessToken,facebookAccessTokenExpiresIn,acquisitionChannel,this.dataModelFriends.rovioAccessToken);
      }
      
      public function getAssetsRoot() : String
      {
         return this.getUrlAsset();
      }
      
      override protected function getUrlAsset() : String
      {
         return "";
      }
      
      public function getBuildNumber() : String
      {
         return stage.loaderInfo.parameters.buildNumber || "";
      }
      
      override protected function initialize() : void
      {
         this.setup();
         super.initialize();
         smLevelToOpen = stage.loaderInfo.parameters.levelId;
         sPauseManager.addEventListener(Event.INIT,this.onPauseManagerInit);
         sPauseManager.addEventListener(Event.COMPLETE,this.onPauseManagerComplete);
         ItemsInventory.instance.setLevelManager(mLevelManager);
         this.initDataFromServer();
         this.initializeThemeSongManager();
         setSoundsEnabled(false);
         ExternalInterfaceHandler.addCallback("purchaseComplete",this.onPurchaseCompleted);
         ExternalInterfaceHandler.addCallback("purchaseFailed",this.onPurchaseFailed);
         ExternalInterfaceHandler.addCallback("giftsSentToUsers",this.onGiftsSentToUsers);
         ExternalInterfaceHandler.addCallback("onUrl",this.onUrlUpdate);
         ExternalInterface.call("trapMouse","if (window.addEventListener) window.addEventListener(\'DOMMouseScroll\', handleWheelEvent, false); window.onmousewheel = document.onmousewheel = handleWheelEvent; function handleWheelEvent(e){e.preventDefault();}");
         this.initializeAnalyticsCollector();
         this.initializeCampaigns();
      }
      
      private function initializeDynamicNotificationsService() : void
      {
         this.mDynamicNotificationService = new DynamicNotificationService();
         (this.mDynamicNotificationService as DynamicNotificationService).addEventListener(Event.COMPLETE,this.onNotificationsLoaded);
         this.mDynamicNotificationService.loadActiveNotifications();
      }
      
      private function onNotificationsLoaded(event:Event) : void
      {
         var dn:DynamicNotification = null;
         var popup:IPopup = null;
         var popupOnClose:IPopup = null;
         var seenNotifications:Array = new Array();
         for each(dn in this.mDynamicNotificationService.notifications)
         {
            if(dn.isLeagueTutorial)
            {
               popupOnClose = new LeagueEditProfile(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.REPLACE);
               popup = new LeagueTutorialPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,null,null,popupOnClose);
            }
            else
            {
               popup = new DynamicNotificationPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,dn);
            }
            popupManager.openPopup(popup);
            seenNotifications.push(dn.id);
         }
         if(seenNotifications.length > 0)
         {
            this.mDynamicNotificationService.updateNotification(seenNotifications);
         }
      }
      
      private function initializeAnalyticsCollector() : void
      {
         var userId:String = this.mAnalyticsUserId;
         var mAccessToken:String = this.accessToken;
         var fbac:FacebookAnalyticsCollector = FacebookAnalyticsCollector.getInstance();
         fbac.init(userId,mAccessToken,false);
         if(this.mAnalyticsUrl && this.mAnalyticsUrl.indexOf("https://") == -1)
         {
            this.mAnalyticsUrl = "https://" + this.mAnalyticsUrl;
         }
         fbac.analyticsUrl = this.mAnalyticsUrl;
      }
      
      private function initializeCampaigns() : void
      {
         TournamentCampaignManager.loadCampaigns();
      }
      
      private function onPurchaseCompleted(orderId:String, amount:Number, signedRequest:String, status:String) : void
      {
         if(status == "completed")
         {
            ItemsInventory.instance.loadInventory(amount > 0);
         }
      }
      
      private function onPurchaseFailed() : void
      {
         CoinShopPopup.smPurchaceRequested = false;
         var coinShopPopup:CoinShopPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(CoinShopPopup.ID) as CoinShopPopup;
         if(coinShopPopup)
         {
            coinShopPopup.handleUserCancelled();
         }
      }
      
      protected function initializeThemeSongManager() : void
      {
         this.mThemeSoundManager = new FacebookThemeSongs(new ThemeMusicManager());
      }
      
      public function getThemeMusicManager() : ThemeMusicManager
      {
         return this.mThemeSoundManager.themeSongManager;
      }
      
      protected function initFriendsBar() : void
      {
         this.mFriendsBar = new FriendsBar(sHighScoreListManager,SERVER_ROOT,(mDataModel.userProgress as FacebookUserProgress).userID,this.levelManagerInternal);
         this.mFriendsbarContainer.addChild(this.mFriendsBar);
         this.mFriendsBar.height = stage.stageHeight;
         this.mFriendsBar.x = stage.stageWidth - 180;
         this.mFriendsBar.addEventListener(FriendsBarEvent.INVITE_FRIENDS_REQUESTED,this.onInviteFriendsRequested);
         this.mFriendsBar.addEventListener(FriendsBarEvent.SHOP_REQUESTED,this.onShopRequested);
         this.mFriendsBar.addEventListener(FriendsBarEvent.AVATAR_EDITOR_REQUESTED,this.onAvatarEditorRequested);
         this.mFriendsBar.addEventListener(FriendsBarEvent.FULLSCREEN_TOGGLE_REQUESTED,this.onFullscreenToggleRequested);
         this.mFriendsBar.addEventListener(FriendsBarEvent.INFO_REQUESTED,this.onInfoRequested);
         this.mFriendsBar.addEventListener(FriendsBarEvent.TUTORIAL_REQUESTED,this.onTutorialRequested);
         this.mFriendsBar.addEventListener(FriendsBarEvent.MUTE_TOGGLE_REQUESTED,this.onMuteToggleRequested);
         this.mFriendsBar.addEventListener(FriendsBarEvent.GIFT_POPUP_REQUESTED,this.onGiftPopupRequested);
         this.mFriendsBar.addEventListener(FriendsBarEvent.BRAG,this.onBrag);
         this.mFriendsBar.addEventListener(FriendsBarEvent.PLAY_LEVEL,this.onPlayLevelFromBrag);
         this.mFriendsBar.addEventListener(FriendsBarEvent.LEAGUE_INFO_SETTINGS_REQUESTED,this.onLeagueInfoSettingsRequested);
         this.mInviteFriendsPopup = new InviteFriendsPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
         this.mInviteFriendsPopup.addEventListener(FriendsBarEvent.INVITE_FRIENDS_REQUESTED,this.onInviteFriendsRequested);
         this.mInviteFriendsPopup.addEventListener(FriendsBarEvent.INVITE_FRIENDS_SENT,this.onFriendsInviteSent);
         this.mBragPauseTimer = null;
      }
      
      protected function onLeagueInfoSettingsRequested(event:Event) : void
      {
         var leagueInfoPopup:IPopup = new LeagueInfoPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
         popupManager.openPopup(leagueInfoPopup);
      }
      
      protected function onPauseManagerInit(e:Event) : void
      {
         FacebookProfilePicture.setAllVisibility(false);
      }
      
      protected function onPauseManagerComplete(e:Event) : void
      {
         FacebookProfilePicture.setAllVisibility(true);
      }
      
      public function setFriendsBarData(type:int, dataArray:Array = null) : void
      {
         this.mFriendsBar.setScoreListData(type,dataArray);
      }
      
      public function setPopupButtonFriendsBar(buttonState:String) : void
      {
         this.mFriendsBar.updatePopupButtonStates(buttonState);
      }
      
      public function setVisibleButtonFriendsBar(buttonState:String) : void
      {
         this.mFriendsBar.updateInfoButtonState(buttonState);
         this.mFriendsBar.updatePopupButtonStates(buttonState);
      }
      
      override protected function initializeLevelMain() : LevelMain
      {
         return new FacebookLevelMain(stage,mLevelItemManager,mLevelThemeManager,mLevelManager);
      }
      
      override protected function initializeLevelItemManager() : LevelItemManager
      {
         return new LevelItemManagerFriends();
      }
      
      override protected function initializeLevelThemeManager() : LevelThemeBackgroundManager
      {
         return new LevelThemeBackgroundManagerFriends();
      }
      
      override protected function initializeDataModel() : void
      {
         mDataModel = new DataModelFriends();
      }
      
      override protected function initializeLevelManager() : LevelManager
      {
         return new FacebookLevelManager();
      }
      
      override protected function initializePackageManager() : PackageManager
      {
         return new PackageManagerFriends(mLevelManager,LevelItemManagerSpace(mLevelItemManager));
      }
      
      override protected function initializeUserProgress() : void
      {
         mDataModel.userProgress = new FacebookUserProgress(SERVER_ROOT,mLevelManager);
      }
      
      override protected function initializeStates() : void
      {
         addState(new StateFacebookLevelLoad(mLevelManager,LevelItemManagerSpace(mLevelItemManager),localizationManager,false));
         addState(new StateFacebookStart(mLevelManager,localizationManager,false));
         addState(new StateFacebookMainMenuSelection(mLevelManager,localizationManager,false));
         addState(new StateFacebookEpisodeSelection(mLevelManager,localizationManager,false));
         addState(new StateFacebookLevelSelection(mLevelManager,localizationManager,false));
         addState(new StateFacebookPlay(mLevelManager,localizationManager,false));
         addState(new StateFacebookLevelEnd(mLevelManager,localizationManager,false));
         addState(new StateFacebookLevelEndEagle(mLevelManager,localizationManager,false));
         addState(new StateFacebookLevelEndFail(mLevelManager,localizationManager,false));
         addState(new StateFacebookCutScene(mLevelManager,localizationManager,false));
         addState(new StateFacebookCredits(mLevelManager,localizationManager,false));
         addState(new StateFacebookGoldenEggs(mLevelManager,localizationManager,false));
         addState(new StateFacebookWonderlandLevelSelection(mLevelManager,localizationManager,false));
         addState(new StateTournamentCutScene(mLevelManager,localizationManager,false));
         addState(new StateTournamentLevelEnd(mLevelManager,localizationManager,false));
         addState(new StateTournamentLevelEndFail(mLevelManager,localizationManager,false));
         addState(new StateTournamentLevelLoad(mLevelManager,LevelItemManagerSpace(mLevelItemManager),localizationManager,false));
         addState(new StateTournamentPlay(mLevelManager,localizationManager,false));
         addState(new StateTournamentLevelSelection(mLevelManager,localizationManager,false));
         addState(new StateOverlappingTournamentsMenu(mLevelManager,localizationManager));
         addState(new StateLastWeeksTournamentResults(mLevelManager,localizationManager,false));
         addState(new StateTournamentCutScenePlain(mLevelManager,localizationManager,false));
         addState(new StateTournamentResults(mLevelManager,false,localizationManager));
      }
      
      override protected function createStateObject(stateClass:Class) : StateBase
      {
         if(stateClass == StateTournamentLevelLoad)
         {
            return new stateClass(mLevelManager,LevelItemManagerSpace(mLevelItemManager),localizationManager);
         }
         return new stateClass(mLevelManager,localizationManager);
      }
      
      public function openWonderland() : void
      {
         mLevelManager.selectEpisode(6);
         setNextState(StateFacebookWonderlandLevelSelection.STATE_NAME);
      }
      
      override protected function setupPopupManager() : void
      {
         mPopupContainer = new MovieClip();
         mCanvas.stage.addChild(mPopupContainer);
         mPopupManager = new PopupManagerFriends(mPopupContainer,localizationManager,this);
         mPopupManager.addEventListener(PopupEvent.OPEN,onEnginePauseRequest);
         mPopupManager.addEventListener(PopupEvent.CLOSE,onEngineResumeRequest);
         mTutorialPopupManager = new TutorialPopupManagerFacebook(mPopupManager,mDataModel,PopupLayerIndex.LAYER_INDEX_SCREEN,new FacebookTutorialLinkageSolver(),new FacebookTutorialMapping());
         mPopupManager.addLayer(PopupLayerIndexFacebook.NORMAL,true,new Rectangle(0,0,0,0));
         mPopupManager.addLayer(PopupLayerIndexFacebook.INFO,true,new Rectangle(0,0,0,0));
         mPopupManager.addLayer(PopupLayerIndexFacebook.ALERT,true,new Rectangle(0,0,0,0));
         mPopupManager.addLayer(PopupLayerIndexFacebook.ERROR,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initStateLoad() : StateLoad
      {
         if(!DEBUG_MODE_ENABLED)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               FacebookGoogleAnalyticsTracker.trackFlashVarMissing("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         try
         {
            Security.allowDomain("*");
            Security.allowInsecureDomain("*");
         }
         catch(e:Error)
         {
         }
         var assetFolder:String = "/flash/";
         if(!stage.loaderInfo.parameters.assetsUrl)
         {
            assetFolder = "";
         }
         FileNameMapper.initialize(stage.loaderInfo.parameters.assetsUrl,assetFolder,"");
         return new StateFacebookLoad(localizationManager,true,StateLoad.STATE_NAME,getMinLoadingScreenTime(),"","");
      }
      
      override protected function onGraphicsInitialized(e:Event) : void
      {
         var levelId:String = null;
         sInitComplete = true;
         var nextState:String = StateFacebookMainMenuSelection.STATE_NAME;
         if(smLevelToOpen)
         {
            if(smLevelToOpen.indexOf("2000-") > -1)
            {
               nextState = StateTournamentLevelSelection.STATE_NAME;
            }
            else if(ABTestingModel.getGroup(ABTestingModel.AB_TEST_CASE_WEB_STORY_MODE) == ABTestingModel.AB_TEST_GROUP_WEB_STORY_MODE_OFF)
            {
               nextState = StateFacebookMainMenuSelection.STATE_NAME;
               smLevelToOpen = null;
            }
            else
            {
               TournamentModel.instance.loadData();
               levelId = mLevelManager.getValidLevelId(smLevelToOpen);
               if(levelId != smLevelToOpen)
               {
                  FacebookGoogleAnalyticsTracker.trackInvalidLevel(smLevelToOpen);
               }
               smLevelToOpen = null;
               if(mDataModel.userProgress.isLevelOpen(levelId))
               {
                  this.setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY_STORY_LEVEL);
                  this.setNextStateToLevel(levelId);
                  nextState = null;
               }
               else
               {
                  nextState = StateFacebookEpisodeSelection.STATE_NAME;
               }
            }
         }
         var fb_source:String = getFlashVar("fb_source");
         if(fb_source && fb_source != "null")
         {
            FacebookAnalyticsCollector.getInstance().trackNotificationClickedEvent(fb_source,"");
         }
         if(nextState)
         {
            setNextState(nextState);
         }
      }
      
      public function setNextStateToLevel(levelId:String) : void
      {
         levelId = mLevelManager.getValidLevelId(levelId);
         mLevelManager.loadLevel(levelId);
         if(levelId.indexOf("2000-") > -1)
         {
            setNextState(StateTournamentCutScene.STATE_NAME);
         }
         else
         {
            setNextState(StateCutScene.STATE_NAME);
         }
      }
      
      override public function setFirstGameState() : void
      {
         this.mGameLoaded = true;
         this.setFirstGameStateFacebook();
      }
      
      protected function setFirstGameStateOriginal() : void
      {
         super.setFirstGameState();
      }
      
      public function setFirstGameStateFacebook() : void
      {
         var key:Object = null;
         var popup:IPopup = null;
         var popupClass:Class = null;
         var rewardSlingshotData:Array = null;
         var abfLoader:ABFLoader = null;
         var urlReq:URLRequest = null;
         if(!this.mGameLoaded || !sInitDataLoaded)
         {
            return;
         }
         this.setFirstGameStateOriginal();
         TournamentModel.instance.setLevelManager(mLevelManager);
         TournamentModel.instance.addEventListener(TournamentEvent.UNCONCLUDED_TOURNAMENT_UPDATED,this.onUnconcludedTournamentLoaded);
         LeagueModel.instance.addEventListener(LeagueEvent.UNCONCLUDED_ALL_UPDATED,this.onUnconcludedAllLoaded);
         AvatarProfilePicture.sAvatarRenderer = new AvatarRenderer();
         AvatarProfilePicture.sAvatarRenderer.processQueue();
         this.initFriendsBar();
         SpinningWheelController.instance.init(popupManager);
         if(!LeagueModel.instance.active)
         {
            if(TournamentResultsPopup.hasResults)
            {
               popup = new TournamentResultsPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,true);
               popupManager.openPopup(popup);
            }
         }
         if(TournamentModel.instance.tournamentRules && TournamentModel.instance.tournamentRules.firstTimePopup)
         {
            popupClass = TournamentModel.instance.tournamentRules.firstTimePopup;
            popup = new popupClass(PopupLayerIndexFacebook);
            popupManager.openPopup(popup);
         }
         TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_INITIALIZED,this.onTournamentInfoInitialized);
         TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,this.onTournamentAssetLoaded);
         TournamentModel.instance.addEventListener(TournamentEvent.TOURNAMENT_EXPIRED,this.onTournamentExpired);
         if(GiftInboxPopup.hasInboxItems)
         {
            popup = new GiftInboxPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,true);
            popupManager.openPopup(popup);
         }
         if(ItemsInventory.instance.bundleHandler.isBundleClaimable(CoinShopTutorialPopup.FREE_COINS_BUNDLE))
         {
            popupManager.openPopup(new VirtualCurrencyTutorialPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
         }
         this.mFirstTimePayerPromotion = new FirstTimePayerPromotion();
         this.mFirstTimePayerPromotion.fetchIsPlayerEligible();
         this.mSlingshotBundleLoaders = new Vector.<ABFLoader>();
         for each(key in ItemsInventory.instance.bundleHandler.claimableBundles)
         {
            if(ItemsInventory.instance.bundleHandler.isBundleClaimable(key.toString().toUpperCase()))
            {
               switch(key.toString().toUpperCase())
               {
                  case BundleType.sMushroomIntro.definition.toUpperCase():
                     popupManager.openPopup(new ClaimBundlePopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,BundleType.sMushroomIntro));
               }
               for each(rewardSlingshotData in SlingshotRewardInfoPopup.REWARD_SLINGSHOT_DATA)
               {
                  if(rewardSlingshotData[SlingshotRewardInfoPopup.DATA_INDEX_SLINGSHOT_ID].toUpperCase() == key.toString().toUpperCase())
                  {
                     AngryBirdsBase.singleton.popupManager.openPopup(new SlingshotRewardInfoPopup(rewardSlingshotData[SlingshotRewardInfoPopup.DATA_INDEX_SLINGSHOT_ID],SlingshotRewardInfoPopup.TYPE_REWARD_CLAIMED));
                     abfLoader = new ABFLoader();
                     abfLoader.addEventListener(Event.COMPLETE,this.onSlingshotBundleDataLoaded);
                     abfLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onSlingshotBundleDataLoadError);
                     abfLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSlingshotBundleDataLoadError);
                     abfLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onSlingshotBundleDataLoadError);
                     abfLoader.dataFormat = URLLoaderDataFormat.TEXT;
                     this.mSlingshotBundleLoaders.push(abfLoader);
                     urlReq = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + rewardSlingshotData[SlingshotRewardInfoPopup.DATA_INDEX_SLINGSHOT_ID]);
                     urlReq.method = URLRequestMethod.GET;
                     abfLoader.load(urlReq);
                  }
               }
            }
         }
         resize(true);
         DataModelFriends(dataModel).mobilePricePoints.loadMobilePricePointItems();
         DataModelFriends(dataModel).shopListing.slingshots;
         this.initializeDynamicNotificationsService();
         if(DataModelFriends(dataModel).clientStorage.isLoading)
         {
            DataModelFriends(dataModel).clientStorage.addEventListener(Event.COMPLETE,this.onClientStorageLoadingCompleted);
         }
         else
         {
            this.onClientStorageLoadingCompleted(null);
         }
      }
      
      private function onTournamentAssetLoaded(event:TournamentEvent) : void
      {
         var blueprintItems:Array = null;
         var blueprintPackageLoader:PackageLoader = null;
         var backgroundData:XML = null;
         var luaObject:Object = null;
         var items:Array = null;
         var fn:Function = null;
         if(event.data.bluePrintPackLoader)
         {
            blueprintItems = this.levelItemManagerFriends.addBlueprintBlocks();
            blueprintPackageLoader = PackageLoader(event.data.bluePrintPackLoader);
            if(blueprintPackageLoader.spriteSheetContainer)
            {
               AngryBirdsEngine.addNewGraphics(blueprintPackageLoader.spriteSheetContainer,blueprintItems);
            }
            return;
         }
         var packageLoader:PackageLoader = PackageLoader(event.data.packLoader);
         var cb:Function = event.data.cb;
         var packName:String = "tournament_" + TournamentModel.instance.brandedTournamentAssetId;
         var backgroundFileName:String = "background.xml";
         var backgroundLoadedFromXML:Boolean = false;
         if(packageLoader.hasFile(backgroundFileName,packName))
         {
            backgroundData = new XML(packageLoader.getFile(backgroundFileName,packName));
            mLevelThemeManager.loadBackgroundXML(backgroundData);
            backgroundLoadedFromXML = true;
         }
         if(packageLoader.hasFile(BRAND_LUA,packName))
         {
            try
            {
               luaObject = LuaUtils.luaToObject(packageLoader.getFile(BRAND_LUA,packName));
               this.applyBrandShareButton(luaObject);
               items = this.levelItemManagerFriends.addBrandedBlocks(luaObject);
               if(luaObject.linkButton)
               {
                  TournamentCampaignManager.addCampaign(TournamentModel.instance.brandedTournamentAssetId,luaObject.linkButton);
               }
               if(!backgroundLoadedFromXML && luaObject.dynamicBlocks)
               {
                  (mLevelThemeManager as LevelThemeBackgroundManagerFriends).loadBackgroundsLua(luaObject.dynamicBlocks.themes,TournamentModel.instance.brandedTournamentAssetId);
               }
               TournamentModel.instance.specialData = luaObject.special;
               this.levelItemManagerFriends.loadSoundsFromLua(luaObject.audio);
               fn = function(e:Event):void
               {
                  cb();
               };
               if(packageLoader.spriteSheetContainer)
               {
                  AngryBirdsEngine.addNewGraphics(packageLoader.spriteSheetContainer,items,fn);
               }
            }
            catch(e:Error)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Tournament brand error: " + e.name + "\n" + e.errorID + "\n" + e.message));
            }
         }
         else
         {
            cb();
         }
      }
      
      private function applyBrandShareButton(luaObject:Object) : void
      {
         TournamentModel.instance.shareButtonData = luaObject.shareButton;
      }
      
      protected function onTournamentInfoInitialized(event:TournamentEvent) : void
      {
         if(this.levelItemManagerFriends && !sTournamentInitializedCheck)
         {
            sTournamentInitializedCheck = true;
            sTournamentDataLoaded = true;
            this.levelItemManagerFriends.replaceAnimationsForBrand(TournamentModel.instance.brandedTournamentAssetId);
         }
         var tournamentRules:TournamentRules = TournamentModel.instance.tournamentRules;
         var soundClassName:String = "THEME_MUSIC_" + tournamentRules.brandedFrameLabel;
         if(AssetCache.assetInCache(soundClassName))
         {
            this.mThemeSoundManager.registerSong(soundClassName);
         }
         this.playThemeMusic();
      }
      
      public function clearBrandedAssets() : void
      {
         if(this.levelItemManagerFriends)
         {
            this.levelItemManagerFriends.replaceAnimationsForBrand();
            sTournamentInitializedCheck = false;
         }
      }
      
      protected function showTournamentResultsPopup() : void
      {
         var popup:TournamentResultsPopup = new TournamentResultsPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,false);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function onUnconcludedTournamentLoaded(event:Event) : void
      {
         this.mTournamentLoadingResults[LOADING_RESULTS_INDEX_TOURNAMENT] = true;
         this.mTournamentLoadingResults[LOADING_RESULTS_INDEX_LEAGUE] = true;
         this.showTournamentResults();
      }
      
      protected function onUnconcludedAllLoaded(event:Event) : void
      {
         this.mTournamentLoadingResults[LOADING_RESULTS_INDEX_TOURNAMENT] = true;
         this.mTournamentLoadingResults[LOADING_RESULTS_INDEX_LEAGUE] = true;
         this.showTournamentResults();
      }
      
      private function showTournamentResults() : void
      {
         var loadingResult:Boolean = false;
         var currentPopup:IPopup = null;
         for each(loadingResult in this.mTournamentLoadingResults)
         {
            if(!loadingResult)
            {
               return;
            }
         }
         currentPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(DailyRewardPopup.ID);
         if(currentPopup)
         {
            currentPopup.addEventListener(PopupEvent.CLOSE,this.onDailyRewardClosed);
            return;
         }
         currentPopup = AngryBirdsBase.singleton.popupManager.getOpenPopupById(TournamentResultsPopup.ID);
         if(currentPopup)
         {
            return;
         }
         this.mTournamentLoadingResults = new Array();
         var tournamentInitSuccessful:Boolean = TournamentResultsPopup.initTournamentResultsPopup();
         if(tournamentInitSuccessful)
         {
            AngryBirdsFacebook.sHighScoreListManager.clearLevelScores();
            if(!LeagueModel.instance.active)
            {
               this.showTournamentResultsPopup();
            }
         }
      }
      
      private function onDailyRewardClosed(event:PopupEvent) : void
      {
         this.showTournamentResults();
      }
      
      protected function onDailyRewardConsumed(event:DailyRewardEvent) : void
      {
         var popup:IPopup = null;
         if(DailyRewardPopup.hasDailyReward)
         {
            popup = new DailyRewardPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,TournamentResultsPopup.hasResults);
            popupManager.openPopup(popup);
         }
      }
      
      protected function onClientStorageLoadingCompleted(e:Event) : void
      {
         var soundSetting:Object = DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.getData(ClientStorage.SOUND_SETTING_STORAGE_NAME);
         if(soundSetting)
         {
            setSoundsEnabled(soundSetting[0]);
         }
         else
         {
            setSoundsEnabled(true);
         }
         this.mFriendsBar.updateSoundButtonStates();
         var tabSetting:Object = DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.getData(ClientStorage.TAB_SELECTION_STORAGE_NAME);
         if(tabSetting)
         {
            if(LeagueModel.instance.active && tabSetting[0] == FriendsBar.TAB_LEAGUE)
            {
               this.mFriendsBar.changeScoreList(FriendsBar.SCORE_LIST_TYPE_LEAGUE);
            }
            else
            {
               this.mFriendsBar.changeScoreList(FriendsBar.SCORE_LIST_EMPTY);
            }
         }
         this.startInitialShopItemLoading(null);
         if(this.mFriendRequestGameStartPopup)
         {
            if(!DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.hasItemBeenSeen(this.mFriendRequestGameStartPopup.getClientStorageName()))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(this.mFriendRequestGameStartPopup);
               DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.SEEN_ITEMS_STORAGE_NAME,[this.mFriendRequestGameStartPopup.getClientStorageName()]);
            }
            else
            {
               this.mFriendRequestGameStartPopup = null;
            }
         }
      }
      
      private function startInitialShopItemLoading(e:Event) : void
      {
         DataModelFriends(dataModel).clientStorage.removeEventListener(Event.COMPLETE,this.startInitialShopItemLoading);
         DataModelFriends(dataModel).currencyModel.removeEventListener(Event.COMPLETE,this.startInitialShopItemLoading);
         if(DataModelFriends(dataModel).currencyModel.isLoaded)
         {
            DataModelFriends(dataModel).shopListing.loadStoreItems();
            DataModelFriends(dataModel).avatarCreatorItemListing.loadItems();
         }
         else
         {
            DataModelFriends(dataModel).currencyModel.addEventListener(Event.COMPLETE,this.startInitialShopItemLoading);
         }
      }
      
      protected function onTournamentExpired(event:Event) : void
      {
         this.delayTournamentExpiredLogic = setInterval(this.handleTournamentExpired,1000);
      }
      
      private function handleTournamentExpired() : void
      {
         if(TournamentModel.instance.isOverlappingTournamentsEnabled())
         {
            StateOverlappingTournamentsMenu.forceRefreshOverlappingTournamentData();
         }
         if(getCurrentState() != StateTournamentResults.STATE_NAME && getCurrentState() != StateTournamentLevelSelection.STATE_NAME && getCurrentState() != StateTournamentPlay.STATE_NAME && !TournamentModel.instance.hasCheckedTournamentExpired && TournamentModel.instance.getSecondsLeft() <= 0)
         {
            if(!TournamentModel.instance.isOverlappingTournamentsEnabled())
            {
               StateTournamentLevelSelection.checkTheTournamentForResults(TournamentModel.instance.currentTournament.id);
            }
            TournamentModel.instance.clearPreviousTournamentData();
            TournamentModel.instance.hasCheckedTournamentExpired = true;
            LeagueModel.instance.clearPreviousLeagueData();
            AngryBirdsFacebook.sHighScoreListManager.clearLevelScores();
            CachedFacebookFriends.challengedIDs = new Array();
            sTournamentInitializedCheck = false;
            (dataModel as DataModelFriends).shopListing.emptyData();
            if(!ItemsInventory.instance.isLoading)
            {
               ItemsInventory.instance.loadInventory();
            }
            if(TournamentModel.instance.currentTournament)
            {
               TournamentModel.instance.currentTournament.brandedTournamentAssetId = null;
            }
            smLoadLeaguePreviousData = true;
         }
         clearInterval(this.delayTournamentExpiredLogic);
      }
      
      public function initHighScoreListManager(dataObject:Object) : void
      {
         if(!sHighScoreListManager)
         {
            sHighScoreListManager = new HighScoreListManager(SERVER_ROOT,(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName);
         }
         sHighScoreListManager.injectData(dataObject);
         var count:int = FriendsDataCache.getNumberOfPlayingFriends();
         if(count >= 0)
         {
            FacebookGoogleAnalyticsTracker.trackFriendCount(count);
         }
      }
      
      override protected function resizeViews(width:int, height:int, disableScaling:Boolean = false) : void
      {
         var originalWidth:int = width;
         if(this.mFriendsBar)
         {
            width -= 180;
            this.mFriendsBar.x = width;
            this.mFriendsBar.height = height;
         }
         super.resizeViews(width,height,disableScaling);
         this.setPopupViewSize(originalWidth,height);
      }
      
      public function setPopupViewSize(width:Number, height:Number) : void
      {
         popupManager.setViewSize(width,height);
      }
      
      protected function copyNodesBetweenTrees(sourceXML:XML, destinationXML:XML, treesToCopy:Array, deleteSameName:Boolean = false) : void
      {
         var treeName:String = null;
         var childNode:XML = null;
         for each(treeName in treesToCopy)
         {
            for each(childNode in sourceXML[treeName].*)
            {
               if(deleteSameName)
               {
                  delete destinationXML[treeName][childNode.name()];
               }
               if(!destinationXML[treeName][0])
               {
                  destinationXML.appendChild(sourceXML[treeName]);
               }
               else
               {
                  destinationXML[treeName].appendChild(childNode);
               }
            }
         }
      }
      
      protected function onInviteFriendsRequested(e:FriendsBarEvent) : void
      {
         var requireReceipt:Boolean = false;
         var userIDs:String = null;
         var origin:String = null;
         var amountOfInvitedUsers:int = 0;
         if(e.data != null)
         {
            exitFullScreen();
            requireReceipt = false;
            if(e.data.hasOwnProperty("requireReceipt"))
            {
               requireReceipt = e.data.requireReceipt;
            }
            userIDs = e.data.userId;
            origin = "SIDEBAR";
            if(e.data.hasOwnProperty("origin"))
            {
               origin = e.data.origin;
            }
            amountOfInvitedUsers = userIDs.match(/,/g).length + 1;
            FacebookAnalyticsCollector.getInstance().trackInvitationSent(amountOfInvitedUsers,origin);
            ExternalInterfaceHandler.performCall("updateSessionToken",SessionRetryingURLLoader.sessionToken);
            ExternalInterfaceHandler.performCall("flashInviteFriendsHandler",userIDs,requireReceipt,OpenGraphData.getObjectId(OpenGraphData.INVITE));
         }
         else
         {
            FacebookGoogleAnalyticsTracker.trackInviteGenericClicked();
            popupManager.openPopup(this.mInviteFriendsPopup);
         }
      }
      
      protected function onFriendsInviteSent(e:FriendsBarEvent) : void
      {
         if(e.data != null)
         {
            this.friendsBar.updateInvitePlates(e.data);
         }
      }
      
      protected function onShopRequested(e:FriendsBarEvent) : void
      {
         var popup:TabbedShopPopup = new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
         popupManager.openPopup(popup);
         popup.addEventListener(PopupEvent.CLOSE_COMPLETE,this.onShopPopupClosed);
      }
      
      protected function onAvatarEditorRequested(e:FriendsBarEvent) : void
      {
         var popup:AvatarCreatorPopup = new AvatarCreatorPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
         popupManager.openPopup(popup);
         popup.addEventListener(PopupEvent.CLOSE_COMPLETE,this.onAvatarCreatorPopupClosed);
      }
      
      protected function onAvatarCreatorPopupClosed(event:Event) : void
      {
         this.mFriendsBar.updateAvatarShopButton(DataModelFriends(dataModel).hasAvatarShopNewItems);
      }
      
      protected function onShopPopupClosed(event:Event) : void
      {
         this.updateFriendsbarShopButton();
      }
      
      public function updateFriendsbarShopButton() : void
      {
         this.mFriendsBar.updateShopButton();
      }
      
      protected function onFullscreenToggleRequested(e:Event) : void
      {
         toggleFullScreen();
      }
      
      protected function onInfoRequested(e:FriendsBarEvent) : void
      {
         mActiveState.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function onTutorialRequested(e:FriendsBarEvent) : void
      {
         if(mActiveState is StatePlay)
         {
            StatePlay(mActiveState).showTutorials();
         }
      }
      
      protected function onGiftPopupRequested(e:FriendsBarEvent) : void
      {
         var popup:GiftInboxPopup = new GiftInboxPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,true);
         popupManager.openPopup(popup);
      }
      
      protected function onBrag(e:FriendsBarEvent) : void
      {
         var levelScoreBrag:LevelScorePlate = null;
         var position:int = 0;
         var bragLevel:String = null;
         var episodeId:String = null;
         var actualLevelNumber:String = null;
         var tournamentLevelIndex:int = 0;
         if(!this.mBragPauseTimer)
         {
            this.mBragPauseTimer = new Timer(1000);
            this.mBragPauseTimer.addEventListener(TimerEvent.TIMER,this.onBragPauseTimer);
            this.mBragPauseTimer.start();
            exitFullScreen();
            levelScoreBrag = e.data as LevelScorePlate;
            position = levelScoreBrag.userLevelScoreVO.rank - 1;
            FacebookGoogleAnalyticsTracker.trackBragClicked(position.toString());
            bragLevel = mLevelManager.currentLevel != null ? mLevelManager.currentLevel : mLevelManager.previousLevel;
            episodeId = bragLevel.substr(0,bragLevel.indexOf("-"));
            actualLevelNumber = FacebookLevelManager(mLevelManager).getFacebookNameFromLevelId(bragLevel);
            tournamentLevelIndex = TournamentModel.instance.levelIDs.indexOf(bragLevel);
            if(tournamentLevelIndex > -1)
            {
               actualLevelNumber = String(TournamentModel.instance.getLevelActualNumber(bragLevel));
            }
            ExternalInterfaceHandler.performCall("updateSessionToken",SessionRetryingURLLoader.sessionToken);
            ExternalInterfaceHandler.performCall("flashBrag",levelScoreBrag.userLevelScoreVO.userId,episodeId,bragLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + actualLevelNumber,actualLevelNumber,OpenGraphData.getObjectId(OpenGraphData.BRAG));
         }
      }
      
      private function onBragPauseTimer(e:TimerEvent) : void
      {
         if(this.mBragPauseTimer)
         {
            this.mBragPauseTimer.stop();
            this.mBragPauseTimer.removeEventListener(TimerEvent.TIMER,this.onBragPauseTimer);
            this.mBragPauseTimer = null;
         }
      }
      
      protected function onPlayLevelFromBrag(e:FriendsBarEvent) : void
      {
         var targetLevelId:String = e.target.data.lvl;
         var levelId:String = mLevelManager.getValidLevelId(targetLevelId);
         if(levelId != targetLevelId)
         {
            FacebookGoogleAnalyticsTracker.trackInvalidLevel(targetLevelId);
         }
         if(mDataModel.userProgress.isLevelOpen(levelId))
         {
            mLevelManager.loadLevel(levelId);
            setNextState(StateCutScene.STATE_NAME);
            return;
         }
      }
      
      protected function onMuteToggleRequested(e:FriendsBarEvent) : void
      {
         var musicManager:ThemeMusicManager = null;
         var mySO:SharedObject = null;
         setSoundsEnabled(!getSoundsEnabled());
         if(getSoundsEnabled())
         {
            if(getCurrentState() == StatePlay.STATE_NAME)
            {
               if(!AngryBirdsEngine.isPaused)
               {
                  AngryBirdsEngine.smLevelMain.background.playAmbientSound();
               }
            }
            else if(this.isOnMenu())
            {
               musicManager = AngryBirdsFacebook.sSingleton.getThemeMusicManager();
               musicManager.playSong(FacebookThemeSongs.themeSongName);
            }
         }
         try
         {
            mySO = SharedObject.getLocal(LOCAL_STORAGE,LOCAL_STORAGE_FOLDER);
            mySO.data.useSounds = sSoundsEnabled;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function newTournamentUserScore(level:String, newScore:int) : Boolean
      {
         var levelObject:Object = null;
         var o:Object = null;
         var stars:int = (mDataModel.userProgress as FacebookUserProgress).getStarsForLevel(level,newScore);
         var userScoreResultObject:Object = this.updateBeatenUsers(newScore,stars,0,true);
         var totalScore:Number = 0;
         if(TournamentModel.instance && TournamentModel.instance.levelScores)
         {
            levelObject = null;
            for each(o in TournamentModel.instance.levelScores)
            {
               if(o.l == level)
               {
                  o.p = newScore;
                  o.r = !!userScoreResultObject.rankAfterUpdate ? userScoreResultObject.rankAfterUpdate : 0;
                  levelObject = o;
               }
               totalScore += newScore;
            }
            if(!levelObject)
            {
               levelObject = new Object();
               levelObject.l = level;
               levelObject.p = newScore;
               levelObject.r = !!userScoreResultObject.rankAfterUpdate ? userScoreResultObject.rankAfterUpdate : 0;
               TournamentModel.instance.levelScores.push(levelObject);
               totalScore += newScore;
            }
         }
         if(userScoreResultObject.rankAfterUpdate)
         {
            (mDataModel.userProgress as FacebookUserProgress).setTournamentRankForLevel(level,userScoreResultObject.rankAfterUpdate);
         }
         if(LeagueModel.instance.active)
         {
            if(userScoreResultObject.leagueRankAfterUpdate < userScoreResultObject.leagueOriginalRank)
            {
               (mDataModel.userProgress as FacebookUserProgress).setLeagueRankForLevel(level,userScoreResultObject.leagueRankAfterUpdate);
               return true;
            }
            return false;
         }
         return false;
      }
      
      public function newUserScore(level:String) : void
      {
         var score:int = mDataModel.userProgress.getScoreForLevel(level);
         var stars:int = mDataModel.userProgress.getStarsForLevel(level);
         var mEagle:int = mDataModel.userProgress.getEagleScoreForLevel(level);
         var userScoreResultObject:Object = this.updateBeatenUsers(score,stars,mEagle);
         if(userScoreResultObject.rankAfterUpdate)
         {
            (mDataModel.userProgress as FacebookUserProgress).setRankForLevel(level,userScoreResultObject.rankAfterUpdate);
         }
      }
      
      private function updateBeatenUsers(score:int, stars:int, mEagle:int = 0, isTournament:Boolean = false) : Object
      {
         return this.friendsBar.userNewScore(mLevelManager.currentLevel,score,stars,mEagle,isTournament);
      }
      
      public function get friendsBar() : FriendsBar
      {
         return this.mFriendsBar;
      }
      
      public function get serverVersionChecker() : ServerVersionChecker
      {
         return this.mServerVersionChecker;
      }
      
      public function performServerVersionCheck() : void
      {
         if(this.mServerVersionChecker)
         {
            this.mServerVersionChecker.checkServerVersionNow();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Version: " + SERVER_VERSION + " " + SVN_REVISION;
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_GAME;
      }
      
      public function getIdentifier() : String
      {
         return GoogleAnalyticsTracker.ACTION_FLASH_LOADED;
      }
      
      override protected function initializeGame() : void
      {
         var time:int = Math.round(getTimer() / 1000);
         FacebookGoogleAnalyticsTracker.trackFlashEvent(GoogleAnalyticsTracker.ACTION_FLASH_LOADED,time.toString(),time);
         FacebookGoogleAnalyticsTracker.trackPageView(this,GoogleAnalyticsTracker.ACTION_FLASH_LOADED);
         this.mGameLoaded = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(event:KeyboardEvent) : void
      {
         super.onKeyDown(event);
         if(!this.mInput)
         {
            this.mInput = String.fromCharCode(event.keyCode);
         }
         else
         {
            this.mInput += String.fromCharCode(event.keyCode);
         }
         this.mInput = this.mInput.toLowerCase();
         if(this.mInput.length > 15)
         {
            this.mInput = this.mInput.substr(1);
         }
      }
      
      public function get firstTimePayerPromotion() : FirstTimePayerPromotion
      {
         return this.mFirstTimePayerPromotion;
      }
      
      override public function externalPause() : void
      {
      }
      
      override public function externalResume() : void
      {
      }
      
      protected function get levelItemManagerFriends() : LevelItemManagerFriends
      {
         return LevelItemManagerFriends(mLevelItemManager);
      }
      
      protected function get packageManagerFriends() : PackageManagerFriends
      {
         return PackageManagerFriends(mPackageManager);
      }
      
      override protected function getThemeMusicName() : String
      {
         return FacebookThemeSongs.themeSongName;
      }
      
      override public function playThemeMusic() : void
      {
         var musicManager:ThemeMusicManager = null;
         if(sTournamentDataLoaded || TournamentModel.instance.isOverlappingTournamentsEnabled())
         {
            if(this.isOnMenu())
            {
               musicManager = AngryBirdsFacebook.sSingleton.getThemeMusicManager();
               musicManager.playSongWithFade(FacebookThemeSongs.themeSongName);
            }
            this.mRequestThemeMusicPlaying = false;
         }
         else
         {
            this.mRequestThemeMusicPlaying = true;
         }
      }
      
      private function isThemeMusicPlaying() : Boolean
      {
         var themeChannel:SoundChannelController = SoundEngine.getChannelController("Channel_Theme");
         return themeChannel.playingSongsCount > 0;
      }
      
      override public function stopThemeMusic() : void
      {
         var sound:SoundEffect = null;
         var themeChannel:SoundChannelController = SoundEngine.getChannelController("Channel_Theme");
         if(themeChannel.playingSongsCount > 0)
         {
            sound = themeChannel.getSoundEffectByIndex(0);
            this.getThemeMusicManager().themeSongStopped(sound.positionMilliSeconds,sound.id);
         }
         super.stopThemeMusic();
      }
      
      public function get graphAPICaller() : GraphAPICaller
      {
         return this.mGraphAPICaller;
      }
      
      public function get dataModelFriends() : DataModelFriends
      {
         return DataModelFriends(dataModel);
      }
      
      override public function setState(state:String) : Boolean
      {
         var returnValue:Boolean = super.setState(state);
         if(returnValue)
         {
            this.setTrackableState(state);
         }
         return returnValue;
      }
      
      public function setTrackableState(state:String) : void
      {
         for(var i:int = 0; i < TRACKABLE_STATE_NAMES.length; i++)
         {
            if(TRACKABLE_STATE_NAMES[i][0] == state)
            {
               this.mRecentTrackableStateIndex = i;
               break;
            }
         }
      }
      
      public function getRecentTrackableState() : Object
      {
         var stateObject:Object = new Object();
         stateObject.state = TRACKABLE_STATE_NAMES[this.mRecentTrackableStateIndex][0];
         stateObject.screenName = TRACKABLE_STATE_NAMES[this.mRecentTrackableStateIndex][1];
         return stateObject;
      }
      
      private function onSlingshotBundleDataLoaded(e:Event) : void
      {
         var i:int = 0;
         if(e.currentTarget.data)
         {
            for(i = 0; i < this.mSlingshotBundleLoaders.length; i++)
            {
               if(this.mSlingshotBundleLoaders[i].data == e.currentTarget.data)
               {
                  this.mSlingshotBundleLoaders.splice(i,1);
                  break;
               }
            }
         }
         if(this.mSlingshotBundleLoaders.length == 0)
         {
            ItemsInventory.instance.loadInventory();
         }
      }
      
      private function onSlingshotBundleDataLoadError(e:ErrorEvent) : void
      {
         Log.log("Can\'t claim bundle: " + e.toString());
      }
      
      public function requestFriendListPermission(origin:String) : void
      {
         var questionEventData:Object = {"origin":origin};
         var questionPopup:QuestionPopup = new QuestionPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,"Friend list permission","In order to play with your friends, you need to allow access to your facebook friend info.\n" + "Do you want to play with your friends?",QuestionPopup.IMAGE_ID_DEFAULT,questionEventData,"FriendlistPermission");
         questionPopup.addEventListener(QuestionPopupEvent.EVENT_OK,this.onOKClickedFromQuestionPopup);
         if(this.mGameLoaded)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(questionPopup);
         }
         else
         {
            this.mFriendRequestGameStartPopup = questionPopup;
         }
      }
      
      private function onOKClickedFromQuestionPopup(e:QuestionPopupEvent) : void
      {
         FacebookGoogleAnalyticsTracker.trackAvatarShareClicked();
         AngryBirdsBase.singleton.exitFullScreen();
         ExternalInterfaceHandler.addCallback("gamePermissionRequestComplete",this.gamePermissionRequestComplete);
         ExternalInterfaceHandler.performCall("askForMissingGamePermissions");
         var origin:String = "";
         if(e.data.hasOwnProperty("origin"))
         {
            origin = e.data.origin;
         }
         FacebookAnalyticsCollector.getInstance().trackRequestFriendPermission(origin);
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            this.gamePermissionRequestComplete("true");
         }
         if(this.mFriendRequestGameStartPopup)
         {
            this.mFriendRequestGameStartPopup = null;
         }
      }
      
      private function gamePermissionRequestComplete(success:String) : void
      {
         ExternalInterfaceHandler.removeCallback("gamePermissionRequestComplete",this.gamePermissionRequestComplete);
         FriendsBar.FRIEND_LIST_PERMISSION_GRANTED = success == "true";
         if(FriendsBar.FRIEND_LIST_PERMISSION_GRANTED)
         {
            this.setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY);
            InitDataLoader.loadFriends();
         }
      }
      
      public function startAccessTokenRefreshTimer() : void
      {
         this.mAccessTokenRefreshTimer = new Timer(this.dataModelFriends.rovioAccessToken.expiresIn * 1000,1);
         this.mAccessTokenRefreshTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onAccessTokenRefreshTimerComplete);
         this.mAccessTokenRefreshTimer.start();
      }
      
      private function onAccessTokenRefreshTimerComplete(e:TimerEvent) : void
      {
         this.mAccessTokenRefreshTimer.stop();
         this.mAccessTokenRefreshTimer = null;
         this.dataModelFriends.rovioAccessToken.requestAccessToken();
      }
      
      public function getLevelLoader() : ILevelLoader
      {
         if(this.mLevelLoader == null)
         {
            this.mLevelLoader = new LevelLoaderFriends(mLevelManager);
         }
         return this.mLevelLoader;
      }
      
      override public function onEnterFrame(e:Event) : void
      {
         super.onEnterFrame(e);
         SalesCampaignManager.instance.updateSalesCampaignManager();
         TournamentEventManager.instance.updateTournamentEventManager();
         if(this.mRequestThemeMusicPlaying)
         {
            this.playThemeMusic();
         }
      }
      
      private function isOnMenu() : Boolean
      {
         switch(getCurrentState())
         {
            case StateFacebookEpisodeSelection.STATE_NAME:
            case StateLevelSelection.STATE_NAME:
            case StateCredits.STATE_NAME:
            case StateFacebookMainMenuSelection.STATE_NAME:
            case StateFacebookWonderlandLevelSelection.STATE_NAME:
            case StateFacebookGoldenEggs.STATE_NAME:
            case StateTournamentLevelSelection.STATE_NAME:
            case StateOverlappingTournamentsMenu.STATE_NAME:
            case StateTournamentLevelSelectionBranded.STATE_NAME:
            case StateTournamentResults.STATE_NAME:
               return true;
            default:
               return false;
         }
      }
   }
}
