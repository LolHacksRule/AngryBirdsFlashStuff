package com.angrybirds.states
{
   import com.angrybirds.data.InitDataLoader;
   import com.angrybirds.tips.TipsManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.loader.LoadManager;
   import com.rovio.server.Server;
   import com.rovio.states.StateLoad;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class StateFacebookLoad extends StateLoad
   {
      
      private static const SERVER_CALLS_LOADING_PERCENTAGE:Number = 0.2;
      
      private static const TIMED_PERCENTAGE:Number = 60;
       
      
      private var mBaseLoadingComplete:Boolean = false;
      
      protected var mTimeOfLoadStart:Number = -1;
      
      protected var mAssetLoadedPercent:Number = 0;
      
      private var mErrorPopupShown:Boolean = false;
      
      private var mTargetTime:Number = 60;
      
      public function StateFacebookLoad(localizationManager:LocalizationManager, initState:Boolean = true, name:String = "load", minTimeOnScreen:Number = 1000, assetsUrl:String = "", buildNumber:String = "")
      {
         super(localizationManager,initState,name,minTimeOnScreen,assetsUrl,buildNumber);
      }
      
      override protected function initLoadManager() : void
      {
         LoadManager.instance.init(Server.getExternalAssetDirectoryPaths(),mAssetsUrl,mBuildNumber,null,null);
      }
      
      override public function setLoadingScreen(loadingScreen:DisplayObjectContainer) : void
      {
         var tipTF:TextField = null;
         super.setLoadingScreen(loadingScreen);
         this.setScaledLoadingPercentage(0);
         var tip:MovieClip = mLoadingView.getChildByName("Tip") as MovieClip;
         if(tip)
         {
            tipTF = TextField(tip.getChildByName("tipTF"));
            if(tipTF)
            {
               tipTF.text = TipsManager.instance.getRandLoadingTip();
            }
         }
      }
      
      private function randRange(minNum:Number, maxNum:Number) : Number
      {
         return Math.floor(Math.random() * (maxNum - minNum + 1)) + minNum;
      }
      
      override protected function update(deltaTime:Number) : void
      {
         if(this.mTimeOfLoadStart == -1)
         {
            this.mTimeOfLoadStart = new Date().time;
         }
         if(!this.mBaseLoadingComplete)
         {
            super.update(deltaTime);
         }
         var percentLoaded:Number = this.getLoadedPercent();
         this.setScaledLoadingPercentage(percentLoaded);
         if(percentLoaded == 1 && this.mBaseLoadingComplete)
         {
            ExternalInterfaceHandler.performCall("onFlashLoadComplete");
            setNextState(DUMMY_STATE);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.mBaseLoadingComplete = true;
         this.mAssetLoadedPercent = 1;
      }
      
      private function getLoadedPercent() : Number
      {
         var initPercentage:Number = !!InitDataLoader.isLoading ? Number(0) : Number(1);
         var timedPercentage:Number = this.getTimedPercentage(initPercentage == 1 && this.mAssetLoadedPercent == 1);
         if(this.mAssetLoadedPercent == 1 && initPercentage == 1 && timedPercentage == 1)
         {
            return 1;
         }
         return this.mAssetLoadedPercent * 0.7 + initPercentage * 0.2 + timedPercentage * 0.1;
      }
      
      private function getTimedPercentage(loadingComplete:Boolean) : Number
      {
         if(loadingComplete)
         {
            --this.mTargetTime;
         }
         var scaleToMinute:Number = Math.min((new Date().time - this.mTimeOfLoadStart) / 1000,this.mTargetTime) / this.mTargetTime;
         return Number(1 - Math.pow(1 - scaleToMinute,2));
      }
      
      override public function setLoadingPercentage(value:Number) : void
      {
         this.mAssetLoadedPercent = value;
      }
      
      private function setScaledLoadingPercentage(value:Number) : void
      {
         (mLoadingView.getChildByName("Bar") as MovieClip).mcProgress.scaleX = value;
      }
   }
}
