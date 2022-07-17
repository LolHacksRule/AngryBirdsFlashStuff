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
       
      
      private var mLoadingScreenClass:Class;
      
      private var mAssetMapBin:Class;
      
      private var mLoadingComplete:Boolean = false;
      
      private var mStartTime:uint;
      
      private var mLoadManagerStarted:Boolean = false;
      
      public var mAssetData:XML;
      
      public var mUIDescData:XML;
      
      public var mCallBackFunctions:Array;
      
      public var mCallBackFunctionIndex:int;
      
      public var mLoadingView:MovieClip;
      
      public function StateLoad(param1:Boolean = true, param2:String = "load")
      {
         this.mLoadingScreenClass = StateLoad_mLoadingScreenClass;
         this.mAssetMapBin = StateLoad_mAssetMapBin;
         super(param1,param2);
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
         var _loc1_:XML = null;
         if(LoadManager.startQueue())
         {
            for each(_loc1_ in this.mAssetData.Library)
            {
               if(_loc1_.@startupLoad.toString() == "true")
               {
                  LoadManager.addToQueue(_loc1_);
               }
            }
            LoadManager.loadQueue(this.startupAssetsLoaded);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.mLoadManagerStarted && this.startLoadManager())
         {
            this.mLoadManagerStarted = true;
         }
         var _loc3_:Number = Math.min(1,LoadManager.getLoadingStatus()) * 4.5;
         var _loc4_:Number = Math.min(1,(getTimer() - this.mStartTime) / MINIMUM_TIME_ON_SCREEN);
         var _loc5_:Number = Math.min(1,this.mCallBackFunctionIndex / this.mCallBackFunctions.length) * 4.5;
         var _loc6_:Number = (_loc3_ + _loc4_ + _loc5_) / 10;
         this.requestNextCallBack();
         this.setLoadingPercentage(_loc6_);
         if(_loc6_ >= 1)
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
      
      public function addCallBackFunction(param1:Function) : void
      {
         if(mReady && !mActive)
         {
            this.mCallBackFunctions[this.mCallBackFunctions.length] = param1;
         }
         else
         {
            Log.log("WARNING: LoadState -> addCallBackFunction is called when the LoadState can not accept new callbacks");
         }
      }
      
      public function requestNextCallBack() : void
      {
         var _loc1_:Function = null;
         if(this.mCallBackFunctionIndex < this.mCallBackFunctions.length)
         {
            _loc1_ = this.mCallBackFunctions[this.mCallBackFunctionIndex];
            _loc1_.call();
            ++this.mCallBackFunctionIndex;
         }
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.mLoadingView.getChildByName("Bar") as MovieClip).totalFrames;
         (this.mLoadingView.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
