package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.data.HighScoreListManager;
   import com.angrybirds.friendsbar.events.CachedDataEvent;
   import com.angrybirds.friendsbar.ui.profile.ChapterSelectionProfilePicture;
   import com.angrybirds.popups.AvatarCreatorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateFacebookEpisodeSelection extends StateBaseLevel implements IVirtualPageView, INavigable, IWalletContainer
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:ISimpleTween = null;
      
      private var mChapterTween1:ISimpleTween = null;
      
      private var mChapterTween2:ISimpleTween = null;
      
      private var mChapterTween3:ISimpleTween = null;
      
      private var mTournamentTween:ISimpleTween = null;
      
      private var mChapterTweenGE:ISimpleTween = null;
      
      private var mSaleTween:ISimpleTween = null;
      
      private var mChapterWonderland:ISimpleTween = null;
      
      private var mChapterProfilePicture:ChapterSelectionProfilePicture;
      
      private var mHighScoreListManager:HighScoreListManager;
      
      private var mWallet:Wallet;
      
      public function StateFacebookEpisodeSelection(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "ChapterSelectionState")
      {
         super(levelManager,initState,name,localizationManager);
      }
      
      override protected function init() : void
      {
         var buttonName:String = null;
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_ChapterFacebookSelection[0]);
         for each(buttonName in ["Container_Chapter0","Container_Chapter1","Container_Chapter2","Container_Chapter3","Container_ChapterWonderland","Container_ChapterGoldenEggs"])
         {
            mUIView.getItemByName(buttonName).mClip.star.mouseEnabled = false;
            mUIView.getItemByName(buttonName).mClip.feather.mouseEnabled = false;
         }
         this.mHighScoreListManager = AngryBirdsFacebook.sHighScoreListManager;
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         FacebookAnalyticsCollector.getInstance().trackScreenView(FacebookAnalyticsCollector.SCREEN_EVENT_STORY_MODE_SCREEN);
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
         if(previousState != StateFacebookLevelSelection.STATE_NAME && previousState != StateFacebookGoldenEggs.STATE_NAME && previousState != StateFacebookWonderlandLevelSelection.STATE_NAME)
         {
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_STORY_LEVELS_OVERALL,null);
            this.mHighScoreListManager.getTotalScores().addEventListener(CachedDataEvent.DATA_LOADED,this.onAllFriendsLoaded);
            this.mHighScoreListManager.getTotalScores().loadItems(0,0);
         }
         AngryBirdsBase.singleton.playThemeMusic();
         for(var chapterNum:int = 0; chapterNum < 4; chapterNum++)
         {
            this.updateChapterTextArea(chapterNum);
         }
         var GEchapter:EpisodeModel = mLevelManager.getEpisode(3);
         mUIView.setText(AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(GEchapter) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(GEchapter),"Textfield_CollectedStarsGE");
         mUIView.setText(AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(GEchapter) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(GEchapter),"Textfield_ME_ScoreGE");
         var piginiChapter:EpisodeModel = mLevelManager.getEpisodeByName("12");
         mUIView.setText(AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(piginiChapter) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(piginiChapter),"Textfield_CollectedStars3");
         mUIView.setText(AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(piginiChapter) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(piginiChapter),"Textfield_ME_Score3");
         var wonderChapter:EpisodeModel = mLevelManager.getEpisodeByName("4000");
         mUIView.setText(AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(wonderChapter) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(wonderChapter),"Textfield_CollectedStarsW");
         mUIView.setText(AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(wonderChapter) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(wonderChapter),"Textfield_ME_ScoreW");
         this.mChapterWonderland = TweenManager.instance.createTween(mUIView.getItemByName("Container_ChapterWonderland").mClip,{
            "scaleX":1,
            "scaleY":1
         },null,0,TweenManager.EASING_BOUNCE_OUT);
         this.mChapterWonderland.gotoEndAndStop();
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).clearBrandedAssets();
         this.addWallet(new Wallet(this,true,true,false));
      }
      
      protected function onAvatarMouseUp(event:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         var avatarCreatorPopup:AvatarCreatorPopup = new AvatarCreatorPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(avatarCreatorPopup);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.stopTweens();
         mUIView.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         mUIView.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         mUIView.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         mUIView.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         mUIView.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         mUIView.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         mUIView.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         mUIView.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         this.removeWallet(this.mWallet);
      }
      
      private function stopTweens() : void
      {
         if(this.mChapterTween0 != null)
         {
            this.mChapterTween0.stop();
            this.mChapterTween0 = null;
         }
         if(this.mChapterTween1 != null)
         {
            this.mChapterTween1.stop();
            this.mChapterTween1 = null;
         }
         if(this.mChapterTween2 != null)
         {
            this.mChapterTween2.stop();
            this.mChapterTween2 = null;
         }
         if(this.mChapterTween3 != null)
         {
            this.mChapterTween3.stop();
            this.mChapterTween3 = null;
         }
         if(this.mTournamentTween != null)
         {
            this.mTournamentTween.stop();
            this.mTournamentTween = null;
         }
      }
      
      private function updateChapterTextArea(chapterNum:int, chapterName:String = "", chapterIdentifier:String = "") : void
      {
         var episode:EpisodeModel = null;
         if(chapterIdentifier == "")
         {
            episode = mLevelManager.getEpisode(chapterNum);
         }
         else
         {
            episode = mLevelManager.getEpisodeByName(chapterIdentifier);
         }
         if(episode == null)
         {
            return;
         }
         if(chapterName == "")
         {
            chapterName = chapterNum + "";
         }
         var stars:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(episode);
         var maxStars:int = AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(episode);
         var feathers:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(episode);
         var maxFeathers:int = AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(episode);
         mUIView.setText(stars + "/" + maxStars,"Textfield_CollectedStars" + chapterName);
         mUIView.setText(feathers + "/" + maxFeathers,"Textfield_ME_Score" + chapterName);
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var eggNumber:int = 0;
         var avatarCreatorPopup:AvatarCreatorPopup = null;
         var isEggEvent:int = eventName.indexOf("EASTER_EGG_");
         if(isEggEvent != -1)
         {
            eggNumber = int(eventName.substr("EASTER_EGG_".length));
            mLevelManager.loadLevel("1000-" + eggNumber);
            setNextState(StateCutScene.STATE_NAME);
         }
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "BACK":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               setNextState(StateFacebookMainMenuSelection.STATE_NAME);
               break;
            case "AVATAREDITOR":
               avatarCreatorPopup = new AvatarCreatorPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(avatarCreatorPopup);
               break;
            case "showCredits":
               setNextState(StateCredits.STATE_NAME);
               break;
            case "CHAPTER2":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               mLevelManager.selectEpisode(2);
               setNextState(StateLevelSelection.STATE_NAME);
               break;
            case "CHAPTER3":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               mLevelManager.selectEpisode(5);
               setNextState(StateLevelSelection.STATE_NAME);
               break;
            case "CHAPTER0":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               mLevelManager.selectEpisode(0);
               setNextState(StateLevelSelection.STATE_NAME);
               break;
            case "CHAPTER1":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               mLevelManager.selectEpisode(1);
               setNextState(StateLevelSelection.STATE_NAME);
               break;
            case "CHAPTERGE":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               mLevelManager.selectEpisode(3);
               setNextState(StateFacebookGoldenEggs.STATE_NAME);
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = TweenManager.instance.createTween(mUIView.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterTween0.play();
               break;
            case "CHAPTER0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = TweenManager.instance.createTween(mUIView.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = TweenManager.instance.createTween(mUIView.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterTween1.play();
               break;
            case "CHAPTER1OUT":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = TweenManager.instance.createTween(mUIView.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = TweenManager.instance.createTween(mUIView.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterTween2.play();
               break;
            case "CHAPTER2OUT":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = TweenManager.instance.createTween(mUIView.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = TweenManager.instance.createTween(mUIView.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterTween3.play();
               break;
            case "CHAPTER3OUT":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = TweenManager.instance.createTween(mUIView.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.mChapterTweenGE != null)
               {
                  this.mChapterTweenGE.stop();
               }
               this.mChapterTweenGE = TweenManager.instance.createTween(mUIView.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterTweenGE.play();
               break;
            case "CHAPTERGEOUT":
               if(this.mChapterTweenGE != null)
               {
                  this.mChapterTweenGE.stop();
               }
               this.mChapterTweenGE = TweenManager.instance.createTween(mUIView.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mChapterTweenGE.play();
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
            case "SALEOVER":
               if(this.mSaleTween != null)
               {
                  this.mSaleTween.stop();
               }
               this.mSaleTween = TweenManager.instance.createTween(mUIView.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mSaleTween.play();
               break;
            case "SALEOUT":
               if(this.mSaleTween != null)
               {
                  this.mSaleTween.stop();
               }
               this.mSaleTween = TweenManager.instance.createTween(mUIView.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mSaleTween.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               mLevelManager.selectEpisode(4);
               setNextState(StateTournamentLevelSelection.STATE_NAME);
               break;
            case "CHAPTERWONDERLAND":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               mLevelManager.selectEpisode(6);
               setNextState(StateFacebookWonderlandLevelSelection.STATE_NAME);
               break;
            case "CHAPTERWONDERLANDOVER":
               if(this.mChapterWonderland != null)
               {
                  this.mChapterWonderland.stop();
               }
               this.mChapterWonderland = TweenManager.instance.createTween(mUIView.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterWonderland.play();
               break;
            case "CHAPTERWONDERLANDOUT":
               if(this.mChapterWonderland != null)
               {
                  this.mChapterWonderland.stop();
               }
               this.mChapterWonderland = TweenManager.instance.createTween(mUIView.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,TweenManager.EASING_BOUNCE_OUT);
               this.mChapterWonderland.play();
         }
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_CHAPTER_MENU;
      }
      
      public function getIdentifier() : String
      {
         return null;
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
