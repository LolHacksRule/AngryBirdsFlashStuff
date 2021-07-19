package com.angrybirds.states.tournament
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.events.LeagueEvent;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.angrybirds.states.StateBaseLevel;
   import com.angrybirds.states.StateCredits;
   import com.angrybirds.states.StateFacebookMainMenuSelection;
   import com.angrybirds.tournament.OverlappingTournamentButton;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.analytics.INavigable;
   
   public class StateOverlappingTournamentsMenu extends StateBaseLevel implements INavigable
   {
      
      public static const STATE_NAME:String = "OverlappingTournamentsMenu";
      
      private static const UPDATE_ROUNDS_TO_SCALE_UI:int = 5;
      
      private static const LOADING_STEP_INDEX_INFO:int = 0;
      
      private static const LOADING_STEP_INDEX_SCORE:int = 1;
      
      private static const LOADING_STEP_INDEX_STANDINGS:int = 2;
      
      private static const LOADING_STEP_INDEX_LEAGUE:int = 3;
       
      
      private var mUIScaledToFullScreenCounter:int;
      
      private var mUIScaledToNormalCounter:int;
      
      private var mLoadingSteps:Vector.<Boolean>;
      
      protected var mTournamentModel:TournamentModel;
      
      private var mHideLoadingScreen:Boolean;
      
      private var mTournamentButtons:Vector.<OverlappingTournamentButton>;
      
      public function StateOverlappingTournamentsMenu(levelManager:LevelManager, localizationManager:LocalizationManager)
      {
         super(levelManager,false,STATE_NAME,localizationManager);
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
         this.mLoadingSteps = new Vector.<Boolean>();
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         this.mUIScaledToFullScreenCounter = 0;
         this.mUIScaledToNormalCounter = 0;
         this.displayLoadingText(true);
         this.mLoadingSteps = new Vector.<Boolean>();
         this.mLoadingSteps[LOADING_STEP_INDEX_INFO] = false;
         this.mLoadingSteps[LOADING_STEP_INDEX_SCORE] = false;
         this.mLoadingSteps[LOADING_STEP_INDEX_STANDINGS] = false;
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setPopupButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY);
         this.mTournamentModel.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_INITIALIZED,this.onCurrentTournamentInfoLoaded);
         this.mTournamentModel.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreLoaded);
         this.mTournamentModel.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
         this.mTournamentModel.loadData();
         if(LeagueModel.instance.active)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_LEAGUE] = false;
            LeagueModel.instance.addEventListener(LeagueEvent.ALL_DATA_LOADED,this.onAllLeagueDataLoaded);
            LeagueModel.instance.loadData();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_INITIALIZED,this.onCurrentTournamentInfoLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentScoreLoaded);
         this.mTournamentModel.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
         LeagueModel.instance.removeEventListener(LeagueEvent.ALL_DATA_LOADED,this.onAllLeagueDataLoaded);
         this.mTournamentButtons = null;
      }
      
      private function displayLoadingText(value:Boolean) : void
      {
         if(value)
         {
            this.mHideLoadingScreen = false;
            mUIView.getItemByName("loadingTournament").setVisibility(true);
         }
         else
         {
            this.mHideLoadingScreen = true;
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "BACK":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               setNextState(StateFacebookMainMenuSelection.STATE_NAME);
               break;
            case "TOURNAMENT_1":
            case "TOURNAMENT_2":
            case "TOURNAMENT_3":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(StateTournamentLevelSelection.STATE_NAME);
               break;
            case "showCredits":
               setNextState(StateCredits.STATE_NAME);
               break;
            case "SPECIAL_STORE":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         var isLoadingCompleted:Boolean = false;
         var tournamentButton:OverlappingTournamentButton = null;
         super.update(deltaTime);
         if(this.mLoadingSteps)
         {
            for each(isLoadingCompleted in this.mLoadingSteps)
            {
               if(!isLoadingCompleted)
               {
                  break;
               }
            }
            if(isLoadingCompleted)
            {
               this.mLoadingSteps = null;
               this.allDataLoaded();
            }
         }
         if(this.mHideLoadingScreen)
         {
            this.mHideLoadingScreen = false;
            mUIView.getItemByName("loadingTournament").setVisibility(false);
         }
         if(this.mTournamentButtons)
         {
            for each(tournamentButton in this.mTournamentButtons)
            {
               tournamentButton.update(deltaTime);
            }
         }
      }
      
      protected function onCurrentTournamentInfoLoaded(event:TournamentEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_INFO] = true;
         }
      }
      
      protected function onCurrentTournamentScoreLoaded(event:TournamentEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_SCORE] = true;
         }
      }
      
      protected function onCurrentTournamentStandingsLoaded(event:TournamentEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_STANDINGS] = true;
         }
      }
      
      private function onAllLeagueDataLoaded(e:LeagueEvent) : void
      {
         if(this.mLoadingSteps)
         {
            this.mLoadingSteps[LOADING_STEP_INDEX_LEAGUE] = true;
         }
      }
      
      private function allDataLoaded() : void
      {
         var levelObj:Object = null;
         this.mTournamentButtons = new Vector.<OverlappingTournamentButton>();
         var tournamentState:int = OverlappingTournamentButton.STATE_JOIN;
         for each(levelObj in this.mTournamentModel.levelObjects)
         {
            if(AngryBirdsBase.singleton.dataModel.userProgress.isLevelPassed(levelObj.levelId))
            {
               tournamentState = OverlappingTournamentButton.STATE_PLAY;
               break;
            }
         }
         this.mTournamentButtons.push(new OverlappingTournamentButton(mUIView.getItemByName("Button_Tournament_1"),tournamentState));
         this.displayLoadingText(false);
      }
   }
}
