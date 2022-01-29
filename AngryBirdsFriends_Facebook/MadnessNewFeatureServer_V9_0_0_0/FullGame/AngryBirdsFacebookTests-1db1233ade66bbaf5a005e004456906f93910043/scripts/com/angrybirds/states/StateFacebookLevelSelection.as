package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.data.HighScoreListManager;
   import com.angrybirds.friendsbar.events.CachedDataEvent;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class StateFacebookLevelSelection extends StateLevelSelection implements IVirtualPageView, INavigable, IWalletContainer
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      public static var sForceGoToPage:int = -1;
      
      public static const EPISODE_GOLDEN_EGGS:String = "1000";
      
      public static const EPISODE_TOURNAMENT:String = "2000";
      
      public static const PAGINATION:String = "pagination_";
       
      
      private var mHighScoreListManager:HighScoreListManager;
      
      private var mWallet:Wallet;
      
      public function StateFacebookLevelSelection(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelSelectionState")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView.getItemByName("Button_Fullscreen").setVisibility(false);
         this.mHighScoreListManager = AngryBirdsFacebook.sHighScoreListManager;
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         var chapter:EpisodeModel = mLevelManager.getCurrentEpisodeModel();
         if(chapter == null)
         {
            return;
         }
         if(chapter.name == EPISODE_GOLDEN_EGGS && !(this is StateFacebookGoldenEggs))
         {
            mUIView.visible = false;
            setNextState(StateFacebookGoldenEggs.STATE_NAME);
            mLevelManager.resetCurrentLevel();
            return;
         }
         if(chapter.isTournament && !(this is StateTournamentLevelSelection))
         {
            mUIView.visible = false;
            setNextState(StateTournamentLevelSelection.STATE_NAME);
            mLevelManager.resetCurrentLevel();
         }
         if(chapter.name == StateFacebookWonderlandLevelSelection.EPISODE_WONDERLAND && !(this is StateFacebookWonderlandLevelSelection))
         {
            mUIView.visible = false;
            setNextState(StateFacebookWonderlandLevelSelection.STATE_NAME);
         }
         mUIView.visible = true;
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).serverVersionChecker.holdDialog = false;
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         if(AngryBirdsEngine.smLevelMain.background)
         {
            AngryBirdsEngine.smLevelMain.background.stopAmbientSound();
         }
         var cName:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         mUIView.setText(cName,"TextField_LevelName");
         this.countStarsAndFeathers(chapter);
         if(sForceGoToPage != -1)
         {
            moveToPage(sForceGoToPage);
            sForceGoToPage = -1;
         }
         this.loadFriendsBarScores();
         AngryBirdsBase.singleton.playThemeMusic();
         this.addWallet(new Wallet(this,true,true,false));
         FacebookGoogleAnalyticsTracker.trackPageView(this,null,this.getOptionalData());
      }
      
      protected function loadFriendsBarScores() : void
      {
         if(previousState != StateFacebookEpisodeSelection.STATE_NAME)
         {
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_STORY_LEVELS_OVERALL,null);
            this.mHighScoreListManager.getTotalScores().addEventListener(CachedDataEvent.DATA_LOADED,this.onAllFriendsLoaded);
            this.mHighScoreListManager.getTotalScores().loadItems(0,0);
         }
      }
      
      override protected function gotoNextPage() : void
      {
         super.gotoNextPage();
         FacebookGoogleAnalyticsTracker.trackPageView(this,null,this.getOptionalData());
      }
      
      override protected function gotoPrevPage() : void
      {
         super.gotoPrevPage();
         FacebookGoogleAnalyticsTracker.trackPageView(this,null,this.getOptionalData());
      }
      
      protected function countStarsAndFeathers(chapter:EpisodeModel) : void
      {
         var stars:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(chapter);
         var maxStars:int = AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(chapter);
         var feathers:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(chapter);
         var maxFeathers:int = AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(chapter);
         this.showStarsAndFeathers(chapter,stars,maxStars,feathers,maxFeathers);
      }
      
      protected function showStarsAndFeathers(chapter:EpisodeModel, stars:int, maxStars:int, feathers:int, maxFeathers:int) : void
      {
         mUIView.setText(stars + "/" + maxStars,"Textfield_CollectedStars");
         mUIView.setText(feathers + "/" + maxFeathers,"Textfield_ME_Score");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.stopCurrentTheme();
         this.removeWallet(this.mWallet);
      }
      
      protected function stopCurrentTheme() : void
      {
      }
      
      override protected function makeButtonForLevel(level:String, isOpen:Boolean, buttonClass:Class, index:int, pageNum:int) : MovieClip
      {
         var crown:MovieClip = null;
         var clip:MovieClip = super.makeButtonForLevel(level,isOpen,buttonClass,index,pageNum);
         var userRankForLevel:int = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).getRankForLevel(level);
         if(userRankForLevel && userRankForLevel <= 3)
         {
            crown = new AssetCache.getAssetFromCache("LevelSelectionCrown")();
            crown.gotoAndStop(userRankForLevel);
            crown.x = -78;
            crown.y = -102;
            clip.addChild(crown);
         }
         clip.TextField_LevelNum.text.text = index + 1 + pageNum * mLevelManager.getEpisodeForLevel(level).levelsPerPage;
         return clip;
      }
      
      override protected function onKeyEvent(keyEvent:KeyboardEvent) : void
      {
         if(AngryBirdsBase.singleton.popupManager.isPopupOpen())
         {
            return;
         }
         super.onKeyEvent(keyEvent);
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(eventName.length > 0 && component is UIRepeaterButtonRovio && ((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.name == "Repeater_LevelSelection12" || (component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15"))
         {
            if(!isPageTweenPlaying)
            {
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               FacebookAnalyticsCollector.buttonId = eventName.toLowerCase();
               mLevelManager.loadLevel(mLevelManager.getValidLevelId(eventName.toLowerCase()));
               setNextState(StateCutScene.STATE_NAME);
            }
         }
         else
         {
            super.onUIInteraction(eventIndex,eventName,component);
            switch(eventName)
            {
               case "showCredits":
                  setNextState(StateCredits.STATE_NAME);
            }
         }
      }
      
      override protected function updatePageNumber(index:int) : void
      {
         (mUIView.getItemByName("TextField_LevelNumberSmall") as UITextFieldRovio).mTextField.text = (index + 1).toString();
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_LEVEL_PACK + "_" + mLevelManager.getCurrentEpisodeModel().writtenName;
      }
      
      public function getIdentifier() : String
      {
         if(mLevelManager.getCurrentEpisodeModel())
         {
            return mLevelManager.getCurrentEpisodeModel().writtenName;
         }
         return null;
      }
      
      public function getOptionalData() : String
      {
         return PAGINATION + (mNextPage + 1).toString();
      }
      
      public function getName() : String
      {
         return STATE_NAME;
      }
      
      private function onAllFriendsLoaded(e:CachedDataEvent) : void
      {
         this.mHighScoreListManager.getTotalScores().removeEventListener(CachedDataEvent.DATA_LOADED,this.onAllFriendsLoaded);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_STORY_LEVELS_OVERALL,this.mHighScoreListManager.getTotalScores().data);
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
   }
}
