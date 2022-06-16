package com.rovio.states
{
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.loader.LoadManager;
   import com.rovio.server.Server;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class StateLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var mMinTimeOnScreen:uint = 4000;
       
      
      private var mLoadingComplete:Boolean = false;
      
      private var mStartTime:uint;
      
      private var mLoadManagerStarted:Boolean = false;
      
      public var mAssetData:XML;
      
      public var mUIDescData:XML;
      
      public var mLoadingView:DisplayObjectContainer;
      
      protected var mAssetsUrl:String;
      
      protected var mBuildNumber:String;
      
      private var mIsLoadingReady:Boolean = false;
      
      public function StateLoad(localizationManager:LocalizationManager, initState:Boolean = true, name:String = "load", minTimeOnScreen:Number = 1000, assetsUrl:String = "", buildNumber:String = "")
      {
         this.mAssetsUrl = assetsUrl;
         this.mBuildNumber = buildNumber;
         super(initState,name,localizationManager);
         mGenericState = true;
         mMinTimeOnScreen = minTimeOnScreen;
      }
      
      override protected function init() : void
      {
         super.init();
         Server.init(getApplicationParameter("connectionProfileId"));
         if(!LoadManager.instance.isInitComplete())
         {
            this.initLoadManager();
         }
         setCleanUpAfterDeactivating(true);
      }
      
      protected function initLoadManager() : void
      {
         LoadManager.instance.init(Server.getExternalAssetDirectoryPaths(),this.mAssetsUrl,this.mBuildNumber,null);
      }
      
      public function setLoadingScreen(loadingScreen:DisplayObjectContainer) : void
      {
         this.mLoadingView = loadingScreen;
      }
      
      public function setAssetData(data:XML) : void
      {
         this.mAssetData = data;
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         mSprite.addChild(this.mLoadingView);
         this.setLoadingPercentage(0);
         this.mStartTime = getTimer();
      }
      
      protected function startLoadManager() : Boolean
      {
         var lib:XML = null;
         var configurationFile:XML = null;
         var packageEntry:XML = null;
         if(LoadManager.instance.startQueue())
         {
            for each(lib in this.mAssetData.Library)
            {
               if(lib.@startupLoad.toString().toLowerCase() == "true")
               {
                  LoadManager.instance.addToQueue(lib);
               }
            }
            for each(lib in this.mAssetData.libraries.library)
            {
               if(lib.@startupLoad.toString().toLowerCase() == "true")
               {
                  LoadManager.instance.addToQueue(lib);
               }
            }
            for each(configurationFile in this.mAssetData.config.xml)
            {
               LoadManager.instance.addToQueue(configurationFile);
            }
            for each(packageEntry in this.mAssetData.packages.pack)
            {
               LoadManager.instance.addToQueue(packageEntry);
            }
            LoadManager.instance.loadQueue(this.startupAssetsLoaded);
            return true;
         }
         return false;
      }
      
      override protected function update(deltaTime:Number) : void
      {
         if(!this.mLoadManagerStarted && this.startLoadManager())
         {
            this.mLoadManagerStarted = true;
         }
         var loadingStatusManager:Number = Math.min(1,LoadManager.instance.getLoadingStatus()) * 9;
         var loadingStatusTime:Number = Math.min(1,(getTimer() - this.mStartTime) / mMinTimeOnScreen);
         var loadingStatusTotal:Number = (loadingStatusManager + loadingStatusTime) / 10;
         this.setLoadingPercentage(loadingStatusTotal);
         if(!this.mIsLoadingReady && LoadManager.instance.getLoadingStatus() >= 1 && loadingStatusTime >= 1)
         {
            LoadManager.instance.stopLoading();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.mIsLoadingReady = true;
         setNextState(DUMMY_STATE);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.mIsLoadingReady;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         mSprite.removeChild(this.mLoadingView);
         this.mLoadingView = null;
         super.cleanup();
      }
      
      private function startupAssetsLoaded() : void
      {
      }
      
      public function setLoadingPercentage(value:Number) : void
      {
      }
      
      override public function setViewSize(width:Number, height:Number) : void
      {
         super.setViewSize(width,height);
         if(this.mLoadingView)
         {
            this.mLoadingView.x = width - this.mLoadingView.width >> 1;
            this.mLoadingView.y = height - this.mLoadingView.height >> 1;
         }
      }
   }
}
