package com.angrybirds.rovionews
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   import flash.utils.getTimer;
   
   public class NewsItem extends Sprite
   {
      
      private static const IMPRESSION_REPORT_TIME:int = 2000;
      
      public static const NEWS_ITEM_DOWNSCALE:Number = 0.75;
       
      
      private var mBitmap:Bitmap;
      
      private var mCache:BitmapData;
      
      private var mLink:String;
      
      private var mLinkID:String;
      
      private var mAdID:String;
      
      private var mLoaders:Vector.<URLLoader>;
      
      private var mReportImpressionUrl:String;
      
      private var mReportClickUrl:String;
      
      private var mReportData:Object;
      
      private var mReportImpressionTimer:Number;
      
      private var mImpressionReported:Boolean;
      
      private var mPreviousTime:Number;
      
      public function NewsItem(newsLink:String, linkId:String, adID:String)
      {
         super();
         this.mLink = newsLink;
         this.mLinkID = linkId;
         this.mAdID = adID;
         addEventListener(MouseEvent.CLICK,this.onClick);
         buttonMode = true;
         scaleX = scaleY = NEWS_ITEM_DOWNSCALE;
         x = 47;
         this.mImpressionReported = false;
      }
      
      public function get adID() : String
      {
         return this.mAdID;
      }
      
      public function get linkID() : String
      {
         return this.mLinkID;
      }
      
      public function get link() : String
      {
         return this.mLink;
      }
      
      public function loadImage(url:String) : Loader
      {
         var urlRequest:URLRequest = new URLRequest(url);
         var loaderContext:LoaderContext = new LoaderContext(true);
         var imageLoader:Loader = new Loader();
         imageLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         imageLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         imageLoader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         imageLoader.load(urlRequest,loaderContext);
         return imageLoader;
      }
      
      private function onClick(e:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         var urlReq:URLRequest = new URLRequest(this.mLink);
         navigateToURL(urlReq,"_blank");
         this.trackData(false);
      }
      
      private function onComplete(e:Event) : void
      {
         var bitmapContent:Bitmap = null;
         try
         {
            bitmapContent = (e.currentTarget as LoaderInfo).content as Bitmap;
            this.mCache = bitmapContent.bitmapData.clone();
            this.renderFromBitmapdata(this.mCache);
         }
         catch(e:Error)
         {
            if(AngryBirdsBase.DEBUG_MODE_ENABLED)
            {
               throw e;
            }
         }
      }
      
      public function getFromCache() : BitmapData
      {
         if(this.mCache)
         {
            this.renderFromBitmapdata(this.mCache);
         }
         return this.mCache;
      }
      
      public function renderFromBitmapdata(bitmapData:BitmapData) : void
      {
         var bitmap:Bitmap = new Bitmap(bitmapData,"auto",true);
         bitmap.width = RovioNewsManager.HOLDER_WIDTH;
         bitmap.height = RovioNewsManager.HOLDER_HEIGHT;
         addChild(bitmap);
      }
      
      public function setTrackingData(impressionTrackUrl:String, clickTrackUrl:String, did:String, accessToken:String) : void
      {
         this.mReportImpressionUrl = impressionTrackUrl + "?accessToken=" + accessToken;
         this.mReportClickUrl = clickTrackUrl + "?accessToken=" + accessToken;
         this.mReportData = new Object();
         this.mReportData["did"] = did;
         this.mReportData["accessToken"] = accessToken;
         this.mReportData["adId"] = this.mAdID;
         this.mReportData["linkId"] = this.mLinkID;
      }
      
      private function trackData(isImpression:Boolean) : void
      {
         var request:URLRequest = new URLRequest(!!isImpression ? this.mReportImpressionUrl : this.mReportClickUrl);
         request.method = URLRequestMethod.POST;
         request.requestHeaders = [new URLRequestHeader("Content-Type","application/x-www-form-urlencoded")];
         var urlData:URLVariables = new URLVariables();
         urlData["did"] = this.mReportData.did;
         urlData["accessToken"] = this.mReportData.accessToken;
         urlData["adId"] = this.mReportData.adId;
         urlData["linkId"] = this.mReportData.linkId;
         request.data = urlData;
         if(!this.mLoaders)
         {
            this.mLoaders = new Vector.<URLLoader>();
         }
         var loader:URLLoader = new URLLoader();
         loader.addEventListener(Event.COMPLETE,this.onReportSend);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this.onReportSend);
         loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onReportSend);
         loader.load(request);
         this.mLoaders.push(loader);
         this.mImpressionReported = true;
      }
      
      private function onReportSend(e:Event) : void
      {
         for(var i:int = 0; i < this.mLoaders.length; i++)
         {
            if(this.mLoaders[i] == e.target)
            {
               if(e is ErrorEvent)
               {
               }
               this.mLoaders[i].removeEventListener(Event.COMPLETE,this.onReportSend);
               this.mLoaders[i].removeEventListener(IOErrorEvent.IO_ERROR,this.onReportSend);
               this.mLoaders[i].removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onReportSend);
               this.mLoaders[i] = null;
               this.mLoaders.splice(i,1);
               break;
            }
         }
      }
      
      public function enableImpressionCounter(value:Boolean) : void
      {
         if(!this.mImpressionReported)
         {
            this.mReportImpressionTimer = 0;
            this.mPreviousTime = getTimer();
            if(value == true)
            {
               addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            else
            {
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
         }
      }
      
      private function onEnterFrame(e:Event) : void
      {
         if(!this.mImpressionReported)
         {
            this.mReportImpressionTimer += getTimer() - this.mPreviousTime;
            if(this.mReportImpressionTimer >= IMPRESSION_REPORT_TIME)
            {
               this.trackData(true);
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            this.mPreviousTime = getTimer();
         }
      }
      
      public function resetImpressionReporting() : void
      {
         this.mImpressionReported = false;
      }
      
      protected function onIOError(event:IOErrorEvent) : void
      {
      }
      
      protected function onSecurityError(event:SecurityErrorEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            throw new SecurityError(event.text,event.errorID);
         }
      }
   }
}
