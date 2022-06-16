package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.popups.EmbedPopup;
   import com.angrybirds.popups.FirstTimePayerPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.angrybirds.tips.TipsManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateFacebookLevelEndFail extends StateLevelEndFail implements IVirtualPageView, INavigable
   {
      
      private static var sTipCounter:uint = 0;
       
      
      protected var mDefaultButtonPositions:Array;
      
      private var mFirstTimePayerPopup:FirstTimePayerPopup;
      
      private const MAX_END_SCREEN_DISPLAY_COUNT_FOR_TIP:int = 5;
      
      private var mTipMC:MovieClip;
      
      private var mTipManager:TipsManager;
      
      private var mActionButtonYPos:Number = NaN;
      
      private var mTestTipIndex:int = 0;
      
      public function StateFacebookLevelEndFail(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelEndFailState")
      {
         this.mDefaultButtonPositions = [];
         super(levelManager,localizationManager,initState,name);
         this.mTipManager = TipsManager.instance;
      }
      
      override protected function getViewXML() : XML
      {
         return ViewXMLLibrary.mLibrary.Views.View_LevelEndFailRio[0];
      }
      
      override protected function init() : void
      {
         super.init();
         this.mActionButtonYPos = (mUIView.getItemByName("Button_Menu") as UIButtonRovio).y;
         mUIView.getItemByName("Button_Fullscreen").setVisibility(false);
         mUIView.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
         this.mDefaultButtonPositions.push((mUIView.getItemByName("Button_Menu") as UIButtonRovio).x);
         this.mDefaultButtonPositions.push((mUIView.getItemByName("Button_Replay") as UIButtonRovio).x);
         this.mDefaultButtonPositions.push((mUIView.getItemByName("Button_MightyEagle") as UIButtonRovio).x);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_NO_TUTORIAL);
         AngryBirdsEngine.smLevelMain.background.stopAmbientSound();
         mUIView.getItemByName("Button_FreePowerups").setVisibility(AngryBirdsFacebook.sSingleton.firstTimePayerPromotion.isEligible);
         var nextLevel:String = this.getNextIdentifier();
         var chapterName:String = mLevelManager.getCurrentEpisodeModel().name;
         if(chapterName == "1000" || chapterName == "3001" || nextLevel == null)
         {
            mUIView.getItemByName("Button_NextLevel").setVisibility(false);
         }
         FacebookGoogleAnalyticsTracker.trackPageView(this,this.getIdentifier(),FacebookGoogleAnalyticsTracker.ACTION_GAME_LEVEL_FAIL);
         FacebookAnalyticsCollector.getInstance().trackLevelEndedEvent(false,this.getIdentifier(),mLevelManager.getCurrentEpisodeModel().name,AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount() - AngryBirdsEngine.smLevelMain.slingshot.getBirdCount(),AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(this.getIdentifier()),(AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedPowerups(),AngryBirdsEngine.controller.getScore(),false);
         this.checkAndShowTip();
         this.playFailSound();
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            if(e.keyCode == Keyboard.RIGHT)
            {
               this.testShowTip();
            }
         }
      }
      
      private function testShowTip() : void
      {
         if(this.mTipMC == null)
         {
            this.mTipMC = mUIView.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var laughingPig:UIComponentRovio = mUIView.getItemByName("pigHolder");
         var titleTextMC:MovieClip = mUIView.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.mTipMC.visible = true;
         var yPos:Number = this.mActionButtonYPos;
         ++this.mTestTipIndex;
         if(this.mTestTipIndex >= this.mTipManager.totalTips)
         {
            this.mTestTipIndex = 0;
         }
         this.mTipMC.TF.text = this.mTipManager.getTipAtIndex(this.mTestTipIndex);
         var buttonReplay:UIButtonRovio = mUIView.getItemByName("Button_Replay") as UIButtonRovio;
         (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).y = yPos;
         (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).y = yPos;
         (mUIView.getItemByName("Button_MightyEagle") as UIButtonRovio).y = yPos;
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).y = yPos;
         buttonReplay.y = yPos;
         var yTop:Number = titleTextMC.y + (titleTextMC.height >> 1);
         var yBottom:Number = buttonReplay.y - (buttonReplay.height >> 1);
         laughingPig.y = yTop + (yBottom - yTop >> 1);
      }
      
      private function checkAndShowTip() : void
      {
         if(this.mTipMC == null)
         {
            this.mTipMC = mUIView.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var showTip:Boolean = false;
         if(sTipCounter % this.MAX_END_SCREEN_DISPLAY_COUNT_FOR_TIP == 0)
         {
            showTip = true;
         }
         ++sTipCounter;
         var laughingPig:UIComponentRovio = mUIView.getItemByName("pigHolder");
         var titleTextMC:MovieClip = mUIView.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.mTipMC.visible = showTip;
         var yPos:Number = this.mActionButtonYPos;
         if(showTip)
         {
            this.mTipMC.TF.text = this.mTipManager.getRandLevelEndTip();
         }
         else
         {
            yPos += 75;
         }
         var buttonReplay:UIButtonRovio = mUIView.getItemByName("Button_Replay") as UIButtonRovio;
         (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).y = yPos;
         (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).y = yPos;
         (mUIView.getItemByName("Button_MightyEagle") as UIButtonRovio).y = yPos;
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).y = yPos;
         buttonReplay.y = yPos;
         var yTop:Number = titleTextMC.y + (titleTextMC.height >> 1);
         var yBottom:Number = buttonReplay.y - (buttonReplay.height >> 1);
         laughingPig.y = yTop + (yBottom - yTop >> 1);
      }
      
      override public function deActivate() : void
      {
         if(this.mFirstTimePayerPopup)
         {
            this.mFirstTimePayerPopup.removeEventListener(FirstTimePayerPopup.EVENT_PAYER_PROMOTION_COMPLETED,this.onFirstTimePayerPopupCompleted);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "NEXT_LEVEL":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               break;
            case "SHOP":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.showShopPopup();
               break;
            case "SHARE_DEFAULT":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               ExternalInterfaceHandler.performCall("shareDefault",this.getIdentifier(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as FacebookLevelManager).getFacebookNameFromLevelId(this.getIdentifier()),0,false);
               break;
            case "EMBED":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.showEmbedPopup(this.getIdentifier(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as FacebookLevelManager).getFacebookNameFromLevelId(this.getIdentifier()),AngryBirdsEngine.controller.getScore(),"");
               break;
            case "FREE_POWERUPS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.showFirstTimePayerPopup();
         }
      }
      
      protected function showShopPopup() : void
      {
         var popup:TabbedShopPopup = new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP);
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
      
      override protected function getLevelSelectionState() : String
      {
         var targetState:String = null;
         var chapter:EpisodeModel = mLevelManager.getCurrentEpisodeModel();
         if(chapter.name == StateFacebookLevelSelection.EPISODE_GOLDEN_EGGS)
         {
            targetState = StateFacebookGoldenEggs.STATE_NAME;
         }
         else if(chapter.name == StateFacebookWonderlandLevelSelection.EPISODE_WONDERLAND)
         {
            targetState = StateFacebookWonderlandLevelSelection.STATE_NAME;
         }
         return targetState != null ? targetState : StateLevelSelection.STATE_NAME;
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_LEVEL;
      }
      
      public function getIdentifier() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getNextIdentifier() : String
      {
         return mLevelManager.getNextLevelId();
      }
      
      private function get dataModel() : DataModelFriends
      {
         return DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel);
      }
      
      public function getName() : String
      {
         return STATE_NAME;
      }
      
      protected function playFailSound() : void
      {
         SoundEngine.stopSounds();
         SoundEngine.playSound("LevelFailedPigs1","ChannelMisc");
      }
   }
}
