package com.angrybirds.tournament
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.InitDataLoader;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.TournamentEndedPopup;
   import com.angrybirds.popups.TournamentNotFoundPopup;
   import com.angrybirds.server.TournamentLoader;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithVC;
   import com.angrybirds.states.StateFacebookLevelSelection;
   import com.angrybirds.states.StateFacebookMainMenuSelection;
   import com.angrybirds.states.tournament.StateLastWeeksTournamentResults;
   import com.angrybirds.states.tournament.StateTournamentCutScene;
   import com.angrybirds.states.tournament.StateTournamentLevelEnd;
   import com.angrybirds.states.tournament.StateTournamentLevelEndFail;
   import com.angrybirds.states.tournament.StateTournamentLevelLoad;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.states.tournament.StateTournamentPlay;
   import com.angrybirds.states.tournament.branded.StateTournamentLevelSelectionBranded;
   import com.angrybirds.tournament.campaign.CampaignDefinition;
   import com.angrybirds.tournament.campaign.TournamentCampaignManager;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.events.FrameUpdateEvent;
   import com.rovio.loader.IPackageLoader;
   import com.rovio.loader.PackageLoader;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.HashMap;
   import data.user.FacebookUserProgress;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class TournamentModel extends EventDispatcher
   {
      
      public static const STANDARD_TOURNAMENT_NAME:String = "STANDARD";
      
      public static const BRANDED_TOURNAMENT_DEFAULT_NAME:String = "BRANDED";
      
      public static const STANDARD_TOURNAMENT_PRETTY_NAME:String = "Angry Birds Tournament";
      
      public static const HALLOWEEN_TOURNAMENT:String = "HALLOWEEN_2014";
      
      public static const XMAS_TOURNAMENT:String = "XMAS_2014";
      
      public static const BACKGROUND_FB_NAME_PREFIX:String = "BACKGROUND_FB_";
      
      public static const CUSTOM_BLOCKS_NAME_PREFIX:String = "tournament_";
      
      public static const QUALIFIER_INTERRUPTED_BUNDLE:String = "InterruptedQualifierBundle";
      
      public static const NO_RANK:int = 100000;
      
      private static var sTournamentLoadFailedCounter:int = 0;
      
      private static var sInstance:TournamentModel;
      
      private static const DEFAULT_TOURNAMENT_NAME:String = "Angry Birds Tournament";
      
      public static var mForceReloadStandings:Boolean;
      
      public static var CACHE_VALIDITY_SECONDS:int = 2 * 60;
      
      public static const CACHE_PLAYER_CURRENT_TOURNAMENT:String = "CachePlayerCurrentTournament";
       
      
      private var mMarkedEnded:Boolean = false;
      
      private var mTournamentEndHandled:Boolean = false;
      
      private var mDataCurrentTournament:Object;
      
      private var mDataUnconcludedTournament:Object;
      
      private var mDataPreviousTournament:Object;
      
      private var mDataPlayerCurrentTournamentLevelScores:Object;
      
      private var mDataCurrentStandings:Object;
      
      private var mTournamentRules:TournamentRules;
      
      private var mTournamentRulesCollection:HashMap;
      
      private var mLastActiveTournamentName:String = "STANDARD";
      
      private var mTournamentExpiresTimestamp:Number;
      
      private var mLevelBeingUnlocked:Object;
      
      private var mLevelUnlockBuy:BuyItemWithVC;
      
      private var mHasCheckedTournamentExpired:Boolean = false;
      
      private var mTournamentLoader:TournamentLoader;
      
      private var mCachedTournamentPlayerList:Array;
      
      private var mCacheTimeStamps:Dictionary;
      
      private var mTournamentCampaignManager:TournamentCampaignManager;
      
      private var mTournamentCountdownSoundsPlayed:Array;
      
      private var mLevelManager:LevelManager;
      
      public var mQualifierRoundsCompleted:int = 0;
      
      private var mQualifierInterruptedShown:Boolean = false;
      
      private var mShareButtonData:Object;
      
      public function TournamentModel()
      {
         this.mCacheTimeStamps = new Dictionary();
         super();
         this.registerTournamentRules();
         this.mTournamentCountdownSoundsPlayed = new Array(5);
         this.mTournamentLoader = new TournamentLoader();
         this.mTournamentLoader.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_LOADED,this.onCurrentTournamentInfoLoaded);
         this.mTournamentLoader.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,this.onCurrentTournamentAssetLoaded);
         this.mTournamentLoader.addEventListener(TournamentEvent.PREVIOUS_TOURNAMENT_RESULT_LOADED,this.onPreviousTournamentLoaded);
         this.mTournamentLoader.addEventListener(TournamentEvent.UNCONCLUDED_TOURNAMENT_LOADED,this.onUnconcludedTournamentLoaded);
         this.mTournamentLoader.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentLevelScoresLoaded);
         this.mTournamentLoader.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
         this.mTournamentLoader.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_REWARD_CLAIMED,this.onTournamentRewardClaimed);
         this.mCachedTournamentPlayerList = new Array();
         this.mCacheTimeStamps[CACHE_PLAYER_CURRENT_TOURNAMENT] = CACHE_VALIDITY_SECONDS;
      }
      
      public static function get instance() : TournamentModel
      {
         if(sInstance == null)
         {
            sInstance = new TournamentModel();
         }
         return sInstance;
      }
      
      public static function getTimeAsSimplePrettyString(secondsLeft:Number) : String
      {
         var minutesLeft:int = secondsLeft / 60;
         var output:* = "";
         var days:int = Math.round(minutesLeft / 1440);
         var hours:int = Math.round(minutesLeft / 60);
         if(hours < 24)
         {
            if(hours < 2 && minutesLeft >= 60)
            {
               output = hours + " Hour";
            }
            else if(hours >= 2)
            {
               output = Math.max(0,hours) + " Hours";
            }
            else if(secondsLeft >= 60)
            {
               output = minutesLeft + " " + (minutesLeft == 1 ? "Minute" : "Minutes");
            }
            else
            {
               output = secondsLeft + " Seconds";
            }
         }
         else if(days == 1)
         {
            output = days + " Day";
         }
         else
         {
            output = days + " Days";
         }
         return output;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      public static function forceReloadStandings() : void
      {
         mForceReloadStandings = true;
      }
      
      public function set qualifierRoundsCompleted(rounds:int) : void
      {
         this.mQualifierRoundsCompleted = rounds;
      }
      
      public function get qualifierRoundsCompleted() : int
      {
         return this.mQualifierRoundsCompleted;
      }
      
      public function get hasQualifierInterrupted() : Boolean
      {
         return this.mQualifierRoundsCompleted != 0;
      }
      
      public function hasShownQualifierInterruptPopUp() : Boolean
      {
         return this.mQualifierInterruptedShown;
      }
      
      public function shownQualifierInterruptPopUp(val:Boolean) : void
      {
         this.mQualifierInterruptedShown = val;
      }
      
      public function setLevelManager(levelManager:LevelManager) : void
      {
         this.mLevelManager = levelManager;
      }
      
      protected function onTournamentRewardClaimed(event:Event) : void
      {
         dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_REWARD_CLAIMED));
      }
      
      public function loadData() : void
      {
         if(mForceReloadStandings || this.currentTournament == null || this.currentTournament && this.getSecondsLeft() <= 60 * 5)
         {
            this.mTournamentLoader.loadCurrentTournament();
            mForceReloadStandings = false;
         }
         else
         {
            this.mTournamentLoader.loadCurrentTournamentCached();
         }
         if(!LeagueModel.instance.active)
         {
            this.mTournamentLoader.loadUnconcludedTournament();
         }
      }
      
      public function claimReward() : void
      {
         this.mTournamentLoader.claimTournamentReward();
      }
      
      protected function onCurrentTournamentLevelScoresLoaded(e:TournamentEvent) : void
      {
         if(e.data)
         {
            if(this.mDataCurrentTournament && e.data.levelScores)
            {
               this.mDataCurrentTournament.levelScores = e.data.levelScores;
               (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).injectTournamentProgress(this.mDataCurrentTournament.levelScores);
               dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED));
            }
         }
      }
      
      protected function onUnconcludedTournamentLoaded(e:TournamentEvent) : void
      {
         if(e.data != null && (!this.mDataUnconcludedTournament || this.mDataUnconcludedTournament.toString() != e.data.toString()))
         {
            this.mDataUnconcludedTournament = e.data;
            if(e.data.players)
            {
               this.mDataPreviousTournament = e.data;
            }
         }
         dispatchEvent(new TournamentEvent(TournamentEvent.UNCONCLUDED_TOURNAMENT_UPDATED));
      }
      
      protected function onPreviousTournamentLoaded(e:TournamentEvent) : void
      {
         if(this.mDataUnconcludedTournament && this.mDataPreviousTournament)
         {
            dispatchEvent(new TournamentEvent(TournamentEvent.PREVIOUS_TOURNAMENT_RESULT_UPDATED));
         }
         else if(e.data != null && (!this.mDataPreviousTournament || this.mDataPreviousTournament.toString() != e.data.toString()))
         {
            this.mDataPreviousTournament = e.data;
            dispatchEvent(new TournamentEvent(TournamentEvent.PREVIOUS_TOURNAMENT_RESULT_UPDATED));
         }
      }
      
      public function cacheTime(cacheType:String) : Number
      {
         return this.mCacheTimeStamps[cacheType];
      }
      
      private function useCache(cacheType:String) : Boolean
      {
         var now:Number = (AngryBirdsBase.singleton.dataModel as DataModelFriends).serverSynchronizedTime.synchronizedTimeStamp;
         var seconds:int = (now - this.mCacheTimeStamps[cacheType]) / 1000;
         seconds = Math.max(0,seconds);
         if(seconds < CACHE_VALIDITY_SECONDS)
         {
            return true;
         }
         this.mCacheTimeStamps[cacheType] = now;
         return false;
      }
      
      protected function onCurrentTournamentInfoLoaded(e:TournamentEvent) : void
      {
         var episode:EpisodeModel = null;
         var levelObj:Object = null;
         if(e.data)
         {
            this.mDataCurrentTournament = e.data;
            this.mTournamentLoader.loadAssets(this.brandedTournamentAssetId,this.mDataCurrentTournament.levels,this.mLevelManager);
            if(this.mLevelManager)
            {
               episode = this.mLevelManager.getEpisodeByName(StateFacebookLevelSelection.EPISODE_TOURNAMENT);
               for each(levelObj in this.mDataCurrentTournament.levels)
               {
                  episode.addLevelName(levelObj.levelId);
               }
            }
         }
         dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_INFO_LOADED));
      }
      
      private function onCurrentTournamentAssetLoaded(event:TournamentEvent) : void
      {
         var packageLoader:IPackageLoader = IPackageLoader(event.data);
         if(packageLoader)
         {
            dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,{
               "packLoader":packageLoader,
               "cb":this.onBrandAssetsInitialized
            }));
         }
         else
         {
            dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,{"bluePrintPackLoader":new PackageLoader()}));
            this.loadTournamentInfo();
         }
      }
      
      private function onBrandAssetsInitialized() : void
      {
         this.loadTournamentInfo();
      }
      
      public function loadTournamentInfo() : void
      {
         if(this.mDataCurrentTournament)
         {
            this.injectData();
            if(!this.mDataCurrentTournament)
            {
               dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_INFO_UPDATED));
            }
         }
         this.mTournamentLoader.loadPlayersCurrentTournamentLevelScores(false);
         dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_INFO_INITIALIZED));
      }
      
      public function clearPreviousTournamentData() : void
      {
         var o:* = null;
         this.mDataCurrentTournament = null;
         this.mDataUnconcludedTournament = null;
         this.mDataPreviousTournament = null;
         this.mDataPlayerCurrentTournamentLevelScores = null;
         this.mDataCurrentStandings = null;
         for(o in this.mCacheTimeStamps)
         {
            this.mCacheTimeStamps[o] = 0;
         }
         if(this.mTournamentCampaignManager)
         {
            this.mTournamentCampaignManager.deActivateCurrentCampaign();
         }
         this.mTournamentCountdownSoundsPlayed = new Array(5);
      }
      
      public function clearUnconcludedData() : void
      {
         this.mDataUnconcludedTournament = null;
      }
      
      protected function onCurrentTournamentStandingsLoaded(e:TournamentEvent) : void
      {
         if(e.data)
         {
            this.mDataCurrentStandings = e.data;
            this.mDataCurrentStandings = InitDataLoader.removeUsersWhoHaveUninstalledApp(this.mDataCurrentStandings,"players");
            dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED));
         }
      }
      
      public function get levelBeingUnlocked() : Object
      {
         return this.mLevelBeingUnlocked;
      }
      
      public function unlockLevel(levelObject:Object) : void
      {
         var tournamentLevelUnlockShopItem:ShopItem = null;
         if(this.mLevelBeingUnlocked != levelObject)
         {
            this.mLevelBeingUnlocked = levelObject;
            tournamentLevelUnlockShopItem = DataModelFriends(AngryBirdsBase.singleton.dataModel).shopListing.tournamentLevelUnlock[0];
            this.mLevelUnlockBuy = new BuyItemWithVC(tournamentLevelUnlockShopItem,tournamentLevelUnlockShopItem.getPricePoint(0));
            this.mLevelUnlockBuy.addEventListener(BuyItemEvent.ITEM_BOUGHT,this.onBuyLevelUnlockComplete);
         }
      }
      
      private function onBuyLevelUnlockComplete(e:BuyItemEvent) : void
      {
         if(this.mLevelUnlockBuy)
         {
            this.mLevelUnlockBuy.removeEventListener(BuyItemEvent.ITEM_BOUGHT,this.onBuyLevelUnlockComplete);
         }
         if(this.mLevelBeingUnlocked)
         {
            delete this.mLevelBeingUnlocked.unlockTime;
         }
         this.mLevelBeingUnlocked = null;
      }
      
      public function getLevelObject(levelId:String) : Object
      {
         var level:Object = null;
         for each(level in this.levelObjects)
         {
            if(level.levelId == levelId)
            {
               return level;
            }
         }
         return null;
      }
      
      private function registerTournamentRules() : void
      {
         this.mTournamentRulesCollection = new HashMap();
         this.mTournamentRulesCollection[STANDARD_TOURNAMENT_NAME] = this.createTournamentRulePairs(STANDARD_TOURNAMENT_NAME);
         this.mTournamentRulesCollection[BRANDED_TOURNAMENT_DEFAULT_NAME] = this.createTournamentRulePairs(BRANDED_TOURNAMENT_DEFAULT_NAME,null,"","",false,"",StateTournamentLevelSelectionBranded);
      }
      
      private function createTournamentRulePairs(name:String, firstTimePopup:Class = null, chapterSelectionBackgroundFrameLabel:String = "", chapterSelectionButtonFrameLabel:String = "", powerupFrenzy:Boolean = false, background:String = "", levelSelectionClass:Class = null, levelLoadClass:Class = null, playClass:Class = null, lastWeekTournamentResultClass:Class = null, levelWinClass:Class = null, levelFailedClass:Class = null, cutSceneClass:Class = null) : TournamentRules
      {
         var tempTournamentRules:TournamentRules = new TournamentRules(name,firstTimePopup,chapterSelectionBackgroundFrameLabel,chapterSelectionButtonFrameLabel,powerupFrenzy,background);
         tempTournamentRules.addStatePair(StateTournamentLevelSelection.STATE_NAME,levelSelectionClass || StateTournamentLevelSelection);
         tempTournamentRules.addStatePair(StateTournamentLevelLoad.STATE_NAME,levelLoadClass || StateTournamentLevelLoad);
         tempTournamentRules.addStatePair(StateTournamentPlay.STATE_NAME,playClass || StateTournamentPlay);
         tempTournamentRules.addStatePair(StateLastWeeksTournamentResults.STATE_NAME,lastWeekTournamentResultClass || StateLastWeeksTournamentResults);
         tempTournamentRules.addStatePair(StateTournamentLevelEnd.STATE_NAME,levelWinClass || StateTournamentLevelEnd);
         tempTournamentRules.addStatePair(StateTournamentLevelEndFail.STATE_NAME,levelFailedClass || StateTournamentLevelEndFail);
         tempTournamentRules.addStatePair(StateTournamentCutScene.STATE_NAME,cutSceneClass || StateTournamentCutScene);
         return tempTournamentRules;
      }
      
      private function onEnterFrame(e:FrameUpdateEvent) : void
      {
         var secondsLeft:int = 0;
         if(!this.mMarkedEnded)
         {
            secondsLeft = this.getSecondsLeft();
            if(secondsLeft == 0)
            {
               this.mMarkedEnded = true;
               this.handleTournamentEnd();
            }
            else if(secondsLeft > 0 && this.mHasCheckedTournamentExpired)
            {
               this.mHasCheckedTournamentExpired = false;
            }
            if(secondsLeft <= 5 && secondsLeft > 0)
            {
               if(!this.mTournamentCountdownSoundsPlayed[secondsLeft - 1])
               {
                  if(AngryBirdsEngine.smApp.getCurrentState() == StateTournamentLevelSelection.STATE_NAME || AngryBirdsEngine.smApp.getCurrentState() == StateFacebookMainMenuSelection.STATE_NAME)
                  {
                     SoundEngine.playSound("ui_countdown_" + secondsLeft,SoundEngine.UI_CHANNEL);
                  }
                  this.mTournamentCountdownSoundsPlayed[secondsLeft - 1] = true;
               }
            }
         }
      }
      
      private function showTournamentEndedPopup() : void
      {
         AngryBirdsBase.singleton.popupManager.closeAllPopups();
         var popup:TournamentEndedPopup = new TournamentEndedPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP);
         popup.addEventListener(TournamentEvent.TOURNAMENT_RELOAD,this.onTournamentReload);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function onTournamentReload(event:Event) : void
      {
         (event.currentTarget as TournamentEndedPopup).removeEventListener(TournamentEvent.TOURNAMENT_RELOAD,this.onTournamentReload);
         dispatchEvent(new TournamentEvent(TournamentEvent.TOURNAMENT_RELOAD));
      }
      
      protected function showTournamentNotFoundPopup() : void
      {
         var popup:TournamentNotFoundPopup = new TournamentNotFoundPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      public function injectData() : void
      {
         var tempLevelScores:Object = null;
         if(!AngryBirdsEngine.smApp.hasEventListener(FrameUpdateEvent.UPDATE))
         {
            AngryBirdsEngine.smApp.addEventListener(FrameUpdateEvent.UPDATE,this.onEnterFrame);
         }
         this.mMarkedEnded = false;
         this.mTournamentEndHandled = false;
         if(this.mDataCurrentTournament && this.mDataCurrentTournament.levelScores)
         {
            tempLevelScores = this.mDataCurrentTournament.levelScores;
         }
         this.mDataCurrentTournament.levelScores = tempLevelScores;
         if(this.mDataCurrentTournament)
         {
            this.mTournamentExpiresTimestamp = this.currentTournament.endTime;
         }
         if(this.currentTournament.brandedTournament != null)
         {
            this.mTournamentRules = this.mTournamentRulesCollection[BRANDED_TOURNAMENT_DEFAULT_NAME];
            this.mTournamentRules.tournamentName = this.currentTournament.brandedTournament;
            this.mTournamentRules.tournamentPrettyName = this.currentTournament.tn;
            this.mTournamentRules.brandedFrameLabel = this.brandedTournamentAssetId;
            this.mTournamentRules.mCustomBlock = CUSTOM_BLOCKS_NAME_PREFIX + this.brandedTournamentAssetId;
            if(this.mTournamentRules.hasCustomBackground)
            {
               this.mTournamentRules.background = BACKGROUND_FB_NAME_PREFIX + this.brandedTournamentAssetId;
            }
            this.mTournamentRules.chapterSelectionButtonFrameLabel = this.brandedTournamentAssetId;
         }
         else
         {
            this.mTournamentRules = this.mTournamentRulesCollection[STANDARD_TOURNAMENT_NAME];
         }
         if(AngryBirdsBase.singleton.firstStateHasBeenSet)
         {
            this.applyTournamentRules();
         }
      }
      
      private function applyTournamentRules() : void
      {
         var state:StateBase = null;
         var statesChanged:Boolean = false;
         if(this.tournamentName != "" && this.mLastActiveTournamentName != this.tournamentName && this.mTournamentRules)
         {
            this.mTournamentRules.replaceStates();
            this.mLastActiveTournamentName = this.tournamentName;
            statesChanged = true;
         }
         else if(this.mLastActiveTournamentName != STANDARD_TOURNAMENT_NAME && this.tournamentName == "")
         {
            this.mTournamentRules.replaceStates();
            this.mLastActiveTournamentName = STANDARD_TOURNAMENT_NAME;
            statesChanged = true;
         }
         if(statesChanged)
         {
            state = AngryBirdsEngine.smApp.getCurrentStateObject();
            if(state != null)
            {
               if(state.mName == StateTournamentLevelSelection.STATE_NAME)
               {
                  AngryBirdsBase.singleton.setNextState(StateTournamentLevelSelection.STATE_NAME);
               }
            }
         }
      }
      
      public function getTournamentRuleByName(pID:String) : TournamentRules
      {
         var rule:* = null;
         for(rule in this.mTournamentRulesCollection)
         {
            if(rule == pID.toUpperCase())
            {
               return this.mTournamentRulesCollection[rule];
            }
         }
         return null;
      }
      
      public function get currentTournament() : Object
      {
         if(this.mDataCurrentTournament)
         {
            return this.mDataCurrentTournament;
         }
         return null;
      }
      
      public function getCurrentTournamentIdParameter() : String
      {
         if(this.currentTournament)
         {
            return "tournamentId=" + this.mDataCurrentTournament.id;
         }
         return "tournamentId=-1";
      }
      
      public function isOverlappingTournamentsEnabled() : Boolean
      {
         if(this.mDataCurrentTournament)
         {
            return this.mDataCurrentTournament.overlappingTournamentsEnabled;
         }
         return false;
      }
      
      public function get hasEnteredTournamentDraw() : Object
      {
         return this.currentTournament.enteredDraw;
      }
      
      public function get tournamentRules() : TournamentRules
      {
         return this.mTournamentRules;
      }
      
      public function get tournamentName() : String
      {
         if(this.mTournamentRules)
         {
            return this.mTournamentRules.tournamentName;
         }
         return "";
      }
      
      public function get brandedTournamentAssetId() : String
      {
         if(this.currentTournament != null && this.currentTournament.brandedTournamentAssetId != null)
         {
            if((this.currentTournament.brandedTournamentAssetId as String).toUpperCase() == "HALLOWEEN_2013")
            {
               return TournamentModel.HALLOWEEN_TOURNAMENT;
            }
            if((this.currentTournament.brandedTournamentAssetId as String).toUpperCase().indexOf(XMAS_TOURNAMENT) != -1)
            {
               return XMAS_TOURNAMENT;
            }
            return (this.currentTournament.brandedTournamentAssetId as String).toUpperCase();
         }
         return "";
      }
      
      public function get tournamentPrettyName() : String
      {
         if(this.mTournamentRules && this.mTournamentRules.tournamentPrettyName)
         {
            return this.mTournamentRules.tournamentPrettyName;
         }
         return STANDARD_TOURNAMENT_PRETTY_NAME;
      }
      
      public function get nextTournamentBrandedName() : String
      {
         if(this.currentTournament != null && this.mDataCurrentTournament.nextTournamentBrand != null)
         {
            return this.mDataCurrentTournament.nextTournamentBrand;
         }
         return "";
      }
      
      public function get currentStandings() : Object
      {
         return this.mDataCurrentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.mDataPreviousTournament;
      }
      
      public function get lastResult() : Object
      {
         if(this.mDataUnconcludedTournament && this.mDataUnconcludedTournament.prizeCounts && this.mDataUnconcludedTournament.players)
         {
            return this.mDataUnconcludedTournament;
         }
         return null;
      }
      
      public function get players() : Array
      {
         if(this.currentStandings)
         {
            return this.currentStandings.players;
         }
         return [];
      }
      
      public function isLevelOpen(levelId:String) : Boolean
      {
         var level:Object = null;
         for each(level in this.levelObjects)
         {
            if(level.levelId == levelId)
            {
               return this.checkIfLevelUnlocked(level);
            }
         }
         return false;
      }
      
      public function setLevelOpen(levelId:String, open:Boolean) : void
      {
         var level:Object = null;
         for each(level in this.levelObjects)
         {
            if(level.levelId == levelId)
            {
               level.secondsToUnlock = -1;
               return;
            }
         }
      }
      
      public function secondsToUnlock(levelId:String) : int
      {
         var level:Object = null;
         for each(level in this.levelObjects)
         {
            if(level.levelId == levelId)
            {
               return this.secondsToUnlockForLevelObject(level);
            }
         }
         return -1;
      }
      
      public function secondsToUnlockForLevelObject(levelObject:Object) : int
      {
         var now:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         return (levelObject.unlockTime - now) / 1000;
      }
      
      private function checkIfLevelUnlocked(levelObject:Object) : Boolean
      {
         if(levelObject.unlockTime)
         {
            if(ItemsInventory.instance.isLevelBought(levelObject.levelId))
            {
               return true;
            }
            if(this.secondsToUnlockForLevelObject(levelObject) > 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function get levelIDs() : Array
      {
         var level:Object = null;
         var levelNameArray:Array = [];
         for each(level in this.levelObjects)
         {
            levelNameArray.push(level.levelId);
         }
         return levelNameArray;
      }
      
      public function get levelObjects() : Array
      {
         if(this.currentTournament)
         {
            return this.currentTournament.levels;
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         if(this.currentTournament)
         {
            return this.currentTournament.levelScores;
         }
         return [];
      }
      
      public function get prizeCountPreviousTournament() : Array
      {
         if(this.previousTournament)
         {
            if(this.previousTournament.prizeCounts)
            {
               return this.previousTournament.prizeCounts;
            }
         }
         return [1000,500,100];
      }
      
      public function get prizeCountLastResults() : Array
      {
         if(this.lastResult)
         {
            if(this.lastResult.prizeCounts)
            {
               return this.lastResult.prizeCounts;
            }
         }
         return [6,4,2];
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.previousTournament)
         {
            return this.previousTournament.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.previousTournament)
         {
            return this.previousTournament.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.previousTournament)
         {
            return this.previousTournament.goldTrophies;
         }
         return 0;
      }
      
      public function getSecondsLeft() : int
      {
         var now:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            now = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var seconds:int = (this.mTournamentExpiresTimestamp - now) / 1000;
         return int(Math.max(0,seconds));
      }
      
      public function getNextTournamentLevelId(currentTournament:String) : String
      {
         var currentLevelsIndex:int = this.levelIDs.indexOf(currentTournament);
         var nextLevelID:String = this.levelIDs[currentLevelsIndex + 1];
         if(currentLevelsIndex >= 0 && currentLevelsIndex < this.levelIDs.length)
         {
            return nextLevelID;
         }
         return "";
      }
      
      public function getNextTournamentLevel(currentTournament:String) : String
      {
         var currentLevelsIndex:int = this.levelIDs.indexOf(currentTournament);
         var nextLevelID:String = this.levelIDs[currentLevelsIndex + 1];
         if(currentLevelsIndex >= 0 && currentLevelsIndex < this.levelIDs.length)
         {
            return nextLevelID;
         }
         return "";
      }
      
      public function getLevelActualNumber(levelName:String) : int
      {
         return this.levelIDs.indexOf(levelName) + 1;
      }
      
      public function getLevelNumberInText(levelName:String) : String
      {
         switch(this.levelIDs.indexOf(levelName))
         {
            case 0:
               return "one";
            case 1:
               return "two";
            case 2:
               return "three";
            case 3:
               return "four";
            case 4:
               return "five";
            case 5:
               return "six";
            default:
               return "";
         }
      }
      
      public function getTournamentPlayingFriends() : Array
      {
         var ob:Object = null;
         var installedPlayers:Array = [];
         for each(ob in this.players)
         {
            if(!ob.i)
            {
               installedPlayers.push(ob);
            }
         }
         return installedPlayers;
      }
      
      public function getTournamentTimeLeftAsPrettyString() : Array
      {
         return FriendsUtil.getTimeLeftAsPrettyString(this.getSecondsLeft());
      }
      
      public function getTimeLeftInShopAsPrettyString(secondsLeft:Number) : Array
      {
         var s:String = null;
         var minutesLeft:int = secondsLeft / 60;
         var output:* = "";
         var outputColor:uint = 16774858;
         var days:int = Math.floor(minutesLeft / 1440);
         var hours:int = Math.floor(minutesLeft / 60);
         if(hours < 24)
         {
            outputColor = 16762174;
            if(hours < 2 && minutesLeft >= 60)
            {
               output = "Left: " + hours + " hour";
            }
            else if(hours >= 2)
            {
               output = "Left: " + Math.max(0,hours) + " hours";
            }
            else if(secondsLeft >= 60)
            {
               output = "Left: " + minutesLeft + " " + (minutesLeft == 1 ? "minute" : "minutes");
            }
            else
            {
               s = "seconds";
               if(secondsLeft == 1)
               {
                  s = s.slice(0,s.length - 1);
               }
               output = "Left: " + secondsLeft + " " + s;
            }
         }
         else if(days == 1)
         {
            output = "Left: " + days + " day";
         }
         else
         {
            output = "Left: " + days + " days";
         }
         return [output,outputColor];
      }
      
      public function getCurrentRank() : int
      {
         var player:Object = null;
         var i:int = 1;
         for each(player in this.players)
         {
            if(player.uid == userProgress.userID)
            {
               return i;
            }
            i++;
         }
         return NO_RANK;
      }
      
      public function get hasCheckedTournamentExpired() : Boolean
      {
         return this.mHasCheckedTournamentExpired;
      }
      
      public function set hasCheckedTournamentExpired(value:Boolean) : void
      {
         this.mHasCheckedTournamentExpired = value;
      }
      
      public function checkTournamentEnd() : void
      {
         if(this.mMarkedEnded && !this.mTournamentEndHandled)
         {
            this.handleTournamentEnd();
         }
      }
      
      private function handleTournamentEnd() : void
      {
         dispatchEvent(new TournamentEvent(TournamentEvent.TOURNAMENT_EXPIRED));
         TournamentEventManager.instance.resetTournamentSpecificEvent();
         StateTournamentLevelSelection.activateTournamentEventButtonStateCheck();
         if(AngryBirdsBase.singleton.getCurrentState().indexOf("Tournament") != -1)
         {
            ++sTournamentLoadFailedCounter;
            if(sTournamentLoadFailedCounter > 2)
            {
               this.showTournamentNotFoundPopup();
               sTournamentLoadFailedCounter = 0;
            }
            else
            {
               this.showTournamentEndedPopup();
            }
         }
         this.mTournamentEndHandled = true;
      }
      
      public function get info() : String
      {
         if(this.mDataCurrentTournament && this.mDataCurrentTournament.info)
         {
            return this.mDataCurrentTournament.info;
         }
         return "";
      }
      
      public function loadUnconcludedTournamentData() : void
      {
         this.mTournamentLoader.loadUnconcludedTournament();
      }
      
      public function setCachedTournamentPlayerList(playerList:Array) : void
      {
         this.mCachedTournamentPlayerList = playerList;
      }
      
      public function getCachedTournamentPlayerList() : Array
      {
         return this.mCachedTournamentPlayerList;
      }
      
      public function get isRewardClaimable() : Boolean
      {
         return this.lastResult;
      }
      
      public function activateTournamentCampaign(campaignId:String) : CampaignDefinition
      {
         if(!this.mTournamentCampaignManager)
         {
            this.mTournamentCampaignManager = new TournamentCampaignManager();
         }
         return this.mTournamentCampaignManager.activateCampaign(campaignId);
      }
      
      public function campaignUIInteractionEvent(eventName:String) : void
      {
         if(this.mTournamentCampaignManager)
         {
            this.mTournamentCampaignManager.campaignUIInteraction(eventName);
         }
      }
      
      public function containsLevel(levelId:String) : Boolean
      {
         var levelObj:Object = null;
         if(this.mDataCurrentTournament)
         {
            for each(levelObj in this.mDataCurrentTournament.levels)
            {
               if(levelObj.levelId == levelId)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function campaignClicked() : void
      {
         if(this.mTournamentCampaignManager)
         {
            this.mTournamentCampaignManager.doCampaignAction();
         }
      }
      
      public function get shareButtonData() : Object
      {
         return this.mShareButtonData;
      }
      
      public function set shareButtonData(value:Object) : void
      {
         this.mShareButtonData = value;
      }
   }
}
