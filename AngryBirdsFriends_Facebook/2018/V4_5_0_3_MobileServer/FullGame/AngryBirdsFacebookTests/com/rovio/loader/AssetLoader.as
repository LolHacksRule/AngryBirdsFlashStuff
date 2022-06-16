package com.rovio.loader
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class AssetLoader extends EventDispatcher
   {
      
      public static const TYPE_SWF:uint = 1;
       
      
      private var mUrl:String;
      
      private var mLoader:Loader;
      
      private var mType:uint;
      
      private var mloading:Boolean;
      
      private var mLoaded:Boolean;
      
      public function AssetLoader(url:String, type:uint)
      {
         super();
         this.mUrl = url;
         this.mType = type;
         this.mloading = false;
         this.mLoaded = false;
      }
      
      public function load() : void
      {
         if(!this.mloading && !this.mLoaded)
         {
            this.mLoader = new Loader();
            this.mLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
            this.mLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
            this.mLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
            this.mLoader.load(new URLRequest(this.mUrl),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      public function isLoaded() : Boolean
      {
         return this.mLoaded;
      }
      
      public function isLoading() : Boolean
      {
         return this.mloading;
      }
      
      private function onProgress(event:ProgressEvent) : void
      {
      }
      
      private function ioErrorWhileLoading(event:IOErrorEvent) : void
      {
         this.mloading = false;
         this.cleanUp();
         dispatchEvent(event.clone());
      }
      
      private function onLoadComplete(event:Event) : void
      {
         this.mloading = true;
         this.mLoaded = true;
         this.cleanUp();
         dispatchEvent(event.clone());
      }
      
      private function cleanUp() : void
      {
         if(this.mLoader)
         {
            this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.mLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorWhileLoading);
            this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.mLoader = null;
         }
      }
      
      public function get url() : String
      {
         return this.mUrl;
      }
   }
}
