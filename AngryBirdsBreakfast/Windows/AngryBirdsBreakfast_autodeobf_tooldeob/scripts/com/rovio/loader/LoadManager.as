package com.rovio.loader
{
   import com.rovio.utils.ErrorCode;
   import com.rovio.factory.Log;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class LoadManager
   {
      
      private static var sInstance:LoadManager;
       
      
      private var mLoadQueue:Vector.<XML>;
      
      private var mIsLoading:Boolean = false;
      
      private var mTotalItemCountToLoad:int;
      
      private var mTotalItemCountLoaded:int;
      
      private var mInitPackageCallback:Function;
      
      private var mCallBackFunction:Function;
      
      private var mLoader:Loader;
      
      private var mUrlLoader:URLLoader;
      
      private var mCurrentLibrary:XML;
      
      private var mUrlsToTest:Vector.<String>;
      
      private var mUrlTestFile:String = "external_assets/LoadTest.swf";
      
      private var mInitComplete:Boolean = false;
      
      private var mPackages:Array;
      
      private var mAssetsRoot:String;
      
      private var mBuildNumber:String;
      
      private var mCurrentItemLoadPercentage:Number = 0;
      
      private var mCurrentDownloadURL:String = "";
      
      private var mPackageLoader:IPackageLoader;
      
      private var mFilenameMapping:Object;
      
      public function LoadManager()
      {
         this.mPackages = [];
         super();
      }
      
      public static function get instance() : LoadManager
      {
         if(!sInstance)
         {
            sInstance = new LoadManager();
         }
         return sInstance;
      }
      
      public static function storeAssetsToCache(param1:Loader, param2:XML) : void
      {
      }
      
      public function clearPackages() : void
      {
         this.mPackages = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:IPackageLoader, param5:Function = null, param6:String = "") : void
      {
         this.mAssetsRoot = param2;
         this.mBuildNumber = param3;
         this.mInitComplete = true;
         this.mIsLoading = false;
         this.mPackageLoader = param4;
         this.mInitPackageCallback = param5;
         if(param6 != null && param6 != "")
         {
            this.mFilenameMapping = JSON.parse(param6);
         }
      }
      
      private function confirmInitComplete() : void
      {
         this.mInitComplete = true;
         this.mIsLoading = false;
      }
      
      public function isInitComplete() : Boolean
      {
         return this.mInitComplete;
      }
      
      public function startQueue() : Boolean
      {
         if(this.mIsLoading || !this.isInitComplete())
         {
            return false;
         }
         this.mLoadQueue = new Vector.<XML>();
         this.mTotalItemCountToLoad = 0;
         return true;
      }
      
      public function addToQueue(param1:XML) : void
      {
         if(this.mIsLoading && this.isInitComplete())
         {
            return;
         }
         this.mLoadQueue.push(param1);
         ++this.mTotalItemCountToLoad;
      }
      
      public function loadQueue(param1:Function = null) : void
      {
         if(this.mIsLoading && this.isInitComplete())
         {
            return;
         }
         this.mCallBackFunction = param1;
         this.mTotalItemCountToLoad = this.mLoadQueue.length;
         this.mTotalItemCountLoaded = 0;
         this.mIsLoading = true;
         this.continueQueueLoading();
      }
      
      private function waitForPackageInitialization() : Boolean
      {
         if(this.mPackageLoader && !this.mPackageLoader.loadingCompleted)
         {
            this.mPackageLoader.removeEventListener(Event.COMPLETE,this.onPackageInitialized);
            this.mPackageLoader.addEventListener(Event.COMPLETE,this.onPackageInitialized);
            return true;
         }
         return false;
      }
      
      private function onPackageInitialized(param1:Event) : void
      {
         this.mPackageLoader.removeEventListener(Event.COMPLETE,this.onPackageInitialized);
         this.continueQueueLoading();
      }
      
      private function continueQueueLoading() : void
      {
         if(!this.mLoadQueue)
         {
            return;
         }
         if(this.mLoadQueue.length > 0)
         {
            this.loadNextInQueue();
         }
         else if(this.getLoadingStatus() >= 1)
         {
            this.queueLoaded();
         }
         else
         {
            this.waitForPackageInitialization();
         }
      }
      
      private function loadNextInQueue() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.mIsLoading && this.isInitComplete())
         {
            if(this.waitForPackageInitialization())
            {
               return;
            }
            _loc1_ = "";
            if(this.mBuildNumber != null && this.mBuildNumber.length > 0)
            {
               _loc1_ = "?version=" + this.mBuildNumber;
            }
            this.mCurrentItemLoadPercentage = 0;
            this.mCurrentLibrary = this.mLoadQueue.shift();
            if(this.mCurrentLibrary.localName() == "pack")
            {
               _loc2_ = this.mAssetsRoot + this.mCurrentLibrary.@url.toString();
               if(this.mFilenameMapping && this.mFilenameMapping[_loc2_])
               {
                  _loc2_ = this.mFilenameMapping[_loc2_];
               }
               this.mUrlLoader = new URLLoader();
               this.mUrlLoader.dataFormat = URLLoaderDataFormat.BINARY;
               this.mUrlLoader.addEventListener(Event.COMPLETE,this.onPackageLoaded);
               this.mUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
               this.mUrlLoader.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
               this.mCurrentDownloadURL = _loc2_ + _loc1_;
               this.mUrlLoader.load(new URLRequest(this.mCurrentDownloadURL));
            }
            else
            {
               _loc3_ = this.mAssetsRoot + this.mCurrentLibrary.@swf.toString();
               if(this.mFilenameMapping && this.mFilenameMapping[_loc3_])
               {
                  _loc3_ = this.mFilenameMapping[_loc3_];
               }
               this.mLoader = new Loader();
               this.mLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onSwfLoaded);
               this.mLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
               this.mLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
               this.mCurrentDownloadURL = _loc3_ + _loc1_;
               this.mLoader.load(new URLRequest(this.mCurrentDownloadURL),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function ioErrorWhileLoading(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.mCurrentDownloadURL;
         this.cleanUpAfterLoading();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.mCurrentDownloadURL,ErrorCode.FILE_NOT_FOUND);
      }
      
      private function onPackageLoaded(param1:Event) : void
      {
         this.mPackages.push(this.mUrlLoader.data);
         if(this.mInitPackageCallback != null)
         {
            this.mInitPackageCallback(this.mUrlLoader.data);
         }
         if(this.mPackageLoader)
         {
            this.mPackageLoader.loadPackageFromBytes(this.mUrlLoader.data,this.getPackageName(this.mCurrentLibrary.@url));
         }
         this.cleanUpAfterLoading();
         ++this.mTotalItemCountLoaded;
         this.continueQueueLoading();
      }
      
      private function getPackageName(param1:String) : String
      {
         var _loc2_:String = param1;
         var _loc3_:int = _loc2_.indexOf(".pak");
         if(_loc3_ >= 0)
         {
            _loc2_ = _loc2_.substr(0,_loc3_);
         }
         _loc3_ = _loc2_.lastIndexOf("/");
         if(_loc3_ >= 0)
         {
            _loc2_ = _loc2_.substr(_loc3_ + 1);
         }
         return _loc2_;
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         this.mCurrentItemLoadPercentage = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function onSwfLoaded(param1:Event) : void
      {
         this.cleanUpAfterLoading();
         ++this.mTotalItemCountLoaded;
         this.continueQueueLoading();
      }
      
      private function cleanUpAfterLoading() : void
      {
         if(this.mLoader)
         {
            this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onSwfLoaded);
            this.mLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
            this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onSwfLoaded);
            this.mLoader = null;
         }
         if(this.mUrlLoader)
         {
            this.mUrlLoader.removeEventListener(Event.COMPLETE,this.onPackageLoaded);
            this.mUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
            this.mUrlLoader.removeEventListener(ProgressEvent.PROGRESS,this.onProgress);
            this.mUrlLoader = null;
         }
         this.mCurrentLibrary = null;
      }
      
      private function queueLoaded() : void
      {
         this.mCurrentItemLoadPercentage = 0;
         if(this.mCallBackFunction != null)
         {
            this.mCallBackFunction.call();
            this.mCallBackFunction = null;
         }
      }
      
      public function stopLoading() : void
      {
         this.mCurrentItemLoadPercentage = 0;
         this.mIsLoading = false;
         this.mTotalItemCountToLoad = 0;
         if(this.mLoadQueue)
         {
            this.mLoadQueue = null;
         }
         this.mCallBackFunction = null;
         this.cleanUpAfterLoading();
         if(this.mPackageLoader)
         {
            this.mPackageLoader.stopLoading();
         }
      }
      
      public function getLoadingStatus() : Number
      {
         if(!this.isInitComplete())
         {
            Log.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.mIsLoading || !this.mLoadQueue || !this.isInitComplete())
         {
            Log.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.mTotalItemCountLoaded == this.mTotalItemCountToLoad)
         {
            if(this.mPackageLoader && this.mTotalItemCountToLoad > 0)
            {
               if(this.mPackageLoader.loadingCompleted)
               {
                  return 1;
               }
               return (this.mTotalItemCountLoaded - 0.1) / this.mTotalItemCountToLoad;
            }
            return 1;
         }
         return this.mTotalItemCountLoaded / this.mTotalItemCountToLoad;
      }
   }
}
