package com.rovio.states
{
   import com.rovio.factory.Log;
   import com.rovio.factory.XMLFactory;
   import com.rovio.loader.LoadManager;
   import com.rovio.server.Server;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class StateLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "load";
      
      public static const MINIMUM_TIME_ON_SCREEN:uint = 1000;
       
      
      [Embed(symbol="LoadingScreen",source="../embedded_assets/swf/LoadingScreen.swf")]
      private var mLoadingScreenClass:Class;
      
      [Embed(source="../embedded_assets/xml/external_assetmap.xml",mimeType="application/octet-stream")]
      private var mAssetMapBin:Class;
      
      private var mLoadingComplete:Boolean = false;
      
      private var mStartTime:uint;
      
      private var mLoadManagerStarted:Boolean = false;
      
      public var mAssetData:XML;
      
      public var mUIDescData:XML;
      
      public var mCallBackFunctions:Array;
      
      public var mCallBackFunctionIndex:int;
      
      public var mLoadingView:MovieClip;
      
      public function StateLoad(initState:Boolean = true, name:String = "load")
      {
         this.mLoadingScreenClass = StateLoad_mLoadingScreenClass;
         this.mAssetMapBin = StateLoad_mAssetMapBin;
         super(initState,name);
         mGenericState = true;
      }
      
      override public function init() : void
      {
         super.init();
         this.mAssetData = XMLFactory.fromOctetStreamClass(this.mAssetMapBin);
         Server.init(getApplicationParameter("connectionProfileId"));
         LoadManager.init(Server.getExternalAssetDirectoryPaths());
         this.mLoadingView = new this.mLoadingScreenClass();
         this.mCallBackFunctions = new Array();
         this.mCallBackFunctionIndex = 0;
         this.addCallBackFunction(this.firstCallBack);
         setCleanUpAfterDeactivating(true);
      }
      
      override public function activate() : void
      {
         super.activate();
         addChild(this.mLoadingView);
         this.setLoadingPercentage(0);
         this.mStartTime = getTimer();
      }
      
      private function startLoadManager() : Boolean
      {
         var lib:XML = null;
         if(LoadManager.startQueue())
         {
            for each(lib in this.mAssetData.Library)
            {
               if(lib.@startupLoad.toString() == "true")
               {
                  LoadManager.addToQueue(lib);
               }
            }
            LoadManager.loadQueue(this.startupAssetsLoaded);
            return true;
         }
         return false;
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(!this.mLoadManagerStarted && this.startLoadManager())
         {
            this.mLoadManagerStarted = true;
         }
         var loadingStatusManager:Number = Math.min(1,LoadManager.getLoadingStatus()) * 4.5;
         var loadingStatusTime:Number = Math.min(1,(getTimer() - this.mStartTime) / MINIMUM_TIME_ON_SCREEN);
         var loadingStatusCallbacks:Number = Math.min(1,this.mCallBackFunctionIndex / this.mCallBackFunctions.length) * 4.5;
         var loadingStatusTotal:Number = (loadingStatusManager + loadingStatusTime + loadingStatusCallbacks) / 10;
         this.requestNextCallBack();
         this.setLoadingPercentage(loadingStatusTotal);
         if(loadingStatusTotal >= 1)
         {
            LoadManager.stopLoading();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         removeChild(this.mLoadingView);
         this.mLoadingView = null;
         this.mCallBackFunctions = null;
         super.cleanup();
      }
      
      private function startupAssetsLoaded() : void
      {
      }
      
      private function firstCallBack() : void
      {
         ViewXMLLibrary.init();
      }
      
      public function addCallBackFunction(func:Function) : void
      {
         if(mReady && !mActive)
         {
            this.mCallBackFunctions[this.mCallBackFunctions.length] = func;
         }
         else
         {
            Log.log("WARNING: LoadState -> addCallBackFunction is called when the LoadState can not accept new callbacks");
         }
      }
      
      public function requestNextCallBack() : void
      {
         var callBack:Function = null;
         if(this.mCallBackFunctionIndex < this.mCallBackFunctions.length)
         {
            callBack = this.mCallBackFunctions[this.mCallBackFunctionIndex];
            callBack.call();
            ++this.mCallBackFunctionIndex;
         }
      }
      
      public function setLoadingPercentage(value:Number) : void
      {
         var frame:int = value * (this.mLoadingView.getChildByName("Bar") as MovieClip).totalFrames;
         (this.mLoadingView.getChildByName("Bar") as MovieClip).gotoAndStop(frame);
      }
   }
}
