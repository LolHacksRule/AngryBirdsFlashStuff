package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.angrybirds.ui.GoldenEggLevelButton;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class StateFacebookGoldenEggs extends StateFacebookLevelSelection
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var mPreviousCheckTime:uint;
      
      private var CHECK_EGG_STATUS:uint = 5000;
      
      private var mTotalGoldenEggCount:int = 10;
      
      protected var mEggsContainer:MovieClip;
      
      private var mGoldenEggs:Vector.<GoldenEggLevelButton>;
      
      public function StateFacebookGoldenEggs(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "GoldenEggsState")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.mEggsContainer = new AssetCache.getAssetFromCache("GoldenEggsLevelSelection")();
         mSelectionContainer.mClip.addChild(this.mEggsContainer);
         this.initGoldenEggs();
      }
      
      override protected function moveToPage(pageNum:int, instantMove:Boolean = false) : void
      {
      }
      
      override protected function gotoNextPage() : void
      {
      }
      
      override protected function gotoPrevPage() : void
      {
      }
      
      private function initGoldenEggs() : void
      {
         var eggId:String = null;
         var egg:MovieClip = null;
         var goldenEggButton:GoldenEggLevelButton = null;
         this.mGoldenEggs = new Vector.<GoldenEggLevelButton>(this.mTotalGoldenEggCount);
         for(var i:int = 1; i <= this.mTotalGoldenEggCount; i++)
         {
            eggId = "1000-" + i;
            egg = this.mEggsContainer["egg" + i];
            goldenEggButton = new GoldenEggLevelButton(egg,eggId);
            goldenEggButton.addEventListener(MouseEvent.CLICK,this.onEggClick);
            this.mGoldenEggs[i] = goldenEggButton;
         }
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         var chapter:EpisodeModel = mLevelManager.getCurrentEpisodeModel();
         if(chapter == null)
         {
            return;
         }
         if(chapter.name != "1000")
         {
            mUIView.visible = false;
            setNextState(StateLevelSelection.STATE_NAME);
            return;
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
         mUIView.setText(AngryBirdsBase.singleton.dataModel.userProgress.getStarsForEpisode(chapter) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxStarsForEpisode(chapter),"Textfield_CollectedStars");
         mUIView.setText(AngryBirdsBase.singleton.dataModel.userProgress.getEagleFeathersForEpisode(chapter) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.getMaxEagleFeathersForEpisode(chapter),"Textfield_ME_Score");
         mUIView.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         mUIView.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         mUIView.getItemByName("Button_Prev").setVisibility(false);
         mUIView.getItemByName("Button_Next").setVisibility(false);
         mUIView.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var color:Object = chapter.getColorForPage(0);
         mColorFadeLayer = new ColorFadeLayer(color.red,color.green,color.blue,1);
         mUIView.getItemByName("MovieClip_ColorFade").changeMovieClip(mColorFadeLayer);
         this.updateAllEggs();
         this.mPreviousCheckTime = getTimer();
         AngryBirdsEngine.smApp.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         loadFriendsBarScores();
      }
      
      override public function deActivate() : void
      {
         AngryBirdsEngine.smApp.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.deActivate();
      }
      
      private function onEnterFrame(e:Event) : void
      {
         if(getTimer() - this.mPreviousCheckTime >= this.CHECK_EGG_STATUS)
         {
            this.mPreviousCheckTime = getTimer();
            this.updateAllEggs();
         }
      }
      
      private function updateAllEggs() : void
      {
         for(var i:int = 1; i <= this.mTotalGoldenEggCount; i++)
         {
            this.updateEgg(i);
         }
      }
      
      private function updateEgg(index:int) : void
      {
         this.mGoldenEggs[index].updateEgg();
      }
      
      protected function onEggClick(event:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         var eggID:String = GoldenEggLevelButton(event.currentTarget).eggId;
         AngryBirdsFacebook.sSingleton.setNextStateToLevel(eggID);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
