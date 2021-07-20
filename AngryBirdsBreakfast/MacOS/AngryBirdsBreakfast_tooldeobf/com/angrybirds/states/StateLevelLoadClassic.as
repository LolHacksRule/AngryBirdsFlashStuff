package com.angrybirds.states
{
   import com.rovio.utils.ErrorCode;
   import com.angrybirds.data.PackageManager;
   import com.rovio.server.Server;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.loader.LoadManager;
   import com.angrybirds.AngryBirdsEngine;
   
   public class StateLevelLoadClassic extends StateLevelLoad
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var sLoadManager:LoadManager;
      
      private static var sPackageManager:PackageManager;
       
      
      public function StateLevelLoadClassic(param1:LevelManager, param2:LocalizationManager, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
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
         var _loc2_:EpisodeModel = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:LevelModel = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
         }
         else
         {
            _loc2_ = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
            if(_loc2_)
            {
               if(!sPackageManager)
               {
                  sPackageManager = this.initPackageManager();
               }
               if(!sLoadManager)
               {
                  sLoadManager = new LoadManager();
                  _loc4_ = smApplicationParameters.assetsUrl || "";
                  _loc5_ = smApplicationParameters.buildNumber || "";
                  sLoadManager.init(Server.getExternalAssetDirectoryPaths(),_loc4_,_loc5_,sPackageManager);
               }
               sLoadManager.startQueue();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               sLoadManager.addToQueue(<pack url="{_loc3_}"/>);
               sLoadManager.loadQueue(this.packageLoaded);
            }
         }
      }
      
      protected function packageLoaded() : void
      {
         var _loc1_:LevelModel = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
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
      
      public function prepareToLoadClassicLevel(param1:int) : void
      {
         smLevelIndex = param1;
         smLoadStateStep = LOAD_STATE_NONE;
      }
   }
}
