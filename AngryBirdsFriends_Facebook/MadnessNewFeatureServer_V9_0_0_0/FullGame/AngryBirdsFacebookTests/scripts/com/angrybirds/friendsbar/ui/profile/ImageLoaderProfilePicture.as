package com.angrybirds.friendsbar.ui.profile
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class ImageLoaderProfilePicture extends Sprite
   {
       
      
      protected var mLoader:Loader;
      
      protected var mUrl:String;
      
      private var mBitmapWidth:int = 0;
      
      private var mBitmapHeight:int = 0;
      
      protected var mTriesRemaining:int = 3;
      
      public function ImageLoaderProfilePicture()
      {
         super();
      }
      
      public function get bitmapWidth() : int
      {
         return this.mBitmapWidth;
      }
      
      public function get bitmapHeight() : int
      {
         return this.mBitmapHeight;
      }
      
      public function get loader() : Loader
      {
         return this.mLoader;
      }
      
      protected function load() : void
      {
         this.mLoader = new Loader();
         this.mLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.mLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.mLoader.load(new URLRequest(this.mUrl),new LoaderContext(true));
      }
      
      protected function onComplete(e:Event) : void
      {
         this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.mLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.mBitmapWidth = this.loader.width;
         this.mBitmapHeight = this.loader.height;
         if(this.isVisible)
         {
            addChild(this.mLoader);
         }
         try
         {
            (this.mLoader.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function get isVisible() : Boolean
      {
         return true;
      }
      
      protected function onIOError(e:IOErrorEvent) : void
      {
         this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.mLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         --this.mTriesRemaining;
         if(this.mTriesRemaining > 0)
         {
            this.load();
         }
      }
   }
}
