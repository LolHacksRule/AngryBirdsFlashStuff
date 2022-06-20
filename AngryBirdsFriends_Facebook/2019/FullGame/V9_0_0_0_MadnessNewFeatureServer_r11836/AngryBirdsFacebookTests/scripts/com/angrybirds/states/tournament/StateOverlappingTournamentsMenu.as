package com.angrybirds.states.tournament
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.InitDataLoader;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.league.LeagueDefinition;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.LeagueType;
   import com.angrybirds.league.events.LeagueEvent;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.angrybirds.states.StateBaseLevel;
   import com.angrybirds.states.StateCredits;
   import com.angrybirds.states.StateFacebookMainMenuSelection;
   import com.angrybirds.tournament.OverlappingTournamentButton;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.utils.FriendsUtil;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.sound.ThemeMusicManager;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class StateOverlappingTournamentsMenu extends StateBaseLevel implements INavigable, IWalletContainer
   {
      
      public static const DEFAULT_OVERLAPPING_TOURNAMENTS_AMOUNT:int = 3;
      
      public static const STATE_NAME:String = "OverlappingTournamentsMenu";
      
      private static const TOURNAMENT_EXPIRE_MIN_TIME:int = 3000;
      
      private static var smForceRefreshOverlappingTournamentData:Boolean = false;
      
      private static const UPDATE_ROUNDS_TO_SCALE_UI:int = 5;
      
      private static const GENERAL_LOADING_STEP_INDEX_INFO:int = 0;
      
      private static const TOURNAMENT_LOADING_STEP_CURRENT_LOADED:int = 0;
      
      private static const TOURNAMENT_LOADING_STEP_STANDINGS_LOADED:int = 1;
      
      private static const TOURNAMENT_LOADING_STEP_SCORE_LOADED:int = 2;
      
      private static const TOURNAMENT_LOADING_STEP_LEAGUE_DATA_LOADED:int = 3;
      
      private static var smTournamentButtonPositions:Array;
       
      
      private var mTournamentEndServerCallPauseTimer:Timer;
      
      private var mEventEndServerCallPauseTimer:Timer;
      
      private var mUIScaledToFullScreenCounter:int;
      
      private var mUIScaledToNormalCounter:int;
      
      private var mGeneralLoadingSteps:Vector.<Boolean>;
      
      private var mTournamentsLoadingSteps:Vector.<Boolean>;
      
      protected var mTournamentModel:TournamentModel;
      
      private var mHideLoadingScreen:Boolean;
      
      private var mWallet:Wallet;
      
      private var mUseWallet:Boolean;
      
      private var mTournamentButtons:Vector.<OverlappingTournamentButton>;
      
      private var mDaysLeftTF:TextField;
      
      protected var mLeagueModel:LeagueModel;
      
      private var mLoadTournamentId:int = 0;
      
      public function StateOverlappingTournamentsMenu(levelManager:LevelManager, localizationManager:LocalizationManager)
      {
         super(levelManager,false,STATE_NAME,localizationManager);
         this.mLeagueModel = LeagueModel.instance;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      public static function forceRefreshOverlappingTournamentData() : void
      {
         smForceRefreshOverlappingTournamentData = true;
      }
      
      public function getName() : String
      {
         return STATE_NAME;
      }
      
      override protected function init() : void
      {
         mUIView = new UIView(this);
         this.mTournamentModel = TournamentModel.instance;
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_Overlapping_Tournaments[0]);
         smTournamentButtonPositions = new Array();
         smTournamentButtonPositions.push([mUIView.getItemByName("BUTTON_TOURNAMENT_2").x]);
         smTournamentButtonPositions.push([mUIView.getItemByName("BUTTON_TOURNAMENT_1").x + (mUIView.getItemByName("BUTTON_TOURNAMENT_2").x - mUIView.getItemByName("BUTTON_TOURNAMENT_1").x) / 2,mUIView.getItemByName("BUTTON_TOURNAMENT_2").x + (mUIView.getItemByName("BUTTON_TOURNAMENT_3").x - mUIView.getItemByName("BUTTON_TOURNAMENT_2").x) / 2]);
         smTournamentButtonPositions.push([mUIView.getItemByName("BUTTON_TOURNAMENT_1").x,mUIView.getItemByName("BUTTON_TOURNAMENT_2").x,mUIView.getItemByName("BUTTON_TOURNAMENT_3").x]);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         this.mUIScaledToFullScreenCounter = 0;
         this.mUIScaledToNormalCounter = 0;
         forceRefreshOverlappingTournamentData();
         this.loadTournaments();
         (mUIView.getItemByName("Title_Container").mClip.getChildByName("TextTitle") as TextField).text = "Tournaments";
         this.mDaysLeftTF = mUIView.getItemByName("Title_Container").mClip.getChildByName("TextTime") as TextField;
         var musicManager:ThemeMusicManager = AngryBirdsFacebook.sSingleton.getThemeMusicManager();
         musicManager.playSongWithFade(AngryBirdsBase.ANGRYBIRDS_THEME_MUSIC_ID);
      }
      
      public function loadTournaments() : void
      {
         this.displayLoadingText(true);
         this.mGeneralLoadingSteps = new Vector.<Boolean>();
         this.mTournamentsLoadingSteps = new Vector.<Boolean>();
         if(InitDataLoader.getLastClassicUnclaimedTournamentId() != -1)
         {
            TournamentModel.forceReloadStandings();
            this.mLoadTournamentId = InitDataLoader.getLastClassicUnclaimedTournamentId();
            InitDataLoader.resetLastClassicUnclaimedTournamentId();
            this.mTournamentsLoadingSteps[TOURNAMENT_LOADING_STEP_CURRENT_LOADED] = false;
            this.mTournamentsLoadingSteps[TOURNAMENT_LOADING_STEP_STANDINGS_LOADED] = false;
            this.mTournamentsLoadingSteps[TOURNAMENT_LOADING_STEP_SCORE_LOADED] = false;
            this.mTournamentModel.addEventListener(TournamentEvent.TOURNAMENT_LOADED,this.onCurrentTournamentLoaded);
            this.mTournamentModel.loadTournament(this.mLoadTournamentId);
            this.mTournamentModel.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
            this.mTournamentModel.loadCurrentTournamentStandings(this.mLoadTournamentId);
            this.mTournamentModel.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreLoaded);
            this.mTournamentModel.loadCurrentTournamentLevelScores(this.mLoadTournamentId);
            if(this.mLeagueModel.active)
            {
               this.mTournamentsLoadingSteps[TOURNAMENT_LOADING_STEP_LEAGUE_DATA_LOADED] = false;
               AngryBirdsFacebook.smLoadLeaguePreviousData = true;
               this.mLeagueModel.addEventListener(LeagueEvent.ALL_DATA_LOADED,this.onLeagueLoadingStepLoaded);
               this.mLeagueModel.loadData(this.mLoadTournamentId);
            }
         }
         else
         {
            this.mGeneralLoadingSteps[GENERAL_LOADING_STEP_INDEX_INFO] = false;
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).setPopupButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_OVERLAPPING_TOURNAMENTS);
            this.mTournamentModel.addEventListener(TournamentEvent.OVERLAPPING_TOURNAMENTS_INFO_LOADED,this.onOverlappingTournamentsInfoLoaded);
            this.mTournamentModel.addEventListener(TournamentEvent.OVERLAPPING_TOURNAMENTS_INFO_NOT_FOUND,this.onError);
            this.mTournamentModel.loadOverlappingTournaments(smForceRefreshOverlappingTournamentData);
            smForceRefreshOverlappingTournamentData = false;
            TournamentModel.setTournamentSelectionDataLoaded(false);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.mTournamentModel.removeEventListener(TournamentEvent.OVERLAPPING_TOURNAMENTS_INFO_LOADED,this.onOverlappingTournamentsInfoLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.OVERLAPPING_TOURNAMENTS_INFO_NOT_FOUND,this.onError);
         this.mLeagueModel.removeEventListener(LeagueEvent.ALL_DATA_LOADED,this.onLeagueLoadingStepLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.TOURNAMENT_LOADED,this.onCurrentTournamentLoaded);
         this.mTournamentButtons = null;
         this.removeWallet(this.mWallet);
      }
      
      private function displayLoadingText(value:Boolean) : void
      {
         if(value)
         {
            this.mHideLoadingScreen = false;
            mUIView.getItemByName("loadingTournament").setVisibility(true);
            this.removeWallet(this.mWallet);
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
         }
         else
         {
            this.mHideLoadingScreen = true;
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var button:OverlappingTournamentButton = null;
         switch(eventName)
         {
            case "BACK":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               setNextState(StateFacebookMainMenuSelection.STATE_NAME);
               break;
            case "showCredits":
               setNextState(StateCredits.STATE_NAME);
               break;
            case "SPECIAL_STORE":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
               break;
            default:
               if(this.mTournamentButtons && eventName != "" && eventName.indexOf("BUTTON_TOURNAMENT_") > -1)
               {
                  for each(button in this.mTournamentButtons)
                  {
                     if(button.buttonName == eventName)
                     {
                        SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
                        if(button.isTournamentClaimable())
                        {
                           this.displayLoadingText(true);
                           this.mLeagueModel.addEventListener(LeagueEvent.ALL_DATA_LOADED,this.onAllLeagueDataLoaded);
                           AngryBirdsFacebook.smLoadLeaguePreviousData = true;
                           StateTournamentResults.smClaimTournamentId = button.tournamentId;
                           this.mLeagueModel.loadData(button.tournamentId);
                        }
                        else
                        {
                           StateTournamentLevelSelection.setTournamentToLoad(button.tournamentId,button.brand);
                           setNextState(StateTournamentLevelSelection.STATE_NAME);
                        }
                        break;
                     }
                  }
               }
         }
      }
      
      private function onAllLeagueDataLoaded(e:LeagueEvent) : void
      {
         this.mLeagueModel.removeEventListener(LeagueEvent.ALL_DATA_LOADED,this.onAllLeagueDataLoaded);
         StateTournamentResults.resultType = StateTournamentResults.RESULTS_SCREEN;
         setNextState(StateTournamentResults.STATE_NAME);
      }
      
      override protected function update(deltaTime:Number) : void
      {
         var isLoadingCompleted:Boolean = false;
         var button:OverlappingTournamentButton = null;
         var tournamentButton:OverlappingTournamentButton = null;
         super.update(deltaTime);
         if(this.mGeneralLoadingSteps && this.mGeneralLoadingSteps.length > 0)
         {
            for each(isLoadingCompleted in this.mGeneralLoadingSteps)
            {
               if(!isLoadingCompleted)
               {
                  break;
               }
            }
            if(!isLoadingCompleted)
            {
               return;
            }
            for each(button in this.mTournamentButtons)
            {
               if(!button.isBrandInitialized())
               {
                  isLoadingCompleted = false;
               }
            }
            if(isLoadingCompleted)
            {
               this.mGeneralLoadingSteps = null;
               this.allDataLoaded();
            }
         }
         else if(this.mTournamentsLoadingSteps && this.mTournamentsLoadingSteps.length > 0)
         {
            for each(isLoadingCompleted in this.mTournamentsLoadingSteps)
            {
               if(!isLoadingCompleted)
               {
                  break;
               }
            }
            if(isLoadingCompleted)
            {
               this.tournamentInfoLoadingComplete();
            }
            return;
         }
         if(this.mHideLoadingScreen)
         {
            this.mHideLoadingScreen = false;
            mUIView.getItemByName("loadingTournament").setVisibility(false);
            this.addWallet(new Wallet(this,true,true,false,false));
         }
         if(this.mTournamentButtons)
         {
            for each(tournamentButton in this.mTournamentButtons)
            {
               tournamentButton.update(deltaTime);
            }
         }
         this.updateTimeLeft();
         if(smForceRefreshOverlappingTournamentData && !this.mTournamentEndServerCallPauseTimer)
         {
            this.loadTournaments();
         }
      }
      
      protected function onError(event:TournamentEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Can\'t find the overlapping tournaments."));
      }
      
      protected function onOverlappingTournamentsInfoLoaded(event:TournamentEvent) : void
      {
         var ld:LeagueDefinition = null;
         var timeSinceEnded:Number = NaN;
         var leagueStarsTextField:TextField = null;
         var isPlayed:Boolean = false;
         var stateToRemove:String = null;
         var extraCount:int = 0;
         var next:int = 0;
         var otb:OverlappingTournamentButton = null;
         var buttonPositionArray:Array = null;
         if(this.mTournamentEndServerCallPauseTimer)
         {
            return;
         }
         var now:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var receivedOverlappingTournamentsInfo:Array = event.data.tournaments as Array;
         for(var i:int = 0; i < receivedOverlappingTournamentsInfo.length; i++)
         {
            timeSinceEnded = now - receivedOverlappingTournamentsInfo[i].end;
            if(timeSinceEnded > 0 && timeSinceEnded < TOURNAMENT_EXPIRE_MIN_TIME)
            {
               this.mTournamentEndServerCallPauseTimer = new Timer(TOURNAMENT_EXPIRE_MIN_TIME - timeSinceEnded);
               this.mTournamentEndServerCallPauseTimer.addEventListener(TimerEvent.TIMER,function():void
               {
                  mTournamentEndServerCallPauseTimer.stop();
                  mTournamentEndServerCallPauseTimer = null;
                  mGeneralLoadingSteps = null;
                  mTournamentsLoadingSteps = null;
                  allDataLoaded();
                  forceRefreshOverlappingTournamentData();
                  loadTournaments();
               });
               this.mTournamentEndServerCallPauseTimer.start();
               return;
            }
         }
         var leagueInfo:Object = event.data.allLeagueInfo;
         var currentLeagueIcon:String = leagueInfo.currentLeagueInfo.tn;
         var nextLeagueIcon:String = leagueInfo.nextLeagueInfo.tn;
         var currentLeagueProgress:int = leagueInfo.currentLeagueInfo.rt;
         var nextLeagueProgress:int = leagueInfo.nextLeagueInfo.rt;
         var playerProgress:int = event.data.lr;
         var leagueStars:int = leagueInfo.currentLeagueInfo.ls;
         var leagueProgressBar:MovieClip = mUIView.getItemByName("LeagueProgressBar").mClip;
         var leagueProgressFill:MovieClip = leagueProgressBar.fill;
         for each(ld in LeagueType.sAllLeagues)
         {
            leagueProgressBar.getChildByName(ld.id).visible = ld.id == nextLeagueIcon;
         }
         if(currentLeagueIcon == "DIAMOND" || leagueStars > 0)
         {
            leagueProgressBar.getChildByName("DIAMOND").visible = false;
            leagueProgressBar.getChildByName("STAR").visible = true;
            leagueStarsTextField = (leagueProgressBar.getChildByName("STAR") as MovieClip).getChildByName("txtStarRating") as TextField;
            if(leagueStars > 0)
            {
               leagueStarsTextField.text = "" + (leagueStars + 1);
            }
            else
            {
               leagueStarsTextField.text = "1";
            }
         }
         else
         {
            leagueProgressBar.getChildByName("STAR").visible = false;
         }
         var dif:int = playerProgress - currentLeagueProgress;
         if(dif > 0)
         {
            dif = dif <= 4 ? 4 : int(dif);
            leagueProgressFill.scaleX = FriendsUtil.Clamp(dif / (nextLeagueProgress - currentLeagueProgress),0,1);
         }
         else
         {
            leagueProgressFill.scaleX = 0;
         }
         (leagueProgressBar.getChildByName("TextLeagueProgress") as TextField).text = playerProgress + "/" + nextLeagueProgress;
         receivedOverlappingTournamentsInfo.sortOn(["start","id"],[Array.NUMERIC,Array.DESCENDING]);
         for(i = 0; i < receivedOverlappingTournamentsInfo.length; i++)
         {
            receivedOverlappingTournamentsInfo[i].state = OverlappingTournamentButton.STATE_MISSED;
            isPlayed = receivedOverlappingTournamentsInfo[i].tournamentRank != undefined && receivedOverlappingTournamentsInfo[i].tournamentRank > 0;
            if(isPlayed)
            {
               if(receivedOverlappingTournamentsInfo[i].rewardClaimed == 1)
               {
                  receivedOverlappingTournamentsInfo[i].state = OverlappingTournamentButton.STATE_ENDED;
               }
               else
               {
                  receivedOverlappingTournamentsInfo[i].state = OverlappingTournamentButton.STATE_CLAIM;
               }
            }
            if(receivedOverlappingTournamentsInfo[i].start > now)
            {
               receivedOverlappingTournamentsInfo[i].state = OverlappingTournamentButton.STATE_UPCOMING;
            }
            else if(receivedOverlappingTournamentsInfo[i].end > now)
            {
               receivedOverlappingTournamentsInfo[i].state = !!isPlayed ? OverlappingTournamentButton.STATE_PLAY : OverlappingTournamentButton.STATE_JOIN;
            }
         }
         var removeOrder:Array = [OverlappingTournamentButton.STATE_MISSED,OverlappingTournamentButton.STATE_ENDED,OverlappingTournamentButton.STATE_UPCOMING,OverlappingTournamentButton.STATE_JOIN,OverlappingTournamentButton.STATE_PLAY,OverlappingTournamentButton.STATE_CLAIM];
         var removeOrderIndex:int = 0;
         while(receivedOverlappingTournamentsInfo.length > DEFAULT_OVERLAPPING_TOURNAMENTS_AMOUNT)
         {
            stateToRemove = removeOrder[removeOrderIndex];
            extraCount = receivedOverlappingTournamentsInfo.length - DEFAULT_OVERLAPPING_TOURNAMENTS_AMOUNT;
            for(i = 0; i < extraCount; i++)
            {
               next = this.nextSortingIndexToBeRemoved(receivedOverlappingTournamentsInfo,stateToRemove);
               if(next > -1)
               {
                  receivedOverlappingTournamentsInfo.splice(next,1);
               }
            }
            removeOrderIndex++;
         }
         this.mTournamentButtons = new Vector.<OverlappingTournamentButton>();
         for(var tournamentIndex:int = 0; tournamentIndex < receivedOverlappingTournamentsInfo.length; tournamentIndex++)
         {
            otb = new OverlappingTournamentButton(mUIView.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),receivedOverlappingTournamentsInfo[tournamentIndex]);
            this.mTournamentButtons.push(otb);
         }
         if(smTournamentButtonPositions.length == DEFAULT_OVERLAPPING_TOURNAMENTS_AMOUNT)
         {
            buttonPositionArray = smTournamentButtonPositions[receivedOverlappingTournamentsInfo.length - 1];
            for(i = 0; i < buttonPositionArray.length; i++)
            {
               mUIView.getItemByName("BUTTON_TOURNAMENT_" + (i + 1)).x = buttonPositionArray[i];
            }
         }
         while(tournamentIndex < DEFAULT_OVERLAPPING_TOURNAMENTS_AMOUNT)
         {
            this.mTournamentButtons.push(new OverlappingTournamentButton(mUIView.getItemByName("BUTTON_TOURNAMENT_" + (tournamentIndex + 1)),null));
            tournamentIndex++;
         }
         if(!this.mGeneralLoadingSteps)
         {
            this.mGeneralLoadingSteps = new Vector.<Boolean>();
         }
         this.mGeneralLoadingSteps[GENERAL_LOADING_STEP_INDEX_INFO] = true;
      }
      
      private function nextSortingIndexToBeRemoved(table:Array, state:String) : int
      {
         var i:int = 0;
         if(state == OverlappingTournamentButton.STATE_MISSED || state == OverlappingTournamentButton.STATE_ENDED)
         {
            for(i = 0; i < table.length; i++)
            {
               if(table[i].state == state)
               {
                  return i;
               }
            }
         }
         else
         {
            for(i = table.length - 1; i >= 0; i--)
            {
               if(table[i].state == state)
               {
                  return i;
               }
            }
         }
         return -1;
      }
      
      private function allDataLoaded() : void
      {
         this.displayLoadingText(false);
         this.mTournamentModel.removeEventListener(TournamentEvent.OVERLAPPING_TOURNAMENTS_INFO_LOADED,this.onOverlappingTournamentsInfoLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.OVERLAPPING_TOURNAMENTS_INFO_NOT_FOUND,this.onError);
      }
      
      protected function updateTimeLeft() : void
      {
         if(this.mEventEndServerCallPauseTimer)
         {
            return;
         }
         var timeLeftPretty:Array = this.mTournamentModel.getOverlappingTournamentsTimeLeftAsPrettyString();
         this.mDaysLeftTF.text = timeLeftPretty[0] + " left!";
         this.mDaysLeftTF.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.mEventEndServerCallPauseTimer = new Timer(TOURNAMENT_EXPIRE_MIN_TIME);
            this.mEventEndServerCallPauseTimer.addEventListener(TimerEvent.TIMER,function():void
            {
               mEventEndServerCallPauseTimer.stop();
               mEventEndServerCallPauseTimer = null;
               setNextState(StateFacebookMainMenuSelection.STATE_NAME);
            });
            this.mEventEndServerCallPauseTimer.start();
         }
         timeLeftPretty = null;
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
      
      override protected function updateUIScale() : void
      {
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
            ++this.mUIScaledToNormalCounter;
         }
      }
      
      protected function onCurrentTournamentLoaded(event:TournamentEvent) : void
      {
         if(this.mTournamentsLoadingSteps)
         {
            this.mTournamentsLoadingSteps[TOURNAMENT_LOADING_STEP_CURRENT_LOADED] = true;
         }
         this.mTournamentModel.removeEventListener(TournamentEvent.TOURNAMENT_LOADED,this.onCurrentTournamentLoaded);
      }
      
      protected function onCurrentTournamentStandingsLoaded(event:TournamentEvent) : void
      {
         if(this.mTournamentsLoadingSteps)
         {
            this.mTournamentsLoadingSteps[TOURNAMENT_LOADING_STEP_STANDINGS_LOADED] = true;
         }
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
      }
      
      protected function onCurrentTournamentScoreLoaded(event:TournamentEvent) : void
      {
         if(this.mTournamentsLoadingSteps)
         {
            this.mTournamentsLoadingSteps[TOURNAMENT_LOADING_STEP_SCORE_LOADED] = true;
         }
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreLoaded);
      }
      
      private function onLeagueLoadingStepLoaded(e:LeagueEvent) : void
      {
         if(this.mTournamentsLoadingSteps)
         {
            this.mTournamentsLoadingSteps[TOURNAMENT_LOADING_STEP_LEAGUE_DATA_LOADED] = true;
         }
         this.mLeagueModel.removeEventListener(LeagueEvent.ALL_DATA_LOADED,this.onLeagueLoadingStepLoaded);
      }
      
      private function tournamentInfoLoadingComplete() : void
      {
         if(this.mLoadTournamentId > 0)
         {
            if(this.mLeagueModel.unconcludedResult && this.mLeagueModel.unconcludedResult.t && this.mLeagueModel.unconcludedResult.t.a)
            {
               if(this.mLeagueModel.unconcludedResult.t.a.tid == this.mLoadTournamentId)
               {
                  this.mLoadTournamentId = 0;
                  StateTournamentResults.resultType = StateTournamentResults.RESULTS_SCREEN;
                  setNextState(StateTournamentResults.STATE_NAME);
                  return;
               }
            }
            this.mLoadTournamentId = 0;
            this.mTournamentsLoadingSteps = null;
         }
      }
   }
}
