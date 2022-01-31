package com.angrybirds.states.tournament
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.constants.StringConstants;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.LeagueScoreVO;
   import com.angrybirds.data.TournamentResultsVO;
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.ui.profile.BirdBotProfilePicture;
   import com.angrybirds.friendsdatacache.CachedFriendDataVO;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.LeagueResultAvatar;
   import com.angrybirds.league.LeagueType;
   import com.angrybirds.league.events.LeagueEvent;
   import com.angrybirds.league.events.ProgressAnimationEvent;
   import com.angrybirds.league.ui.LeagueProgressBar;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.TournamentResultSharePopUp;
   import com.angrybirds.popups.league.SlingshotRewardInfoPopup;
   import com.angrybirds.sfx.Star;
   import com.angrybirds.sfx.StarSplash;
   import com.angrybirds.states.StateBaseLevel;
   import com.angrybirds.states.StateCredits;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.utils.FriendsUtil;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.sound.FacebookThemeSongs;
   import com.rovio.sound.SoundChannelController;
   import com.rovio.sound.SoundEngine;
   import com.rovio.sound.ThemeMusicManager;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class StateTournamentResults extends StateBaseLevel implements INavigable, IWalletContainer
   {
      
      public static const STATE_NAME:String = "StateTournamentResults";
      
      private static const MAX_NAME_WIDTH:int = 370;
      
      public static const RESULTS_SCREEN:int = 1;
      
      public static const PREVIOUS_WEEK:int = 2;
      
      private static var sResultType:int = 1;
      
      private static var sScreenModeChanged:Boolean;
      
      public static var smAllowedToShowShareOrLeaguePromotion:Boolean = false;
      
      public static const CASE_LEAGUE_WIN:uint = 1;
      
      public static const CASE_LEAGUE_PROMOTION:uint = 2;
      
      public static const CASE_STAR_PROMOTION:uint = 3;
      
      public static const CASE_FRIENDS_1ST:uint = 4;
      
      public static const CASE_FRIENDS_2ND:uint = 5;
      
      public static const CASE_FRIENDS_3RD:uint = 6;
      
      private static const TOURNAMENT_RESULT_SOUND_CHANNEL:String = "TournamentResultSoundChannel";
       
      
      private var mTournamentResults:TournamentResultsVO;
      
      private var mGoldAvatar:LeagueResultAvatar;
      
      private var mSilverAvatar:LeagueResultAvatar;
      
      private var mBronzeAvatar:LeagueResultAvatar;
      
      private var mFourthAvatar:LeagueResultAvatar;
      
      private var mGoldAvatarLeague:LeagueResultAvatar;
      
      private var mSilverAvatarLeague:LeagueResultAvatar;
      
      private var mBronzeAvatarLeague:LeagueResultAvatar;
      
      private var mFourthAvatarLeague:LeagueResultAvatar;
      
      protected var mABFont:Font;
      
      private var mProgressBar:LeagueProgressBar;
      
      private const FRAME_ACTIVE:String = "ACTIVE";
      
      private const FRAME_INACTIVE:String = "INACTIVE";
      
      private var claimAllRewardsAtOnce:Boolean = true;
      
      private var mcLeagueResult:MovieClip;
      
      private var mcFriendsResult:MovieClip;
      
      private var mColumns:Array;
      
      protected var mStarSplash:StarSplash;
      
      protected var mStarSplashPool:Vector.<StarSplash>;
      
      private var mLastFrameTime:Number;
      
      private var mCelebrateTimerTournament:Timer;
      
      private var mCelebrateTimerLeague:Timer;
      
      private var giftCarousel:Class;
      
      private var mcGiftCarouselTournament:MovieClip;
      
      private var mcGiftCarouselLeague:MovieClip;
      
      private var mPlayerPrizes:Array;
      
      private var mWallet:Wallet;
      
      private var mCurrentTotalCoins:Number;
      
      private var tweenRotateShineLeague:ISimpleTween;
      
      private var tweenRotateShineTournament:ISimpleTween;
      
      private var mPlayerPreviousPositionAmongFrnds:Object;
      
      private var mPlayerPreviousPositionInLeague:Object;
      
      private var tweenTrophy:ISimpleTween;
      
      private var mPreviousTrophies:Array;
      
      private var mHasPrizeToDisplay:Array;
      
      private var mPreviousResult:Object = null;
      
      private var mAllRewardsClaimed:Boolean = false;
      
      private var TROPHY_TWEEN_TIME:Number = 0.2;
      
      private var TROPHY_TWEEN_DELAY_TIME:Number = 0.2;
      
      private var mAnimating:Boolean;
      
      private var GIFT_CAROUSEL_TIME_SCALE:Number = 0.2;
      
      private var GIFT_CAROUSEL_TIME_PAUSE:Number = 1.2;
      
      private var PRIZE_SHINE_TIME:Number = 20.0;
      
      private var LEAGUE_WIN:uint = 1;
      
      private var LEAGUE_PROMOTION_WITHOUT_WIN:uint = 2;
      
      private var LEAGUE_STAR_PROMOTION:uint = 3;
      
      private var mLeagueResultCelebrationReason:uint;
      
      private var mRewardItems:Object;
      
      private var mPrizeCounts:Array;
      
      private var mPromotionAnimation:LeaguePromotionAnimation;
      
      private var mLeagueAnimationStarter:Timer;
      
      public function StateTournamentResults(levelManager:LevelManager, initObject:Boolean, localizationManager:LocalizationManager)
      {
         this.mABFont = new AngryBirdsFont();
         this.mColumns = [0,0.25,0.5,0.75,1];
         this.mPlayerPrizes = [0,0];
         this.mHasPrizeToDisplay = [false,false];
         super(levelManager,initObject,STATE_NAME,localizationManager);
      }
      
      public static function get resultType() : int
      {
         return sResultType;
      }
      
      public static function set resultType(value:int) : void
      {
         sResultType = value;
      }
      
      override protected function init() : void
      {
         super.init();
         this.giftCarousel = AssetCache.getAssetFromCache("GiftCarousel");
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_Tournament_Results[0]);
         this.mProgressBar = new LeagueProgressBar(mUIView);
         this.mcFriendsResult = mUIView.getItemByName("FriendsResult").mClip;
         this.mcLeagueResult = mUIView.getItemByName("LeaguesResult").mClip;
      }
      
      private function animateProgressBar(shouldAnimate:Boolean = false) : void
      {
         this.mProgressBar.removeEventListener(ProgressAnimationEvent.PROGRESSBAR_COMPLETED,this.onProgressBarCompleted);
         this.mProgressBar.addEventListener(ProgressAnimationEvent.PROGRESSBAR_COMPLETED,this.onProgressBarCompleted);
         this.mProgressBar.animate(this.mPreviousResult,sResultType,shouldAnimate);
      }
      
      public function getName() : String
      {
         return STATE_NAME;
      }
      
      override public function activate(previousState:String) : void
      {
         var themeChannel:SoundChannelController = null;
         var musicManager:ThemeMusicManager = null;
         super.activate(previousState);
         this.initializeUIElements();
         this.initializeTournamentData();
         this.initializePrizeAnimations();
         this.initializeTrophies();
         this.initializePrizeCounts();
         this.updateClaimButtons();
         this.updateCheckMarkAnimations();
         this.hideNotInLeagueInfo();
         this.initializeEventListeners();
         this.applyTournamentResults();
         this.applyPreviousLeagueResults();
         this.initRanking();
         this.animateProgressBar();
         this.applySidebarData();
         this.initializeLeagueShareComponent();
         this.initWallet();
         this.mHasPrizeToDisplay = [false,false];
         this.mAllRewardsClaimed = false;
         this.mAnimating = false;
         if(sResultType == RESULTS_SCREEN && (LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.l || LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.t))
         {
            LeagueModel.instance.claimRewards();
            SoundEngine.addNewChannelControl(TOURNAMENT_RESULT_SOUND_CHANNEL,10,0.8);
            SoundEngine.playSound("BirdsApplause",TOURNAMENT_RESULT_SOUND_CHANNEL);
            themeChannel = SoundEngine.getChannelController(AngryBirdsBase.ANGRYBIRDS_THEME_MUSIC_CHANNEL);
            if(themeChannel.playingSongsCount <= 0)
            {
               musicManager = AngryBirdsFacebook.sSingleton.getThemeMusicManager();
               musicManager.playSongWithFade(FacebookThemeSongs.themeSongName);
            }
         }
         mUIView.getItemByName("loadingResults").setVisibility(false);
         AngryBirdsBase.singleton.playThemeMusic();
         this.reportStatistics();
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
      }
      
      private function reportStatistics() : void
      {
         var playerResult:Object = null;
         var res:Object = null;
         var completedTournamentId:String = null;
         var completedTournamentLevels:int = 0;
         var completedTournamentStars:int = 0;
         var redBeaten:* = false;
         var yellowBeaten:* = false;
         if(resultType != RESULTS_SCREEN)
         {
            return;
         }
         var result:Object = LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.t && LeagueModel.instance.unconcludedResult.t.players ? LeagueModel.instance.unconcludedResult.t : this.getTournamentPreviousResults();
         if(!result)
         {
            return;
         }
         var playerUserId:String = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID;
         var birdBot1Score:Number = 0;
         var birdBot2Score:Number = 0;
         for each(res in result.players)
         {
            if(res.uid == playerUserId)
            {
               playerResult = res;
            }
            else if(res.uid == BirdBotProfilePicture.BIRD_BOT_1)
            {
               birdBot1Score = res.p;
            }
            if(res.uid == BirdBotProfilePicture.BIRD_BOT_2)
            {
               birdBot2Score = res.p;
            }
         }
         if(result.a)
         {
            completedTournamentId = result.a.tid;
            completedTournamentLevels = result.a.lc;
            completedTournamentStars = result.a.s;
            redBeaten = playerResult.p > birdBot1Score;
            yellowBeaten = playerResult.p > birdBot2Score;
            FacebookAnalyticsCollector.getInstance().trackTournamentStatisticsEvent(completedTournamentId,completedTournamentLevels,redBeaten,yellowBeaten,result.players.length,playerResult.r,playerResult.p,completedTournamentStars);
         }
      }
      
      private function initializeLeagueShareComponent() : void
      {
         if(this.mPromotionAnimation != null)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
            this.mPromotionAnimation = null;
         }
         if(sResultType == PREVIOUS_WEEK)
         {
            mUIView.getItemByName("Promotion_Main_Anim").setVisibility(false);
         }
         else
         {
            this.mPromotionAnimation = new LeaguePromotionAnimation(UIContainerRovio(mUIView.getItemByName("Promotion_Main_Anim")));
            this.mPromotionAnimation.activate();
         }
      }
      
      private function initRanking() : void
      {
         var starRating:Number = this.getStarRating();
         var userRatingGain:Number = this.getUserRatingGained();
         if(this.mProgressBar)
         {
            this.mProgressBar.starRating = starRating;
            this.mProgressBar.userRatingGain = userRatingGain;
         }
      }
      
      private function initWallet() : void
      {
         this.addWallet(new Wallet(this,true,false));
         this.mWallet.walletClip.scaleY = 1.3;
         this.mWallet.walletClip.scaleX = 1.3;
         this.mCurrentTotalCoins = DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel).virtualCurrencyModel.totalCoins;
         this.mWallet.setCoinsAmountText(this.mCurrentTotalCoins);
      }
      
      private function initializeTrophies() : void
      {
         mUIView.setText("" + LeagueModel.instance.bronzeTrophies,"BronzeTrophiesTextfield");
         mUIView.setText("" + LeagueModel.instance.silverTrophies,"SilverTrophiesTextfield");
         mUIView.setText("" + LeagueModel.instance.goldTrophies,"GoldTrophiesTextfield");
         this.mPreviousTrophies = new Array();
         this.mPreviousTrophies.push(LeagueModel.instance.goldTrophies);
         this.mPreviousTrophies.push(LeagueModel.instance.silverTrophies);
         this.mPreviousTrophies.push(LeagueModel.instance.bronzeTrophies);
      }
      
      private function initializeEventListeners() : void
      {
         AngryBirdsBase.singleton.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.onFullScreenToggled);
         AngryBirdsBase.singleton.stage.addEventListener(Event.RESIZE,this.onResize);
         if(this.claimAllRewardsAtOnce)
         {
            LeagueModel.instance.addEventListener(LeagueEvent.ALL_REWARDS_CLAIMED,this.onAllRewardsClaimed);
         }
         else
         {
            TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_REWARD_CLAIMED,this.onTournamentRewardClaimed);
            LeagueModel.instance.addEventListener(LeagueEvent.LEAGUE_REWARD_CLAIMED,this.onLeagueRewardClaimed);
         }
         LeagueModel.instance.addEventListener(LeagueEvent.PLAYER_PROFILE_DATA_UPDATED,this.onPlayerProfileUpdated);
      }
      
      private function initializeTournamentData() : void
      {
         this.mTournamentResults = new TournamentResultsVO();
         this.mTournamentResults.first = this.getPlayerByRankTournament(1);
         this.mTournamentResults.second = this.getPlayerByRankTournament(2);
         this.mTournamentResults.third = this.getPlayerByRankTournament(3);
         this.mTournamentResults.fourth = this.getPlayerByRankTournament(4);
         mUIView.getItemByName("FriendsFirst").mClip.gotoAndStop(0);
         mUIView.getItemByName("FriendsSecond").mClip.gotoAndStop(0);
         mUIView.getItemByName("FriendsThird").mClip.gotoAndStop(0);
         mUIView.getItemByName("LeagueFirst").mClip.gotoAndStop(0);
         mUIView.getItemByName("LeagueSecond").mClip.gotoAndStop(0);
         mUIView.getItemByName("LeagueNotPodium").mClip.gotoAndStop(0);
      }
      
      private function initializeUIElements() : void
      {
         mUIView.getItemByName("loadingResults").setVisibility(true);
         mUIView.getItemByName("loadingResults").goToFrame(1,true);
         mUIView.getItemByName("Banner_LastWeek").setVisibility(sResultType == PREVIOUS_WEEK);
         mUIView.getItemByName("Button_Back").setVisibility(sResultType == PREVIOUS_WEEK);
         if(AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN || AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
         {
            sScreenModeChanged = true;
         }
      }
      
      private function initializePrizeAnimations() : void
      {
         this.mStarSplashPool = new Vector.<StarSplash>();
         this.mcGiftCarouselTournament = new this.giftCarousel();
         this.mcGiftCarouselLeague = new this.giftCarousel();
         this.tweenRotateShineTournament = TweenManager.instance.createTween(mUIView.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.PRIZE_SHINE_TIME,TweenManager.EASING_LINEAR);
         this.tweenRotateShineLeague = TweenManager.instance.createTween(mUIView.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.PRIZE_SHINE_TIME,TweenManager.EASING_LINEAR);
      }
      
      private function onTweenRotateShineTournamentCompleted() : void
      {
         this.tweenRotateShineTournament = null;
         this.tweenRotateShineTournament = TweenManager.instance.createTween(mUIView.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.PRIZE_SHINE_TIME,TweenManager.EASING_LINEAR);
         this.tweenRotateShineTournament.onComplete = this.onTweenRotateShineTournamentCompleted;
         this.tweenRotateShineTournament.play();
      }
      
      private function onTweenRotateShineLeagueCompleted() : void
      {
         this.tweenRotateShineLeague = null;
         this.tweenRotateShineLeague = TweenManager.instance.createTween(mUIView.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.PRIZE_SHINE_TIME,TweenManager.EASING_LINEAR);
         this.tweenRotateShineLeague.onComplete = this.onTweenRotateShineLeagueCompleted;
         this.tweenRotateShineLeague.play();
      }
      
      private function updateCheckMarkAnimations() : void
      {
         if(sResultType == PREVIOUS_WEEK)
         {
            if(LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.t)
            {
               mUIView.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
            }
            if(LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.l)
            {
               mUIView.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
            }
         }
         else
         {
            mUIView.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
            mUIView.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         }
      }
      
      private function hideCheckMarkAnimations() : void
      {
         mUIView.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         mUIView.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         mUIView.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
         mUIView.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
      }
      
      private function hideNotInLeagueInfo() : void
      {
         mUIView.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = false;
         mUIView.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = false;
         mUIView.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = true;
         mUIView.getItemByName("LeagueFirst").setVisibility(true);
         mUIView.getItemByName("LeagueSecond").setVisibility(true);
         mUIView.getItemByName("LeagueNotPodium").setVisibility(true);
      }
      
      private function showNotInLeagueInfo() : void
      {
         mUIView.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         mUIView.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = true;
         mUIView.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.text = "Complete any level to join the league";
         mUIView.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = true;
         mUIView.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = false;
         mUIView.getItemByName("LeagueFirst").setVisibility(false);
         mUIView.getItemByName("LeagueSecond").setVisibility(false);
         mUIView.getItemByName("LeagueNotPodium").setVisibility(false);
         smAllowedToShowShareOrLeaguePromotion = true;
      }
      
      private function updateClaimButtons() : void
      {
         mUIView.getItemByName("LeagueRewards").mClip.btnClaimLeagueReward.visible = false;
         mUIView.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
      }
      
      protected function onResize(event:Event) : void
      {
         sScreenModeChanged = true;
      }
      
      protected function onFullScreenToggled(e:FullScreenEvent) : void
      {
         sScreenModeChanged = true;
      }
      
      private function updateUI() : void
      {
         this.mcFriendsResult.x = AngryBirdsEngine.getCurrentScreenWidth() * this.mColumns[1] - this.mcFriendsResult.width * 0.5;
         this.mcLeagueResult.x = AngryBirdsEngine.getCurrentScreenWidth() * this.mColumns[3] - this.mcLeagueResult.width * 0.5;
         this.mcGiftCarouselTournament.x = mUIView.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.mcGiftCarouselTournament.y = mUIView.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,mUIView.getItemByName("FriendsRewards").mClip.height * 0.5)).y;
         this.mcGiftCarouselLeague.x = mUIView.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.mcGiftCarouselLeague.y = mUIView.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,mUIView.getItemByName("LeagueRewards").mClip.height * 0.5)).y;
      }
      
      override protected function update(deltaTime:Number) : void
      {
         var splash:StarSplash = null;
         var responseObject:Object = null;
         var rewardSlingshotData:Array = null;
         var userAction:uint = 0;
         super.update(deltaTime);
         if(this.mRewardItems && (this.mPromotionAnimation && !this.mPromotionAnimation.running))
         {
            for each(responseObject in this.mRewardItems)
            {
               for each(rewardSlingshotData in SlingshotRewardInfoPopup.REWARD_SLINGSHOT_DATA)
               {
                  if(rewardSlingshotData[SlingshotRewardInfoPopup.DATA_INDEX_SLINGSHOT_ID].toUpperCase() == responseObject.i.toString().toUpperCase())
                  {
                     AngryBirdsBase.singleton.popupManager.openPopup(new SlingshotRewardInfoPopup(rewardSlingshotData[SlingshotRewardInfoPopup.DATA_INDEX_SLINGSHOT_ID],SlingshotRewardInfoPopup.TYPE_REWARD_CLAIMED));
                  }
               }
            }
            this.mRewardItems = null;
         }
         if(sResultType == RESULTS_SCREEN)
         {
            if(smAllowedToShowShareOrLeaguePromotion)
            {
               if(!AngryBirdsBase.singleton.popupManager.isPopupOpen())
               {
                  smAllowedToShowShareOrLeaguePromotion = false;
                  mUIView.getItemByName("Button_Back").setVisibility(true);
                  this.showSharePopUpOrLeaguePromotion();
               }
            }
         }
         if(this.mPromotionAnimation && this.mPromotionAnimation.running)
         {
            userAction = this.mPromotionAnimation.update();
            if(userAction == LeaguePromotionAnimation.ACTION_SHARE)
            {
               this.onLeaguePromotionShare();
            }
            else if(userAction == LeaguePromotionAnimation.ACTION_SKIP)
            {
               this.mPromotionAnimation.stop();
            }
         }
         if(this.mAllRewardsClaimed)
         {
            this.mAllRewardsClaimed = false;
            if(!this.mAnimating)
            {
               this.tweenTrophies();
            }
         }
         if(!this.mProgressBar.isAnimating() || sScreenModeChanged)
         {
            sScreenModeChanged = false;
         }
         if(this.mProgressBar)
         {
            this.mProgressBar.update(deltaTime);
         }
         var deltaTimeSpash:Number = getTimer() - this.mLastFrameTime;
         this.mLastFrameTime = getTimer();
         for each(splash in this.mStarSplashPool)
         {
            splash.update(deltaTimeSpash);
         }
      }
      
      private function applySidebarData() : void
      {
         var listItemVO:FriendListItemVO = null;
         var ob:Object = null;
         var cachedFriend:CachedFriendDataVO = null;
         var lastWeekTournamentPlayers:Array = [];
         var lastWeekLeaguePlayers:Array = [];
         var lastWeekLeaguePlayersUnconcluded:Array = [];
         if(sResultType == RESULTS_SCREEN)
         {
            if(!LeagueModel.instance.unconcludedResult || LeagueModel.instance.unconcludedResult.t && !LeagueModel.instance.unconcludedResult.t.players)
            {
               (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_LAST_WEEK_TOURNAMENT,lastWeekTournamentPlayers);
               return;
            }
         }
         else if(!LeagueModel.instance.previousResult || LeagueModel.instance.previousResult.t && !LeagueModel.instance.previousResult.t.players)
         {
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_LAST_WEEK_TOURNAMENT,lastWeekTournamentPlayers);
            return;
         }
         var prevResult:Object = null;
         if(sResultType == RESULTS_SCREEN)
         {
            if(LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.t && LeagueModel.instance.unconcludedResult.t.players)
            {
               prevResult = LeagueModel.instance.unconcludedResult.t.players;
            }
         }
         else if(LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.t && LeagueModel.instance.previousResult.t.players)
         {
            prevResult = LeagueModel.instance.previousResult.t.players;
         }
         if(prevResult)
         {
            for each(ob in prevResult)
            {
               ob.c = ob.r - 1 < this.mPrizeCounts.length ? this.mPrizeCounts[ob.r - 1] : this.mPrizeCounts[this.mPrizeCounts.length - 1];
               listItemVO = UserTournamentScoreVO.fromServerObject(ob);
               if(UserTournamentScoreVO(listItemVO) != null)
               {
                  UserTournamentScoreVO(listItemVO).leagueName = "";
               }
               cachedFriend = FriendsDataCache.getFriendData(ob.uid);
               if(cachedFriend)
               {
                  listItemVO.userName = cachedFriend.name;
               }
               lastWeekTournamentPlayers.push(listItemVO);
            }
         }
         if(LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.l && LeagueModel.instance.unconcludedResult.l.p)
         {
            for each(ob in LeagueModel.instance.unconcludedResult.l.p)
            {
               listItemVO = LeagueScoreVO.fromServerObject(ob);
               lastWeekLeaguePlayersUnconcluded.push(listItemVO);
            }
         }
         if(LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.l && LeagueModel.instance.previousResult.l.p)
         {
            for each(ob in LeagueModel.instance.previousResult.l.p)
            {
               listItemVO = LeagueScoreVO.fromServerObject(ob);
               lastWeekLeaguePlayers.push(listItemVO);
            }
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_LAST_WEEK_TOURNAMENT,lastWeekTournamentPlayers);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_LAST_WEEK_LEAGUE,lastWeekLeaguePlayers);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_LAST_WEEK_LEAGUE_UNCONCLUDED,lastWeekLeaguePlayersUnconcluded);
      }
      
      private function applyLeagueRanking(prevResult:Object = null) : void
      {
         if(!prevResult || !prevResult.l)
         {
            this.showNotInLeagueInfo();
         }
         else
         {
            this.hideNotInLeagueInfo();
         }
      }
      
      private function initializePrizeCounts() : void
      {
         this.mPrizeCounts = resultType == RESULTS_SCREEN ? (LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.t && LeagueModel.instance.unconcludedResult.t.prizeCounts ? LeagueModel.instance.unconcludedResult.t.prizeCounts : this.getPreviousResultsPrizeCounts()) : this.getPreviousResultsPrizeCounts();
      }
      
      private function applyTournamentResults() : void
      {
         var res:Object = null;
         var playerPositionIndex:Number = NaN;
         var playerScoreVO:UserTournamentScoreVO = null;
         this.mPlayerPreviousPositionAmongFrnds = {};
         var playerUserId:String = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID;
         var result:Object = resultType == RESULTS_SCREEN ? (LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.t && LeagueModel.instance.unconcludedResult.t.players ? LeagueModel.instance.unconcludedResult.t : this.getTournamentPreviousResults()) : this.getTournamentPreviousResults();
         if(result)
         {
            for each(res in result.players)
            {
               if(playerUserId == res.uid)
               {
                  this.mPlayerPreviousPositionAmongFrnds = res;
                  break;
               }
            }
            var friendsFirst:MovieClip = mUIView.getItemByName("FriendsFirst").mClip;
            friendsFirst.gotoAndStop(this.FRAME_INACTIVE);
            if(this.mPlayerPreviousPositionAmongFrnds && this.mPlayerPreviousPositionAmongFrnds.r == 1)
            {
               friendsFirst.gotoAndStop(this.FRAME_ACTIVE);
            }
            if(this.mTournamentResults.first)
            {
               this.mGoldAvatar = new LeagueResultAvatar(friendsFirst.getChildByName("AvatarImage") as MovieClip,this.mTournamentResults.first);
               FriendsUtil.setTextInCorrectFont(friendsFirst.getChildByName("txtName") as TextField,this.mTournamentResults.first.userName,MAX_NAME_WIDTH);
            }
            var rewardTF:TextField = (friendsFirst.getChildByName("rewardText") as MovieClip).text;
            rewardTF.text = this.mPrizeCounts[0].toString();
            (friendsFirst.getChildByName("AvatarImage") as MovieClip).visible = this.mTournamentResults.first != null;
            (friendsFirst.getChildByName("txtName") as TextField).visible = this.mTournamentResults.first != null;
            var friendsSecond:MovieClip = mUIView.getItemByName("FriendsSecond").mClip;
            friendsSecond.gotoAndStop(this.FRAME_INACTIVE);
            if(this.mPlayerPreviousPositionAmongFrnds && this.mPlayerPreviousPositionAmongFrnds.r == 2)
            {
               friendsSecond.gotoAndStop(this.FRAME_ACTIVE);
            }
            if(this.mTournamentResults.second)
            {
               this.mSilverAvatar = new LeagueResultAvatar(friendsSecond.getChildByName("AvatarImage") as MovieClip,this.mTournamentResults.second);
               FriendsUtil.setTextInCorrectFont(friendsSecond.getChildByName("txtName") as TextField,this.mTournamentResults.second.userName,MAX_NAME_WIDTH);
            }
            rewardTF = (friendsSecond.getChildByName("rewardText") as MovieClip).text;
            rewardTF.text = this.mPrizeCounts[1].toString();
            (friendsSecond.getChildByName("AvatarImage") as MovieClip).visible = this.mTournamentResults.second != null;
            (friendsSecond.getChildByName("txtName") as TextField).visible = this.mTournamentResults.second != null;
            var friendsThird:MovieClip = mUIView.getItemByName("FriendsThird").mClip;
            friendsThird.gotoAndStop(this.FRAME_INACTIVE);
            if(this.mPlayerPreviousPositionAmongFrnds && this.mPlayerPreviousPositionAmongFrnds.r == 3)
            {
               friendsThird.gotoAndStop(this.FRAME_ACTIVE);
            }
            if(this.mTournamentResults.third)
            {
               this.mBronzeAvatar = new LeagueResultAvatar(friendsThird.getChildByName("AvatarImage") as MovieClip,this.mTournamentResults.third);
               FriendsUtil.setTextInCorrectFont(friendsThird.getChildByName("txtName") as TextField,this.mTournamentResults.third.userName,MAX_NAME_WIDTH);
            }
            rewardTF = (friendsThird.getChildByName("rewardText") as MovieClip).text;
            rewardTF.text = this.mPrizeCounts[2].toString();
            (friendsThird.getChildByName("AvatarImage") as MovieClip).visible = this.mTournamentResults.third != null;
            (friendsThird.getChildByName("txtName") as TextField).visible = this.mTournamentResults.third != null;
            if(this.mPlayerPreviousPositionAmongFrnds && this.mPlayerPreviousPositionAmongFrnds.r)
            {
               playerPositionIndex = this.mPlayerPreviousPositionAmongFrnds.r - 1;
               if(playerPositionIndex >= 3)
               {
                  playerPositionIndex = 3;
                  friendsThird.gotoAndStop(this.FRAME_ACTIVE);
                  (friendsThird.getChildByName("txtRank") as TextField).visible = true;
                  (friendsThird.getChildByName("txtRank") as TextField).text = this.getRankDisplayString(this.mPlayerPreviousPositionAmongFrnds.r);
                  friendsThird.getChildByName("mcTrophyBronze").visible = false;
                  playerScoreVO = this.getPlayerByRankTournament(this.mPlayerPreviousPositionAmongFrnds.r);
                  if(playerScoreVO)
                  {
                     this.mBronzeAvatar = new LeagueResultAvatar(friendsThird.getChildByName("AvatarImage") as MovieClip,playerScoreVO);
                     FriendsUtil.setTextInCorrectFont(friendsThird.getChildByName("txtName") as TextField,playerScoreVO.userName,MAX_NAME_WIDTH);
                     rewardTF.text = this.mPrizeCounts[playerPositionIndex];
                  }
               }
               else
               {
                  (friendsThird.getChildByName("txtRank") as TextField).visible = false;
                  friendsThird.getChildByName("mcTrophyBronze").visible = true;
                  if(playerPositionIndex == 0)
                  {
                     rewardTF = (friendsFirst.getChildByName("rewardText") as MovieClip).text;
                  }
                  else if(playerPositionIndex == 1)
                  {
                     rewardTF = (friendsSecond.getChildByName("rewardText") as MovieClip).text;
                  }
                  rewardTF.text = this.mPrizeCounts[playerPositionIndex];
               }
               (mUIView.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = this.mPrizeCounts[playerPositionIndex] + "x";
               this.mPlayerPrizes[0] = this.mPrizeCounts[playerPositionIndex];
               mUIView.getItemByName("FriendsRewards").mClip.mcCoin.visible = true;
               if(resultType == RESULTS_SCREEN)
               {
                  mUIView.getItemByName("FriendsRewards").mClip.RewardShine.visible = true;
                  if(LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.t && (!LeagueModel.instance.unconcludedResult || !LeagueModel.instance.unconcludedResult.t))
                  {
                     this.tweenRotateShineTournament.stop();
                  }
                  else
                  {
                     this.tweenRotateShineTournament = TweenManager.instance.createTween(mUIView.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.PRIZE_SHINE_TIME,TweenManager.EASING_LINEAR);
                     this.tweenRotateShineTournament.onComplete = this.onTweenRotateShineTournamentCompleted;
                     this.tweenRotateShineTournament.play();
                  }
               }
               else
               {
                  mUIView.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
               }
            }
            else
            {
               (mUIView.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = "";
               mUIView.getItemByName("FriendsRewards").mClip.mcCoin.visible = false;
               mUIView.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
            }
            return;
         }
      }
      
      private function tweenTrophies() : void
      {
         var mcTrophy:MovieClip = null;
         if(resultType == RESULTS_SCREEN && (this.mPlayerPreviousPositionAmongFrnds && this.mPlayerPreviousPositionAmongFrnds.r >= 1 && this.mPlayerPreviousPositionAmongFrnds.r <= 3))
         {
            mcTrophy = this.mPlayerPreviousPositionAmongFrnds && this.mPlayerPreviousPositionAmongFrnds.r == 1 ? mUIView.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.mPlayerPreviousPositionAmongFrnds && this.mPlayerPreviousPositionAmongFrnds.r == 2 ? mUIView.getItemByName("MyTrophies").mClip.ContainerTrophySilver : mUIView.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
            mcTrophy.visible = true;
            mcTrophy.parent.setChildIndex(mcTrophy,mcTrophy.parent.numChildren - 1);
            if(this.tweenTrophy)
            {
               this.tweenTrophy.stop();
               this.tweenTrophy = null;
            }
            this.tweenTrophy = TweenManager.instance.createTween(mcTrophy,{
               "scaleX":1.5,
               "scaleY":1.5
            },{
               "scaleX":1,
               "scaleY":1
            },this.TROPHY_TWEEN_TIME,TweenManager.EASING_SINE_IN,this.TROPHY_TWEEN_DELAY_TIME);
            this.tweenTrophy.onComplete = this.onCompletedTrophyTween;
            this.tweenTrophy.play();
            SoundEngine.playSound("Get_Coins",TOURNAMENT_RESULT_SOUND_CHANNEL);
         }
         else if(resultType == RESULTS_SCREEN && !this.mAnimating)
         {
            this.onTrophyTweenAllCompleted();
         }
      }
      
      private function onCompletedTrophyTween() : void
      {
         if(this.tweenTrophy)
         {
            this.tweenTrophy.stop();
            this.tweenTrophy = null;
         }
         if(this.mPlayerPreviousPositionAmongFrnds)
         {
            if(this.mPlayerPreviousPositionAmongFrnds.r == 1)
            {
               mUIView.setText("" + (this.mPreviousTrophies[0] + 1),"GoldTrophiesTextfield");
            }
            if(this.mPlayerPreviousPositionAmongFrnds.r == 2)
            {
               mUIView.setText("" + (this.mPreviousTrophies[1] + 1),"SilverTrophiesTextfield");
            }
            if(this.mPlayerPreviousPositionAmongFrnds.r == 3)
            {
               mUIView.setText("" + (this.mPreviousTrophies[2] + 1),"BronzeTrophiesTextfield");
            }
         }
         var mcTrophy:MovieClip = this.mPlayerPreviousPositionAmongFrnds.r == 1 ? mUIView.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.mPlayerPreviousPositionAmongFrnds.r == 2 ? mUIView.getItemByName("MyTrophies").mClip.ContainerTrophySilver : mUIView.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
         var delayTween:ISimpleTween = TweenManager.instance.createTween(mcTrophy,{"scaleX":1.5},null,0.1);
         this.tweenTrophy = TweenManager.instance.createTween(mcTrophy,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.5,
            "scaleY":1.5
         },this.TROPHY_TWEEN_TIME,TweenManager.EASING_SINE_IN);
         var seqTween:ISimpleTween = TweenManager.instance.createSequenceTween(delayTween,this.tweenTrophy);
         seqTween.onComplete = this.onTrophyTweenAllCompleted;
         seqTween.play();
      }
      
      private function onTrophyTweenAllCompleted() : void
      {
         if(this.mHasPrizeToDisplay[0])
         {
            this.mAnimating = true;
            this.showTournamentPrize();
            this.mLeagueAnimationStarter = new Timer(200,1);
            this.mLeagueAnimationStarter.addEventListener(TimerEvent.TIMER_COMPLETE,this.onAnimationStartTimer);
            this.mLeagueAnimationStarter.start();
            this.mHasPrizeToDisplay[0] = false;
         }
      }
      
      private function onAnimationStartTimer(e:TimerEvent) : void
      {
         this.mLeagueAnimationStarter = null;
         this.showLeaguePrize();
      }
      
      protected function onProgressBarCompleted(e:ProgressAnimationEvent) : void
      {
         if(this.mHasPrizeToDisplay[1])
         {
            this.mHasPrizeToDisplay[1] = false;
         }
         ItemsInventory.instance.loadInventory();
      }
      
      private function getTournamentPreviousResults() : Object
      {
         return LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.t && LeagueModel.instance.previousResult.t.players ? LeagueModel.instance.previousResult.t : null;
      }
      
      private function getPreviousResultsPrizeCounts() : Array
      {
         return LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.t && LeagueModel.instance.previousResult.t.prizeCounts ? LeagueModel.instance.previousResult.t.prizeCounts : [0,0,0];
      }
      
      private function applyPreviousLeagueResults() : void
      {
         var res:Object = null;
         var first:LeagueScoreVO = null;
         var second:LeagueScoreVO = null;
         var third:LeagueScoreVO = null;
         this.mPlayerPreviousPositionInLeague = {};
         var leagueFirst:MovieClip = mUIView.getItemByName("LeagueFirst").mClip;
         leagueFirst.gotoAndStop(this.FRAME_INACTIVE);
         var leagueSecond:MovieClip = mUIView.getItemByName("LeagueSecond").mClip;
         leagueSecond.gotoAndStop(this.FRAME_INACTIVE);
         var leagueNotPodium:MovieClip = mUIView.getItemByName("LeagueNotPodium").mClip;
         leagueNotPodium.gotoAndStop(this.FRAME_INACTIVE);
         var previousResult:Object = LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.l ? LeagueModel.instance.unconcludedResult : LeagueModel.instance.previousResult;
         if(LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.l)
         {
            previousResult.lastResult = true;
         }
         else if(previousResult)
         {
            previousResult.lastResult = false;
         }
         this.mPreviousResult = previousResult;
         if(!previousResult || !previousResult.l || !previousResult.l.p || !previousResult.lastResult && sResultType == RESULTS_SCREEN && !previousResult.l)
         {
            this.applyLeagueRanking(previousResult);
            return;
         }
         var playerUserId:String = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID;
         for each(res in previousResult.l.p)
         {
            if(playerUserId == res.u)
            {
               this.mPlayerPreviousPositionInLeague = res;
               break;
            }
         }
         first = this.getPlayerByRankLeague(1);
         second = this.getPlayerByRankLeague(2);
         third = this.getPlayerByRankLeague(3);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 1)
         {
            leagueFirst.gotoAndStop(this.FRAME_ACTIVE);
         }
         if(first)
         {
            this.mGoldAvatarLeague = new LeagueResultAvatar(leagueFirst.getChildByName("AvatarImage") as MovieClip,first);
            FriendsUtil.setTextInCorrectFont(leagueFirst.getChildByName("txtName") as TextField,first.userName,MAX_NAME_WIDTH);
         }
         var rewardTF:TextField = (leagueFirst.getChildByName("rewardText") as MovieClip).text;
         rewardTF.text = previousResult.l.p && previousResult.l.p[0] && previousResult.l.p[0].c ? previousResult.l.p[0].c.toString() : "0";
         rewardTF.visible = true;
         (leagueFirst.getChildByName("AvatarImage") as MovieClip).visible = first != null;
         (leagueFirst.getChildByName("txtName") as TextField).visible = first != null;
         (leagueFirst.getChildByName("txtRank") as TextField).text = this.getRankDisplayString(1);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 2)
         {
            leagueSecond.gotoAndStop(this.FRAME_ACTIVE);
         }
         if(second)
         {
            this.mSilverAvatarLeague = new LeagueResultAvatar(leagueSecond.getChildByName("AvatarImage") as MovieClip,second);
            FriendsUtil.setTextInCorrectFont(leagueSecond.getChildByName("txtName") as TextField,second.userName,MAX_NAME_WIDTH);
         }
         rewardTF = (leagueSecond.getChildByName("rewardText") as MovieClip).text;
         rewardTF.text = previousResult.l.p && previousResult.l.p[1] && previousResult.l.p[1].c ? previousResult.l.p[1].c.toString() : "0";
         (leagueSecond.getChildByName("AvatarImage") as MovieClip).visible = second != null;
         (leagueSecond.getChildByName("txtName") as TextField).visible = second != null;
         (leagueSecond.getChildByName("txtRank") as TextField).text = this.getRankDisplayString(2);
         var thirdRankIndex:Number = 2;
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r >= 3)
         {
            leagueNotPodium.gotoAndStop(this.FRAME_ACTIVE);
            if(this.mPlayerPreviousPositionInLeague.r > 3)
            {
               third = this.getPlayerByRankLeague(this.mPlayerPreviousPositionInLeague.r);
               thirdRankIndex = this.mPlayerPreviousPositionInLeague.r - 1;
            }
         }
         if(third)
         {
            mUIView.getItemByName("LeagueNotPodium").setVisibility(true);
            this.mFourthAvatarLeague = new LeagueResultAvatar(leagueNotPodium.getChildByName("AvatarImage") as MovieClip,third);
            FriendsUtil.setTextInCorrectFont(leagueNotPodium.getChildByName("txtName") as TextField,third.userName,MAX_NAME_WIDTH);
            mUIView.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = true;
            mUIView.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = true;
            mUIView.getItemByName("LeagueNotPodium").mClip.rewardText.visible = true;
         }
         rewardTF = (leagueNotPodium.getChildByName("rewardText") as MovieClip).text;
         rewardTF.text = previousResult.l.p && previousResult.l.p[thirdRankIndex] && previousResult.l.p[thirdRankIndex].c ? previousResult.l.p[thirdRankIndex].c.toString() : "0";
         (leagueNotPodium.getChildByName("AvatarImage") as MovieClip).visible = third != null;
         (leagueNotPodium.getChildByName("txtName") as TextField).visible = third != null;
         (leagueNotPodium.getChildByName("txtRank") as TextField).text = previousResult.l.p && previousResult.l.p[thirdRankIndex] && previousResult.l.p[thirdRankIndex].r ? this.getRankDisplayString(previousResult.l.p[thirdRankIndex].r) : "";
         if(!third)
         {
            mUIView.getItemByName("LeagueNotPodium").setVisibility(false);
            mUIView.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = false;
            mUIView.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = false;
            mUIView.getItemByName("LeagueNotPodium").mClip.rewardText.visible = false;
         }
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.c)
         {
            this.mPlayerPrizes[1] = this.mPlayerPreviousPositionInLeague.c;
            (mUIView.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = this.mPlayerPreviousPositionInLeague.c + "x";
            mUIView.getItemByName("LeagueRewards").mClip.mcCoin.visible = true;
            if(resultType == RESULTS_SCREEN)
            {
               mUIView.getItemByName("LeagueRewards").mClip.RewardShine.visible = true;
               if(LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.l && (!LeagueModel.instance.unconcludedResult || !LeagueModel.instance.unconcludedResult.l))
               {
                  this.tweenRotateShineLeague.stop();
               }
               else
               {
                  this.tweenRotateShineLeague = TweenManager.instance.createTween(mUIView.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.PRIZE_SHINE_TIME,TweenManager.EASING_LINEAR);
                  this.tweenRotateShineLeague.onComplete = this.onTweenRotateShineLeagueCompleted;
                  this.tweenRotateShineLeague.play();
               }
            }
            else
            {
               mUIView.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
            }
         }
         else
         {
            (mUIView.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = "";
            mUIView.getItemByName("LeagueRewards").mClip.mcCoin.visible = false;
            mUIView.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
         }
         this.applyLeagueRanking(previousResult);
      }
      
      private function doStarPromotionAnimIfAvailable(leagueData:Object, playerData:Object) : Boolean
      {
         var starRating:uint = 0;
         var hasPromotion:Boolean = false;
         if(playerData.s && playerData.s > 0)
         {
            starRating = playerData.s;
            if(playerData.lrc > 0)
            {
               hasPromotion = true;
               if(starRating == 1)
               {
                  this.mPromotionAnimation.startLeagueToStarPromotionAnim(leagueData.pli.tn,playerData.s);
               }
               else
               {
                  this.mPromotionAnimation.startStarLeaguePromotionAnim(leagueData.pli.tn,playerData.s);
               }
            }
         }
         return hasPromotion;
      }
      
      private function showSharePopUpOrLeaguePromotion() : void
      {
         var showStarPromotion:Boolean = false;
         var header:String = null;
         var body:String = null;
         var caseId:uint = 0;
         var resultSharePopUp:TournamentResultSharePopUp = null;
         var leagueData:Object = LeagueModel.instance.unconcludedResult.l;
         if(!(leagueData && leagueData.pli && leagueData.pli.tn == LeagueType.sQualifierLeague.id))
         {
            if(leagueData && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r && this.mPlayerPreviousPositionInLeague.r == 1)
            {
               this.mLeagueResultCelebrationReason = this.LEAGUE_WIN;
               showStarPromotion = this.doStarPromotionAnimIfAvailable(leagueData,this.mPlayerPreviousPositionInLeague);
               if(!showStarPromotion)
               {
                  this.mPromotionAnimation.startLeaguePromotionAnim(leagueData.pli.tn,leagueData.li.tn);
               }
            }
            else if(leagueData && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.p && this.mPlayerPreviousPositionInLeague.p == "u")
            {
               this.mLeagueResultCelebrationReason = this.LEAGUE_STAR_PROMOTION;
               showStarPromotion = this.doStarPromotionAnimIfAvailable(leagueData,this.mPlayerPreviousPositionInLeague);
               if(!showStarPromotion)
               {
                  this.mLeagueResultCelebrationReason = this.LEAGUE_PROMOTION_WITHOUT_WIN;
                  this.mPromotionAnimation.startLeaguePromotionAnim(leagueData.pli.tn,leagueData.li.tn);
               }
            }
            else if(this.mPlayerPreviousPositionAmongFrnds && this.mPlayerPreviousPositionAmongFrnds.r && this.mPlayerPreviousPositionAmongFrnds.r <= 3)
            {
               switch(this.mPlayerPreviousPositionAmongFrnds.r)
               {
                  case 1:
                     header = StringConstants.TOURNAMENT_RESULT_SHARE_1ST_FRIENDS_HEADER;
                     body = StringConstants.TOURNAMENT_RESULT_SHARE_1ST_FRIENDS_BODY;
                     caseId = CASE_FRIENDS_1ST;
                     break;
                  case 2:
                     header = StringConstants.TOURNAMENT_RESULT_SHARE_2ND_FRIENDS_HEADER;
                     body = StringConstants.TOURNAMENT_RESULT_SHARE_2ND_FRIENDS_BODY;
                     caseId = CASE_FRIENDS_2ND;
                     break;
                  case 3:
                     header = StringConstants.TOURNAMENT_RESULT_SHARE_3RD_FRIENDS_HEADER;
                     body = StringConstants.TOURNAMENT_RESULT_SHARE_3RD_FRIENDS_BODY;
                     caseId = CASE_FRIENDS_3RD;
               }
               resultSharePopUp = new TournamentResultSharePopUp(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,header,body,caseId);
               AngryBirdsBase.singleton.popupManager.openPopup(resultSharePopUp);
            }
         }
      }
      
      private function onLeaguePromotionShare() : void
      {
         var caseId:uint = 0;
         var fn:Function = null;
         switch(this.mLeagueResultCelebrationReason)
         {
            case this.LEAGUE_WIN:
               caseId = CASE_LEAGUE_WIN;
               break;
            case this.LEAGUE_PROMOTION_WITHOUT_WIN:
               caseId = CASE_LEAGUE_PROMOTION;
               break;
            case this.LEAGUE_STAR_PROMOTION:
               caseId = CASE_STAR_PROMOTION;
         }
         fn = function(success:String):void
         {
            var leagueName:String = null;
            ExternalInterfaceHandler.removeCallback("permissionRequestComplete",fn);
            if(success == "true")
            {
               mPromotionAnimation.stop();
               leagueName = LeagueType.getLeagueById(mPreviousResult.l.li.tn).name;
               ExternalInterfaceHandler.performCall("shareTournamentResult",caseId,caseId == CASE_STAR_PROMOTION ? mPlayerPreviousPositionInLeague.s : leagueName);
            }
         };
         ExternalInterfaceHandler.addCallback("permissionRequestComplete",fn);
         ExternalInterfaceHandler.performCall("askForPublishStreamPermission");
      }
      
      private function getRankDisplayString(rank:int) : String
      {
         return rank + ".";
      }
      
      private function getPlayerByRankTournament(rank:int) : UserTournamentScoreVO
      {
         var playerObject:Object = null;
         var cachedFriend:CachedFriendDataVO = null;
         if(resultType == PREVIOUS_WEEK)
         {
            return this.getPlayerByRankTournamentPreviousTournament(rank);
         }
         var result:Object = LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.t ? LeagueModel.instance.unconcludedResult.t : (LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.t ? LeagueModel.instance.previousResult.t : null);
         if(result)
         {
            if(result.players)
            {
               if(rank <= result.players.length)
               {
                  playerObject = result.players[rank - 1];
                  if(playerObject)
                  {
                     cachedFriend = FriendsDataCache.getFriendData(playerObject.uid);
                     if(cachedFriend)
                     {
                        playerObject.n = cachedFriend.name;
                     }
                     return UserTournamentScoreVO.fromServerObject(playerObject);
                  }
               }
            }
         }
         return null;
      }
      
      private function getPlayerByRankTournamentPreviousTournament(rank:int) : UserTournamentScoreVO
      {
         var playerObject:Object = null;
         var cachedFriend:CachedFriendDataVO = null;
         if(LeagueModel.instance.previousResult && LeagueModel.instance.previousResult.t)
         {
            if(LeagueModel.instance.previousResult.t.players)
            {
               if(rank <= LeagueModel.instance.previousResult.t.players.length)
               {
                  playerObject = LeagueModel.instance.previousResult.t.players[rank - 1];
                  if(playerObject)
                  {
                     cachedFriend = FriendsDataCache.getFriendData(playerObject.uid);
                     if(cachedFriend)
                     {
                        playerObject.n = cachedFriend.name;
                     }
                     return UserTournamentScoreVO.fromServerObject(playerObject);
                  }
               }
            }
         }
         return null;
      }
      
      private function getPlayerByRankLeague(rank:int) : LeagueScoreVO
      {
         var playerObject:Object = null;
         var result:Object = LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.l ? LeagueModel.instance.unconcludedResult.l : LeagueModel.instance.previousResult.l;
         if(result)
         {
            if(result.p)
            {
               if(rank <= result.p.length)
               {
                  playerObject = result.p[rank - 1];
                  if(playerObject)
                  {
                     return LeagueScoreVO.fromServerObject(playerObject);
                  }
               }
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "CLAIM":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               break;
            case "BACK":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               setNextState(StateTournamentLevelSelection.STATE_NAME);
               break;
            case "showCredits":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(StateCredits.STATE_NAME);
               break;
            default:
               if(this.mPromotionAnimation)
               {
                  this.mPromotionAnimation.onUIInteraction(eventIndex,eventName,component);
               }
         }
      }
      
      override public function deActivate() : void
      {
         this.mAnimating = false;
         super.deActivate();
         if(this.mBronzeAvatar)
         {
            this.mBronzeAvatar.dispose();
         }
         if(this.mSilverAvatar)
         {
            this.mSilverAvatar.dispose();
         }
         if(this.mGoldAvatar)
         {
            this.mGoldAvatar.dispose();
         }
         if(this.mFourthAvatar)
         {
            this.mFourthAvatar.dispose();
         }
         if(this.mBronzeAvatarLeague)
         {
            this.mBronzeAvatarLeague.dispose();
         }
         if(this.mSilverAvatarLeague)
         {
            this.mSilverAvatarLeague.dispose();
         }
         if(this.mGoldAvatarLeague)
         {
            this.mGoldAvatarLeague.dispose();
         }
         if(this.mFourthAvatarLeague)
         {
            this.mFourthAvatarLeague.dispose();
         }
         if(this.mPromotionAnimation)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
         }
         this.removeWallet(this.mWallet);
         AngryBirdsBase.singleton.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.onFullScreenToggled);
         AngryBirdsBase.singleton.stage.removeEventListener(Event.RESIZE,this.onResize);
         SoundEngine.stopChannel(TOURNAMENT_RESULT_SOUND_CHANNEL);
         if(this.claimAllRewardsAtOnce)
         {
            LeagueModel.instance.removeEventListener(LeagueEvent.ALL_REWARDS_CLAIMED,this.onAllRewardsClaimed);
         }
         else
         {
            LeagueModel.instance.removeEventListener(LeagueEvent.LEAGUE_REWARD_CLAIMED,this.onLeagueRewardClaimed);
            TournamentModel.instance.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_REWARD_CLAIMED,this.onTournamentRewardClaimed);
         }
         this.unloadPrizeTimers();
         this.cleanSplashes();
         LeagueModel.instance.removeEventListener(LeagueEvent.PLAYER_PROFILE_DATA_UPDATED,this.onPlayerProfileUpdated);
         LeagueModel.instance.clearUnconcludedData();
         if(this.mProgressBar)
         {
            this.mProgressBar.deActivate();
         }
      }
      
      private function unloadPrizeTimers() : void
      {
         this.mCelebrateTimerTournament = null;
         this.mCelebrateTimerLeague = null;
         if(mUIView && mUIView.contains(this.mcGiftCarouselLeague))
         {
            mUIView.removeChild(this.mcGiftCarouselLeague);
         }
         if(mUIView && mUIView.contains(this.mcGiftCarouselTournament))
         {
            mUIView.removeChild(this.mcGiftCarouselTournament);
         }
         this.mcGiftCarouselLeague = null;
         this.mcGiftCarouselTournament = null;
      }
      
      protected function onShareClick(event:MouseEvent) : void
      {
      }
      
      protected function onAllRewardsClaimed(event:LeagueEvent) : void
      {
         var aoArray:Array = null;
         var rewardArray:Array = null;
         var prevItemsArray:Array = null;
         var i:int = 0;
         var ao:AnalyticsObject = null;
         if(event.type == LeagueEvent.ALL_REWARDS_CLAIMED)
         {
            LeagueModel.instance.removeEventListener(LeagueEvent.ALL_REWARDS_CLAIMED,this.onAllRewardsClaimed);
            if(event.data.t)
            {
               aoArray = new Array();
               rewardArray = event.data.t.items;
               prevItemsArray = event.data.t.itemsPrev;
               for(i = 0; i < rewardArray.length; i++)
               {
                  ao = new AnalyticsObject();
                  this.mHasPrizeToDisplay[0] = true;
                  ao.screen = STATE_NAME;
                  ao.amount = rewardArray[i].q - prevItemsArray[i].q;
                  if(rewardArray[i].i == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
                  {
                     ao.currency = "IVC";
                  }
                  ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_TOURNAMENT_REWARD;
                  ao.itemType = rewardArray[i].i;
                  aoArray.push(ao);
               }
               ItemsInventory.instance.injectInventoryUpdate(event.data.t,true,aoArray);
            }
            if(event.data.l)
            {
               aoArray = new Array();
               rewardArray = event.data.l.items;
               prevItemsArray = event.data.l.itemsPrev;
               for(i = 0; i < rewardArray.length; i++)
               {
                  ao = new AnalyticsObject();
                  this.mHasPrizeToDisplay[1] = true;
                  ao.screen = STATE_NAME;
                  ao.amount = rewardArray[i].q - prevItemsArray[i].q;
                  if(rewardArray[i].i == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
                  {
                     ao.currency = "IVC";
                  }
                  ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_LEAGUE_REWARD;
                  ao.itemType = rewardArray[i].i;
                  aoArray.push(ao);
               }
               ItemsInventory.instance.injectInventoryUpdate(event.data.l,true,aoArray);
               this.mRewardItems = event.data.l.items;
            }
            this.mAllRewardsClaimed = true;
         }
      }
      
      protected function onLeagueRewardClaimed(event:LeagueEvent) : void
      {
         var ao:AnalyticsObject = null;
         if(event.type == LeagueEvent.LEAGUE_REWARD_CLAIMED)
         {
            ao = new AnalyticsObject();
            ao.screen = STATE_NAME;
            ao.amount = this.mPlayerPrizes[1];
            ao.currency = "IVC";
            ao.gainType = "LEAGUE_REWARD";
            ao.itemType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            ItemsInventory.instance.injectInventoryUpdate(event.data,false,[ao]);
            this.showLeaguePrize();
            ItemsInventory.instance.loadInventory();
         }
      }
      
      protected function onTournamentRewardClaimed(event:TournamentEvent) : void
      {
         var ao:AnalyticsObject = null;
         var aoArray:Array = null;
         if(event.type == TournamentEvent.CURRENT_TOURNAMENT_REWARD_CLAIMED)
         {
            mUIView.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
            ao = new AnalyticsObject();
            ao.screen = STATE_NAME;
            ao.amount = this.mPlayerPrizes[0];
            ao.currency = "IVC";
            ao.gainType = "TOURNAMENT_REWARD";
            ao.itemType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            aoArray = [ao];
            ItemsInventory.instance.injectInventoryUpdate(event.data,false,aoArray);
            this.showTournamentPrize();
            ItemsInventory.instance.loadInventory();
         }
      }
      
      protected function onPlayerProfileUpdated(event:LeagueEvent) : void
      {
         this.applyPreviousLeagueResults();
      }
      
      private function showTournamentPrize() : void
      {
         if(this.mCelebrateTimerTournament)
         {
            this.mCelebrateTimerTournament.reset();
            this.mCelebrateTimerTournament.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onCelebrateTournamentComplete);
            this.mCelebrateTimerTournament = null;
         }
         this.mCelebrateTimerTournament = new Timer(100,1);
         this.mCelebrateTimerTournament.addEventListener(TimerEvent.TIMER_COMPLETE,this.onCelebrateTournamentComplete);
         this.mCelebrateTimerTournament.start();
      }
      
      protected function onCelebrateTournamentComplete(event:TimerEvent) : void
      {
         var splashPoint:Point = null;
         if(this.mCelebrateTimerTournament)
         {
            this.mCelebrateTimerTournament.reset();
            this.mCelebrateTimerTournament.removeEventListener(TimerEvent.TIMER,this.onCelebrateTournamentComplete);
            this.mCelebrateTimerTournament = null;
         }
         if(this.mcGiftCarouselTournament)
         {
            this.mcGiftCarouselTournament.txtRewardAmount.text = this.mPlayerPrizes[0] + " x";
         }
         this.mCurrentTotalCoins = DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel).virtualCurrencyModel.totalCoins;
         this.mWallet.setCoinsAmountText(this.mCurrentTotalCoins);
         this.mWallet.animateGotCoins(this.mPlayerPrizes[0]);
         if(this.mcGiftCarouselTournament)
         {
            if(mUIView && mUIView.contains(this.mcGiftCarouselTournament))
            {
               mUIView.removeChild(this.mcGiftCarouselTournament);
            }
            this.mcGiftCarouselTournament.scaleY = 0;
            this.mcGiftCarouselTournament.scaleX = 0;
            splashPoint = new Point(mUIView.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(mUIView.getItemByName("FriendsRewards").mClip.width * 0.5,0)).x,mUIView.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,mUIView.getItemByName("FriendsRewards").mClip.height * 0.5)).y + 20);
            this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,splashPoint.x,splashPoint.y,StarSplash.STARSPLASH_BADGE,StarSplash.STAR_MAX,Star.TYPE_ALL);
            mUIView.addChild(this.mStarSplash);
            this.mStarSplashPool.push(this.mStarSplash);
            this.onTweenTournamentPrizeCompleted();
         }
      }
      
      private function onTweenTournamentPrizeCompleted() : void
      {
         mUIView.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
         mUIView.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
         this.mProgressBar.starRating = this.getStarRating();
         this.mProgressBar.userRatingGain = this.getUserRatingGained();
         this.animateProgressBar(true);
      }
      
      private function showLeaguePrize() : void
      {
         if(this.mCelebrateTimerLeague)
         {
            this.mCelebrateTimerLeague.reset();
            this.mCelebrateTimerLeague.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onCelebrateLeagueComplete);
            this.mCelebrateTimerLeague = null;
         }
         this.mCelebrateTimerLeague = new Timer(100,1);
         this.mCelebrateTimerLeague.addEventListener(TimerEvent.TIMER_COMPLETE,this.onCelebrateLeagueComplete);
         this.mCelebrateTimerLeague.start();
      }
      
      protected function onCelebrateLeagueComplete(event:TimerEvent) : void
      {
         if(this.mCelebrateTimerLeague)
         {
            this.mCelebrateTimerLeague.reset();
            this.mCelebrateTimerLeague.removeEventListener(TimerEvent.TIMER,this.onCelebrateLeagueComplete);
            this.mCelebrateTimerLeague = null;
         }
         this.mCurrentTotalCoins = DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel).virtualCurrencyModel.totalCoins;
         this.mWallet.setCoinsAmountText(this.mCurrentTotalCoins);
         this.mWallet.animateGotCoins(this.mPlayerPrizes[1]);
         if(this.mcGiftCarouselLeague)
         {
            this.mcGiftCarouselLeague.txtRewardAmount.text = this.mPlayerPrizes[1] + " x";
            if(mUIView && mUIView.contains(this.mcGiftCarouselLeague))
            {
               mUIView.removeChild(this.mcGiftCarouselLeague);
            }
            this.mcGiftCarouselLeague.scaleY = 0;
            this.mcGiftCarouselLeague.scaleX = 0;
         }
         var splashPoint:Point = new Point(mUIView.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(mUIView.getItemByName("LeagueRewards").mClip.width * 0.5,0)).x,mUIView.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,mUIView.getItemByName("LeagueRewards").mClip.height * 0.5)).y + 20);
         if(LeagueModel.instance.unconcludedResult && LeagueModel.instance.unconcludedResult.l)
         {
            this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,splashPoint.x,splashPoint.y,StarSplash.STARSPLASH_BADGE,StarSplash.STAR_MAX,Star.TYPE_ALL);
            mUIView.addChild(this.mStarSplash);
            this.mStarSplashPool.push(this.mStarSplash);
            this.onTweenShowLeaguePrizeCompleted();
         }
      }
      
      private function onTweenShowLeaguePrizeCompleted() : void
      {
         mUIView.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
         mUIView.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
      }
      
      private function cleanSplashes() : void
      {
         var splash:StarSplash = null;
         for each(splash in this.mStarSplashPool)
         {
            if(mUIView && mUIView.contains(splash))
            {
               mUIView.removeChild(splash);
            }
            splash.clean();
         }
         this.mStarSplashPool = new Vector.<StarSplash>();
      }
      
      public function addWallet(wallet:Wallet) : void
      {
         this.mWallet = wallet;
      }
      
      public function get walletContainer() : Sprite
      {
         return mUIView.getItemByName("walletContainer").mClip;
      }
      
      public function removeWallet(wallet:Wallet) : void
      {
         wallet.dispose();
         wallet = null;
      }
      
      public function get wallet() : Wallet
      {
         return this.mWallet;
      }
      
      private function getUserRatingGained() : Number
      {
         var o:Object = null;
         var userRatingGain:Number = 0;
         if(this.mPreviousResult && this.mPreviousResult.l)
         {
            for each(o in this.mPreviousResult.l.p)
            {
               if(o.me && o.lrc)
               {
                  userRatingGain = o.lrc;
                  break;
               }
            }
         }
         return userRatingGain;
      }
      
      private function getStarRating() : Number
      {
         var o:Object = null;
         var starRating:Number = -1;
         if(this.mPreviousResult && this.mPreviousResult.l && this.mPreviousResult.l.p)
         {
            for each(o in this.mPreviousResult.l.p)
            {
               if(o.me)
               {
                  if(o.s && Number(o.s) >= 0)
                  {
                     starRating = Number(o.s);
                     break;
                  }
                  starRating = -1;
               }
            }
         }
         return starRating;
      }
      
      public function refreshTournamentAvatar() : void
      {
         this.applyTournamentResults();
      }
   }
}

import com.angrybirds.league.LeagueType;
import com.rovio.assets.AssetCache;
import com.rovio.sound.SoundEngine;
import com.rovio.ui.Components.Helpers.UIComponentRovio;
import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
import com.rovio.ui.Components.UIContainerRovio;
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.MovieClip;
import flash.text.TextField;

class LeaguePromotionAnimation
{
   
   private static const CLASS_DIAMOND_WITH_STAR_LINKAGE_NAME:String = "DiamondWithStar";
   
   private static const TXT_RATING_FIELD_NAME:String = "txtStarRating";
   
   private static const ACTION_NONE:uint = 0;
   
   private static const ACTION_SHARE:uint = 1;
   
   private static const ACTION_SKIP:uint = 2;
   
   private static const PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL:String = "PromotionAnimationEndFrameChannel_";
   
   private static const PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL:String = "PromotionAnimationDefaultChannel";
    
   
   private var mUserAction:uint = 0;
   
   private var mComponent:UIContainerRovio;
   
   private var mClip:MovieClip;
   
   private var _mRunning:Boolean;
   
   private var mSkipButton:UIComponentRovio;
   
   private var mShareButton:UIComponentRovio;
   
   private var mBadgeFrom:DisplayObjectContainer;
   
   private var mBadgeTo:DisplayObjectContainer;
   
   private var mActivePromotionSounds:Array;
   
   private var mNextLeagueTextToLowerBanner:String;
   
   function LeaguePromotionAnimation(component:UIContainerRovio)
   {
      super();
      this.mComponent = component;
      this.mClip = component.mClip;
      this.mComponent.setVisibility(false);
      this.mShareButton = this.mComponent.getItemByName("Button_ShareToWall");
      this.mSkipButton = this.mComponent.getItemByName("Button_Skip");
   }
   
   private function activate() : void
   {
   }
   
   private function deActivate() : void
   {
      var i:int = 0;
      SoundEngine.stopChannel(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL);
      if(this.mActivePromotionSounds)
      {
         for(i = 0; i < this.mActivePromotionSounds.length; i++)
         {
            SoundEngine.stopChannel(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + i);
         }
      }
   }
   
   private function startLeagueToStarPromotionAnim(prevLeague:String, starAmount:uint) : void
   {
      if(!this._mRunning)
      {
         this.resetVisual();
         this.mBadgeFrom.addChild(this.getBadgeDsp(prevLeague,1.5));
         this.mBadgeTo.addChild(this.getDiamondWithStarBadge(starAmount,1.5));
         this.initPromotionAnimationSounds();
         this.mNextLeagueTextToLowerBanner = prevLeague;
         this.mNextLeagueTextToLowerBanner = LeagueType.sDiamondLeague.id;
      }
   }
   
   private function startStarLeaguePromotionAnim(prevleague:String, starAmount:uint) : void
   {
      if(!this._mRunning)
      {
         this.resetVisual();
         this.mBadgeFrom.addChild(this.getDiamondWithStarBadge(starAmount - 1,1.5));
         this.mBadgeTo.addChild(this.getDiamondWithStarBadge(starAmount,1.5));
         this.initPromotionAnimationSounds();
         this.mNextLeagueTextToLowerBanner = prevleague;
         this.mNextLeagueTextToLowerBanner = LeagueType.sDiamondLeague.id;
      }
   }
   
   private function startLeaguePromotionAnim(prevLeague:String, newLeague:String) : void
   {
      if(!this._mRunning)
      {
         this.resetVisual();
         this.mBadgeFrom.addChild(this.getBadgeDsp(prevLeague,1.5));
         this.mBadgeTo.addChild(this.getBadgeDsp(newLeague,1.5));
         this.initPromotionAnimationSounds();
         this.mNextLeagueTextToLowerBanner = newLeague;
      }
   }
   
   private function resetVisual() : void
   {
      this.setButtonsVisiblity(false);
      this.mUserAction = ACTION_NONE;
      this.mComponent.setVisibility(true);
      this.mClip.gotoAndPlay(0);
      this._mRunning = true;
      this.mBadgeFrom = this.mClip.Badge1;
      this.mBadgeTo = this.mClip.Badge2;
      this.mBadgeFrom.removeChildren();
      this.mBadgeTo.removeChildren();
   }
   
   private function getBadgeDsp(name:String, scale:Number) : DisplayObject
   {
      var cls:Class = AssetCache.getAssetFromCache(name);
      var dsp:DisplayObject = new cls();
      dsp.scaleX = dsp.scaleY = scale;
      dsp.x -= dsp.width >> 1;
      dsp.y -= dsp.height >> 1;
      return dsp;
   }
   
   private function getDiamondWithStarBadge(starAmnt:uint, scale:Number) : DisplayObject
   {
      var diamondWithStarDsp:DisplayObjectContainer = DisplayObjectContainer(this.getBadgeDsp(CLASS_DIAMOND_WITH_STAR_LINKAGE_NAME,scale));
      ((diamondWithStarDsp.getChildByName("StarPromotionIcon") as DisplayObjectContainer).getChildByName(TXT_RATING_FIELD_NAME) as TextField).text = starAmnt.toString();
      return diamondWithStarDsp;
   }
   
   private function setButtonsVisiblity(v:Boolean) : void
   {
      this.mShareButton.setVisibility(v);
      this.mSkipButton.setVisibility(v);
   }
   
   private function get running() : Boolean
   {
      return this._mRunning;
   }
   
   private function update() : uint
   {
      var i:int = 0;
      var soundObj:Object = null;
      if(this.mClip && this.mClip.currentFrame >= 250)
      {
         this.setButtonsVisiblity(true);
      }
      var action:uint = this.mUserAction;
      this.mUserAction = ACTION_NONE;
      if(this.mActivePromotionSounds)
      {
         for(i = 0; i < this.mActivePromotionSounds.length; i++)
         {
            soundObj = this.mActivePromotionSounds[i];
            if(!soundObj.started)
            {
               if(soundObj.startFrame <= this.mClip.currentFrame)
               {
                  if(soundObj.endFrame)
                  {
                     SoundEngine.addNewChannelControl(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + i,1,0.8);
                     SoundEngine.playSound(soundObj.name,PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + i,int.MAX_VALUE);
                  }
                  else
                  {
                     SoundEngine.playSound(soundObj.name,PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,0);
                  }
                  soundObj.started = true;
               }
            }
            else if(soundObj.endFrame <= this.mClip.currentFrame)
            {
               SoundEngine.stopChannel(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + i);
            }
         }
      }
      if(this.mNextLeagueTextToLowerBanner)
      {
         if(this.mClip.LowerBanner)
         {
            (this.mClip.LowerBanner as MovieClip).gotoAndStop(this.mNextLeagueTextToLowerBanner);
            this.mNextLeagueTextToLowerBanner = null;
         }
      }
      return action;
   }
   
   private function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
   {
      switch(eventName)
      {
         case "SHARE_PROMOTION":
            this.mUserAction = ACTION_SHARE;
            break;
         case "SKIP_SHARE_PROMOTION":
            this.mUserAction = ACTION_SKIP;
      }
   }
   
   public function stop() : void
   {
      this.mClip.gotoAndStop(0);
      this.mComponent.setVisibility(false);
      this.mUserAction = ACTION_NONE;
      this._mRunning = false;
   }
   
   private function initPromotionAnimationSounds() : void
   {
      this.mActivePromotionSounds = new Array();
      this.mActivePromotionSounds.push({
         "name":"league_promotion_glow",
         "startFrame":0
      });
      this.mActivePromotionSounds.push({
         "name":"wood_rolling",
         "startFrame":93,
         "endFrame":154
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":30
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":80
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":88
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":98
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":109
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":119
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":133
      });
      this.mActivePromotionSounds.push({
         "name":"league_promotion_diamond",
         "startFrame":148
      });
      this.mActivePromotionSounds.push({
         "name":"bird_shot-a1",
         "startFrame":250
      });
      SoundEngine.addNewChannelControl(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,this.mActivePromotionSounds.length,0.8);
   }
}
