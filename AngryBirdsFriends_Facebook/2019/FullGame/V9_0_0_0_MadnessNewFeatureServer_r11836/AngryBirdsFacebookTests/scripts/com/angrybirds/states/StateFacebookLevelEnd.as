package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.UserLevelScoreVO;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.user.UserProgressEvent;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.ui.profile.BirdBotProfilePicture;
   import com.angrybirds.popups.AvatarCreatorPopup;
   import com.angrybirds.popups.EmbedPopup;
   import com.angrybirds.popups.FirstTimePayerPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.SyncingPopup;
   import com.angrybirds.shoppopup.serveractions.AvatarCreatorItemListing;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.IPopupManager;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class StateFacebookLevelEnd extends StateLevelEnd implements IVirtualPageView, INavigable, IWalletContainer
   {
       
      
      private var mPendingEventName:String;
      
      private var mShareType:String;
      
      protected var mDefaultSharingDisabled:Boolean = false;
      
      private var mNewAvatarItemUnlocked:Boolean = false;
      
      private var mEggTweens:Array;
      
      private var mDataModel:DataModelFriends;
      
      private var mFirstTimePayerPopup:FirstTimePayerPopup;
      
      private var mShareBragDataObject:Object;
      
      protected var mWallet:Wallet;
      
      public function StateFacebookLevelEnd(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelEndState")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override protected function getViewXML() : XML
      {
         return ViewXMLLibrary.mLibrary.Views.View_LevelEndRio[0];
      }
      
      override public function activate(previousState:String) : void
      {
         this.mDataModel = DataModelFriends(AngryBirdsBase.singleton.dataModel);
         super.activate(previousState);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_NO_TUTORIAL);
         AngryBirdsEngine.smLevelMain.background.stopAmbientSound();
         mUIView.getItemByName("Button_FreePowerups").setVisibility(AngryBirdsFacebook.sSingleton.firstTimePayerPromotion.isEligible);
         if(this.mDefaultSharingDisabled)
         {
            this.hideDefaultShareButtons();
         }
         FacebookGoogleAnalyticsTracker.trackPageView(this,this.getIdentifier(),FacebookGoogleAnalyticsTracker.ACTION_GAME_LEVEL_WIN);
         ExternalInterfaceHandler.performCall("trackFBPixelEvent","level_complete");
         this.addWallet(this.createWallet());
      }
      
      protected function createWallet() : Wallet
      {
         return new Wallet(this,true,false,false,false);
      }
      
      override protected function showButtonsNormal() : void
      {
         super.showButtonsNormal();
         (mUIView.getItemByName("Button_NextLevel_Orange") as UIButtonRovio).setVisibility(false);
         var splitName:Array = mLevelManager.currentLevel.split("-");
         var levelChapter:String = splitName[0];
         if(levelChapter == "1000" || levelChapter == "3001")
         {
            mUIView.getItemByName("Button_NextLevel").setVisibility(false);
            (mUIView.getItemByName("Button_Menu") as UIButtonRovio).x = mDefaultButtonPositions[0] + Math.abs(mDefaultButtonPositions[1] - mDefaultButtonPositions[0]) / 2;
            (mUIView.getItemByName("Button_Replay") as UIButtonRovio).x = mDefaultButtonPositions[1] + Math.abs(mDefaultButtonPositions[2] - mDefaultButtonPositions[1]) / 2;
         }
      }
      
      override public function deActivate() : void
      {
         this.hideAllUnlockedButtons();
         this.mNewAvatarItemUnlocked = false;
         if(this.mFirstTimePayerPopup)
         {
            this.mFirstTimePayerPopup.removeEventListener(FirstTimePayerPopup.EVENT_PAYER_PROMOTION_COMPLETED,this.onFirstTimePayerPopupCompleted);
         }
         super.deActivate();
         this.removeWallet(this.mWallet);
      }
      
      protected function hideDefaultShareButtons() : void
      {
         mUIView.getItemByName("Button_Embed").setVisibility(false);
      }
      
      protected function hideNormalButtons() : void
      {
         mUIView.getItemByName("Button_NextLevel").setVisibility(false);
         mUIView.getItemByName("Button_NextLevel_Orange").setVisibility(false);
         mUIView.getItemByName("Button_CutScene").setVisibility(false);
         mUIView.getItemByName("Button_Menu").setVisibility(false);
         mUIView.getItemByName("Button_Replay").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.mDefaultSharingDisabled)
         {
            this.hideDefaultShareButtons();
         }
      }
      
      override protected function loadNextLevel() : void
      {
         super.loadNextLevel();
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY_STORY_LEVEL);
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var popup:IPopup = null;
         var eventNamesToBlock:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).isSavingUserProgress && eventNamesToBlock.indexOf(eventName) != -1)
         {
            popup = new SyncingPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(popup);
            this.mPendingEventName = eventName;
            (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).addEventListener(UserProgressEvent.USER_PROGRESS_SAVED,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "NEXT_LEVEL_ORANGE":
               SoundEngine.stopSounds();
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(this.getMenuButtonTargetState());
               break;
            case "OPEN_AVATAR":
               this.showAvatarEditorPopup("CATEGORYBACKGROUNDS");
               break;
            case "EMBED":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.showEmbedPopup(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.getFacebookNameFromLevelId(mLevelManager.currentLevel),AngryBirdsEngine.controller.getScore(),this.mShareType);
               break;
            case "FREE_POWERUPS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.showFirstTimePayerPopup();
         }
      }
      
      protected function shareBragPermissionRequestComplete(success:String) : void
      {
         ExternalInterfaceHandler.removeCallback("permissionRequestComplete",this.shareBragPermissionRequestComplete);
         if(success == "true" && this.mShareBragDataObject)
         {
            ExternalInterfaceHandler.performCall("shareBrag",this.mShareBragDataObject.friendId,this.mShareBragDataObject.bragPhotoId,this.mShareBragDataObject.bragTitle,this.mShareBragDataObject.bragText,this.mShareBragDataObject.bragCaption,this.mShareBragDataObject.levelId);
         }
      }
      
      protected function showAvatarEditorPopup(category:String) : void
      {
         var popup:AvatarCreatorPopup = new AvatarCreatorPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,category);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function showEmbedPopup(levelId:String, levelName:String, score:int, shareType:String) : void
      {
         var popup:EmbedPopup = new EmbedPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,levelId,levelName,score,shareType);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function showFirstTimePayerPopup() : void
      {
         this.mFirstTimePayerPopup = new FirstTimePayerPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP);
         this.mFirstTimePayerPopup.addEventListener(FirstTimePayerPopup.EVENT_PAYER_PROMOTION_COMPLETED,this.onFirstTimePayerPopupCompleted);
         AngryBirdsBase.singleton.popupManager.openPopup(this.mFirstTimePayerPopup);
      }
      
      protected function onFirstTimePayerPopupCompleted(e:Event) : void
      {
         this.mFirstTimePayerPopup.removeEventListener(FirstTimePayerPopup.EVENT_PAYER_PROMOTION_COMPLETED,this.onFirstTimePayerPopupCompleted);
         mUIView.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      protected function getFacebookNameFromLevelId(levelId:String) : String
      {
         return (mLevelManager as FacebookLevelManager).getFacebookNameFromLevelId(levelId);
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var targetState:String = null;
         var episode:EpisodeModel = mLevelManager.getCurrentEpisodeModel();
         if(episode.name == StateFacebookLevelSelection.EPISODE_GOLDEN_EGGS)
         {
            targetState = StateFacebookGoldenEggs.STATE_NAME;
         }
         else if(episode.name == StateFacebookWonderlandLevelSelection.EPISODE_WONDERLAND)
         {
            targetState = StateFacebookWonderlandLevelSelection.STATE_NAME;
         }
         return targetState != null ? targetState : StateLevelSelection.STATE_NAME;
      }
      
      protected function onUserProgressSaved(e:UserProgressEvent) : void
      {
         (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).removeEventListener(UserProgressEvent.USER_PROGRESS_SAVED,this.onUserProgressSaved);
         var popupManager:IPopupManager = AngryBirdsBase.singleton.popupManager;
         popupManager.closePopupById(SyncingPopup.ID);
         uiInteractionHandler(-1,this.mPendingEventName,null);
         this.mPendingEventName = null;
      }
      
      private function hideAllUnlockedButtons() : void
      {
         mUIView.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         mUIView.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         mUIView.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         mUIView.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).newUserScore(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).saveLevelProgress(mLevelManager.currentLevel);
      }
      
      protected function initShareUI() : void
      {
         this.hideShareUI();
         this.mDefaultSharingDisabled = false;
      }
      
      protected function hideShareUI() : void
      {
         (mUIView.getItemByName("Textfield_SharingText") as UITextFieldRovio).setVisibility(false);
         mUIView.getItemByName("ButtonBrag").setVisibility(false);
         mUIView.getItemByName("ButtonSkipShare").setVisibility(false);
         (mUIView.getItemByName("BragFramePlayer") as UIMovieClipRovio).setVisibility(false);
         (mUIView.getItemByName("BragFrameFriend") as UIMovieClipRovio).setVisibility(false);
         if(mLevelManager.isCutSceneNext())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
      }
      
      override protected function setScoreData() : void
      {
         var newItem:String = null;
         var unlockedButton:UIButtonRovio = null;
         var oldStars:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var oldScore:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         super.setScoreData();
         var newScore:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         if(mIsNewHighScore)
         {
            this.saveLevelProgress();
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).serverVersionChecker.holdDialog = false;
         var newStars:int = AngryBirdsBase.singleton.dataModel.userProgress.getTotalStars();
         var isFirstTimeCompleted:Boolean = oldScore <= 0 && newScore > oldScore;
         var isFirstTimeThreeStars:Boolean = oldStars < 3 && newStars == 3;
         FacebookAnalyticsCollector.getInstance().trackLevelEndedEvent(true,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount() - AngryBirdsEngine.smLevelMain.slingshot.getBirdCount(),AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedPowerups(),AngryBirdsEngine.controller.getScore(),isFirstTimeCompleted,isFirstTimeThreeStars);
         if(newStars > oldStars)
         {
            newItem = AvatarCreatorItemListing.checkUnlockedItems(oldStars,newStars);
            if(newItem)
            {
               switch(newItem)
               {
                  case "B20007":
                     unlockedButton = mUIView.getItemByName("Button_Unlocked_Bronze") as UIButtonRovio;
                     break;
                  case "B20008":
                     unlockedButton = mUIView.getItemByName("Button_Unlocked_Silver") as UIButtonRovio;
                     break;
                  case "B20009":
                     unlockedButton = mUIView.getItemByName("Button_Unlocked_Gold") as UIButtonRovio;
                     break;
                  case "B20010":
                     unlockedButton = mUIView.getItemByName("Button_Unlocked_Diamond") as UIButtonRovio;
               }
               if(unlockedButton)
               {
                  unlockedButton.setVisibility(true);
                  mSkipBirdBadge = true;
               }
            }
         }
         if(isFirstTimeCompleted)
         {
            if((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).areAllTheLevelsCompleted(mLevelManager.getCurrentEpisodeModel().getLevelNames()))
            {
               FacebookAnalyticsCollector.getInstance().trackAllContentPlayedEvent(mLevelManager.getCurrentEpisodeModel().name);
            }
         }
         this.initShareUI();
      }
      
      private function get dataModel() : DataModelFriends
      {
         return DataModelFriends(AngryBirdsBase.singleton.dataModel);
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_LEVEL;
      }
      
      public function getIdentifier() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getName() : String
      {
         return STATE_NAME;
      }
      
      private function isBirdBot(userData:UserLevelScoreVO) : Boolean
      {
         return BirdBotProfilePicture.isBot(userData.userId);
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
      
      override protected function showButtonsCutScene() : void
      {
         super.showButtonsCutScene();
         (mUIView.getItemByName("Button_NextLevel_Orange") as UIButtonRovio).setVisibility(false);
      }
      
      override protected function setButtonStates(state:String) : void
      {
         super.setButtonStates(state);
         (mUIView.getItemByName("Button_NextLevel_Orange") as UIButtonRovio).setComponentVisualState(state);
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
