package com.angrybirds.states.playstate.playview
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.FacebookLevelSlingshot;
   import com.angrybirds.engine.LevelSlingshot;
   import com.angrybirds.engine.Tuner;
   import com.angrybirds.engine.controllers.FacebookGameLogicController;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.engine.objects.FacebookLevelObjectManager;
   import com.angrybirds.engine.objects.LevelObjectMightyEagle;
   import com.angrybirds.engine.particles.FacebookLevelParticleManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.SyncingPopup;
   import com.angrybirds.popups.tutorial.TutorialPopupManagerFacebook;
   import com.angrybirds.powerups.PowerupDefinition;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.powerups.PowerupsUIManager;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.slingshots.SlingShotUIManager;
   import com.angrybirds.states.StateLevelEnd;
   import com.angrybirds.states.StateLevelEndEagle;
   import com.angrybirds.states.StateLevelEndFail;
   import com.angrybirds.states.StateLevelLoadClassic;
   import com.angrybirds.states.StatePause;
   import com.angrybirds.states.playstate.BasePlayStateView;
   import com.angrybirds.states.playstate.event.PlayStateEvent;
   import com.angrybirds.states.tournament.StateTournamentLevelEnd;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.tournamentEvents.ItemsCollection.ItemsCollectionManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.ui.VersusComponent;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.sound.FacebookThemeSongs;
   import com.rovio.sound.SoundChannelController;
   import com.rovio.sound.SoundEffect;
   import com.rovio.sound.SoundEngine;
   import com.rovio.sound.SoundEngineEvent;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.popup.PopupManager;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.GoogleAnalyticsTracker;
   import com.rovio.utils.HashMap;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.Integer;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import starling.core.Starling;
   
   public class FacebookPlayView extends BasePlayStateView implements IVirtualPageView, INavigable
   {
      
      private static const FPS_MEASURE_TIME_START:Number = -5 * 1000;
      
      private static const FPS_MEASURE_TIME_MIN:Number = 10 * 1000;
      
      public static const SCORE_SPEED:int = 50;
      
      public static var smSongPosition:Number = 0;
      
      public static var smGDThemeSongCount:int = 0;
      
      private static const ZOOM_DELTATIME:Number = 20;
      
      private static const ZOOM_AMOUNT:Number = 0.1;
      
      public static const EASTER_LEVEL_PREFIX:String = "4000-";
      
      private static const LEVEL_END_TIME_COUNTER_START_VALUE:int = 0;
      
      private static const LEVEL_END_TIME_COUNTER_HIDDEN_VALUE:int = -1;
      
      private static const LEVEL_END_TIME_COUNTER_TIME_OUT_VALUE:int = -2;
      
      private static const UI_SPAM_CLICK_PREVENT_TIME:int = 700;
      
      private static const END_LEVEL_DIALOGUE_TITLE_ORIGINAL_Y_POS:Number = -43.05;
      
      private static const END_LEVEL_DIALOGUE_TITLE_SECOND_Y_POS:Number = -2.05;
       
      
      private var mActiveTime:Number = -5000.0;
      
      private var mUpdateCount:int = 0;
      
      private var mFPSTrackerScreenWidth:Number = 0;
      
      private var mFPSTrackerScreenHeight:Number = 0;
      
      protected var mIsMightyEagleUsed:Boolean;
      
      private var mForceShowMightyEaglePoints:Boolean = false;
      
      protected var mLevelScoreVisible:Integer;
      
      private var mKillBits:Vector.<int>;
      
      private var mTimeToDie:Boolean;
      
      private var mDying:Boolean;
      
      private var mCurrentSongID:String = "";
      
      protected var mVersusComponent:VersusComponent;
      
      private var mVersusComponentAllowsStateChange:Boolean = true;
      
      private var mSkipVsEnabled:Boolean = false;
      
      private var mVersusSkipped:Boolean = false;
      
      private var mSyncingPopup:SyncingPopup;
      
      protected var mPowerupsUIManager:PowerupsUIManager;
      
      protected var mSlingShotUIManager:SlingShotUIManager;
      
      protected var mIsHidingSlingshotButton:Boolean = false;
      
      private var mSlingshotButtonTween:ISimpleTween;
      
      private var mDoZoomAmount:Number = 0;
      
      private var mZoomTimeCounter:Number = 0;
      
      private var mEndDelay:Number;
      
      protected var mLevelController:GameLogicController;
      
      private var mRestarts:Number = 0;
      
      private var mMovieClipCache:HashMap;
      
      private var mAllTheBirdsAreGone:Boolean = false;
      
      private var mAllThePigsAreGone:Boolean = false;
      
      private var mWingmanSliderShown:Boolean;
      
      private const RETRY_DELAY_LENGTH:int = 500;
      
      private const MAX_RETRY_LENGTH:int = 10000;
      
      private const MAX_RETRY_AFTER_SHOP:int = 20.0;
      
      private const LEVEL_END_EXTRABIRD_DELAY:int = 8000;
      
      private const LEVEL_START_EXTRABIRD_AVAILABLE_DELAY:int = 1000;
      
      private var mWingmanButtonTimer:int;
      
      private var mPopupOpened:Boolean;
      
      private var mSkippedLevelActivated:Boolean = false;
      
      private var mZoomButtonsEnabled:Boolean;
      
      protected var mZoomButtonsContainer:UIContainerRovio;
      
      private var mEndLevelDialogue:UIContainerRovio;
      
      private var mEndLevelDialogueTimeCounter:int;
      
      private var mEndLevelActivationDelayTimer:int;
      
      private var mEndLevelTimerPulsatingTween:ISimpleTween;
      
      private var mEndLevelDialogueBG:MovieClip;
      
      private var mEndLevelDialogueOutBGTween:ISimpleTween;
      
      private var mUISpamClickPreventTimeCounter:int;
      
      protected var mPowerupsButtonsContainer:UIContainerRovio;
      
      private var mRemoveOverlay:Boolean = false;
      
      private var mContainerOverlay:UIContainerRovio;
      
      protected var mFacebookLevelObjectManager:FacebookLevelObjectManager;
      
      public function FacebookPlayView(viewContainer:UIContainerRovio, levelManager:LevelManager, levelController:GameLogicController, dataModel:DataModel, localizationManager:LocalizationManager)
      {
         this.mLevelScoreVisible = new Integer();
         this.mKillBits = new Vector.<int>(32);
         this.mMovieClipCache = new HashMap();
         this.mLevelController = levelController;
         super(viewContainer,levelManager,dataModel,localizationManager);
      }
      
      override protected function init() : void
      {
         this.mKillBits[3] = 5000;
         this.mKillBits[7] = 5000;
         this.mKillBits[8] = 5000;
         this.mKillBits[9] = 5000;
         this.mKillBits[18] = 5000;
         mViewContainer.setVisibility(false);
         this.mPowerupsButtonsContainer = mViewContainer.getItemByName("Container_Buttons") as UIContainerRovio;
         this.mContainerOverlay = mViewContainer.getItemByName("Container_Overlay") as UIContainerRovio;
         this.mContainerOverlay.setVisibility(true);
         this.mRemoveOverlay = false;
         this.mFacebookLevelObjectManager = (AngryBirdsEngine.smLevelMain as FacebookLevelMain).objects as FacebookLevelObjectManager;
         this.initializeEndLevelComponents();
         this.initializeVersusComponent();
         this.initializePowerUpUIManager();
         this.initializeSlingShotUIManager();
         this.initActivation();
         this.levelStarted();
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar)
         {
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.addEventListener(FriendsBarEvent.FRIENDS_BAR_SCORE_LIST_TYPE_CHANGED,this.onScoreListTypeChanged);
         }
         this.mPopupOpened = false;
         this.mZoomButtonsContainer = mViewContainer.getItemByName("Container_ZoomButtons") as UIContainerRovio;
         this.mUISpamClickPreventTimeCounter = 0;
         mViewContainer.getItemByName("ScoreMultiplierIcon").setVisibility(false);
      }
      
      protected function initializeEndLevelComponents() : void
      {
         this.mEndLevelDialogue = mViewContainer.getItemByName("Container_EndLevelDialogue") as UIContainerRovio;
         this.mEndLevelDialogue.setVisibility(false);
         this.mEndLevelDialogueBG = mViewContainer.getItemByName("EndLevelDialogueBG").mClip;
         this.mEndLevelDialogueTimeCounter = LEVEL_END_TIME_COUNTER_START_VALUE;
         this.mEndLevelActivationDelayTimer = 0;
      }
      
      protected function initializeVersusComponent() : void
      {
         this.mVersusComponent = new VersusComponent(mViewContainer);
      }
      
      protected function initializePowerUpUIManager() : void
      {
         this.mPowerupsUIManager = new PowerupsUIManager(mViewContainer,mLevelManager);
      }
      
      protected function initializeSlingShotUIManager() : void
      {
         var slingShotDefinition:SlingShotDefinition = null;
         this.mSlingShotUIManager = new SlingShotUIManager(mViewContainer,mLevelManager);
         var storageSlingShot:Object = DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.getData(ClientStorage.CURRENT_SLINGSHOT_STORAGE_NAME);
         if(!storageSlingShot)
         {
            this.mSlingShotUIManager.selectSlingshot(SlingShotUIManager.getSelectedSlingShotId(),true);
         }
         else
         {
            slingShotDefinition = SlingShotType.getSlingShotByID(storageSlingShot[0]);
            if(slingShotDefinition && slingShotDefinition.purchased)
            {
               this.mSlingShotUIManager.selectSlingshot(storageSlingShot[0],true);
            }
            else
            {
               this.mSlingShotUIManager.selectSlingshot(SlingShotType.SLING_SHOT_NORMAL.identifier,true);
            }
         }
      }
      
      override public function dispose() : void
      {
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar)
         {
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.removeEventListener(FriendsBarEvent.FRIENDS_BAR_SCORE_LIST_TYPE_CHANGED,this.onScoreListTypeChanged);
         }
         this.disable(false);
         this.mSlingShotUIManager.dispose();
         this.mMovieClipCache = null;
         this.stopLevelSoundStreams();
         TournamentModel.instance.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentLevelScoresLoaded);
         this.stopTween(this.mEndLevelTimerPulsatingTween);
         this.mEndLevelTimerPulsatingTween = null;
         this.stopTween(this.mEndLevelDialogueOutBGTween);
         this.mEndLevelDialogueOutBGTween = null;
      }
      
      override public function enable(useTransition:Boolean) : void
      {
         super.enable(useTransition);
         var isPopupOpen:Boolean = PopupManager(AngryBirdsBase.singleton.popupManager).isPopupOpen();
         if(!isPopupOpen)
         {
            AngryBirdsEngine.resume();
         }
         mViewContainer.setVisibility(true);
         mViewContainer.addEventListener(UIInteractionEvent.UI_INTERACTION,this.onUIInteraction);
         this.facebookActivate();
         if(!this.mSkippedLevelActivated)
         {
            this.mPowerupsUIManager.activate(FacebookGameLogicController(this.mLevelController),false,false);
         }
         if(!this.mWingmanSliderShown)
         {
            this.handleWingmanSlider(false);
         }
         if(SlingShotUIManager.SLINGSHOT_MENU_ENABLED)
         {
            mViewContainer.getItemByName("Button_Slingshot").setVisibility(true);
         }
         else
         {
            mViewContainer.getItemByName("Button_Slingshot").setVisibility(false);
         }
         TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,this.onCurrentTournamentLevelScoresLoaded);
         if(!this.mContainerOverlay)
         {
            this.showLevelPopups();
         }
      }
      
      protected function onScoreListTypeChanged(event:FriendsBarEvent) : void
      {
         this.loadVersusComponent();
      }
      
      override public function disable(useTransition:Boolean) : void
      {
         mViewContainer.setVisibility(false);
         mViewContainer.removeEventListener(UIInteractionEvent.UI_INTERACTION,this.onUIInteraction);
         TutorialPopupManagerFacebook.closeCurrentTutorial();
         this.mVersusComponent.deActivate();
         this.mPowerupsUIManager.deActivate();
         this.mSlingShotUIManager.deActivate();
         this.mLevelController.removeEventListener(MouseEvent.MOUSE_DOWN,this.onSkipVsClick);
         if(this.mSlingshotButtonTween)
         {
            this.stopTween(this.mSlingshotButtonTween);
            this.mSlingshotButtonTween = null;
         }
         this.stopTween(this.mEndLevelTimerPulsatingTween);
         this.mEndLevelTimerPulsatingTween = null;
         this.stopTween(this.mEndLevelDialogueOutBGTween);
         this.mEndLevelDialogueOutBGTween = null;
         AngryBirdsEngine.smLevelMain.setCameraShaking(false);
         this.reportFps();
         this.resetFpsTracker();
         super.disable(useTransition);
      }
      
      private function stopTween(tween:ISimpleTween) : void
      {
         if(tween)
         {
            tween.gotoEndAndStop();
         }
      }
      
      protected function stopLevelSoundStreams() : void
      {
         var greendayEffect:SoundEffect = null;
         if(AngryBirdsEngine.smLevelMain.background)
         {
            AngryBirdsEngine.smLevelMain.background.stopAmbientSound();
         }
         SoundEngine.stopChannel(FacebookThemeSongs.GREENDAY_CHANNEL_INGAME);
         smSongPosition = 0;
         var greenDayController:SoundChannelController = SoundEngine.getChannelController(FacebookThemeSongs.GREENDAY_CHANNEL_INGAME);
         if(greenDayController != null)
         {
            greendayEffect = greenDayController.getSoundEffectById(this.mCurrentSongID);
            if(greendayEffect != null)
            {
               smSongPosition = greendayEffect.positionMilliSeconds;
            }
            SoundEngine.stopChannel(FacebookThemeSongs.GREENDAY_CHANNEL_INGAME);
         }
      }
      
      protected function facebookActivate() : void
      {
         this.startLevelSoundStreams();
         this.mVersusComponent.activate();
         if(this.mSkipVsEnabled)
         {
            this.mLevelController.addEventListener(MouseEvent.MOUSE_DOWN,this.onSkipVsClick);
         }
         mViewContainer.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.mEndDelay = 2500;
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_PLAY);
         this.resetFpsTracker();
      }
      
      protected function levelStarted() : void
      {
         var powerupsArray:Array = null;
         var pud:PowerupDefinition = null;
         FacebookGoogleAnalyticsTracker.trackFlashEvent(GoogleAnalyticsTracker.ACTION_GAME_LEVEL_STARTED,mLevelManager.currentLevel);
         FacebookGoogleAnalyticsTracker.trackPageView(this,this.getIdentifier());
         if(mLevelManager.currentLevel != FacebookLevelManager.previousLevelId)
         {
            FacebookLevelManager.previousLevelId = mLevelManager.currentLevel;
            this.mRestarts = 0;
         }
         else
         {
            ++this.mRestarts;
         }
         var noOfStars:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel);
         FacebookAnalyticsCollector.getInstance().trackLevelStartedEvent(mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,noOfStars,this.mRestarts);
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar)
         {
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.levelStarted();
         }
         this.showScoresForLevel();
         this.loadVersusComponent();
         this.mSkipVsEnabled = false;
         this.mVersusSkipped = false;
         this.mLevelController.removeEventListener(MouseEvent.MOUSE_DOWN,this.onSkipVsClick);
         if(SlingShotUIManager.SLINGSHOT_MENU_ENABLED)
         {
            mViewContainer.getItemByName("Button_Slingshot").setEnabled(true);
            this.mIsHidingSlingshotButton = false;
            if(this.mSlingshotButtonTween)
            {
               this.stopTween(this.mSlingshotButtonTween);
               this.mSlingshotButtonTween = null;
            }
         }
         (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.wingmanUsed = false;
         this.mWingmanButtonTimer = this.LEVEL_START_EXTRABIRD_AVAILABLE_DELAY;
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            if(TournamentEventManager.instance.canUsePumpkinPowerup())
            {
               powerupsArray = new Array();
               for each(pud in PowerupType.sPowerupsTournament)
               {
                  powerupsArray.push(pud);
               }
               powerupsArray.push(PowerupType.sPumpkinDrop);
               this.addPowerupButtons(powerupsArray);
            }
            else
            {
               this.addPowerupButtons(PowerupType.sPowerupsTournament);
            }
         }
         else if((mLevelManager as FacebookLevelManager).isCurrentEpisodeWonderland())
         {
            this.addPowerupButtons(PowerupType.sPowerupsStorymodeWonderland);
         }
         else
         {
            this.addPowerupButtons(PowerupType.sPowerupsStorymode);
         }
         this.mSlingShotUIManager.activate(FacebookGameLogicController(this.mLevelController));
         mViewContainer.getItemByName("Container_Slingshot_Buttons").setVisibility(false);
         this.mSkippedLevelActivated = false;
         this.mWingmanSliderShown = false;
         this.handleCollectibleItems();
      }
      
      protected function addPowerupButtons(powerupArray:Array) : void
      {
         var pd:PowerupDefinition = null;
         var button:UIComponentRovio = null;
         var brandedEnabledIconAssetName:String = null;
         var cls:Class = null;
         var mc:MovieClip = null;
         var i:int = 0;
         var dsp:MovieClip = null;
         var powerupX:Number = 100;
         var powerupW:Number = 65;
         var powerupY:Number = 44;
         for each(pd in PowerupType.sAllPowerups)
         {
            button = mViewContainer.getItemByName(pd.buttonName);
            brandedEnabledIconAssetName = pd.buttonName + "_" + TournamentModel.instance.brandedTournamentAssetId;
            if(AssetCache.assetInCache(brandedEnabledIconAssetName))
            {
               cls = AssetCache.getAssetFromCache(brandedEnabledIconAssetName);
               mc = new cls();
               for(i = 0; i < button.mClip.framesLoaded; i++)
               {
                  dsp = button.mClip.getChildByName("Icon") as MovieClip;
                  dsp.removeChildren();
                  dsp.addChild(mc);
                  button.mClip.nextFrame();
               }
               button.mClip.gotoAndStop(1);
            }
            button.setVisibility(false);
         }
         for each(pd in powerupArray)
         {
            button = mViewContainer.getItemByName(pd.buttonName) as UIButtonRovio;
            button.x = powerupX;
            button.y = powerupY;
            button.setVisibility(true);
            powerupX += powerupW;
         }
      }
      
      protected function initActivation() : void
      {
         this.mLevelScoreVisible.assign(0);
         this.updateCurrentScore(0);
         this.mIsMightyEagleUsed = false;
         this.mVersusComponent.isMightyEagleBeingUsed = this.mIsMightyEagleUsed;
      }
      
      private function onSkipVsClick(e:MouseEvent) : void
      {
         this.mVersusSkipped = true;
         this.mLevelController.removeEventListener(MouseEvent.MOUSE_DOWN,this.onSkipVsClick);
      }
      
      protected function loadVersusComponent() : void
      {
         this.mVersusComponent.levelStarted((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.getVersusComponentLevelScores(),mLevelManager.currentLevel,(AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.getCurrentScoreListDataType() == FriendsBar.SCORE_LIST_TYPE_LEAGUE_LEVEL);
      }
      
      protected function startLevelSoundStreams() : void
      {
         var tURL:String = null;
         var repeatCount:int = 0;
         var greenDayController:SoundChannelController = null;
         var greendayEffect:SoundEffect = null;
         if(mLevelManager.currentLevel.indexOf("3001-") > -1 || mLevelManager.currentLevel.indexOf("3000-") > -1)
         {
            tURL = "";
            repeatCount = 999;
            if(mLevelManager.currentLevel.indexOf("3001-") > -1)
            {
               this.mCurrentSongID = FacebookThemeSongs.GREENDAY_THEME_INGAME;
               if(mLevelManager.currentLevel.indexOf("3001-1") > -1)
               {
                  tURL = FacebookThemeSongs.STREAM_URL_GD_TROUBLEMAKER;
               }
               else if(mLevelManager.currentLevel.indexOf("3001-2") > -1)
               {
                  tURL = FacebookThemeSongs.STREAM_URL_GD_LAZYBONES;
                  this.mCurrentSongID = FacebookThemeSongs.GREENDAY_THEME_INGAME_LAZY_BONES;
               }
               else
               {
                  tURL = FacebookThemeSongs.STREAM_URL_GD_TROUBLEMAKER;
               }
               if(AngryBirdsBase.singleton.getCurrentStateObject().previousState != this.getPauseState())
               {
                  smSongPosition = 0;
               }
            }
            else if(smGDThemeSongCount <= 1)
            {
               this.mCurrentSongID = FacebookThemeSongs.GREENDAY_THEME;
               tURL = FacebookThemeSongs.STREAM_URL_GD_OHLOVE;
               repeatCount = 1;
               SoundEngine.removeEventListener(SoundEngineEvent.SOUND_COMPLETE,this.onSongComplete);
               SoundEngine.addEventListener(SoundEngineEvent.SOUND_COMPLETE,this.onSongComplete);
            }
            if(tURL != "")
            {
               greenDayController = SoundEngine.getChannelController(FacebookThemeSongs.GREENDAY_CHANNEL_INGAME);
               if(!greenDayController)
               {
                  SoundEngine.addNewChannelControl(FacebookThemeSongs.GREENDAY_CHANNEL_INGAME,1,1);
               }
               greendayEffect = SoundEngine.playStreamingSound(tURL,this.mCurrentSongID,3000,FacebookThemeSongs.GREENDAY_CHANNEL_INGAME,repeatCount,0.75,smSongPosition);
            }
         }
      }
      
      private function onSongComplete(event:SoundEngineEvent) : void
      {
         if(event.soundId == FacebookThemeSongs.GREENDAY_THEME && this.mCurrentSongID == FacebookThemeSongs.GREENDAY_THEME && AngryBirdsBase.singleton.getNextState() != StatePause.STATE_NAME)
         {
            SoundEngine.removeEventListener(SoundEngineEvent.SOUND_COMPLETE,this.onSongComplete);
            ++FacebookPlayView.smGDThemeSongCount;
         }
      }
      
      private function handeZoom(deltaTime:Number) : void
      {
         if(this.mDoZoomAmount)
         {
            this.mZoomTimeCounter += deltaTime;
            if(this.mZoomTimeCounter > ZOOM_DELTATIME)
            {
               this.mLevelController.doUserZoom(true,this.mDoZoomAmount);
               this.mZoomTimeCounter = 0;
            }
         }
      }
      
      protected function showTutorials() : void
      {
         var tutorialsToShow:String = "ALL_EXTRABIRD";
         if((mLevelManager as FacebookLevelManager).isCurrentEpisodeWonderland())
         {
            tutorialsToShow = "ALL_MUSHROOM";
         }
         TutorialPopupManagerFacebook.showPowerUpTutorials(tutorialsToShow,true);
         TutorialPopupManagerFacebook.showTutorials(true,true);
      }
      
      protected function getItemMovieClipByName(name:String) : UIMovieClipRovio
      {
         var movieClip:UIMovieClipRovio = this.mMovieClipCache[name];
         if(!movieClip)
         {
            movieClip = mViewContainer.getItemByName(name) as UIMovieClipRovio;
            this.mMovieClipCache[name] = movieClip;
         }
         return movieClip;
      }
      
      protected function handleAnimations(deltaTime:Number) : void
      {
      }
      
      public function getIdentifier() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_LEVEL;
      }
      
      protected function updateCurrentScore(deltaTime:Number) : void
      {
         this.updateDyingStatus();
         var score:int = this.mLevelController.getScore();
         var highscore:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var scoreVisible:int = this.mLevelScoreVisible.getValue();
         if(scoreVisible < score)
         {
            scoreVisible = Math.min(score,this.mLevelScoreVisible.getValue() + deltaTime * SCORE_SPEED);
            this.mLevelScoreVisible.assign(scoreVisible);
         }
         if(this.mForceShowMightyEaglePoints)
         {
            mViewContainer.setText(score.toString(),"TextField_MEPercentage");
         }
         this.mVersusComponent.updateCurrentScore(scoreVisible,score,highscore);
      }
      
      protected function showScoresForLevel() : void
      {
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_LEVEL,null);
      }
      
      private function reportFps() : void
      {
         var fps:int = 0;
         var currentLevel:String = null;
         var isFullScreen:Boolean = false;
         if(this.mActiveTime > FPS_MEASURE_TIME_MIN)
         {
            fps = Math.round(1000 / this.mActiveTime * this.mUpdateCount);
            currentLevel = mLevelManager.currentLevel;
            isFullScreen = (AngryBirdsEngine.smApp as AngryBirdsFacebook).isFullScreenMode();
            FacebookGoogleAnalyticsTracker.trackFramerateEvent(fps,currentLevel,Starling.isSoftware,isFullScreen);
         }
      }
      
      private function updateFpsTracker(deltaTime:Number) : void
      {
         this.mActiveTime += deltaTime;
         if(this.mActiveTime > 0)
         {
            ++this.mUpdateCount;
         }
         if(this.mFPSTrackerScreenWidth != AngryBirdsEngine.getCurrentScreenWidth() || this.mFPSTrackerScreenHeight != AngryBirdsEngine.getCurrentScreenHeight())
         {
            this.resetFpsTracker();
         }
      }
      
      private function resetFpsTracker() : void
      {
         this.mActiveTime = FPS_MEASURE_TIME_START;
         this.mUpdateCount = 0;
         this.mFPSTrackerScreenWidth = AngryBirdsEngine.getCurrentScreenWidth();
         this.mFPSTrackerScreenHeight = AngryBirdsEngine.getCurrentScreenHeight();
      }
      
      protected function hackCheck() : void
      {
         var sum:int = 0;
         var i:int = 0;
         var start:int = 0;
         if(!this.mTimeToDie)
         {
            sum = 0;
            for(i = 0; i < this.mKillBits.length; i++)
            {
               sum += this.mKillBits[i];
            }
            if(sum % 1000 || int(sum / 1000) != 25)
            {
               this.mTimeToDie = true;
               GoogleAnalyticsTracker.trackFlashEvent(GoogleAnalyticsTracker.ACTION_XEET,mLevelManager.currentLevel);
            }
         }
         if(this.mDying)
         {
            start = getTimer();
            while(getTimer() - start < 1000)
            {
            }
         }
      }
      
      protected function updateDyingStatus() : void
      {
         var score:int = this.mLevelController.getScore();
         var scoreVisible:int = this.mLevelScoreVisible.getValue();
         if(scoreVisible < score && this.mTimeToDie)
         {
            this.mDying = true;
         }
      }
      
      protected function hideSlingshotMenu(useDelay:Boolean = true) : void
      {
         if(!SlingShotUIManager.SLINGSHOT_MENU_ENABLED)
         {
            return;
         }
         this.mIsHidingSlingshotButton = true;
         mViewContainer.getItemByName("Button_Slingshot").setEnabled(false);
         this.stopTween(this.mSlingshotButtonTween);
         this.mSlingshotButtonTween = TweenManager.instance.createTween(mViewContainer.getItemByName("Button_Slingshot").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(useDelay)
         {
            this.mSlingshotButtonTween.delay = 2;
         }
         else
         {
            this.mSlingshotButtonTween.delay = 0.5;
         }
         this.mSlingshotButtonTween.play();
         this.mSlingshotButtonTween.onComplete = this.onHideSlingshotComplete;
      }
      
      private function onHideSlingshotComplete() : void
      {
         mViewContainer.getItemByName("Button_Slingshot").setVisibility(false);
      }
      
      protected function endLevelIfPowerupsAreDone() : Boolean
      {
         if((AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.isLoading() && !this.mSyncingPopup)
         {
            this.mSyncingPopup = new SyncingPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.mSyncingPopup);
            (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.addEventListener(Event.COMPLETE,this.onPowerupHandlerLoadingComplete);
         }
         return !(AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.isLoading();
      }
      
      private function onPowerupHandlerLoadingComplete(e:Event) : void
      {
         (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.removeEventListener(Event.COMPLETE,this.onPowerupHandlerLoadingComplete);
         this.mSyncingPopup.close();
         this.mSyncingPopup = null;
      }
      
      protected function getPauseState() : String
      {
         return StatePause.STATE_NAME;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.mIsMightyEagleUsed;
      }
      
      protected function getLevelLoadState() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      public function getLoserState() : String
      {
         return StateLevelEndFail.STATE_NAME;
      }
      
      override public function update(deltaTime:Number) : void
      {
         var exclusionList:Vector.<String> = null;
         this.hackCheck();
         super.update(deltaTime);
         if(this.mUISpamClickPreventTimeCounter > 0)
         {
            this.mUISpamClickPreventTimeCounter -= deltaTime;
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpen())
         {
            if(!this.mPopupOpened)
            {
               this.mPopupOpened = true;
               exclusionList = new Vector.<String>();
               exclusionList.push(SoundEngine.UI_CHANNEL);
               SoundEngine.pauseSounds(exclusionList);
               if(this.mVersusComponent)
               {
                  this.mVersusComponent.deActivate();
               }
            }
            return;
         }
         if(this.mPopupOpened)
         {
            this.mPopupOpened = false;
            if(this.mVersusComponent)
            {
               this.mVersusComponent.activate();
            }
            SoundEngine.resumeSounds();
         }
         this.updateCurrentScore(deltaTime);
         var vsComponentRunResults:Boolean = this.mVersusComponentAllowsStateChange = this.mVersusComponent.run(deltaTime);
         this.mPowerupsUIManager.run(deltaTime);
         this.mSlingShotUIManager.run(deltaTime);
         this.handeZoom(deltaTime);
         this.mLevelController.mouseEnabled = !this.mSlingShotUIManager.isSlingShotMenuOpen();
         if(this.mSlingShotUIManager.isSlingShotMenuOpen())
         {
            if(this.mZoomButtonsEnabled)
            {
               this.mZoomButtonsContainer.getItemByName("Button_ZoomIn").setEnabled(false);
               this.mZoomButtonsContainer.getItemByName("Button_ZoomOut").setEnabled(false);
               this.mZoomButtonsContainer.getItemByName("Button_Magnify").setEnabled(false);
               this.mZoomButtonsEnabled = false;
            }
         }
         else if(!this.mZoomButtonsEnabled)
         {
            this.mZoomButtonsContainer.getItemByName("Button_ZoomIn").setEnabled(true);
            this.mZoomButtonsContainer.getItemByName("Button_ZoomOut").setEnabled(true);
            this.mZoomButtonsContainer.getItemByName("Button_Magnify").setEnabled(true);
            this.mZoomButtonsEnabled = true;
         }
         this.updateFpsTracker(deltaTime);
         if(!AngryBirdsEngine.smLevelMain.mMEInUse || !this.mIsMightyEagleUsed)
         {
            this.handleAnimations(deltaTime);
         }
         if(AngryBirdsBase.singleton.getCurrentStateObject().previousState == StateLevelEnd.STATE_NAME || AngryBirdsBase.singleton.getCurrentStateObject().previousState == StateTournamentLevelEnd.STATE_NAME)
         {
            if(!this.mSkipVsEnabled)
            {
               this.mLevelController.addEventListener(MouseEvent.MOUSE_DOWN,this.onSkipVsClick);
               this.mSkipVsEnabled = true;
            }
            if(vsComponentRunResults || this.mVersusSkipped)
            {
               this.mEndDelay -= deltaTime;
               if(this.mEndDelay < 0 || this.mVersusSkipped)
               {
                  if(!this.endLevelIfPowerupsAreDone())
                  {
                  }
               }
            }
         }
         else if(AngryBirdsBase.singleton.getCurrentStateObject().previousState == StateLevelEndEagle.STATE_NAME)
         {
            if(!this.endLevelIfPowerupsAreDone())
            {
            }
         }
         if(!AngryBirdsEngine.smLevelMain.slingshot.birdsAvailable)
         {
            if(!this.mAllTheBirdsAreGone)
            {
               this.mPowerupsUIManager.setPowerupActive(PowerupType.sBirdFood.eventName,false);
               this.mPowerupsUIManager.setPowerupActive(PowerupType.sExtraSpeed.eventName,false);
               this.mPowerupsUIManager.setPowerupActive(PowerupType.sLaserSight.eventName,false);
               this.mAllTheBirdsAreGone = true;
            }
         }
         else
         {
            this.mAllTheBirdsAreGone = false;
         }
         if(AngryBirdsEngine.smLevelMain.objects.getPigCount() == 0)
         {
            if(!this.mAllThePigsAreGone)
            {
               this.mPowerupsUIManager.setPowerupActive(PowerupType.sMushroom.eventName,false);
               this.mAllThePigsAreGone = true;
            }
         }
         else if(this.mAllThePigsAreGone)
         {
            this.mAllThePigsAreGone = false;
         }
         this.updateEndLevelDialogue(deltaTime);
         if(AngryBirdsEngine.smLevelMain.slingshot.mSlingShotState == LevelSlingshot.STATE_CELEBRATE)
         {
            this.mPowerupsUIManager.resetPowerupSuggestionRestart();
            if(!this.mIsHidingSlingshotButton && SlingShotUIManager.SLINGSHOT_MENU_ENABLED)
            {
               this.hideSlingshotMenu(this.mSlingShotUIManager.isSlingShotMenuOpen());
               this.mSlingShotUIManager.closeSlingShotMenu();
            }
         }
         if(!AngryBirdsEngine.isPaused)
         {
            if(this.mWingmanButtonTimer > 0)
            {
               this.mWingmanButtonTimer -= deltaTime;
            }
         }
         if(SlingShotUIManager.getSelectedSlingShotId() == SlingShotType.SLING_SHOT_CHRISTMAS.identifier)
         {
            this.generateSnowParticles();
         }
         if(this.mEndLevelDialogue.visible)
         {
            if(AngryBirdsEngine.smLevelMain.slingshot.mSlingShotState == LevelSlingshot.STATE_BIRDS_ARE_GONE && !(AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.wingmanUsed)
            {
               this.handleWingmanSlider(true,this.mLevelController.isInGameWonState());
            }
         }
         if(this.mRemoveOverlay)
         {
            this.mRemoveOverlay = false;
            this.mContainerOverlay.setVisibility(false);
            this.mContainerOverlay = null;
            this.showLevelPopups();
         }
         if(this.mContainerOverlay && this.mContainerOverlay.visible)
         {
            if(this.mFacebookLevelObjectManager.portalTexturesGenerated)
            {
               this.mRemoveOverlay = true;
            }
         }
      }
      
      private function generateSnowParticles() : void
      {
         var randomOnscreenX:Number = NaN;
         var randomOnscreenY:Number = NaN;
         var particleManager:FacebookLevelParticleManager = AngryBirdsEngine.smLevelMain.particles as FacebookLevelParticleManager;
         for(var j:int = 0; j < FacebookLevelSlingshot.smSnowParticlesAmountPerFrame; j++)
         {
            randomOnscreenX = this.randomNumber(AngryBirdsEngine.smLevelMain.borders.leftBorder,AngryBirdsEngine.smLevelMain.borders.rightBorder);
            randomOnscreenY = this.randomNumber(AngryBirdsEngine.smLevelMain.borders.skyBorder,0);
            particleManager.addSnowParticle(randomOnscreenX,randomOnscreenY);
         }
      }
      
      protected function updateEndLevelDialogue(deltaTime:Number) : void
      {
         if(this.mLevelController.isLevelEndingAllowed())
         {
            if(AngryBirdsEngine.smLevelMain.slingshot.mDragging)
            {
               if(this.mEndLevelActivationDelayTimer == 0)
               {
                  this.mEndLevelActivationDelayTimer = Tuner.END_LEVEL_WAITING_TIME;
                  this.mEndLevelDialogueTimeCounter = LEVEL_END_TIME_COUNTER_START_VALUE;
               }
               if(this.mEndLevelDialogueTimeCounter > LEVEL_END_TIME_COUNTER_START_VALUE)
               {
                  this.hideEndLevelDialogue();
               }
            }
            else if(this.mEndLevelActivationDelayTimer > 0)
            {
               this.mEndLevelActivationDelayTimer -= deltaTime;
               if(this.mEndLevelActivationDelayTimer <= 0)
               {
                  this.mEndLevelActivationDelayTimer = -1;
                  if(this.mEndLevelDialogueTimeCounter < LEVEL_END_TIME_COUNTER_START_VALUE)
                  {
                     this.showSkipLevelEndButton();
                  }
               }
            }
            else if(this.mEndLevelDialogueTimeCounter == LEVEL_END_TIME_COUNTER_START_VALUE)
            {
               this.mEndLevelDialogueTimeCounter = Tuner.END_LEVEL_DIALOGUE_SHOW_TIME;
               this.activateLevelEndDialogue();
               this.mEndLevelActivationDelayTimer = -1;
            }
            else if(this.mEndLevelDialogueTimeCounter > LEVEL_END_TIME_COUNTER_START_VALUE)
            {
               this.mEndLevelDialogueTimeCounter -= deltaTime;
               if(this.mEndLevelDialogueTimeCounter <= LEVEL_END_TIME_COUNTER_START_VALUE)
               {
                  mViewContainer.setText("0","TextField_EndLevelCounter");
                  this.skipToLevelEnd(FacebookAnalyticsCollector.LEVEL_END_ACTION_TIMER);
                  this.mEndLevelDialogueTimeCounter = LEVEL_END_TIME_COUNTER_TIME_OUT_VALUE;
               }
               else
               {
                  mViewContainer.setText("" + int(this.mEndLevelDialogueTimeCounter / 1000),"TextField_EndLevelCounter");
               }
            }
            else if(!this.mEndLevelDialogueOutBGTween)
            {
               this.mEndLevelDialogueBG.scaleX = 0.8;
               this.mEndLevelDialogueBG.scaleY = 0.8;
            }
         }
         else if(this.mEndLevelDialogueTimeCounter > LEVEL_END_TIME_COUNTER_START_VALUE)
         {
            this.mEndLevelDialogueTimeCounter = LEVEL_END_TIME_COUNTER_START_VALUE;
            this.mEndLevelActivationDelayTimer = 0;
         }
      }
      
      private function randomNumber(min:Number, max:Number) : Number
      {
         return Math.floor(Math.random() * (1 + max - min)) + min;
      }
      
      protected function onUIInteraction(event:UIInteractionEvent) : void
      {
         var totalBirds:int = 0;
         var remainingBirds:int = 0;
         var wingmanIndex:int = 0;
         var wingmanIndexString:String = null;
         var timer:Timer = null;
         var meScore:int = 0;
         if(mIsDisabled || this.mUISpamClickPreventTimeCounter > 0)
         {
            return;
         }
         if(event.eventIndex == 1)
         {
            if(AngryBirdsEngine.smLevelMain.slingshot.mDragging)
            {
               AngryBirdsEngine.smLevelMain.slingshot.shoot();
               this.mLevelController.changeGameState(GameLogicController.LEVEL_STATE_BIRD_FLYING);
               return;
            }
            AngryBirdsEngine.smLevelMain.camera.stopDragging();
         }
         switch(event.eventName)
         {
            case "showTutorial":
               this.showTutorials();
               break;
            case "PAUSE":
               dispatchEvent(new PlayStateEvent(PlayStateEvent.PAUSE_LEVEL));
               if(this.mEndLevelDialogueTimeCounter > LEVEL_END_TIME_COUNTER_START_VALUE)
               {
                  this.showSkipLevelEndButton();
               }
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new PlayStateEvent(PlayStateEvent.RESTART_LEVEL));
               break;
            case "CLOSE_TUTORIAL":
               TutorialPopupManagerFacebook.closeCurrentTutorial();
               break;
            case "POWERUP1":
               this.activatePowerup(PowerupType.sBirdFood.eventName);
               break;
            case "POWERUP2":
               this.activatePowerup(PowerupType.sExtraSpeed.eventName);
               break;
            case "POWERUP3":
               this.activatePowerup(PowerupType.sLaserSight.eventName);
               break;
            case "POWERUP4":
               this.activatePowerup(PowerupType.sEarthquake.eventName);
               break;
            case "POWERUP5":
               this.activatePowerup(PowerupType.sMushroom.eventName);
               break;
            case "POWERUP6":
               this.activatePowerup(PowerupType.sTntDrop.eventName);
               break;
            case "POWERUP7":
               this.activatePowerup(PowerupType.sPumpkinDrop.eventName);
               break;
            case "POWERUP8":
               this.activatePowerup(PowerupType.sBoombox.eventName);
               break;
            case "POWERUP_WINGMAN":
               if(this.mEndLevelDialogueTimeCounter == LEVEL_END_TIME_COUNTER_TIME_OUT_VALUE)
               {
                  return;
               }
               if(this.mWingmanButtonTimer > 0)
               {
                  return;
               }
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sExtraBird.identifier) > 0)
               {
                  this.handleWingmanSlider(false);
               }
               this.mPowerupsUIManager.usePowerup(event.eventName);
               totalBirds = AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount();
               remainingBirds = AngryBirdsEngine.smLevelMain.slingshot.getBirdCount();
               wingmanIndex = 1 + totalBirds - remainingBirds;
               wingmanIndexString = "";
               if(remainingBirds == 0)
               {
                  wingmanIndexString = "Last-chance";
               }
               else
               {
                  wingmanIndex = Math.max(Math.min(totalBirds,wingmanIndex));
                  wingmanIndexString = "Bird_number:" + wingmanIndex;
               }
               this.specialBirdActivated();
               this.hideEndLevelDialogue();
               this.mUISpamClickPreventTimeCounter = UI_SPAM_CLICK_PREVENT_TIME;
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sExtraBird.buttonName),false);
               break;
            case "POWERUP_MIGHTY_EAGLE":
               if(this.mEndLevelDialogueTimeCounter == LEVEL_END_TIME_COUNTER_TIME_OUT_VALUE)
               {
                  return;
               }
               if((AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.isLoading())
               {
                  return;
               }
               if((AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.useMightyEagle())
               {
                  this.mPowerupsUIManager.setPowerupActive(PowerupType.sBirdFood.eventName,false);
                  this.mPowerupsUIManager.setPowerupActive(PowerupType.sExtraSpeed.eventName,false);
                  this.mPowerupsUIManager.setPowerupActive(PowerupType.sBoombox.eventName,false);
                  this.mPowerupsUIManager.setPowerupActive(PowerupType.sLaserSight.eventName,false);
                  this.mPowerupsUIManager.setPowerupActive(PowerupType.sEarthquake.eventName,false);
                  this.mPowerupsUIManager.setPowerupActive(PowerupType.sMushroom.eventName,false);
                  this.mPowerupsUIManager.setPowerupActive(PowerupType.sMightyEagle.eventName,false);
                  this.mPowerupsUIManager.setPowerupActive(PowerupType.sExtraBird.eventName,false);
                  AngryBirdsEngine.smLevelMain.useMightyEagle();
                  meScore = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
                  mViewContainer.setText(meScore.toString() + "%","TextField_MEPercentage");
                  this.mIsMightyEagleUsed = true;
                  this.mVersusComponent.isMightyEagleBeingUsed = this.mIsMightyEagleUsed;
                  TutorialPopupManagerFacebook.showTutorials();
                  this.specialBirdActivated();
                  this.handleWingmanSlider(false);
               }
               else
               {
                  this.mPowerupsUIManager.usePowerup(event.eventName);
               }
               this.hideEndLevelDialogue();
               this.mUISpamClickPreventTimeCounter = UI_SPAM_CLICK_PREVENT_TIME;
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sMightyEagle.buttonName),false);
               break;
            case "POWERUPOVER1":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sBirdFood.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sBirdFood.buttonName),true);
               }
               break;
            case "POWERUPOVER2":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sExtraSpeed.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sExtraSpeed.buttonName),true);
               }
               break;
            case "POWERUPOVER3":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sLaserSight.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sLaserSight.buttonName),true);
               }
               break;
            case "POWERUPOVER4":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sEarthquake.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sEarthquake.buttonName),true);
               }
               break;
            case "POWERUPOVER5":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sMushroom.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sMushroom.buttonName),true);
               }
               break;
            case "POWERUPOVER6":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sTntDrop.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sTntDrop.buttonName),true);
               }
               break;
            case "POWERUPOVER7":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sPumpkinDrop.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sPumpkinDrop.buttonName),true);
               }
               break;
            case "POWERUPOVER8":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sBoombox.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sBoombox.buttonName),true);
               }
               break;
            case "POWERUPOVER_MIGHTY_EAGLE":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sMightyEagle.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sMightyEagle.buttonName),true);
               }
               break;
            case "POWERUPOVER_WINGMAN":
               if(ItemsInventory.instance.getCountForPowerup(PowerupType.sExtraBird.identifier) <= 0)
               {
                  this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sExtraBird.buttonName),true);
               }
               break;
            case "POWERUPOUT1":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sBirdFood.buttonName),false);
               break;
            case "POWERUPOUT2":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sExtraSpeed.buttonName),false);
               break;
            case "POWERUPOUT3":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sLaserSight.buttonName),false);
               break;
            case "POWERUPOUT4":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sEarthquake.buttonName),false);
               break;
            case "POWERUPOUT5":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sMushroom.buttonName),false);
               break;
            case "POWERUPOUT6":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sTntDrop.buttonName),false);
               break;
            case "POWERUPOUT7":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sPumpkinDrop.buttonName),false);
               break;
            case "POWERUPOUT8":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sBoombox.buttonName),false);
               break;
            case "POWERUPOUT_MIGHTY_EAGLE":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sMightyEagle.buttonName),false);
               break;
            case "POWERUPOUT_WINGMAN":
               this.handleGetMoreSegment(this.mPowerupsButtonsContainer.getItemByName(PowerupType.sExtraBird.buttonName),false);
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               TutorialPopupManagerFacebook.closeCurrentTutorial();
               break;
            case "ZOOM_IN":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.mDoZoomAmount = ZOOM_AMOUNT;
               this.mZoomTimeCounter = ZOOM_DELTATIME;
               break;
            case "ZOOM_OUT":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.mDoZoomAmount = -ZOOM_AMOUNT;
               this.mZoomTimeCounter = ZOOM_DELTATIME;
               break;
            case "ZOOM_IN_RELEASE":
               this.mDoZoomAmount = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.mDoZoomAmount = 0;
               break;
            case "SLINGSHOT_OPEN":
               if(this.mSlingShotUIManager.isSlingShotMenuOpen())
               {
                  SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               }
               else
               {
                  SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               }
               this.mSlingShotUIManager.toggleSlingShotOpen();
               break;
            case "SLINGSHOT_NORMAL":
               this.slingShotSelectedWithEvent("SLINGSHOT_NORMAL");
               break;
            case "SLINGSHOT_WOODCHIPPER":
            case "SLINGSHOT_BUY_SLING_1":
               this.slingShotSelectedWithEvent("SLINGSHOT_WOODCHIPPER");
               break;
            case "SLINGSHOT_GLASSBREAKER":
            case "SLINGSHOT_BUY_SLING_2":
               this.slingShotSelectedWithEvent("SLINGSHOT_GLASSBREAKER");
               break;
            case "SLINGSHOT_STONECUTTER":
            case "SLINGSHOT_BUY_SLING_3":
               this.slingShotSelectedWithEvent("SLINGSHOT_STONECUTTER");
               break;
            case "SLINGSHOT_GOLDEN":
            case "SLINGSHOT_BUY_SLING_4":
               this.slingShotSelectedWithEvent("SLINGSHOT_GOLDEN");
               break;
            case "SLINGSHOT_WISHBONE":
            case "SLINGSHOT_BUY_SLING_5":
               this.slingShotSelectedWithEvent("SLINGSHOT_WISHBONE");
               break;
            case "SLINGSHOT_XMASTREE":
            case "SLINGSHOT_BUY_SLING_6":
               this.slingShotSelectedWithEvent("SLINGSHOT_XMASTREE");
               break;
            case "SLINGSHOT_BOUNCY":
            case "SLINGSHOT_UNLOCK_BOUNCY":
               this.slingShotSelectedWithEvent("SLINGSHOT_BOUNCY");
               break;
            case "SLINGSHOT_DIAMOND":
            case "SLINGSHOT_UNLOCK_DIAMOND":
               this.slingShotSelectedWithEvent("SLINGSHOT_DIAMOND");
               break;
            case "LEVEL_END_NO":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               timer = new Timer(100);
               timer.addEventListener(TimerEvent.TIMER,function fn(e:TimerEvent):void
               {
                  hideEndLevelDialogue();
                  timer = null;
               });
               timer.start();
               break;
            case "LEVEL_END_YES":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.skipToLevelEnd(FacebookAnalyticsCollector.LEVEL_END_ACTION_BIG_CHECKMARK);
               break;
            case "SKIP_LEVEL_END":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.skipToLevelEnd(FacebookAnalyticsCollector.LEVEL_END_ACTION_SMALL_CHECKMARK);
         }
      }
      
      private function activatePowerup(eventName:String) : void
      {
         if(this.mEndLevelDialogueTimeCounter == LEVEL_END_TIME_COUNTER_TIME_OUT_VALUE)
         {
            return;
         }
         this.mPowerupsUIManager.setPowerupActive(eventName,false);
         this.mPowerupsUIManager.usePowerup(eventName);
         this.hideEndLevelDialogue();
      }
      
      private function handleGetMoreSegment(button:UIComponentRovio, startPlaying:Boolean) : void
      {
         var getMoreMC:MovieClip = null;
         getMoreMC = button.mClip.getChildByName("MovieClip_GetMore") as MovieClip;
         if(!startPlaying)
         {
            getMoreMC.visible = false;
            return;
         }
         getMoreMC.visible = true;
         getMoreMC.mouseChildren = false;
         getMoreMC.mouseEnabled = false;
         getMoreMC.gotoAndPlay(2);
         getMoreMC.addEventListener(Event.ENTER_FRAME,function(e:Event):void
         {
            if(getMoreMC.currentFrameLabel == "End")
            {
               getMoreMC.gotoAndStop(1);
               getMoreMC.removeEventListener(Event.ENTER_FRAME,arguments.callee);
            }
         });
      }
      
      private function slingShotSelectedWithEvent(slingShotEventName:String) : void
      {
         if((AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.isLoading())
         {
            return;
         }
         var slingShotDefinition:SlingShotDefinition = SlingShotType.getSlingShotByEventName(slingShotEventName);
         if(slingShotDefinition)
         {
            this.mSlingShotUIManager.selectSlingshot(slingShotDefinition.identifier,false);
            this.hideEndLevelDialogue();
         }
         this.mUISpamClickPreventTimeCounter = UI_SPAM_CLICK_PREVENT_TIME;
      }
      
      public function getName() : String
      {
         return "PlayView";
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         var me:LevelObjectMightyEagle = null;
         if(!this.mVersusComponentAllowsStateChange && !this.mVersusSkipped)
         {
            return false;
         }
         if(this.isEagleUsed())
         {
            me = this.mLevelController.getMightyEagle();
            if(!me)
            {
               return true;
            }
            return me.hasTouchedGround && me.pigsKilled && me.lifeTimeMilliSeconds > 3000;
         }
         if((this.mLevelController as FacebookGameLogicController).levelMain.isAnyPowerUpStillActive() && !this.mSkippedLevelActivated)
         {
            return false;
         }
         return super.isAllowedToChangeVictoryState();
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if((this.mLevelController as FacebookGameLogicController).levelMain.isAnyPowerUpStillActive())
         {
            return false;
         }
         return super.isAllowedToChangeFailState();
      }
      
      private function specialBirdActivated() : void
      {
         (this.mLevelController as FacebookGameLogicController).resetToSlingShotState();
      }
      
      private function isAllowedToIncreaseExtraBirdTimer() : Boolean
      {
         if((this.mLevelController as FacebookGameLogicController).levelMain.isAnyPowerUpStillActive())
         {
            return false;
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpen())
         {
            return false;
         }
         return true;
      }
      
      private function onCurrentTournamentLevelScoresLoaded(event:TournamentEvent) : void
      {
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.loadLevelStandings();
      }
      
      protected function skipToLevelEnd(levelEndActionForAnalytics:String) : void
      {
         if((AngryBirdsEngine.smLevelMain.slingshot as FacebookLevelSlingshot).mSlingShotState == FacebookLevelSlingshot.STATE_WAITING_FOR_WINGMAN)
         {
            return;
         }
         if((AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.isLoading())
         {
            if(!this.mSyncingPopup)
            {
               this.mSyncingPopup = new SyncingPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(this.mSyncingPopup);
               (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.addEventListener(Event.COMPLETE,function():void
               {
                  (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.removeEventListener(Event.COMPLETE,onPowerupHandlerLoadingComplete);
                  mSyncingPopup.close();
                  mSyncingPopup = null;
                  skipToLevelEnd(levelEndActionForAnalytics);
               });
            }
            return;
         }
         FacebookAnalyticsCollector.getInstance().levelEndingAction = levelEndActionForAnalytics;
         this.mVersusComponentAllowsStateChange = true;
         this.mSkippedLevelActivated = true;
         if(this.mEndLevelDialogue)
         {
            this.mEndLevelDialogue.setVisibility(false);
         }
         this.mPowerupsUIManager.disableAllPowerups();
         this.mEndLevelDialogueTimeCounter = LEVEL_END_TIME_COUNTER_HIDDEN_VALUE;
         if(this.mLevelController.isInGameWonState())
         {
            this.mLevelController.skipLevelToVictory();
         }
         else
         {
            this.mLevelController.skipLevelToFailure();
         }
      }
      
      private function activateLevelEndDialogue() : void
      {
         this.mEndLevelDialogue.setVisibility(true);
         mViewContainer.getItemByName("EndLevelDialogueTitle").y = END_LEVEL_DIALOGUE_TITLE_ORIGINAL_Y_POS;
         (mViewContainer.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).gotoAndStop(1);
         mViewContainer.getItemByName("Button_No").setVisibility(true);
         mViewContainer.getItemByName("Button_No").mClip.scaleX = 1;
         mViewContainer.getItemByName("Button_No").mClip.scaleY = 1;
         mViewContainer.getItemByName("TextField_EndLevelCounter").setVisibility(true);
         this.mEndLevelDialogueBG.scaleX = 1;
         this.mEndLevelDialogueBG.scaleY = 1;
         if(AngryBirdsEngine.smLevelMain.slingshot.mSlingShotState == LevelSlingshot.STATE_BIRDS_ARE_GONE && !(AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.wingmanUsed)
         {
            this.handleWingmanSlider(true,this.mLevelController.isInGameWonState());
         }
         var counterClip:MovieClip = mViewContainer.getItemByName("TextField_EndLevelCounter").mClip;
         var maxScale:Number = 1.15;
         var pumpTime:Number = 0.1;
         var waitTime:Number = 0.8;
         this.mEndLevelTimerPulsatingTween = TweenManager.instance.createSequenceTween(TweenManager.instance.createTween(counterClip,{},{},waitTime),TweenManager.instance.createTween(counterClip,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":1,
            "scaleY":1
         },pumpTime,TweenManager.EASING_QUAD_OUT),TweenManager.instance.createTween(counterClip,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },pumpTime,TweenManager.EASING_QUAD_IN));
         this.mEndLevelTimerPulsatingTween.stopOnComplete = false;
         this.mEndLevelTimerPulsatingTween.delay = 0.1;
         this.mEndLevelTimerPulsatingTween.play();
      }
      
      private function hideEndLevelDialogue() : void
      {
         var endLevelDialogueOutButtonNoTween:ISimpleTween = null;
         var endLevelDialogueOutTitleTween:ISimpleTween = null;
         if(this.mEndLevelDialogueTimeCounter > LEVEL_END_TIME_COUNTER_START_VALUE)
         {
            this.stopTween(this.mEndLevelTimerPulsatingTween);
            this.mEndLevelTimerPulsatingTween = null;
            this.mEndLevelDialogueTimeCounter = LEVEL_END_TIME_COUNTER_HIDDEN_VALUE;
            mViewContainer.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            endLevelDialogueOutButtonNoTween = TweenManager.instance.createTween(mViewContainer.getItemByName("Button_No").mClip,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":1,
               "scaleY":1
            },0.2,TweenManager.EASING_QUAD_IN);
            endLevelDialogueOutButtonNoTween.onComplete = this.onEndLevelDialogueOutButtonNoTween;
            endLevelDialogueOutButtonNoTween.play();
            endLevelDialogueOutTitleTween = TweenManager.instance.createTween(mViewContainer.getItemByName("EndLevelDialogueTitle").mClip,{"y":END_LEVEL_DIALOGUE_TITLE_SECOND_Y_POS},{"y":END_LEVEL_DIALOGUE_TITLE_ORIGINAL_Y_POS},0.3,TweenManager.EASING_QUAD_IN);
            endLevelDialogueOutTitleTween.onComplete = this.onEndLevelDialogueOutTitleTween;
            endLevelDialogueOutTitleTween.play();
            this.mEndLevelDialogueOutBGTween = TweenManager.instance.createTween(this.mEndLevelDialogueBG,{
               "scaleX":0.8,
               "scaleY":0.8
            },{
               "scaleX":1,
               "scaleY":1
            },0.3,TweenManager.EASING_QUAD_IN);
            this.mEndLevelDialogueOutBGTween.onComplete = this.showSkipLevelEndButton;
            this.mEndLevelDialogueOutBGTween.play();
         }
      }
      
      private function onEndLevelDialogueOutButtonNoTween() : void
      {
         mViewContainer.getItemByName("Button_No").setVisibility(false);
      }
      
      private function onEndLevelDialogueOutTitleTween() : void
      {
         mViewContainer.getItemByName("EndLevelDialogueTitle").y = END_LEVEL_DIALOGUE_TITLE_SECOND_Y_POS;
      }
      
      private function showSkipLevelEndButton() : void
      {
         if(this.mEndLevelActivationDelayTimer <= 0)
         {
            this.mEndLevelDialogue.setVisibility(true);
            this.mEndLevelDialogueTimeCounter = LEVEL_END_TIME_COUNTER_HIDDEN_VALUE;
            mViewContainer.getItemByName("EndLevelDialogueTitle").y = END_LEVEL_DIALOGUE_TITLE_SECOND_Y_POS;
            mViewContainer.getItemByName("Button_No").setVisibility(false);
            mViewContainer.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            this.mEndLevelDialogueBG.scaleX = 0.8;
            this.mEndLevelDialogueBG.scaleY = 0.8;
            (mViewContainer.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).play();
            this.mEndLevelDialogueOutBGTween = null;
         }
      }
      
      private function handleWingmanSlider(showSlider:Boolean, improveScoreSlider:Boolean = true) : void
      {
         var sliderBackground:MovieClip = null;
         var sliderTween:ISimpleTween = null;
         if(showSlider && this.mWingmanSliderShown)
         {
            return;
         }
         if(showSlider && TournamentEventManager.instance.canUsePumpkinPowerup())
         {
            return;
         }
         var button:UIComponentRovio = this.mPowerupsButtonsContainer.getItemByName(PowerupType.sExtraBird.buttonName);
         var sliderUse:MovieClip = button.mClip.getChildByName("MovieClip_SliderUse") as MovieClip;
         var sliderImprove:MovieClip = button.mClip.getChildByName("MovieClip_SliderImprove") as MovieClip;
         if(showSlider && !this.mIsMightyEagleUsed)
         {
            if(improveScoreSlider)
            {
               sliderBackground = sliderImprove.Movieclip_SliderBackground;
               sliderImprove.visible = true;
               sliderUse.visible = false;
            }
            else
            {
               sliderBackground = sliderUse.Movieclip_SliderBackground;
               sliderImprove.visible = false;
               sliderUse.visible = true;
            }
            sliderBackground.x = -sliderBackground.width;
            sliderTween = TweenManager.instance.createTween(sliderBackground,{"x":0},null,0.7,TweenManager.EASING_LINEAR);
            sliderTween.stopOnComplete;
            sliderTween.automaticCleanup = true;
            sliderTween.play();
            this.mWingmanSliderShown = true;
         }
         else
         {
            sliderUse.visible = false;
            sliderImprove.visible = false;
         }
      }
      
      private function showLevelPopups() : void
      {
         this.mPowerupsUIManager.checkForPowerupSuggestion();
         TutorialPopupManagerFacebook.showTutorials(false,true);
      }
      
      protected function handleCollectibleItems() : void
      {
         var eventManager:ItemsCollectionManager = null;
         if(TournamentEventManager.instance.isEventActivated())
         {
            eventManager = TournamentEventManager.instance.getActivatedEventManager() as ItemsCollectionManager;
            if(eventManager)
            {
               eventManager.resetCollectedItemsCountFromCurrentLevel();
            }
         }
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
