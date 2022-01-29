package com.rovio.loader
{
   import com.rovio.graphics.*;
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
      
      private var override:Array;
      
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
      
      public function DynamicContentLoader(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.mBinaryData = new Dictionary();
         this.mDecryptedBinaries = new Vector.<String>();
         this.mContentFileList = [];
         this.override = [];
         this.mRemainingContentLoadList = [];
         this.mPendingLoadList = [];
         this.mTextureManagers = new Vector.<TextureManager>();
         super();
         this.mBuildNumber = param2;
         this.mAssetsRoot = param1;
         this.mReload = param3;
         this.mTextureManagerLimit = Math.max(1,param4);
      }
      
      public function get textureManager() : TextureManager
      {
         return this.mTextureManager;
      }
      
      private function activateTextureManager(param1:String) : Boolean
      {
         var _loc3_:TextureManager = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.mTextureManagers.length)
         {
            _loc3_ = this.mTextureManagers[_loc2_];
            if(_loc3_.id == param1)
            {
               this.mTextureManager = _loc3_;
               this.mActiveContent = param1;
               this.mTextureManagers.splice(_loc2_,1);
               this.mTextureManagers.unshift(this.mTextureManager);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function isContentFileAvailable(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.mBinaryData[param1] != null;
      }
      
      public function isContentListAvailable(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.isContentFileAvailable(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function loadContent(param1:String, param2:Array = null) : void
      {
         if(!param2)
         {
            param2 = [param1];
         }
         else
         {
            param2 = param2.concat();
         }
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            param2[_loc3_] = param2[_loc3_].toLowerCase();
            _loc3_--;
         }
         param1 = param1.toLowerCase();
         if(this.isLoading())
         {
            if(!this.cancelLoading())
            {
               this.mPendingContentNameToLoad = param1;
               this.mPendingLoadList = param2.concat();
               return;
            }
         }
         this.mContentBeingLoaded = param1;
         if(this.isContentListAvailable(param2))
         {
            this.activateTextureManager(param1);
            if(param1 == this.mActiveContent || !this.mReload)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.initializeContentPackages(param2);
            }
         }
         else
         {
            this.loadContentFiles(param2);
         }
      }
      
      private function generateActiveLoadList(param1:Array) : void
      {
         var _loc2_:String = null;
         this.mRemainingContentLoadList = [];
         for each(_loc2_ in param1)
         {
            if(!this.isContentFileAvailable(_loc2_))
            {
               this.mRemainingContentLoadList.push(_loc2_);
            }
         }
      }
      
      private function loadContentFiles(param1:Array) : void
      {
         this.mContentFileList = param1.concat();
         this.generateActiveLoadList(param1);
         this.loadNextContentFile();
      }
      
      private function loadNextContentFile() : Boolean
      {
         if(this.mRemainingContentLoadList.length == 0)
         {
            this.mContentFileBeingLoaded = null;
            return false;
         }
         this.mContentFileBeingLoaded = this.mRemainingContentLoadList.pop();
         var _loc1_:String = "";
         if(this.mBuildNumber != null && this.mBuildNumber.length > 0)
         {
            _loc1_ = "?version=" + this.mBuildNumber;
         }
         this.mUrlLoader = new URLLoader();
         this.mUrlLoader.dataFormat = URLLoaderDataFormat.BINARY;
         this.mUrlLoader.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.mUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
         this.mUrlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadError);
         var _loc2_:String = this.getFullFilename(this.mContentFileBeingLoaded);
         this.mUrlLoader.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function getFullFilename(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.mType;
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
      
      private function onLoadComplete(param1:Event) : void
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
      
      private function onLoadError(param1:Event) : void
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
      
      private function initializeContentPackages(param1:Array) : void
      {
         var _loc2_:TextureManager = null;
         this.mInitializingPackage = true;
         while(this.mTextureManagers.length >= this.mTextureManagerLimit)
         {
            _loc2_ = this.mTextureManagers.pop();
            _loc2_.dispose();
         }
         if(this.mPackageLoader)
         {
            this.mPackageLoader.dispose();
         }
         this.mTextureManager = new TextureManager(this.mContentBeingLoaded);
         this.mTextureManagers.unshift(this.mTextureManager);
         this.mPackageLoader = this.initPackageLoader();
         this.override = param1.concat();
         this.initializeNextContentFile();
      }
      
      private function initializeNextContentFile() : Boolean
      {
         if(this.override.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.override.pop();
         this.mPackageLoader.addEventListener(Event.COMPLETE,this.onContentInitializationComplete);
         var _loc2_:* = this.mDecryptedBinaries.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.mDecryptedBinaries.push(_loc1_);
         }
         this.mPackageLoader.loadPackageFromBytes(this.mBinaryData[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function onContentInitializationComplete(param1:Event) : void
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
         var _loc2_:int = this.mPackageLoader.spriteSheetContainer.spriteSheetCount;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.mTextureManager.addTextures(this.mPackageLoader.spriteSheetContainer.getSpriteSheet(_loc3_),0);
            _loc3_++;
         }
         this.initializeTextures();
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
         this.mPackageLoader.dispose();
         this.mPackageLoader = null;
         this.mActiveContent = this.mContentBeingLoaded;
         this.mContentBeingLoaded = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function onTexturesInitialized(param1:Event) : void
      {
         this.handleTextureInitialization();
      }
   }
}
