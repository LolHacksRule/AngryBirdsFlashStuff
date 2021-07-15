package com.rovio.states
{
   import com.rovio.server.Server;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.loader.LoadManager;
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
      
      public function StateLoad(param1:LocalizationManager, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.mAssetsUrl = param5;
         this.mBuildNumber = param6;
         super(param2,param3,param1);
         mGenericState = true;
         mMinTimeOnScreen = param4;
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
         LoadManager.instance.init(Server.getLoadingStatus(),this.mAssetsUrl,this.mBuildNumber,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.mLoadingView = param1;
      }
      
      public function setAssetData(param1:XML) : void
      {
         this.mAssetData = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         mSprite.addChild(this.mLoadingView);
         this.setLoadingPercentage(0);
         this.mStartTime = getTimer();
      }
      
      private function startLoadManager() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(LoadManager.instance.startQueue())
         {
            for each(_loc1_ in this.mAssetData.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  LoadManager.instance.addToQueue(_loc1_);
               }
            }
            for each(_loc1_ in this.mAssetData.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  LoadManager.instance.addToQueue(_loc1_);
               }
            }
            for each(_loc2_ in this.mAssetData.packages.pack)
            {
               LoadManager.instance.addToQueue(_loc2_);
            }
            LoadManager.instance.loadQueue(this.startupAssetsLoaded);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.mLoadManagerStarted && this.startLoadManager())
         {
            this.mLoadManagerStarted = true;
         }
         var _loc2_:Number = Math.min(1,LoadManager.instance.getLoadingStatus()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.mStartTime) / mMinTimeOnScreen);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.mIsLoadingReady && LoadManager.instance.getLoadingStatus() >= 1)
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
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.mLoadingView)
         {
            this.mLoadingView.x = param1 - this.mLoadingView.width >> 1;
            this.mLoadingView.y = param2 - this.mLoadingView.height >> 1;
         }
      }
   }
}
