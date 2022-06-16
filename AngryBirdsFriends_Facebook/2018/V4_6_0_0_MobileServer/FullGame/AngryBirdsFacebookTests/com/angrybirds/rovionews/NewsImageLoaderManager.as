package com.angrybirds.rovionews
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.Security;
   
   public class NewsImageLoaderManager
   {
       
      
      private var mActiveRequests:int = 0;
      
      private var mRequestQueue:Array;
      
      private var mNewsItems:Array;
      
      private var mCache:Array;
      
      private var mLoader:Loader;
      
      public function NewsImageLoaderManager()
      {
         this.mRequestQueue = [];
         this.mNewsItems = [];
         super();
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
      }
      
      private function processRequests() : void
      {
         if(this.mActiveRequests == 0 && this.mRequestQueue.length > 0)
         {
            this.loadNext();
         }
      }
      
      private function loadNext() : void
      {
         ++this.mActiveRequests;
         var requestURL:String = this.mRequestQueue[0].url;
         var requestLink:String = this.mRequestQueue[0].link;
         var requestLinkId:String = this.mRequestQueue[0].linkid;
         var requestAdId:String = this.mRequestQueue[0].adid;
         var newsItem:NewsItem = this.getNewsItem(requestURL,requestLink,requestLinkId,requestAdId);
         this.mLoader = newsItem.loadImage(requestURL);
         this.mLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.mLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.mLoader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      private function onSecurityError(e:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(e:Event) : void
      {
         this.mRequestQueue.shift();
         --this.mActiveRequests;
         this.processRequests();
      }
      
      private function onIOError(e:IOErrorEvent) : void
      {
         this.mRequestQueue.shift();
         --this.mActiveRequests;
         this.processRequests();
      }
      
      public function getNews(url:String, link:String, linkID:String, adID:String) : NewsItem
      {
         var newsItem:NewsItem = this.getNewsItem(url,link,linkID,adID);
         if(newsItem.getFromCache())
         {
            return newsItem;
         }
         this.mRequestQueue.push({
            "url":url,
            "link":link,
            "linkid":linkID,
            "adid":adID
         });
         this.processRequests();
         return newsItem;
      }
      
      private function getNewsItem(url:String, link:String = "", linkId:String = "", adID:String = "") : NewsItem
      {
         var newsItem:NewsItem = this.mNewsItems[url];
         if(newsItem == null)
         {
            newsItem = new NewsItem(link,linkId,adID);
            this.mNewsItems[url] = newsItem;
         }
         return newsItem;
      }
      
      public function dispose() : void
      {
         if(this.mLoader && this.mLoader.contentLoaderInfo)
         {
            this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.mLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            this.mLoader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         }
         this.mRequestQueue = null;
         this.mNewsItems = null;
         this.mCache = null;
      }
   }
}
