package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.abtesting.ABTestingModel;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.InitDataLoader;
   import com.angrybirds.data.OpenGraphData;
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.data.CachedFacebookFriends;
   import com.angrybirds.friendsbar.ui.profile.ChapterSelectionProfilePicture;
   import com.angrybirds.friendsdatacache.CachedFriendDataVO;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.events.LeagueEvent;
   import com.angrybirds.popups.AvatarCreatorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.qualifier.QualifierInterruptedPopUp;
   import com.angrybirds.states.tournament.StateOverlappingTournamentsMenu;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.states.tournament.StateTournamentResults;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.TournamentRules;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.utils.MovieClipFrameLabelTool;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.server.ABFLoader;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.RankSuffixStringUtil;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import starling.core.Starling;
   
   public class StateFacebookMainMenuSelection extends StateBaseLevel implements IVirtualPageView, INavigable, IWalletContainer
   {
      
      public static const STATE_NAME:String = "MainMenuSelectionState";
      
      public static const SCALE_LEVEL_BUTTONS_IN_FULL_SCREEN:Number = 1.6;
      
      public static const SCALE_AVATARS_IN_FULL_SCREEN:Number = 1.6;
      
      private static const LOADING_STEP_INDEX_SCORE:int = 0;
      
      private static const LOADING_STEP_INDEX_STANDINGS:int = 1;
       
      
      private var mButtonLevelsTween:ISimpleTween = null;
      
      private var mButtonToonsTween:ISimpleTween = null;
      
      private var mTournamentTween:ISimpleTween = null;
      
      private var mSaleTween:ISimpleTween = null;
      
      private var mChapterProfilePicture:ChapterSelectionProfilePicture;
      
      private var mContentType:Array;
      
      private var mTournamentInitLoader:ABFLoader;
      
      private var mLoadingSteps:Vector.<Boolean>;
      
      private const MAIN_MENU_TOURNAMENT_BUTTON_PREFIX:String = "MAIN_MENU_BUTTON_";
      
      private const TOURNAMENT_BUTTON_INSTANCE_NAME:String = "button";
      
      private const TOURNAMENT_BRANDED_BUTTON_INSTANCE_NAME:String = "brandedButton";
      
      private var mTimeLeftTF:TextField;
      
      private var mRankTf:TextField;
      
      private var mTournamentButtonName:String = "button";
      
      private var mTournamentButton:UIComponentRovio;
      
      private var mOverlappingTournamentButton:UIComponentRovio;
      
      private var mWallet:Wallet;
      
      public function StateFacebookMainMenuSelection(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "MainMenuSelectionState")
      {
         this.mContentType = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.mLoadingSteps = new Vector.<Boolean>();
         super(levelManager,initState,name,localizationManager);
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_MainMenuSelection[0]);
         this.mTournamentButton = mUIView.getItemByName("Button_Tournament");
         this.mOverlappingTournamentButton = mUIView.getItemByName("Button_Overlapping_Tournaments");
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         FacebookAnalyticsCollector.getInstance().trackScreenView(FacebookAnalyticsCollector.SCREEN_EVENT_MAIN_MENU_SCREEN);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).serverVersionChecker.holdDialog = false;
         if(Starling.current)
         {
            Starling.current.start();
         }
         AngryBirdsEngine.smLevelMain.setVisible(false);
         AngryBirdsEngine.smLevelMain.clearLevel();
         AngryBirdsBase.singleton.playThemeMusic();
         this.initializeAvatar();
         this.initGUIElements();
         this.updateView();
         (mUIView.getItemByName("MovieClip_BackGround") as UIContainerRovio).mClip.gotoAndStop(0);
         FacebookGoogleAnalyticsTracker.trackPageView(this);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY,null);
         this.mLoadingSteps[LOADING_STEP_INDEX_SCORE] = false;
         this.mLoadingSteps[LOADING_STEP_INDEX_STANDINGS] = false;
         TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentLevelScoresLoaded);
         TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
         TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_INITIALIZED,this.onCurrentTournamentInfoLoaded);
         TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_UPDATED,this.onCurrentTournamentInfoUpdated);
         TournamentModel.instance.loadData();
         if(LeagueModel.instance.active)
         {
            LeagueModel.instance.addEventListener(LeagueEvent.ALL_DATA_LOADED,this.onAllLeagueDataLoaded);
            LeagueModel.instance.loadData();
         }
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      private function onAllLeagueDataLoaded(e:LeagueEvent) : void
      {
         LeagueModel.instance.removeEventListener(LeagueEvent.ALL_DATA_LOADED,this.onAllLeagueDataLoaded);
         if(LeagueModel.instance.unconcludedResult)
         {
            StateTournamentResults.resultType = StateTournamentResults.RESULTS_SCREEN;
            if(AngryBirdsEngine.smApp.getCurrentState() == StateTournamentLevelSelection.STATE_NAME || AngryBirdsEngine.smApp.getCurrentState() == StateFacebookMainMenuSelection.STATE_NAME)
            {
               setNextState(StateTournamentResults.STATE_NAME);
            }
         }
      }
      
      protected function onCurrentTournamentLevelScoresLoaded(event:TournamentEvent) : void
      {
         this.mLoadingSteps[LOADING_STEP_INDEX_SCORE] = true;
         this.injectData();
      }
      
      protected function onCurrentTournamentStandingsLoaded(event:TournamentEvent) : void
      {
         this.mLoadingSteps[LOADING_STEP_INDEX_STANDINGS] = true;
         this.injectData();
      }
      
      private function onCurrentTournamentInfoLoaded(event:TournamentEvent) : void
      {
         this.updateView();
         this.addWallet(new Wallet(this,true,true,false,true));
      }
      
      private function onCurrentTournamentInfoUpdated(event:TournamentEvent) : void
      {
         this.updateView();
      }
      
      private function updateView() : void
      {
         this.initializeOverlappingTournamentRules();
         this.initializeTournamentRules();
         this.showUsersTournamentRank();
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
      
      private function requestTournamentInfoComplete(e:Event) : void
      {
      }
      
      private function injectData() : void
      {
         var isLoadingCompleted:Boolean = false;
         var you:Object = null;
         var scoreData:Array = null;
         var tournamentPlayingFriends:Array = null;
         var lowestCoinReward:int = 0;
         var player:Object = null;
         var friendData:CachedFriendDataVO = null;
         var fbUserProgress:FacebookUserProgress = null;
         var scoreVO:UserTournamentScoreVO = null;
         var yourId:String = null;
         var yourFriendData:CachedFriendDataVO = null;
         var yourName:String = null;
         var levelsTotalScore:Number = NaN;
         var i:int = 0;
         for each(isLoadingCompleted in this.mLoadingSteps)
         {
            if(!isLoadingCompleted)
            {
               return;
            }
         }
         scoreData = [];
         tournamentPlayingFriends = TournamentModel.instance.getTournamentPlayingFriends();
         CachedFacebookFriends.challengeCandidates = new Vector.<UserTournamentScoreVO>();
         lowestCoinReward = 0;
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
            fbUserProgress = AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
            if(player.uid == fbUserProgress.userID)
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
         }
         if(you == null)
         {
            yourId = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID;
            yourFriendData = FriendsDataCache.getFriendData(yourId);
            yourName = !!yourFriendData ? yourFriendData.name : "You";
            you = {
               "r":tournamentPlayingFriends.length + 1,
               "u":yourId,
               "n":yourName
            };
            levelsTotalScore = 0;
            for(i = 0; i < TournamentModel.instance.levelIDs.length; i++)
            {
               levelsTotalScore += fbUserProgress.getTournamentScoreForLevel(TournamentModel.instance.levelIDs[i]);
            }
            you.p = levelsTotalScore;
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
         this.showUsersTournamentRank();
      }
      
      private function initializeTournamentRules() : void
      {
         var tournamentRules:TournamentRules = null;
         var brandName:String = null;
         var cls:Class = null;
         var nextTournament:String = null;
         var buttonMc:MovieClip = null;
         var nextTournamentRule:TournamentRules = null;
         if(!this.mTournamentButton.visible)
         {
            return;
         }
         var buttonContainer:MovieClip = null;
         var brandedButton:DisplayObject = null;
         var defaultMenuButton:DisplayObject = null;
         if(mUIView)
         {
            buttonContainer = this.mTournamentButton.mClip.Button_Graphic;
            MovieClipFrameLabelTool.setStopToLabel(buttonContainer,"DEFAULT");
            brandedButton = MovieClip(buttonContainer.getChildByName(this.TOURNAMENT_BRANDED_BUTTON_INSTANCE_NAME));
            if(brandedButton)
            {
               buttonContainer.removeChild(brandedButton);
            }
            defaultMenuButton = buttonContainer.getChildByName(this.TOURNAMENT_BUTTON_INSTANCE_NAME);
            defaultMenuButton.visible = true;
            this.mTournamentButtonName = this.TOURNAMENT_BUTTON_INSTANCE_NAME;
         }
         this.mTimeLeftTF = null;
         if(TournamentModel.instance.tournamentRules && mUIView)
         {
            MovieClipFrameLabelTool.setStopToLabel((mUIView.getItemByName("MovieClip_BackGround") as UIContainerRovio).mClip,TournamentModel.instance.tournamentRules.chapterSelectionBackgroundFrameLabel);
            tournamentRules = TournamentModel.instance.tournamentRules;
            brandName = tournamentRules.brandedFrameLabel;
            brandName = this.MAIN_MENU_TOURNAMENT_BUTTON_PREFIX + brandName;
            cls = AssetCache.getAssetFromCache(brandName,false,false);
            if(cls)
            {
               defaultMenuButton.visible = false;
               buttonMc = new cls();
               buttonMc.name = this.TOURNAMENT_BRANDED_BUTTON_INSTANCE_NAME;
               buttonContainer.addChild(buttonMc);
               this.mTournamentButtonName = this.TOURNAMENT_BRANDED_BUTTON_INSTANCE_NAME;
            }
            this.showTournamentRuleGraphics(TournamentModel.instance.tournamentRules);
            nextTournament = TournamentModel.instance.nextTournamentBrandedName;
            if(nextTournament)
            {
               nextTournamentRule = TournamentModel.instance.getTournamentRuleByName(nextTournament);
               if(nextTournamentRule && nextTournamentRule.shouldTease)
               {
                  if(nextTournamentRule.chapterSelectionBackgroundFrameLabel)
                  {
                     (mUIView.getItemByName("MovieClip_BackGround") as UIContainerRovio).mClip.gotoAndStop(nextTournamentRule.chapterSelectionBackgroundFrameLabel);
                  }
                  this.showTournamentRuleGraphics(nextTournamentRule,true);
               }
            }
         }
      }
      
      private function initializeOverlappingTournamentRules() : void
      {
         this.mTournamentButton.visible = !TournamentModel.instance.isOverlappingTournamentsEnabled();
         this.mOverlappingTournamentButton.visible = TournamentModel.instance.isOverlappingTournamentsEnabled();
      }
      
      private function showTournamentRuleGraphics(tournamentRule:TournamentRules, isTeaser:Boolean = false) : void
      {
         var i:int = 0;
         var graphicId:String = null;
         var graphic:UIComponentRovio = null;
         if(tournamentRule.chapterSelectionGraphics != null)
         {
            for(i = 0; i < tournamentRule.chapterSelectionGraphics.length; i++)
            {
               graphicId = tournamentRule.chapterSelectionGraphics[i];
               graphic = mUIView.getItemByName(graphicId);
               if(!graphic)
               {
                  throw new Error("Tournament teaser graphic id was not found!");
               }
               graphic.setVisibility(true);
               if(!isTeaser)
               {
                  graphic.setEnabled(true);
               }
            }
         }
      }
      
      private function initGUIElements() : void
      {
         if(ABTestingModel.getGroup(ABTestingModel.AB_TEST_CASE_WEB_STORY_MODE) == ABTestingModel.AB_TEST_GROUP_WEB_STORY_MODE_OFF)
         {
            mUIView.getItemByName("Container_Tournament").mClip.x = 440;
            mUIView.getItemByName("Container_Levels").visible = false;
         }
         var stars:int = AngryBirdsFacebook.sHighScoreListManager.getTotalStars();
         var feathers:int = AngryBirdsFacebook.sHighScoreListManager.getTotalFeathers();
         (mUIView.getItemByName("Textfield_CollectedStars_Total") as UITextFieldRovio).setText(stars.toString());
         (mUIView.getItemByName("Textfield_ME_Score_Total") as UITextFieldRovio).setText(feathers.toString());
      }
      
      private function initializeAvatar() : void
      {
         var avatarHolder:UIComponentRovio = mUIView.getItemByName("AvatarPlaceHolder");
         var silhouette:UIComponentRovio = mUIView.getItemByName("AvatarSilhouette");
         if(this.mChapterProfilePicture == null)
         {
            this.mChapterProfilePicture = new ChapterSelectionProfilePicture((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).avatarString,silhouette.mClip,false,"240");
            this.mChapterProfilePicture.scaleX = 1;
            this.mChapterProfilePicture.scaleY = 1;
            this.mChapterProfilePicture.x = -80;
            this.mChapterProfilePicture.y = -160;
            avatarHolder.mClip.addChild(this.mChapterProfilePicture);
         }
         else
         {
            avatarHolder.mClip.addChild(this.mChapterProfilePicture);
            this.mChapterProfilePicture.silhouette = silhouette.mClip;
            if(this.mChapterProfilePicture.silhouetteShouldBeHidden)
            {
               this.mChapterProfilePicture.silhouette.visible = false;
            }
         }
         avatarHolder.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onAvatarMouseUp);
      }
      
      protected function onAvatarMouseUp(event:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         var avatarCreatorPopup:AvatarCreatorPopup = new AvatarCreatorPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(avatarCreatorPopup);
      }
      
      protected function showUsersTournamentRank() : void
      {
         if(!mUIView)
         {
            return;
         }
         if(!this.mTournamentButton.visible)
         {
            return;
         }
         var clip:MovieClip = MovieClip(this.mTournamentButton.mClip.getChildByName("Button_Graphic"));
         var button:DisplayObjectContainer = DisplayObjectContainer((clip.getChildByName(this.mTournamentButtonName) as DisplayObjectContainer).getChildByName("Textfield_TournamentRank"));
         this.mRankTf = TextField(button.getChildByName("text"));
         var rank:int = TournamentModel.instance.getCurrentRank();
         var rankText:String = "Your Rank: " + rank + RankSuffixStringUtil.getRankSuffix(rank);
         if(rank == TournamentModel.NO_RANK)
         {
            rankText = "Join the fun!";
         }
         this.mRankTf.text = rankText;
      }
      
      override protected function update(deltaTime:Number) : void
      {
         var clip:MovieClip = null;
         var button:DisplayObjectContainer = null;
         super.update(deltaTime);
         if(this.mTournamentButton.visible)
         {
            if(this.mTimeLeftTF == null)
            {
               clip = MovieClip(this.mTournamentButton.mClip.getChildByName("Button_Graphic"));
               button = DisplayObjectContainer((clip.getChildByName(this.mTournamentButtonName) as DisplayObjectContainer).getChildByName("Textfield_TimeLeft"));
               this.mTimeLeftTF = TextField(button.getChildByName("text"));
            }
            this.mTimeLeftTF.text = TournamentModel.instance.getTournamentTimeLeftAsPrettyString()[0] + " left!";
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var avatarPopup:AvatarCreatorPopup = null;
         var fn:Function = null;
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "AVATAREDITOR":
               avatarPopup = new AvatarCreatorPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(avatarPopup);
               break;
            case "showCredits":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(StateCredits.STATE_NAME);
               break;
            case "TOURNAMENT":
            case "OVERLAPPING_TOURNAMENTS_MENU":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               mLevelManager.selectEpisode(4);
               fn = function(event:Event):void
               {
                  var loader:URLLoader = event.currentTarget as URLLoader;
                  loader.removeEventListener(Event.COMPLETE,InitDataLoader.onErasureStateLoaded);
                  loader.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  if(eventName == "TOURNAMENT")
                  {
                     setNextState(StateTournamentLevelSelection.STATE_NAME);
                  }
                  else
                  {
                     setNextState(StateOverlappingTournamentsMenu.STATE_NAME);
                  }
               };
               InitDataLoader.loadGDPRErasureState(InitDataLoader.onErasureStateLoaded,fn);
               break;
            case "LEVELS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               fn = function(event:Event):void
               {
                  var loader:URLLoader = event.currentTarget as URLLoader;
                  loader.removeEventListener(Event.COMPLETE,InitDataLoader.onErasureStateLoaded);
                  loader.removeEventListener(IOErrorEvent.IO_ERROR,fn);
                  setNextState(StateEpisodeSelection.STATE_NAME);
               };
               InitDataLoader.loadGDPRErasureState(InitDataLoader.onErasureStateLoaded,fn);
               break;
            case "TOONS":
               this.openToonsLink();
               break;
            case "LEVELSOVER":
               if(this.mButtonLevelsTween != null)
               {
                  this.mButtonLevelsTween.stop();
               }
               this.mButtonLevelsTween = TweenManager.instance.createTween(mUIView.getItemByName("Container_Levels").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mButtonLevelsTween.play();
               break;
            case "LEVELSOUT":
               if(this.mButtonLevelsTween != null)
               {
                  this.mButtonLevelsTween.stop();
               }
               this.mButtonLevelsTween = TweenManager.instance.createTween(mUIView.getItemByName("Container_Levels").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mButtonLevelsTween.play();
               break;
            case "TOONSOVER":
               if(this.mButtonToonsTween != null)
               {
                  this.mButtonToonsTween.stop();
               }
               this.mButtonToonsTween = TweenManager.instance.createTween(mUIView.getItemByName("Container_Toons").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mButtonToonsTween.play();
               break;
            case "TOONSOUT":
               if(this.mButtonToonsTween != null)
               {
                  this.mButtonToonsTween.stop();
               }
               this.mButtonToonsTween = TweenManager.instance.createTween(mUIView.getItemByName("Container_Toons").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mButtonToonsTween.play();
               break;
            case "TOURNAMENTOVER":
               if(this.mTournamentTween != null)
               {
                  this.mTournamentTween.stop();
               }
               this.mTournamentTween = TweenManager.instance.createTween(mUIView.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mTournamentTween.play();
               break;
            case "TOURNAMENTOUT":
               if(this.mTournamentTween != null)
               {
                  this.mTournamentTween.stop();
               }
               this.mTournamentTween = TweenManager.instance.createTween(mUIView.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mTournamentTween.play();
               break;
            case "EARNCOINS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.exitFullScreen();
               ExternalInterfaceHandler.performCall("earnCredits");
         }
      }
      
      private function openToonsLink() : void
      {
         var url:URLRequest = new URLRequest("http://www.angrybirds.com/toons/");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_MAIN_MENU;
      }
      
      public function getIdentifier() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         TournamentModel.instance.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentLevelScoresLoaded);
         TournamentModel.instance.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,this.onCurrentTournamentStandingsLoaded);
         TournamentModel.instance.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_INITIALIZED,this.onCurrentTournamentInfoLoaded);
         TournamentModel.instance.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_UPDATED,this.onCurrentTournamentInfoUpdated);
         super.deActivate();
         this.stopTweens();
         mUIView.getItemByName("Container_Levels").mClip.scaleX = 1;
         mUIView.getItemByName("Container_Levels").mClip.scaleY = 1;
         mUIView.getItemByName("Container_Tournament").mClip.scaleX = 1;
         mUIView.getItemByName("Container_Tournament").mClip.scaleY = 1;
         this.removeWallet(this.mWallet);
      }
      
      private function stopTweens() : void
      {
         if(this.mButtonLevelsTween != null)
         {
            this.mButtonLevelsTween.stop();
            this.mButtonLevelsTween = null;
         }
         if(this.mButtonToonsTween != null)
         {
            this.mButtonToonsTween.stop();
            this.mButtonToonsTween = null;
         }
         if(this.mSaleTween != null)
         {
            this.mSaleTween.stop();
            this.mSaleTween = null;
         }
         if(this.mTournamentTween != null)
         {
            this.mTournamentTween.stop();
            this.mTournamentTween = null;
         }
      }
      
      public function getName() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var scaleValue:Number = 1;
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).isFullScreenMode())
         {
            scaleValue = StateFacebookMainMenuSelection.SCALE_LEVEL_BUTTONS_IN_FULL_SCREEN;
         }
         if(this.mWallet)
         {
            this.mWallet.walletClip.scaleX = scaleValue;
            this.mWallet.walletClip.scaleY = scaleValue;
         }
      }
      
      public function addWallet(wallet:Wallet) : void
      {
         this.mWallet = wallet;
      }
      
      public function removeWallet(wallet:Wallet) : void
      {
         if(wallet)
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
   }
}
