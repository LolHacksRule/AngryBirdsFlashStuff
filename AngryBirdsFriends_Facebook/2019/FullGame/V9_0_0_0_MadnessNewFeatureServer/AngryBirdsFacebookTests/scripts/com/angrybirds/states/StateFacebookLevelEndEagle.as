package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.user.UserProgressEvent;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.popups.EmbedPopup;
   import com.angrybirds.popups.FirstTimePayerPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.SyncingPopup;
   import com.angrybirds.sfx.StarSplash;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.events.Event;
   
   public class StateFacebookLevelEndEagle extends StateLevelEndEagle implements INavigable
   {
       
      
      private var mSyncincPopup:SyncingPopup;
      
      private var mPendingEventName:String;
      
      private var mStarSplash:StarSplash = null;
      
      private var mEggTweens:Array;
      
      private var mFirstTimePayerPopup:FirstTimePayerPopup;
      
      public function StateFacebookLevelEndEagle(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelEndEagleState")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView.getItemByName("Button_Fullscreen").setVisibility(false);
         mUIView.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
      }
      
      override public function activate(previousState:String) : void
      {
         var nextLevel:String = null;
         var chapterName:String = null;
         super.activate(previousState);
         AngryBirdsEngine.pause();
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
         AngryBirdsEngine.smLevelMain.background.stopAmbientSound();
         mUIView.getItemByName("Button_FreePowerups").setVisibility(AngryBirdsFacebook.sSingleton.firstTimePayerPromotion.isEligible);
         if(mLevelManager.isCutSceneNext())
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
         }
         else
         {
            nextLevel = mLevelManager.getNextLevelId();
            chapterName = mLevelManager.getCurrentEpisodeModel().name;
            if(chapterName == "1000" || chapterName == "3001" || nextLevel == null)
            {
               mUIView.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            }
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         }
         var newEagleScore:int = AngryBirdsEngine.controller.getEagleScore();
         var oldEagleScore:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var isFirstTimeCompleted:Boolean = oldEagleScore <= 0 && newEagleScore > oldEagleScore;
         FacebookAnalyticsCollector.getInstance().trackLevelEndedEvent(true,mLevelManager.currentLevel,-1,mLevelManager.getCurrentEpisodeModel().name,AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount() - AngryBirdsEngine.smLevelMain.slingshot.getBirdCount(),AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedPowerups(),AngryBirdsEngine.controller.getScore(),isFirstTimeCompleted,false,newEagleScore == 100,false,newEagleScore);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).serverVersionChecker.holdDialog = false;
      }
      
      override protected function onCountComplete() : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         super.onCountComplete();
         if(AngryBirdsEngine.controller.getEagleScore() == 100)
         {
            posX = mUIView.getItemByName("Container_LevelEndEagleStripe").x;
            posY = mUIView.getItemByName("Container_LevelEndEagleStripe").y;
            this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,posX,posY,StarSplash.STARSPLASH_BADGE,20);
            mUIView.addChild(this.mStarSplash);
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         if(this.mStarSplash)
         {
            this.mStarSplash.update(deltaTime);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.mStarSplash)
         {
            if(mUIView.contains(this.mStarSplash))
            {
               mUIView.removeChild(this.mStarSplash);
            }
            this.mStarSplash.clean();
            this.mStarSplash = null;
         }
         if(this.mFirstTimePayerPopup)
         {
            this.mFirstTimePayerPopup.removeEventListener(FirstTimePayerPopup.EVENT_PAYER_PROMOTION_COMPLETED,this.onFirstTimePayerPopupCompleted);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var eventNamesToBlock:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).isSavingUserProgress && eventNamesToBlock.indexOf(eventName) != -1)
         {
            this.mSyncincPopup = this.showSyncingPopup();
            this.mPendingEventName = eventName;
            (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).addEventListener(UserProgressEvent.USER_PROGRESS_SAVED,this.onUserProgressSaved);
            return;
         }
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "EMBED":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.showEmbedPopup(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().writtenName + "-" + this.facebookLevelManager.getFacebookNameFromLevelId(mLevelManager.currentLevel),0,"me");
               break;
            case "FREE_POWERUPS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.showFirstTimePayerPopup();
         }
      }
      
      protected function get facebookLevelManager() : FacebookLevelManager
      {
         return mLevelManager as FacebookLevelManager;
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
      
      protected function showSyncingPopup() : SyncingPopup
      {
         var popup:SyncingPopup = new SyncingPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
         return popup;
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
         if(this.mSyncincPopup)
         {
            this.mSyncincPopup.close();
            this.mSyncincPopup = null;
         }
         uiInteractionHandler(-1,this.mPendingEventName,null);
         this.mPendingEventName = null;
      }
      
      override protected function saveNewHighScore(newEagleScore:Number) : void
      {
         super.saveNewHighScore(newEagleScore);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).newUserScore(mLevelManager.currentLevel);
         (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).saveLevelProgress(mLevelManager.currentLevel,true);
      }
      
      private function get dataModel() : DataModelFriends
      {
         return DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel);
      }
      
      public function getName() : String
      {
         return STATE_NAME;
      }
   }
}
