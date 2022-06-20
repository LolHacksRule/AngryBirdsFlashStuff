package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.PackageManager;
   import com.angrybirds.data.PackageManagerFriends;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.tournamentEvents.ItemsCollection.ItemsCollectionManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   
   public class StateFacebookLevelLoad extends StateLevelLoadClassic
   {
       
      
      protected var mTokenLoader:ABFLoader;
      
      protected var mLevelItemManager:LevelItemManagerSpace;
      
      public function StateFacebookLevelLoad(levelManager:LevelManager, levelItemManager:LevelItemManagerSpace, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelLoadStateClassic")
      {
         this.mLevelItemManager = levelItemManager;
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         this.friendsActivate();
      }
      
      protected function friendsActivate() : void
      {
         mUIView.movieClip.graphics.beginFill(0);
         mUIView.movieClip.graphics.drawRect(0,0,4000,4000);
         mUIView.movieClip.graphics.endFill();
         if(mLevelManager.currentLevel != null)
         {
            mUIView.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + (mLevelManager as FacebookLevelManager).getFacebookNameFromLevelId(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(levelData:LevelModel) : void
      {
         super.initLevelMain(levelData);
      }
      
      override protected function initPackageManager() : PackageManager
      {
         return new PackageManagerFriends(mLevelManager,this.mLevelItemManager);
      }
      
      protected function friendsLevelLoad() : void
      {
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).serverVersionChecker.holdDialog = false;
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).serverVersionChecker.holdDialog = true;
         if(this.mTokenLoader)
         {
            this.mTokenLoader.removeEventListener(Event.COMPLETE,this.onTokenLoaded);
            this.mTokenLoader = null;
         }
         if(mLevelManager.currentLevel)
         {
            this.mTokenLoader = new ABFLoader();
            this.mTokenLoader.addEventListener(Event.COMPLETE,this.onTokenLoaded);
            this.mTokenLoader.dataFormat = URLLoaderDataFormat.TEXT;
            this.mTokenLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/startLevel?levelId=" + mLevelManager.currentLevel));
            return;
         }
         this.showErrorPopup(ErrorPopup.ERROR_GENERAL);
         throw new Error("AngryBirdsBase.mLevelManager.currentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      override protected function initLevelLoad() : void
      {
         this.friendsLevelLoad();
         super.initLevelLoad();
      }
      
      protected function showErrorPopup(type:String) : void
      {
         var popup:ErrorPopup = new ErrorPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,type);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function showWarningPopup() : void
      {
         var popup:WarningPopup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function onTokenLoaded(e:Event) : void
      {
         var icm:ItemsCollectionManager = null;
         StateFacebookPlay.sPlaySessionToken = this.mTokenLoader.data;
         this.mTokenLoader = null;
         if(TournamentEventManager.instance.isEventActivated())
         {
            icm = TournamentEventManager.instance.getActivatedEventManager() as ItemsCollectionManager;
            if(icm)
            {
               if(e && e.target && e.target.data)
               {
                  icm.setData(e.target.data.userEvent);
               }
            }
         }
      }
      
      override public function get isReady() : Boolean
      {
         if(this.mTokenLoader)
         {
            return false;
         }
         return super.isReady;
      }
      
      override public function isLoadingReady() : Boolean
      {
         if(this.mTokenLoader)
         {
            return false;
         }
         return super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var name:String = "level-" + mLevelManager.currentLevel;
         FacebookGoogleAnalyticsTracker.trackDownloadFailed(name);
         this.showWarningPopup();
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).performServerVersionCheck();
      }
      
      public function get dataModel() : DataModelFriends
      {
         return DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel);
      }
   }
}
