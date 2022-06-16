package com.rovio.loader
{
   import com.rovio.graphics.TextureManager;
   import com.rovio.server.RetryingURLLoader;
   import com.rovio.sound.SoundEngine;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class DynamicContentLoader extends EventDispatcher
   {
       
      
      private var mBuildNumber:String = "";
      
      private var mAssetsRoot:String;
      
      private var mBinaryData:Dictionary;
      
      private var mDecryptedBinaries:Vector.<String>;
      
      private var mActiveContent:String = null;
      
      private var mContentBeingLoaded:String = null;
      
      private var mContentFileList:Array;
      
      private var mContentFileBeingLoaded:String = null;
      
      private var mContentInitializeList:Array;
      
      private var mRemainingContentLoadList:Array;
      
      private var mInitializingPackage:Boolean;
      
      private var mPendingContentNameToLoad:String = null;
      
      private var mPendingLoadList:Array;
      
      private var mUrlLoader:URLLoader;
      
      protected var mPackageLoader:PackageLoader;
      
      protected var mTextureManager:TextureManager;
      
      protected var mTextureManagers:Vector.<TextureManager>;
      
      private var mType:String = "pak";
      
      private var mReload:Boolean = true;
      
      private var mTextureManagerLimit:int = 1;
      
      public function DynamicContentLoader(assetsRoot:String, buildNumber:String, reload:Boolean = true, textureManagerLimit:int = 1)
      {
         this.mBinaryData = new Dictionary();
         this.mDecryptedBinaries = new Vector.<String>();
         this.mContentFileList = [];
         this.mContentInitializeList = [];
         this.mRemainingContentLoadList = [];
         this.mPendingLoadList = [];
         this.mTextureManagers = new Vector.<TextureManager>();
         super();
         this.mBuildNumber = buildNumber;
         this.mAssetsRoot = assetsRoot;
         this.mReload = reload;
         this.mTextureManagerLimit = Math.max(1,textureManagerLimit);
      }
      
      public function get textureManager() : TextureManager
      {
         return this.mTextureManager;
      }
      
      private function activateTextureManager(id:String) : Boolean
      {
         var textureManager:TextureManager = null;
         for(var i:int = 0; i < this.mTextureManagers.length; i++)
         {
            textureManager = this.mTextureManagers[i];
            if(textureManager.id == id)
            {
               this.mTextureManager = textureManager;
               this.mActiveContent = id;
               this.mTextureManagers.splice(i,1);
               this.mTextureManagers.unshift(this.mTextureManager);
               return true;
            }
         }
         return false;
      }
      
      public function isContentFileAvailable(fileName:String) : Boolean
      {
         fileName = fileName.toLowerCase();
         return this.mBinaryData[fileName] != null;
      }
      
      public function isContentListAvailable(contentList:Array) : Boolean
      {
         var fileData:Object = null;
         var fileName:String = null;
         for each(fileData in contentList)
         {
            fileName = this.getFileNameFromFileData(fileData);
            if(!this.isContentFileAvailable(fileName))
            {
               if(SoundEngine.getSound(fileName,false))
               {
                  return true;
               }
               return false;
            }
         }
         return true;
      }
      
      public function loadContent(name:String, loadList:Array = null) : void
      {
         if(!loadList)
         {
            loadList = [name];
         }
         else
         {
            loadList = loadList.concat();
         }
         for(var i:int = loadList.length - 1; i >= 0; i--)
         {
            loadList[i] = loadList[i].toLowerCase();
         }
         name = name.toLowerCase();
         if(this.isLoading())
         {
            if(!this.cancelLoading())
            {
               this.mPendingContentNameToLoad = name;
               this.mPendingLoadList = loadList.concat();
               return;
            }
         }
         this.mContentBeingLoaded = name;
         if(this.isContentListAvailable(loadList))
         {
            this.activateTextureManager(name);
            if(name == this.mActiveContent || !this.mReload)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.initializeContentPackages(loadList);
            }
         }
         else
         {
            this.loadContentFiles(loadList);
         }
      }
      
      private function isPackXML(fileData:Object) : Boolean
      {
         return fileData is XML;
      }
      
      private function getFileNameFromFileData(fileData:Object) : String
      {
         var fileName:String = null;
         if(fileData is XML)
         {
            fileName = (fileData as XML).@url;
         }
         else
         {
            fileName = String(fileData);
         }
         return fileName;
      }
      
      private function generateActiveLoadList(loadList:Array) : void
      {
         var fileData:Object = null;
         var fileName:String = null;
         this.mRemainingContentLoadList = [];
         for each(fileData in loadList)
         {
            fileName = this.getFileNameFromFileData(fileData);
            if(!this.isContentFileAvailable(fileName))
            {
               this.mRemainingContentLoadList.push(fileData);
            }
         }
      }
      
      private function loadContentFiles(loadList:Array) : void
      {
         this.mContentFileList = loadList.concat();
         this.generateActiveLoadList(loadList);
         this.loadNextContentFile();
      }
      
      private function loadNextContentFile() : Boolean
      {
         if(this.mRemainingContentLoadList.length == 0)
         {
            this.mContentFileBeingLoaded = null;
            return false;
         }
         var fileData:Object = this.mRemainingContentLoadList.pop();
         this.mContentFileBeingLoaded = this.getFileNameFromFileData(fileData);
         var extra:String = "";
         if(this.mBuildNumber != null && this.mBuildNumber.length > 0)
         {
            extra = "?version=" + this.mBuildNumber;
         }
         this.mUrlLoader = new RetryingURLLoader(null,3,50);
         this.mUrlLoader.dataFormat = URLLoaderDataFormat.BINARY;
         this.mUrlLoader.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.mUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
         this.mUrlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadError);
         var fullFilename:String = this.getFullFilename(this.mContentFileBeingLoaded);
         this.mUrlLoader.load(new URLRequest(fullFilename + extra));
         return true;
      }
      
      protected function getFullFilename(name:String) : String
      {
         return "" + "packages/" + name + "." + this.mType;
      }
      
      private function isLoading() : Boolean
      {
         return this.mUrlLoader || this.mInitializingPackage;
      }
      
      private function cancelLoading() : Boolean
      {
         if(this.mUrlLoader)
         {
            this.mUrlLoader.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.mUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
            this.mUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadError);
            try
            {
               this.mUrlLoader.close();
            }
            catch(e:Error)
            {
            }
            this.mUrlLoader = null;
         }
         if(this.mInitializingPackage)
         {
            return false;
         }
         return true;
      }
      
      private function onLoadComplete(e:Event) : void
      {
         this.mUrlLoader.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.mUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
         this.mUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadError);
         this.mBinaryData[this.mContentFileBeingLoaded] = this.mUrlLoader.data;
         this.mUrlLoader = null;
         if(!this.loadNextContentFile())
         {
            this.initializeContentPackages(this.mContentFileList);
         }
      }
      
      private function onLoadError(e:Event) : void
      {
         this.mUrlLoader.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.mUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
         this.mUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadError);
         this.mUrlLoader.close();
         this.mUrlLoader = null;
         this.mContentBeingLoaded = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : PackageLoader
      {
         return new PackageLoader();
      }
      
      protected function destroyPackageLoader() : void
      {
         if(this.mPackageLoader)
         {
            this.mPackageLoader.dispose();
            this.mPackageLoader = null;
         }
      }
      
      private function initializeContentPackages(fileList:Array) : void
      {
         var textureManager:TextureManager = null;
         this.mInitializingPackage = true;
         while(this.mTextureManagers.length >= this.mTextureManagerLimit)
         {
            textureManager = this.mTextureManagers.pop();
            textureManager.dispose();
         }
         this.destroyPackageLoader();
         this.mTextureManager = new TextureManager(this.mContentBeingLoaded);
         this.mTextureManagers.unshift(this.mTextureManager);
         this.mPackageLoader = this.initPackageLoader();
         this.mContentInitializeList = fileList.concat();
         this.initializeNextContentFile();
      }
      
      private function initializeNextContentFile() : Boolean
      {
         if(this.mContentInitializeList.length == 0)
         {
            return false;
         }
         var fileData:Object = this.mContentInitializeList.pop();
         var fileName:String = this.getFileNameFromFileData(fileData);
         this.mPackageLoader.addEventListener(Event.COMPLETE,this.onContentInitializationComplete);
         var decrypt:* = this.mDecryptedBinaries.indexOf(fileName) < 0;
         if(decrypt)
         {
            this.mDecryptedBinaries.push(fileName);
         }
         this.mPackageLoader.loadPackageFromBytes(this.mBinaryData[fileData],fileName,decrypt,!!this.isPackXML(fileData) ? XML(fileData) : null);
         return true;
      }
      
      private function onContentInitializationComplete(e:Event) : void
      {
         this.mInitializingPackage = false;
         this.mPackageLoader.removeEventListener(Event.COMPLETE,this.onContentInitializationComplete);
         if(this.mPendingContentNameToLoad)
         {
            this.loadContent(this.mPendingContentNameToLoad,this.mPendingLoadList);
            this.mPendingContentNameToLoad = null;
            this.mPendingLoadList = null;
            return;
         }
         if(this.initializeNextContentFile())
         {
            return;
         }
         var sheetCount:int = this.mPackageLoader.spriteSheetContainer.spriteSheetCount;
         for(var i:int = 0; i < sheetCount; i++)
         {
            this.mTextureManager.addTextures(this.mPackageLoader.spriteSheetContainer.getSpriteSheet(i),0);
         }
         if(sheetCount > 0)
         {
            this.initializeTextures();
         }
         else
         {
            this.handleTextureInitialization();
         }
      }
      
      public function initializeTextures() : void
      {
         if(this.isLoading() || this.mPackageLoader == null)
         {
            return;
         }
         this.mTextureManager.removeEventListener(Event.INIT,this.onTexturesInitialized);
         if(this.mTextureManager.initializeTextures())
         {
            this.handleTextureInitialization();
         }
         else
         {
            this.mTextureManager.addEventListener(Event.INIT,this.onTexturesInitialized);
         }
      }
      
      private function handleTextureInitialization() : void
      {
         this.destroyPackageLoader();
         this.mActiveContent = this.mContentBeingLoaded;
         this.mContentBeingLoaded = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function onTexturesInitialized(event:Event) : void
      {
         this.handleTextureInitialization();
      }
   }
}
