package com.rovio.loader
{
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   
   public class LoadManager
   {
      
      private static var smLoadQueue:Vector.<XML>;
      
      private static var smIsLoading:Boolean = false;
      
      private static var smTotalItemCountToLoad:int;
      
      private static var smTotalItemCountLoaded:int;
      
      private static var smCallBackFunction:Function;
      
      private static var smLoader:Loader;
      
      private static var smCurrentLibrary:XML;
      
      private static var smAssetUrl:String = "";
      
      private static var smAssetUrlIndex:int = 0;
      
      private static var smUrlsToTest:Vector.<String>;
      
      private static var smUrlTestFile:String = "external_assets/LoadTest.swf";
      
      private static var smInitComplete:Boolean = false;
       
      
      public function LoadManager()
      {
         super();
      }
      
      public static function init(initXML:XML) : void
      {
         var url:XML = null;
         smIsLoading = true;
         smUrlsToTest = new Vector.<String>();
         if(initXML != null)
         {
            for each(url in initXML.AssetURL)
            {
               smUrlsToTest.push(url.toString());
            }
         }
         else
         {
            smUrlsToTest.push("");
         }
         assetUrlTest(smUrlsToTest[smAssetUrlIndex]);
      }
      
      private static function assetUrlTest(url:String) : void
      {
         var currentUrl:String = url + smUrlTestFile;
         smLoader = new Loader();
         smLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,assetUrlTestSuccess);
         smLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,assetUrlTestFailure);
         smLoader.load(new URLRequest(url + smUrlTestFile));
      }
      
      private static function assetUrlTestSuccess(evt:Event) : void
      {
         Log.log("[LoadManager] Found asset location: " + (smUrlsToTest[smAssetUrlIndex] as String));
         smLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,storeAssetsToCache);
         smLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,assetUrlTestFailure);
         smIsLoading = false;
         smAssetUrl = smUrlsToTest[smAssetUrlIndex];
         smLoader = null;
         confirmInitComplete();
      }
      
      private static function assetUrlTestFailure(evt:IOErrorEvent) : void
      {
         Log.log("[LoadManager] Could not load assets from: " + smUrlsToTest[smAssetUrlIndex] + smUrlTestFile);
         Log.log("[LoadManager] Error: " + evt.toString());
         smLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,storeAssetsToCache);
         smLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,assetUrlTestFailure);
         smLoader = null;
         if(smAssetUrlIndex + 1 >= smUrlsToTest.length)
         {
            throw new Error("[LoadManager] Working AssetURL not found!");
         }
         testNextAssetUrl();
      }
      
      private static function testNextAssetUrl() : void
      {
         ++smAssetUrlIndex;
         assetUrlTest(smUrlsToTest[smAssetUrlIndex]);
      }
      
      private static function confirmInitComplete() : void
      {
         smInitComplete = true;
         smIsLoading = false;
      }
      
      public static function isInitComplete() : Boolean
      {
         return smInitComplete;
      }
      
      public static function startQueue() : Boolean
      {
         if(smIsLoading || !isInitComplete())
         {
            return false;
         }
         smLoadQueue = new Vector.<XML>();
         smTotalItemCountToLoad = 0;
         return true;
      }
      
      public static function addToQueue(data:XML) : void
      {
         if(smIsLoading && isInitComplete())
         {
            return;
         }
         smLoadQueue.push(data);
         ++smTotalItemCountToLoad;
      }
      
      public static function loadQueue(callBack:Function = null) : void
      {
         if(smIsLoading && isInitComplete())
         {
            return;
         }
         smCallBackFunction = callBack;
         smTotalItemCountToLoad = smLoadQueue.length;
         if(smLoadQueue.length > 0)
         {
            smIsLoading = true;
            loadNextInQueue();
         }
         else if(smLoadQueue.length == 0)
         {
            smIsLoading = true;
            queueLoaded();
         }
      }
      
      private static function loadNextInQueue() : void
      {
         if(smIsLoading && isInitComplete())
         {
            smCurrentLibrary = smLoadQueue.shift();
            smLoader = new Loader();
            smLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,storeAssetsToCache);
            smLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,ioErrorWhileLoading);
            smLoader.load(new URLRequest(smAssetUrl + smCurrentLibrary.@swf.toString()));
         }
      }
      
      private static function ioErrorWhileLoading(evt:IOErrorEvent) : void
      {
         smLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,storeAssetsToCache);
         smLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorWhileLoading);
         throw new Error("[LoadManager] FILE NOT FOUND: " + smLoader.contentLoaderInfo.url);
      }
      
      private static function storeAssetsToCache(evt:Event) : void
      {
         var asset:XML = null;
         smLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,storeAssetsToCache);
         smLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorWhileLoading);
         var lib:* = smLoader.content;
         for each(asset in smCurrentLibrary.Asset)
         {
            if(lib == null)
            {
               throw new Error("[LoadManager] Library is NULL (This should NEVER HAPPEN!!)");
            }
            AssetCache.storeAsset(asset.@name.toString(),lib.loaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class);
            Log.log("ASSET CACHED: " + asset.@name.toString());
         }
         cleanUpAfterLoadingSwf();
         ++smTotalItemCountLoaded;
         if(smLoadQueue.length > 0)
         {
            loadNextInQueue();
         }
         else
         {
            queueLoaded();
         }
      }
      
      private static function cleanUpAfterLoadingSwf() : void
      {
         smLoader = null;
         smCurrentLibrary = null;
      }
      
      private static function queueLoaded() : void
      {
         if(smCallBackFunction != null)
         {
            smCallBackFunction.call();
            smCallBackFunction = null;
         }
      }
      
      public static function stopLoading() : void
      {
         smIsLoading = false;
         smTotalItemCountToLoad = 0;
         if(smLoadQueue)
         {
            smLoadQueue = null;
         }
      }
      
      public static function getLoadingStatus() : Number
      {
         if(!isInitComplete())
         {
            Log.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!smIsLoading || !smLoadQueue || !isInitComplete())
         {
            Log.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(smTotalItemCountToLoad == 0)
         {
            return 1;
         }
         return smTotalItemCountLoaded / smTotalItemCountToLoad;
      }
   }
}
