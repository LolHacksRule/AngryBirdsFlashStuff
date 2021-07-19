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
      
      public static function init(param1:XML) : void
      {
         var _loc2_:XML = null;
         smIsLoading = true;
         smUrlsToTest = new Vector.<String>();
         if(param1 != null)
         {
            for each(_loc2_ in param1.AssetURL)
            {
               smUrlsToTest.push(_loc2_.toString());
            }
         }
         else
         {
            smUrlsToTest.push("");
         }
         assetUrlTest(smUrlsToTest[smAssetUrlIndex]);
      }
      
      private static function assetUrlTest(param1:String) : void
      {
         var _loc2_:String = param1 + smUrlTestFile;
         smLoader = new Loader();
         smLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,assetUrlTestSuccess);
         smLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,assetUrlTestFailure);
         smLoader.load(new URLRequest(param1 + smUrlTestFile));
      }
      
      private static function assetUrlTestSuccess(param1:Event) : void
      {
         Log.log("[LoadManager] Found asset location: " + (smUrlsToTest[smAssetUrlIndex] as String));
         smLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,storeAssetsToCache);
         smLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,assetUrlTestFailure);
         smIsLoading = false;
         smAssetUrl = smUrlsToTest[smAssetUrlIndex];
         smLoader = null;
         confirmInitComplete();
      }
      
      private static function assetUrlTestFailure(param1:IOErrorEvent) : void
      {
         Log.log("[LoadManager] Could not load assets from: " + smUrlsToTest[smAssetUrlIndex] + smUrlTestFile);
         Log.log("[LoadManager] Error: " + param1.toString());
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
      
      public static function addToQueue(param1:XML) : void
      {
         if(smIsLoading && isInitComplete())
         {
            return;
         }
         smLoadQueue.push(param1);
         ++smTotalItemCountToLoad;
      }
      
      public static function loadQueue(param1:Function = null) : void
      {
         if(smIsLoading && isInitComplete())
         {
            return;
         }
         smCallBackFunction = param1;
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
      
      private static function ioErrorWhileLoading(param1:IOErrorEvent) : void
      {
         smLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,storeAssetsToCache);
         smLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorWhileLoading);
         throw new Error("[LoadManager] FILE NOT FOUND: " + smLoader.contentLoaderInfo.url);
      }
      
      private static function storeAssetsToCache(param1:Event) : void
      {
         var _loc3_:XML = null;
         smLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,storeAssetsToCache);
         smLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorWhileLoading);
         var _loc2_:* = smLoader.content;
         for each(_loc3_ in smCurrentLibrary.Asset)
         {
            if(_loc2_ == null)
            {
               throw new Error("[LoadManager] Library is NULL (This should NEVER HAPPEN!!)");
            }
            AssetCache.storeAsset(_loc3_.@name.toString(),_loc2_.loaderInfo.applicationDomain.getDefinition(_loc3_.@name.toString()) as Class);
            Log.log("ASSET CACHED: " + _loc3_.@name.toString());
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
