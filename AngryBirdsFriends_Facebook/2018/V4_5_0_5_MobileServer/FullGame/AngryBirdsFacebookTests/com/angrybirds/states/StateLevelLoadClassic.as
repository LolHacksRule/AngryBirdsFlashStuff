package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.PackageManager;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.loader.LoadManager;
   import com.rovio.server.Server;
   import com.rovio.utils.ErrorCode;
   
   public class StateLevelLoadClassic extends StateLevelLoad
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var sLoadManager:LoadManager;
      
      private static var sPackageManager:PackageManager;
       
      
      public function StateLevelLoadClassic(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = true, name:String = "LevelLoadStateClassic")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      public static function prepareToRestartLastLevel() : void
      {
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      override public function deActivate() : void
      {
         if(sLoadManager)
         {
            sLoadManager.stopLoading();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : PackageManager
      {
         return new PackageManager(mLevelManager);
      }
      
      override protected function initLevelLoad() : void
      {
         var level:LevelModel = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(level)
         {
            initLevelMain(level);
         }
         else
         {
            this.loadLevel();
         }
      }
      
      protected function loadLevel() : void
      {
         var url:* = null;
         var assetsUrl:String = null;
         var buildNumber:String = null;
         var episode:EpisodeModel = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
         if(episode)
         {
            if(!sPackageManager)
            {
               sPackageManager = this.initPackageManager();
            }
            if(!sLoadManager)
            {
               sLoadManager = new LoadManager();
               assetsUrl = smApplicationParameters.assetsUrl || "";
               buildNumber = smApplicationParameters.buildNumber || "";
               sLoadManager.init(Server.getExternalAssetDirectoryPaths(),assetsUrl,buildNumber,sPackageManager);
            }
            sLoadManager.startQueue();
            url = "packages/episode_" + episode.name + ".pak";
            sLoadManager.addToQueue(<pack url="{url}"/>);
            sLoadManager.loadQueue(this.packageLoaded);
         }
      }
      
      protected function onLevelLoaded() : void
      {
      }
      
      protected function packageLoaded() : void
      {
         var level:LevelModel = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(level)
         {
            initLevelMain(level);
            return;
         }
         throw new Error("Level " + mLevelManager.currentLevel + " not found in the package",ErrorCode.LEVEL_NOT_AVAILABLE);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return AngryBirdsEngine.smLevelMain.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return AngryBirdsEngine.smLevelMain.mCanNotRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         setNextState(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         setNextState(StateLevelSelection.STATE_NAME);
      }
      
      public function prepareToLoadClassicLevel(index:int) : void
      {
         smLevelIndex = index;
         smLoadStateStep = LOAD_STATE_NONE;
      }
   }
}
