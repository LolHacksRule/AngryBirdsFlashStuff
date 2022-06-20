package com.angrybirds.states.tournament
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.UserLevelScoreVO;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.LevelModelFriends;
   import com.angrybirds.data.user.UserProgressEvent;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.ui.profile.BirdBotProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.PosterPopup;
   import com.angrybirds.sfx.Star;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.angrybirds.states.StateFacebookLevelEnd;
   import com.angrybirds.states.StateFacebookMainMenuSelection;
   import com.angrybirds.tournament.NextLevelButton;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.TournamentRules;
   import com.angrybirds.tournamentEvents.ItemsCollection.ItemsCollectionManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.tournamentEvents.tournamentEventStarCollection.StarCollectionManager;
   import com.angrybirds.tournamentEvents.tournamentEventStarCollection.StarCollectionRewardItem;
   import com.angrybirds.utils.FriendsUtil;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.IManagedTween;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import data.user.FacebookUserProgress;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import mx.effects.easing.Back;
   
   public class StateTournamentLevelEnd extends StateFacebookLevelEnd
   {
      
      public static const FIRST_STAR_COIN_REWARD:int = 2;
      
      public static const SECOND_STAR_COIN_REWARD:int = 4;
      
      public static const THIRD_STAR_COIN_REWARD:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const SHARE_MODE_GOLD:int = 0;
      
      private static const SHARE_MODE_BRAG:int = 1;
      
      private static const SHARE_MODE_THREE_STARS_TOURNAMENT:int = 2;
      
      private static const BUTTON_ITEMS_COLLECTION_NAME:String = "BUTTON_ITEMS_COLLECTION";
       
      
      private var mShareDataObject:Object;
      
      private var mIsFirstTimeScore:Boolean;
      
      private var mUserProgressSaved:Boolean;
      
      private var mOldStarCount:int;
      
      private var mLeftStarAwardClaimed:Boolean = false;
      
      private var mCenterStarAwardClaimed:Boolean = false;
      
      private var mRightStarAwardClaimed:Boolean = false;
      
      private var mOldCoinsAmount:int;
      
      private var mNextLevelButton:NextLevelButton;
      
      private var mTotalCoinsWhenOpened:int;
      
      private var mStarCollectorManager:StarCollectionManager;
      
      private var mItemsCollectionEventManager:ItemsCollectionManager;
      
      private var mStarCollectorItem:StarCollectionRewardItem;
      
      private var mStarCollectorImage:DisplayObjectContainer;
      
      private var mStarCollectorImageXPositioner:Number;
      
      private var mStarCollectorTextfield:TextField;
      
      private var mStarCollectorStarsGained:int;
      
      private var mStarCollectorTextMoreStarsNeeded:Boolean;
      
      private var mStarCollectorTweens:Vector.<ISimpleTween>;
      
      public function StateTournamentLevelEnd(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "stateTournamentLevelEnd")
      {
         super(levelManager,localizationManager,initState,name);
         mDefaultSharingDisabled = true;
      }
      
      override protected function init() : void
      {
         super.init();
         this.mNextLevelButton = new NextLevelButton(this,UIButtonRovio(mUIView.getItemByName("Button_NextLevel")),TournamentModel.instance,DataModelFriends(AngryBirdsBase.singleton.dataModel).shopListing,DataModelFriends(AngryBirdsBase.singleton.dataModel).virtualCurrencyModel);
      }
      
      protected function saveTournamentLevelProgress(newScore:int) : void
      {
         this.mOldCoinsAmount = DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel).virtualCurrencyModel.totalCoins;
         (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).setTournamentScoreForLevel(mLevelManager.currentLevel,newScore);
         var hasBeatenLeagueUsers:Boolean = (AngryBirdsEngine.smApp as AngryBirdsFacebook).newTournamentUserScore(mLevelManager.currentLevel,newScore);
         (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).saveLevelProgress(mLevelManager.currentLevel,false,true,hasBeatenLeagueUsers);
         LeagueModel.instance.setToLeagueScore(newScore);
      }
      
      override protected function loadNextLevel() : void
      {
         var nextLevel:String = TournamentModel.instance.getNextTournamentLevel(mLevelManager.currentLevel);
         if(nextLevel != null && nextLevel != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(nextLevel));
         }
         else
         {
            (mLevelManager as FacebookLevelManager).previousLevel = mLevelManager.currentLevel;
         }
         setNextState(this.getCutSceneState());
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY);
      }
      
      override protected function setScoreData() : void
      {
         var birdBot1Score:Number = NaN;
         var birdBot2Score:Number = NaN;
         mUIView.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         this.mTotalCoinsWhenOpened = DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel).virtualCurrencyModel.totalCoins;
         var highScore:int = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).getTournamentScoreForLevel(mLevelManager.currentLevel);
         var newScore:int = AngryBirdsEngine.controller.getScore();
         mIsNewHighScore = newScore > highScore;
         this.mIsFirstTimeScore = highScore == 0;
         this.mOldStarCount = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,highScore);
         setScoreStars(newScore,highScore);
         this.leftStarAwardClaimed = false;
         this.centerStarAwardClaimed = false;
         this.rightStarAwardClaimed = false;
         switch(this.mOldStarCount)
         {
            case 0:
               break;
            case 1:
               this.leftStarAwardClaimed = true;
               break;
            case 2:
               this.leftStarAwardClaimed = true;
               this.centerStarAwardClaimed = true;
               break;
            case 3:
               this.leftStarAwardClaimed = true;
               this.centerStarAwardClaimed = true;
               this.rightStarAwardClaimed = true;
         }
         setMightyEagleFeather();
         this.mUserProgressSaved = true;
         if(mIsNewHighScore)
         {
            this.mUserProgressSaved = false;
            (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).addEventListener(UserProgressEvent.USER_PROGRESS_SAVED,this.onUserProgressSaved);
            this.saveTournamentLevelProgress(newScore);
            birdBot1Score = AngryBirdsFacebook.sHighScoreListManager.getLevelScoresForUser(mLevelManager.currentLevel,BirdBotProfilePicture.BIRD_BOT_1);
            birdBot2Score = AngryBirdsFacebook.sHighScoreListManager.getLevelScoresForUser(mLevelManager.currentLevel,BirdBotProfilePicture.BIRD_BOT_2);
            FacebookGoogleAnalyticsTracker.trackTournamentBeatBotBirds(mLevelManager.currentLevel,newScore > birdBot1Score,newScore > birdBot2Score,newScore - birdBot1Score,newScore - birdBot2Score);
            TournamentModel.forceReloadStandings();
         }
         else
         {
            this.mItemsCollectionEventManager = TournamentEventManager.instance.getActivatedEventManager() as ItemsCollectionManager;
            if(this.mItemsCollectionEventManager)
            {
               if(this.mItemsCollectionEventManager.getCollectedItemsCountFromCurrentLevel() > 0)
               {
                  this.mUserProgressSaved = false;
                  (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).addEventListener(UserProgressEvent.USER_PROGRESS_SAVED,this.onUserProgressSaved);
                  this.saveTournamentLevelProgress(highScore);
                  TournamentModel.forceReloadStandings();
               }
            }
         }
         (mUIView.getItemByName("MovieClip_NewHighScoreBadge") as UIMovieClipRovio).setVisibility(false);
         (mUIView.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).mClip.gotoAndStop("UnLit");
         var goldScore:int = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var silverScore:int = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         var newStars:int = 1;
         if(newScore >= goldScore)
         {
            newStars = 3;
         }
         else if(newScore >= silverScore)
         {
            newStars = 2;
         }
         var isFirstTimeCompleted:* = this.mOldStarCount == 0;
         var isFirstTimeThreeStars:Boolean = this.mOldStarCount < 3 && newStars == 3;
         FacebookAnalyticsCollector.getInstance().trackLevelEndedEvent(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount() - AngryBirdsEngine.smLevelMain.slingshot.getBirdCount(),AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedPowerups(),AngryBirdsEngine.controller.getScore(),isFirstTimeCompleted,isFirstTimeThreeStars);
         if(this.mOldStarCount == 0)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).areAllTheLevelsCompleted(TournamentModel.instance.levelIDs))
            {
               FacebookAnalyticsCollector.getInstance().trackAllContentPlayedEvent(TournamentModel.instance.currentTournament.id);
            }
         }
         if(mIsNewHighScore && this.mStarCollectorManager)
         {
            this.mStarCollectorManager.increaseCollectedInEvent(newStars - this.mOldStarCount);
         }
         this.initShareUI();
      }
      
      private function set leftStarAwardClaimed(value:Boolean) : void
      {
         this.mLeftStarAwardClaimed = value;
         mUIView.container.mClip.Container_LevelEndStripe.star1Award.visible = !value;
         mUIView.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
      }
      
      private function set centerStarAwardClaimed(value:Boolean) : void
      {
         this.mCenterStarAwardClaimed = value;
         mUIView.container.mClip.Container_LevelEndStripe.star2Award.visible = !value;
         mUIView.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
      }
      
      private function set rightStarAwardClaimed(value:Boolean) : void
      {
         this.mRightStarAwardClaimed = value;
         mUIView.container.mClip.Container_LevelEndStripe.star3Award.visible = !value;
         mUIView.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
      }
      
      private function startStarCollectorTween(starIndex:int) : void
      {
         var dsp:DisplayObjectContainer = null;
         if(!this.mStarCollectorManager || !this.mStarCollectorImage)
         {
            return;
         }
         var cls:Class = AssetCache.getAssetFromCache("StarCollectorLevelEndStar");
         dsp = new cls();
         if(!this.mStarCollectorTweens)
         {
            this.mStarCollectorTweens = new Vector.<ISimpleTween>();
         }
         var startCoordinates:Object = new Object();
         startCoordinates.x = mUIView.stage.stageWidth >> 1;
         startCoordinates.y = mUIView.stage.stageHeight >> 1;
         switch(starIndex)
         {
            case 0:
               startCoordinates.x -= 236;
               startCoordinates.y -= 90;
               break;
            case 1:
               startCoordinates.x -= 60;
               startCoordinates.y -= 110;
               break;
            default:
               startCoordinates.x += 82;
               startCoordinates.y -= 90;
         }
         var tween1:IManagedTween = TweenManager.instance.createTween(dsp,{
            "x":this.mStarCollectorImage.x + (this.mStarCollectorImage.width >> 1),
            "y":this.mStarCollectorImage.y + (this.mStarCollectorImage.height >> 1)
         },startCoordinates,1,TweenManager.EASING_QUAD_OUT);
         var tween2:IManagedTween = TweenManager.instance.createTween(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":1,
            "scaleY":1
         },1,Back.easeIn);
         var starAnimTween:ISimpleTween = TweenManager.instance.createParallelTween(tween1,tween2);
         starAnimTween.onComplete = function():void
         {
            dsp.parent.removeChild(dsp);
            starAnimTween = null;
            mStarCollectorTextMoreStarsNeeded = true;
         };
         starAnimTween.onStart = function():void
         {
            mUIView.movieClip.addChild(dsp);
         };
         starAnimTween.automaticCleanup = true;
         this.mStarCollectorTweens.push(starAnimTween);
         starAnimTween.play();
      }
      
      override protected function setStarLeftLit() : String
      {
         var ao:AnalyticsObject = null;
         var aoArray:Array = null;
         (mUIView.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).mClip.gotoAndStop("Lit");
         if(!this.mLeftStarAwardClaimed)
         {
            mUIView.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
            SoundEngine.playSound("star_1_coins",EFFECT_CHANNEL_NAME);
            FacebookGoogleAnalyticsTracker.trackVirtualCurrencyGained(FacebookGoogleAnalyticsTracker.POWERUP_SOURCE_TOURNAMENT_LEVEL_COMPLETE,VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID,FIRST_STAR_COIN_REWARD);
            ao = new AnalyticsObject();
            ao.screen = STATE_NAME;
            ao.amount = FIRST_STAR_COIN_REWARD;
            ao.currency = "IVC";
            ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_LEVEL_REWARD;
            ao.itemType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            ao.iapType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            ao.level = AngryBirdsEngine.smLevelMain.currentLevel.name;
            ao.itemName = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            aoArray = [ao];
            FacebookAnalyticsCollector.getInstance().trackInventoryGainedEvent(false,ao.itemType,ao.amount,ao.gainType,ao.screen,ao.level,ao.itemName,ao.iapType,ao.paidAmount,ao.currency,ao.receiptId);
            this.mTotalCoinsWhenOpened += FIRST_STAR_COIN_REWARD;
            wallet.setCoinsAmountText(this.mTotalCoinsWhenOpened);
            wallet.animateGotCoins(FIRST_STAR_COIN_REWARD);
            this.startStarCollectorTween(0);
            return Star.TYPE_COIN;
         }
         SoundEngine.playSound("star_1_coins",EFFECT_CHANNEL_NAME);
         return Star.TYPE_ALL;
      }
      
      override protected function setStarCenterLit() : String
      {
         var coins:int = 0;
         var ao:AnalyticsObject = null;
         var aoArray:Array = null;
         (mUIView.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).mClip.gotoAndStop("Lit");
         if(!this.mCenterStarAwardClaimed)
         {
            mUIView.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
            coins = this.mOldCoinsAmount + SECOND_STAR_COIN_REWARD;
            if(!this.mLeftStarAwardClaimed)
            {
               coins += FIRST_STAR_COIN_REWARD;
            }
            SoundEngine.playSound("star_2_coins",EFFECT_CHANNEL_NAME);
            FacebookGoogleAnalyticsTracker.trackVirtualCurrencyGained(FacebookGoogleAnalyticsTracker.POWERUP_SOURCE_TOURNAMENT_LEVEL_COMPLETE,VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID,SECOND_STAR_COIN_REWARD);
            ao = new AnalyticsObject();
            ao.screen = STATE_NAME;
            ao.amount = SECOND_STAR_COIN_REWARD;
            ao.currency = "IVC";
            ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_LEVEL_REWARD;
            ao.itemType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            ao.iapType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            ao.level = AngryBirdsEngine.smLevelMain.currentLevel.name;
            ao.itemName = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            aoArray = [ao];
            FacebookAnalyticsCollector.getInstance().trackInventoryGainedEvent(false,ao.itemType,ao.amount,ao.gainType,ao.screen,ao.level,ao.itemName,ao.iapType,ao.paidAmount,ao.currency,ao.receiptId);
            this.mTotalCoinsWhenOpened += SECOND_STAR_COIN_REWARD;
            wallet.setCoinsAmountText(this.mTotalCoinsWhenOpened);
            wallet.animateGotCoins(SECOND_STAR_COIN_REWARD);
            this.startStarCollectorTween(1);
            return Star.TYPE_COIN;
         }
         SoundEngine.playSound("star_2_coins",EFFECT_CHANNEL_NAME);
         return Star.TYPE_ALL;
      }
      
      override protected function setStarRightLit() : String
      {
         var coins:int = 0;
         var ao:AnalyticsObject = null;
         var aoArray:Array = null;
         (mUIView.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).mClip.gotoAndStop("Lit");
         if(!this.mRightStarAwardClaimed)
         {
            mUIView.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
            coins = this.mOldCoinsAmount + THIRD_STAR_COIN_REWARD;
            if(!this.mLeftStarAwardClaimed)
            {
               coins += FIRST_STAR_COIN_REWARD;
            }
            if(!this.mCenterStarAwardClaimed)
            {
               coins += SECOND_STAR_COIN_REWARD;
            }
            SoundEngine.playSound("star_3_coins",EFFECT_CHANNEL_NAME);
            FacebookGoogleAnalyticsTracker.trackVirtualCurrencyGained(FacebookGoogleAnalyticsTracker.POWERUP_SOURCE_TOURNAMENT_LEVEL_COMPLETE,VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID,THIRD_STAR_COIN_REWARD);
            ao = new AnalyticsObject();
            ao.screen = STATE_NAME;
            ao.amount = THIRD_STAR_COIN_REWARD;
            ao.currency = "IVC";
            ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_LEVEL_REWARD;
            ao.itemType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            ao.iapType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            ao.level = AngryBirdsEngine.smLevelMain.currentLevel.name;
            ao.itemName = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            aoArray = [ao];
            FacebookAnalyticsCollector.getInstance().trackInventoryGainedEvent(false,ao.itemType,ao.amount,ao.gainType,ao.screen,ao.level,ao.itemName,ao.iapType,ao.paidAmount,ao.currency,ao.receiptId);
            this.mTotalCoinsWhenOpened += THIRD_STAR_COIN_REWARD;
            wallet.setCoinsAmountText(this.mTotalCoinsWhenOpened);
            wallet.animateGotCoins(THIRD_STAR_COIN_REWARD);
            this.startStarCollectorTween(2);
            return Star.TYPE_COIN;
         }
         SoundEngine.playSound("star_3_coins",EFFECT_CHANNEL_NAME);
         return Star.TYPE_ALL;
      }
      
      override public function activate(previousState:String) : void
      {
         var collectionItemName:String = null;
         var button:UIButtonRovio = null;
         var tournamentRules:TournamentRules = null;
         var brandName:String = null;
         var itemDropAnimation:MovieClip = null;
         this.mStarCollectorManager = TournamentEventManager.instance.getActivatedEventManager() as StarCollectionManager;
         if(this.mStarCollectorManager)
         {
            if(this.mStarCollectorManager.collectedInEvent >= this.mStarCollectorManager.starsNeededForTheLestChest && !this.mStarCollectorManager.hasClaimableEventRewards())
            {
               this.mStarCollectorManager = null;
            }
         }
         super.activate(previousState);
         var nextLevel:String = TournamentModel.instance.getNextTournamentLevelId(mLevelManager.currentLevel);
         if(nextLevel)
         {
            this.mNextLevelButton.activate(nextLevel);
         }
         this.mItemsCollectionEventManager = TournamentEventManager.instance.getActivatedEventManager() as ItemsCollectionManager;
         if(this.mItemsCollectionEventManager)
         {
            if(this.mItemsCollectionEventManager.getCollectedItemsCountFromCurrentLevel() > 0)
            {
               collectionItemName = "CollectionItemImage";
               button = mUIView.getItemByName(BUTTON_ITEMS_COLLECTION_NAME) as UIButtonRovio;
               tournamentRules = TournamentModel.instance.tournamentRules;
               brandName = tournamentRules.brandedFrameLabel;
               (button.mClip.getChildByName("txtAmount") as TextField).text = ItemsInventory.instance.getAmountOfItem(ItemsCollectionManager.COLLETED_ITEM_ID) + 1 + "";
               FriendsUtil.doBrandedImageReplacement(collectionItemName + "_" + brandName,collectionItemName,button.mClip);
               button.setVisibility(false);
               button.setEnabled(false);
               itemDropAnimation = (mUIView.getItemByName("ItemDropMovieClip") as UIMovieClipRovio).mClip;
               FriendsUtil.doBrandedImageReplacement(collectionItemName + "_" + brandName,collectionItemName,itemDropAnimation);
               itemDropAnimation.addFrameScript(itemDropAnimation.totalFrames - 1,function fn():void
               {
                  itemDropAnimation.gotoAndStop(1);
                  itemDropAnimation.visible = false;
                  button.setVisibility(true);
                  button.setEnabled(true);
               });
               itemDropAnimation.gotoAndPlay(1);
               itemDropAnimation.visible = true;
               mUIView.getItemByName("Hostess_CupCakes").visible = true;
               SoundEngine.playSound("fortunewheel_block_remove",SoundEngine.DEFAULT_CHANNEL_NAME);
               mUIView.getItemByName("Button_FreePowerups").setVisibility(false);
            }
            else
            {
               mUIView.getItemByName(BUTTON_ITEMS_COLLECTION_NAME).setVisibility(false);
            }
         }
         else
         {
            mUIView.getItemByName(BUTTON_ITEMS_COLLECTION_NAME).setVisibility(false);
         }
      }
      
      override protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,true);
      }
      
      private function showPosterPopup() : void
      {
         var levelPosterID:String = null;
         var posterStorageId:String = null;
         var levelModel:LevelModel = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         var levelModelFriends:LevelModelFriends = LevelModelFriends(levelModel);
         for each(levelPosterID in PosterPopup.POSTER_BLOCKS)
         {
            if(levelModelFriends.containsObjectType(levelPosterID))
            {
               posterStorageId = levelPosterID + "_" + (AngryBirdsEngine.smApp as AngryBirdsFacebook).serverVersionChecker.getInitialVersion();
               if(DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.hasItemBeenSeen(posterStorageId))
               {
                  return;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new PosterPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,levelPosterID));
               DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.SEEN_ITEMS_STORAGE_NAME,[posterStorageId]);
               break;
            }
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         this.mNextLevelButton.update();
         this.updateStarCollectorButton();
      }
      
      override protected function showButtonsNormal() : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         mUIView.getItemByName("Button_CutScene").setVisibility(false);
         var nextLevelId:String = TournamentModel.instance.getNextTournamentLevel(mLevelManager.currentLevel);
         if(nextLevelId)
         {
            mUIView.getItemByName("Button_NextLevel").setVisibility(true);
            mUIView.getItemByName("Button_NextLevel_Orange").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = mDefaultButtonPositions[0];
            mUIView.getItemByName("Button_Replay").x = mDefaultButtonPositions[1];
            mUIView.getItemByName("Button_NextLevel").x = mDefaultButtonPositions[2];
         }
         else
         {
            mUIView.getItemByName("Button_NextLevel").setVisibility(false);
            mUIView.getItemByName("Button_NextLevel_Orange").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = mDefaultButtonPositions[0];
            mUIView.getItemByName("Button_Replay").x = mDefaultButtonPositions[1];
            mUIView.getItemByName("Button_NextLevel_Orange").x = mDefaultButtonPositions[2];
         }
         if(this.mStarCollectorManager)
         {
            if(!this.mStarCollectorImage)
            {
               this.mStarCollectorStarsGained = this.mStarCollectorManager.collectedInEvent;
               this.mStarCollectorItem = this.mStarCollectorManager.getNextRewardItem();
               if(this.mStarCollectorStarsGained < this.mStarCollectorItem.starsNeeded)
               {
                  this.createStarCollectorImage(AssetCache.getAssetFromCache("ChestLocked" + this.mStarCollectorItem.ID));
                  this.mStarCollectorTextfield = this.mStarCollectorImage.getChildByName("TextField_Value") as TextField;
                  this.mStarCollectorTextfield.text = this.mStarCollectorStarsGained + "/" + this.mStarCollectorItem.starsNeeded;
                  this.mStarCollectorImage.getChildByName("bgNormal").visible = false;
                  this.mStarCollectorImage.getChildByName("bgActive").visible = true;
               }
               else
               {
                  this.createStarCollectorImage(AssetCache.getAssetFromCache("ChestClaimable" + this.mStarCollectorItem.ID));
                  this.mStarCollectorTextfield = null;
               }
               this.mStarCollectorTextMoreStarsNeeded = false;
               this.mStarCollectorImage.addEventListener(MouseEvent.CLICK,this.onStarCollectorChestClicked);
            }
         }
      }
      
      private function updateStarCollectorButton() : void
      {
         if(this.mStarCollectorTextMoreStarsNeeded)
         {
            if(this.mStarCollectorStarsGained < this.mStarCollectorItem.starsNeeded && this.mStarCollectorStarsGained + 1 == this.mStarCollectorItem.starsNeeded)
            {
               this.mStarCollectorImage.parent.removeChild(this.mStarCollectorImage);
               this.mStarCollectorImage = null;
               this.createStarCollectorImage(AssetCache.getAssetFromCache("ChestClaimable" + this.mStarCollectorItem.ID));
               this.mStarCollectorTextfield = null;
               SoundEngine.playSound("ABF_gift_open_01",SoundEngine.DEFAULT_CHANNEL_NAME);
            }
            else
            {
               SoundEngine.playSound("LeaguePromotionPuff",SoundEngine.DEFAULT_CHANNEL_NAME);
            }
            ++this.mStarCollectorStarsGained;
            if(this.mStarCollectorTextfield)
            {
               this.mStarCollectorTextfield.text = this.mStarCollectorStarsGained + "/" + this.mStarCollectorItem.starsNeeded;
            }
            this.mStarCollectorTextMoreStarsNeeded = false;
         }
      }
      
      private function createStarCollectorImage(cls:Class) : void
      {
         this.mStarCollectorImage = new cls();
         this.mStarCollectorImageXPositioner = this.mStarCollectorImage.width + 16;
         this.mStarCollectorImage.x = (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.x - this.mStarCollectorImageXPositioner;
         this.mStarCollectorImage.y = 10;
         this.mStarCollectorImage.addEventListener(MouseEvent.CLICK,this.onStarCollectorChestClicked);
         mUIView.movieClip.addChild(this.mStarCollectorImage);
      }
      
      override protected function updateUIScale() : void
      {
         var scaleValue:Number = NaN;
         super.updateUIScale();
         if(this.mStarCollectorImage)
         {
            scaleValue = 1;
            if((AngryBirdsEngine.smApp as AngryBirdsFacebook).isFullScreenMode())
            {
               scaleValue = StateFacebookMainMenuSelection.SCALE_LEVEL_BUTTONS_IN_FULL_SCREEN;
            }
            this.mStarCollectorImage.scaleX = scaleValue;
            this.mStarCollectorImage.scaleY = scaleValue;
            this.mStarCollectorImage.x = (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.x - this.mStarCollectorImageXPositioner * scaleValue;
         }
      }
      
      override protected function onUserProgressSaved(e:UserProgressEvent) : void
      {
         super.onUserProgressSaved(e);
         this.mUserProgressSaved = true;
         var parsedResponse:Object = e.data;
         if(parsedResponse)
         {
            ItemsInventory.instance.injectInventoryUpdate(parsedResponse,true);
         }
         if(this.mItemsCollectionEventManager)
         {
            if(this.mItemsCollectionEventManager.getCollectedItemsCountFromCurrentLevel() > 0)
            {
               if(!DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.hasItemBeenSeen(ItemsCollectionManager.COLLETED_ITEM_ID))
               {
                  this.mItemsCollectionEventManager.openEventPopup();
                  DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.SEEN_ITEMS_STORAGE_NAME,[ItemsCollectionManager.COLLETED_ITEM_ID]);
               }
            }
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(!this.mUserProgressSaved)
         {
            return;
         }
         switch(eventName)
         {
            case "NEXT_LEVEL":
               if(mLevelManager.isCutSceneNext())
               {
                  super.onUIInteraction(eventIndex,eventName,component);
               }
               else if(this.mNextLevelButton.canPlay)
               {
                  super.onUIInteraction(eventIndex,eventName,component);
               }
               else if(this.mNextLevelButton.canPurchase)
               {
                  this.mNextLevelButton.purchase();
               }
               break;
            case "SHARE":
            case "BRAG":
               ExternalInterfaceHandler.addCallback("permissionRequestComplete",this.sharePermissionRequestComplete);
               ExternalInterfaceHandler.performCall("askForPublishStreamPermission");
               this.reportShareBragPress(true);
               hideShareUI();
               break;
            case "SKIP_SHARE":
               this.reportShareBragPress(false);
               hideShareUI();
               break;
            case "ITEMS_COLLECTION":
               this.onUIInteraction(0,"MENU",null);
               StateTournamentLevelSelection.activateTournamentEventPopup();
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
      
      private function onStarCollectorChestClicked(e:MouseEvent) : void
      {
         this.onUIInteraction(0,"MENU",null);
         StateTournamentLevelSelection.activateTournamentEventPopup();
         FacebookAnalyticsCollector.getInstance().trackTournamentEventButtonClick(FacebookAnalyticsCollector.TOURNAMENT_EVENT_BUTTON_CLICKED_FROM_RESULT_SCREEN,this.mStarCollectorManager.hasClaimableEventRewards());
      }
      
      protected function sharePermissionRequestComplete(success:String) : void
      {
         var episodeId:String = null;
         var actualLevelNumber:String = null;
         ExternalInterfaceHandler.removeCallback("permissionRequestComplete",this.sharePermissionRequestComplete);
         if(success == "true" && this.mShareDataObject)
         {
            switch(this.mShareDataObject.shareModeId)
            {
               case SHARE_MODE_BRAG:
                  episodeId = this.mShareDataObject.friendId.substr(0,this.mShareDataObject.friendId.indexOf("-"));
                  actualLevelNumber = FacebookLevelManager(mLevelManager).getFacebookNameFromLevelId(this.mShareDataObject.friendId);
                  ExternalInterfaceHandler.performCall("shareBrag",this.mShareDataObject.friendId,this.mShareDataObject.bragPhotoId,this.mShareDataObject.bragTitle,this.mShareDataObject.bragText,this.mShareDataObject.bragCaption,this.mShareDataObject.levelId);
                  break;
               case SHARE_MODE_GOLD:
                  ExternalInterfaceHandler.performCall("shareBragCrown",this.mShareDataObject.crownPhotoId,this.mShareDataObject.shareTitle,this.mShareDataObject.shareText,this.mShareDataObject.shareCaption,this.mShareDataObject.rank,this.mShareDataObject.levelId);
                  break;
               case SHARE_MODE_THREE_STARS_TOURNAMENT:
                  ExternalInterfaceHandler.performCall("shareBragThreeStars",this.mShareDataObject.starsPhotoId,this.mShareDataObject.shareTitle,this.mShareDataObject.shareText,this.mShareDataObject.shareCaption,this.mShareDataObject.tournamentId);
            }
         }
      }
      
      protected function reportShareBragPress(shareIt:Boolean) : void
      {
         switch(this.mShareDataObject.shareModeId)
         {
            case SHARE_MODE_BRAG:
               if(shareIt)
               {
                  FacebookGoogleAnalyticsTracker.trackShareBrag(FacebookAnalyticsCollector.SHARE_BRAG);
                  FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SHARE);
               }
               else
               {
                  FacebookGoogleAnalyticsTracker.trackShareBragSkip(FacebookAnalyticsCollector.SHARE_BRAG);
                  FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SKIP);
               }
               break;
            case SHARE_MODE_GOLD:
               if(shareIt)
               {
                  FacebookGoogleAnalyticsTracker.trackShareBrag(FacebookAnalyticsCollector.SHARE_BRAG_GOLD);
                  FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_GOLD,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SHARE);
               }
               else
               {
                  FacebookGoogleAnalyticsTracker.trackShareBragSkip(FacebookAnalyticsCollector.SHARE_BRAG_GOLD);
                  FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_GOLD,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SKIP);
               }
               break;
            case SHARE_MODE_THREE_STARS_TOURNAMENT:
               if(shareIt)
               {
                  FacebookGoogleAnalyticsTracker.trackShareBrag(FacebookAnalyticsCollector.SHARE_BRAG_THREE_STARS);
                  FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_THREE_STARS,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SHARE);
               }
               else
               {
                  FacebookGoogleAnalyticsTracker.trackShareBragSkip(FacebookAnalyticsCollector.SHARE_BRAG_THREE_STARS);
                  FacebookAnalyticsCollector.getInstance().trackShareBragEvent(FacebookAnalyticsCollector.SHARE_BRAG_THREE_STARS,FacebookAnalyticsCollector.SHARE_BRAG_RESULT_SKIP);
               }
         }
      }
      
      override public function deActivate() : void
      {
         var t:ISimpleTween = null;
         super.deActivate();
         this.mNextLevelButton.deactivate();
         if(this.mStarCollectorImage)
         {
            this.mStarCollectorImage.parent.removeChild(this.mStarCollectorImage);
            this.mStarCollectorImage = null;
            this.mStarCollectorItem = null;
         }
         if(this.mStarCollectorTweens)
         {
            for each(t in this.mStarCollectorTweens)
            {
               if(t)
               {
                  t.gotoEndAndStop();
               }
            }
            this.mStarCollectorTweens = null;
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return StateTournamentCutScene.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return StateTournamentLevelLoad.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return StateTournamentLevelSelection.STATE_NAME;
      }
      
      override protected function initShareUI() : void
      {
         super.initShareUI();
         mDefaultSharingDisabled = true;
         this.mShareDataObject = new Object();
         if(this.initThreeStars() || this.initShareCrown())
         {
            mUIView.getItemByName("ButtonBrag").setVisibility(false);
            mUIView.getItemByName("ButtonSkipShare").setVisibility(true);
            mUIView.getItemByName("ButtonShare").setVisibility(true);
            hideDefaultShareButtons();
            hideNormalButtons();
         }
         else if(this.initShareBrag())
         {
            mUIView.getItemByName("ButtonBrag").setVisibility(true);
            mUIView.getItemByName("ButtonSkipShare").setVisibility(true);
            mUIView.getItemByName("ButtonShare").setVisibility(false);
            hideDefaultShareButtons();
            hideNormalButtons();
         }
      }
      
      protected function initShareBrag() : Boolean
      {
         var userObj:UserLevelScoreVO = null;
         var foundBeatenUser:UserLevelScoreVO = null;
         var beatenUsers:Array = (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.getBeatenUsers();
         var maxBeatenUserScore:int = 0;
         for each(userObj in beatenUsers)
         {
            if(!this.isBirdBot(userObj) && userObj.levelScore > maxBeatenUserScore)
            {
               foundBeatenUser = userObj;
               maxBeatenUserScore = userObj.levelScore;
            }
         }
         if(!foundBeatenUser)
         {
            return false;
         }
         var textFieldSharingText:UITextFieldRovio = mUIView.getItemByName("Textfield_SharingText") as UITextFieldRovio;
         textFieldSharingText.setVisibility(true);
         FriendsUtil.setTextInCorrectFont(textFieldSharingText.mTextField,"You beat " + foundBeatenUser.userName + "!",250);
         var profilePictureUser:ProfilePicture = new ProfilePicture((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).avatarString,false,FacebookProfilePicture.SQUARE);
         var userImageParent:MovieClip = (mUIView.getItemByName("BragFramePlayer") as UIMovieClipRovio).mClip.getChildByName("imagePositioner") as MovieClip;
         userImageParent.removeChildren();
         userImageParent.addChild(profilePictureUser);
         (mUIView.getItemByName("BragFramePlayer") as UIMovieClipRovio).setVisibility(true);
         var profilePictureFriend:ProfilePicture = new ProfilePicture(foundBeatenUser.userId,foundBeatenUser.avatarString,false,FacebookProfilePicture.SQUARE);
         var friendImageParent:MovieClip = (mUIView.getItemByName("BragFrameFriend") as UIMovieClipRovio).mClip.getChildByName("imagePositioner") as MovieClip;
         friendImageParent.removeChildren();
         friendImageParent.addChild(profilePictureFriend);
         (mUIView.getItemByName("BragFrameFriend") as UIMovieClipRovio).setVisibility(true);
         this.mShareDataObject.shareModeId = SHARE_MODE_BRAG;
         this.mShareDataObject.friendId = foundBeatenUser.userId;
         this.mShareDataObject.bragPhotoId = "01_sharing_level_beat_friend";
         this.mShareDataObject.bragTitle = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName + " overtakes " + foundBeatenUser.userName + "!";
         this.mShareDataObject.bragText = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName + " just beat " + foundBeatenUser.userName + " in level " + TournamentModel.instance.getLevelNumberInText(mLevelManager.currentLevel) + " with " + AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel) + " points! Think you can do better?";
         this.mShareDataObject.bragCaption = "CLICK TO JOIN THEM!";
         this.mShareDataObject.levelId = mLevelManager.currentLevel;
         var actualLevelNumber:String = FacebookLevelManager(mLevelManager).getFacebookNameFromLevelId(mLevelManager.currentLevel);
         this.mShareDataObject.levelDisplayName = mLevelManager.getCurrentEpisodeModel().writtenName + "-" + actualLevelNumber;
         return true;
      }
      
      protected function initShareCrown() : Boolean
      {
         var newRank:int = (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.getChangedLevelRank(!this.mIsFirstTimeScore);
         var textFieldSharingText:UITextFieldRovio = mUIView.getItemByName("Textfield_SharingText") as UITextFieldRovio;
         textFieldSharingText.mTextField.embedFonts = true;
         textFieldSharingText.mTextField.setTextFormat(textFieldSharingText.mTextField.defaultTextFormat);
         switch(newRank)
         {
            case 1:
               this.mShareDataObject.shareModeId = SHARE_MODE_GOLD;
               textFieldSharingText.setText("You won the gold crown!");
               this.mShareDataObject.crownPhotoId = "02_sharing_level_1st_place";
               this.mShareDataObject.shareTitle = "1st place score!";
               this.mShareDataObject.shareText = "I just got the gold crown in level " + TournamentModel.instance.getLevelNumberInText(mLevelManager.currentLevel) + ". I\'m unstoppable!";
               textFieldSharingText.setVisibility(true);
               var shareCrownsClip:UIMovieClipRovio = mUIView.getItemByName("ShareCrowns") as UIMovieClipRovio;
               shareCrownsClip.goToFrame(newRank,false);
               shareCrownsClip.visible = true;
               this.mShareDataObject.shareCaption = "CLICK TO PLAY THE LEVEL!";
               this.mShareDataObject.rank = newRank;
               this.mShareDataObject.levelId = mLevelManager.currentLevel;
               return true;
            default:
               return false;
         }
      }
      
      protected function initThreeStars() : Boolean
      {
         if(AngryBirdsEngine.controller.getScore() < mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel))
         {
            return false;
         }
         if(this.mOldStarCount == 3)
         {
            return false;
         }
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).areAllTheLevelsCompleted(TournamentModel.instance.levelIDs))
         {
            return false;
         }
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).areTournamentLevelsCompletedWithThreeStars())
         {
            return false;
         }
         var textFieldSharingText:UITextFieldRovio = mUIView.getItemByName("Textfield_SharingText") as UITextFieldRovio;
         textFieldSharingText.mTextField.embedFonts = true;
         textFieldSharingText.mTextField.setTextFormat(textFieldSharingText.mTextField.defaultTextFormat);
         textFieldSharingText.setText("Three Star Tournament!");
         textFieldSharingText.setVisibility(true);
         this.mShareDataObject.shareModeId = SHARE_MODE_THREE_STARS_TOURNAMENT;
         this.mShareDataObject.starsPhotoId = "05_sharing_level_3_star_score";
         this.mShareDataObject.shareTitle = "Three Star Club!";
         this.mShareDataObject.shareText = "I got three stars in all of this week\'s tournament levels! Can you do it too?";
         this.mShareDataObject.shareCaption = "CLICK TO PLAY TOURNAMENT!";
         this.mShareDataObject.tournamentId = TournamentModel.instance.currentTournament.id;
         (mUIView.getItemByName("ShareThreeStars") as UIMovieClipRovio).setVisibility(true);
         return true;
      }
      
      private function isBirdBot(userData:UserLevelScoreVO) : Boolean
      {
         return BirdBotProfilePicture.isBot(userData.userId);
      }
      
      override protected function getTournamentId() : int
      {
         if(TournamentModel.instance.currentTournament)
         {
            return TournamentModel.instance.currentTournament.id;
         }
         return -1;
      }
   }
}
