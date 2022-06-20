package com.rovio.loader
{
   import com.rovio.factory.Log;
   import com.rovio.utils.HashMap;
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
      
      private var mLoadCompleteCallBackFunction:Function;
      
      private var mErrorCallBackFunction:Function;
      
      private var mLoadCompleteEachFileCallBackFunction:Function;
      
      private var mLoader:Loader;
      
      private var mUrlLoader:URLLoader;
      
      private var mCurrentLibrary:XML;
      
      private var mUrlsToTest:Vector.<String>;
      
      private var mUrlTestFile:String = "external_assets/LoadTest.swf";
      
      private var mInitComplete:Boolean = false;
      
      private var mPackages:Array;
      
      private var mAssetsRoot:String;
      
      private var mBuildNumber:String;
      
      private var mConfigurationFiles:HashMap;
      
      private var mCurrentConfigFileName:String = "";
      
      private var mCurrentItemLoadPercentage:Number = 0;
      
      private var mCurrentDownloadURL:String = "";
      
      private var mPackageLoader:IPackageLoader;
      
      private var mIgnoreOnLoadError:Boolean;
      
      private var mLevelLoader:ILevelLoader;
      
      public function LoadManager(ignoreOnLoadError:Boolean = false)
      {
         this.mPackages = [];
         this.mConfigurationFiles = new HashMap();
         super();
         this.mIgnoreOnLoadError = ignoreOnLoadError;
      }
      
      public static function get instance() : LoadManager
      {
         if(!sInstance)
         {
            sInstance = new LoadManager();
         }
         return sInstance;
      }
      
      public static function storeAssetsToCache(loader:Loader, library:XML) : void
      {
      }
      
      public function clearPackages() : void
      {
         this.mPackages = [];
      }
      
      public function init(initXML:XML, assetsRoot:String, buildNumber:String, packageLoader:IPackageLoader, initPackageCallback:Function = null, levelLoader:ILevelLoader = null) : void
      {
         this.mAssetsRoot = assetsRoot;
         this.mBuildNumber = buildNumber;
         this.mInitComplete = true;
         this.mIsLoading = false;
         this.mPackageLoader = packageLoader;
         this.mInitPackageCallback = initPackageCallback;
         this.mLevelLoader = levelLoader;
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
      
      public function addToQueue(data:XML) : void
      {
         if(this.mIsLoading && this.isInitComplete())
         {
            return;
         }
         this.mLoadQueue.push(data);
         ++this.mTotalItemCountToLoad;
      }
      
      public function loadQueue(cbOnLoadComplete:Function = null, cbOnError:Function = null, cbOnLoadCompleteEachFile:Function = null) : void
      {
         if(this.mIsLoading && this.isInitComplete())
         {
            return;
         }
         this.mLoadCompleteCallBackFunction = cbOnLoadComplete;
         this.mErrorCallBackFunction = cbOnError;
         this.mLoadCompleteEachFileCallBackFunction = cbOnLoadCompleteEachFile;
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
      
      private function onPackageInitialized(e:Event) : void
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
         var extra:String = null;
         var levelFileURL:String = null;
         var packageFileName:String = null;
         var xmlFileName:String = null;
         var swfFilename:String = null;
         if(this.mIsLoading && this.isInitComplete())
         {
            if(this.waitForPackageInitialization())
            {
               return;
            }
            extra = "";
            if(this.mBuildNumber != null && this.mBuildNumber.length > 0)
            {
               extra = "?version=" + this.mBuildNumber;
            }
            this.mCurrentItemLoadPercentage = 0;
            this.mCurrentLibrary = this.mLoadQueue.shift();
            if(this.mCurrentLibrary.localName() == "level")
            {
               levelFileURL = this.mCurrentLibrary.@url.toString();
               levelFileURL = FileNameMapper.instance.getMappedFileName(levelFileURL);
               this.mUrlLoader = new URLLoader();
               this.mUrlLoader.dataFormat = URLLoaderDataFormat.BINARY;
               this.mUrlLoader.addEventListener(Event.COMPLETE,this.onLevelLoaded);
               this.mUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
               this.mUrlLoader.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
               this.mCurrentDownloadURL = levelFileURL;
               this.mUrlLoader.load(new URLRequest(levelFileURL));
            }
            else if(this.mCurrentLibrary.localName() == "pack")
            {
               packageFileName = this.mCurrentLibrary.@url.toString();
               packageFileName = FileNameMapper.instance.getMappedFileName(packageFileName);
               this.mUrlLoader = new URLLoader();
               this.mUrlLoader.dataFormat = URLLoaderDataFormat.BINARY;
               this.mUrlLoader.addEventListener(Event.COMPLETE,this.onPackageLoaded);
               this.mUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
               this.mUrlLoader.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
               this.mCurrentDownloadURL = this.mAssetsRoot + packageFileName + extra;
               this.mUrlLoader.load(new URLRequest(this.mCurrentDownloadURL));
            }
            else if(this.mCurrentLibrary.localName() == "xml")
            {
               xmlFileName = this.mCurrentLibrary.@url.toString();
               xmlFileName = FileNameMapper.instance.getMappedFileName(xmlFileName);
               this.mCurrentConfigFileName = this.mCurrentLibrary.@name;
               this.mUrlLoader = new URLLoader();
               this.mUrlLoader.addEventListener(Event.COMPLETE,this.onXMLConfigLoaded);
               this.mUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
               this.mUrlLoader.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
               this.mCurrentDownloadURL = this.mAssetsRoot + xmlFileName + extra;
               this.mUrlLoader.load(new URLRequest(this.mCurrentDownloadURL));
            }
            else
            {
               swfFilename = this.mCurrentLibrary.@swf.toString();
               swfFilename = FileNameMapper.instance.getMappedFileName(swfFilename);
               this.mLoader = new Loader();
               this.mLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onSwfLoaded);
               this.mLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
               this.mLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
               this.mCurrentDownloadURL = this.mAssetsRoot + swfFilename + extra;
               this.mLoader.load(new URLRequest(this.mCurrentDownloadURL),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function ioErrorWhileLoading(evt:IOErrorEvent) : void
      {
         var url:String = this.mCurrentDownloadURL;
         this.cleanUpAfterLoading();
         if(this.mIgnoreOnLoadError)
         {
            ++this.mTotalItemCountLoaded;
            this.continueQueueLoading();
            if(this.mErrorCallBackFunction != null)
            {
               this.mErrorCallBackFunction(url);
            }
            return;
         }
         throw new Error("[LoadManager] IO Error while loading \'" + url + "\'.\nError: " + evt.toString(),evt.errorID);
      }
      
      private function onXMLConfigLoaded(e:Event) : void
      {
         var xml:XML = new XML(this.mUrlLoader.data);
         this.mConfigurationFiles[this.mCurrentConfigFileName] = xml;
         if(this.mLoadCompleteEachFileCallBackFunction != null)
         {
            this.mLoadCompleteEachFileCallBackFunction(this.mCurrentDownloadURL);
         }
         this.cleanUpAfterLoading();
         ++this.mTotalItemCountLoaded;
         this.continueQueueLoading();
      }
      
      public function getXMLConfigurationFile(name:String) : XML
      {
         return this.mConfigurationFiles[name];
      }
      
      private function onLevelLoaded(e:Event) : void
      {
         if(this.mLevelLoader)
         {
            this.mLevelLoader.loadLevelFromBytes(this.mUrlLoader.data,this.mCurrentLibrary.@id);
         }
         if(this.mLoadCompleteEachFileCallBackFunction != null)
         {
            this.mLoadCompleteEachFileCallBackFunction(this.mCurrentDownloadURL);
         }
         this.cleanUpAfterLoading();
         ++this.mTotalItemCountLoaded;
         this.continueQueueLoading();
      }
      
      private function onPackageLoaded(e:Event) : void
      {
         this.mPackages.push(this.mUrlLoader.data);
         if(this.mInitPackageCallback != null)
         {
            this.mInitPackageCallback(this.mUrlLoader.data);
         }
         if(this.mPackageLoader)
         {
            this.mPackageLoader.loadPackageFromBytes(this.mUrlLoader.data,this.getPackageName(this.mCurrentLibrary.@url),true,this.mCurrentLibrary);
         }
         if(this.mLoadCompleteEachFileCallBackFunction != null)
         {
            this.mLoadCompleteEachFileCallBackFunction(this.mCurrentDownloadURL);
         }
         this.cleanUpAfterLoading();
         ++this.mTotalItemCountLoaded;
         this.continueQueueLoading();
      }
      
      private function getPackageName(url:String) : String
      {
         var result:String = url;
         var index:int = result.indexOf(".pak");
         if(index >= 0)
         {
            result = result.substr(0,index);
         }
         index = result.lastIndexOf("/");
         if(index >= 0)
         {
            result = result.substr(index + 1);
         }
         return result;
      }
      
      private function onProgress(e:ProgressEvent) : void
      {
         this.mCurrentItemLoadPercentage = e.bytesLoaded / e.bytesTotal;
      }
      
      private function onSwfLoaded(evt:Event) : void
      {
         if(this.mLoadCompleteEachFileCallBackFunction != null)
         {
            this.mLoadCompleteEachFileCallBackFunction(this.mCurrentDownloadURL);
         }
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
            this.mUrlLoader.removeEventListener(Event.COMPLETE,this.onLevelLoaded);
            this.mUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
            this.mUrlLoader.removeEventListener(ProgressEvent.PROGRESS,this.onProgress);
            this.mUrlLoader = null;
         }
         this.mCurrentLibrary = null;
      }
      
      private function queueLoaded() : void
      {
         this.mCurrentItemLoadPercentage = 0;
         if(this.mLoadCompleteCallBackFunction != null)
         {
            this.mLoadCompleteCallBackFunction.call();
            this.mLoadCompleteCallBackFunction = null;
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
         this.mLoadCompleteCallBackFunction = null;
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
