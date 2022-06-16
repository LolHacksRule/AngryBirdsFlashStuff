package com.angrybirds.rovionews
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.rovio.assets.AssetCache;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.system.Security;
   
   public class RovioNewsManager
   {
      
      public static const SERVER_URL:String = "https://cloud.rovio.com";
      
      public static const ADS_SERVICE_URL:String = "/ads/1.0/wall";
      
      public static const TRACK_IMPRESSION_URL:String = "/ads/1.0/track/image";
      
      public static const TRACK_CLICK_URL:String = "/ads/1.0/track/link";
      
      public static const HOLDER_WIDTH:int = 600;
      
      public static const HOLDER_HEIGHT:int = 338;
      
      private static const SCROLL_DISTANCE:int = 654;
      
      private static var sServerFailed:Boolean = false;
      
      private static const ACCESS_TOKEN_LOADING_TRIES:int = 10;
       
      
      private var CONTENT_TYPE_APPLICATION_WWW_FORM:String = "application/x-www-form-urlencoded";
      
      private var mUIView:UIContainerRovio;
      
      private var mCurrentPage:int;
      
      private var mScrollIndex:int;
      
      private var mTween:ISimpleTween;
      
      private var mNewsImageManager:NewsImageLoaderManager;
      
      private var mURLLoader:URLLoader;
      
      private var mPlaceholder:MovieClip;
      
      private var mAdsObject:Object;
      
      private var mNewsItemsActivated:Boolean;
      
      private var mAccessTokenLoaderCounter:int;
      
      public function RovioNewsManager(uiView:UIContainerRovio)
      {
         super();
         this.mUIView = uiView;
         this.mNewsImageManager = new NewsImageLoaderManager();
         Security.loadPolicyFile("http://cloud.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://news-assets.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
         this.mAccessTokenLoaderCounter = 0;
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      public function loadJSON(e:Event = null) : void
      {
         if(sServerFailed)
         {
            this.showPlaceholderAd();
            return;
         }
         var accessToken:String = FacebookAnalyticsCollector.getInstance().getAccessToken();
         if(accessToken)
         {
            this.requestNews(accessToken);
         }
         else
         {
            this.showPlaceholderAd();
         }
      }
      
      private function requestNews(accessToken:String) : void
      {
         var parameterName:* = null;
         var urlRequest:URLRequest = new URLRequest(SERVER_URL + ADS_SERVICE_URL);
         var postData:Object = new Object();
         postData.did = userProgress.userID;
         postData.ctx = "PauseMenuPromo";
         postData.accessToken = accessToken;
         postData.sw = HOLDER_WIDTH;
         postData.sh = HOLDER_HEIGHT;
         urlRequest.contentType = this.CONTENT_TYPE_APPLICATION_WWW_FORM;
         var requestData:URLVariables = new URLVariables();
         for(parameterName in postData)
         {
            requestData[parameterName] = postData[parameterName];
         }
         urlRequest.data = requestData;
         urlRequest.method = URLRequestMethod.GET;
         this.mURLLoader = new URLLoader();
         this.mURLLoader.addEventListener(Event.COMPLETE,this.onComplete);
         this.mURLLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.mURLLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         this.mURLLoader.load(urlRequest);
      }
      
      private function onIOError(e:IOErrorEvent) : void
      {
         this.showPlaceholderAd();
      }
      
      private function showPlaceholderAd() : void
      {
         this.mUIView.getItemByName("AngryBirdLoader").setVisibility(false);
         var placeHolderClass:Class = AssetCache.getAssetFromCache("PlaceholderAd");
         this.mPlaceholder = new placeHolderClass();
         var newsItemHolder:UIContainerRovio = this.mUIView.getItemByName("News_Item_Holder") as UIContainerRovio;
         var newsHolder:MovieClip = newsItemHolder.mClip.NewsHolder;
         this.mPlaceholder.buttonMode = true;
         this.mPlaceholder.addEventListener(MouseEvent.CLICK,this.onPlaceHolderClick);
         while(newsHolder.numChildren > 0)
         {
            newsHolder.removeChildAt(0);
         }
         newsHolder.addChild(this.mPlaceholder);
         sServerFailed = true;
      }
      
      private function onPlaceHolderClick(e:MouseEvent) : void
      {
         var popup:IPopup = new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function onSecurityError(event:SecurityErrorEvent) : void
      {
         this.showPlaceholderAd();
      }
      
      private function onComplete(e:Event) : void
      {
         this.mAdsObject = JSON.parse(e.currentTarget.data);
         this.renderNews();
      }
      
      public function reset() : void
      {
         var i:int = 0;
         if(this.mTween)
         {
            this.mTween.gotoEndAndStop();
         }
         var newsItemHolder:UIContainerRovio = this.mUIView.getItemByName("News_Item_Holder") as UIContainerRovio;
         var newsHolder:MovieClip = newsItemHolder.mClip.NewsHolder;
         newsHolder.y = 0;
         this.mScrollIndex = 0;
         if(this.mAdsObject)
         {
            for(i = 0; i < this.mAdsObject.length; i++)
            {
               (this.mAdsObject[i].item as NewsItem).resetImpressionReporting();
            }
         }
         this.scroll(0);
      }
      
      public function uiInteractionHandler(eventName:String) : void
      {
         var rovioNewsContainer:UIComponentRovio = null;
         var isVisible:* = false;
         var showNewsButton:UIComponentInteractiveRovio = null;
         switch(eventName)
         {
            case "SHOW_NEWS":
               rovioNewsContainer = this.mUIView.getItemByName("RovioNewsContainer");
               isVisible = !rovioNewsContainer.visible;
               rovioNewsContainer.setVisibility(isVisible);
               this.mUIView.getItemByName("RovioNewsLogo").setVisibility(isVisible);
               showNewsButton = UIComponentInteractiveRovio(this.mUIView.getItemByName("Button_ShowNews"));
               if(rovioNewsContainer.visible)
               {
                  showNewsButton.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
               }
               else
               {
                  showNewsButton.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
                  this.mUIView.getItemByName("NewsArrowUp").setVisibility(false);
                  this.mUIView.getItemByName("NewsArrowDown").setVisibility(false);
               }
               break;
            case "NEWS_UP":
               --this.mScrollIndex;
               this.scroll(SCROLL_DISTANCE);
               break;
            case "NEWS_DOWN":
               ++this.mScrollIndex;
               this.scroll(-SCROLL_DISTANCE);
         }
      }
      
      private function scroll(pixelsToScroll:int) : void
      {
         var showNewsButton:UIComponentInteractiveRovio = UIComponentInteractiveRovio(this.mUIView.getItemByName("Button_ShowNews"));
         if(showNewsButton.mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE)
         {
            this.mUIView.getItemByName("NewsArrowUp").setVisibility(false);
            this.mUIView.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.mAdsObject && this.mAdsObject.length > 2)
         {
            if(this.mScrollIndex <= 0)
            {
               this.mUIView.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.mUIView.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.mScrollIndex + 1) * 2 >= this.mAdsObject.length)
            {
               this.mUIView.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.mUIView.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.mUIView.getItemByName("NewsArrowUp").setVisibility(false);
            this.mUIView.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var newsItemHolder:UIContainerRovio = this.mUIView.getItemByName("News_Item_Holder") as UIContainerRovio;
         var newsHolder:MovieClip = newsItemHolder.mClip.NewsHolder;
         if(Math.abs(pixelsToScroll) > 0)
         {
            if(this.mTween)
            {
               this.mTween.gotoEndAndStop();
            }
            this.mTween = TweenManager.instance.createTween(newsHolder,{"y":newsHolder.y + pixelsToScroll},null,0.33,TweenManager.EASING_SINE_OUT);
            this.mTween.play();
         }
         this.updateNewsItems();
      }
      
      private function renderNews() : void
      {
         var newsItemHolder:UIContainerRovio = null;
         var newsHolder:MovieClip = null;
         var i:int = 0;
         var newsItem:NewsItem = null;
         this.mScrollIndex = 0;
         if(this.mAdsObject)
         {
            newsItemHolder = this.mUIView.getItemByName("News_Item_Holder") as UIContainerRovio;
            newsHolder = newsItemHolder.mClip.NewsHolder;
            while(newsHolder.numChildren > 0)
            {
               newsHolder.removeChildAt(0);
            }
            if(this.mAdsObject.length > 0)
            {
               for(i = 0; i < this.mAdsObject.length; i++)
               {
                  newsItem = this.mNewsImageManager.getNews(this.mAdsObject[i].image,this.mAdsObject[i].link,this.mAdsObject[i].linkId,this.mAdsObject[i].adId);
                  newsItem.setTrackingData(SERVER_URL + TRACK_IMPRESSION_URL,SERVER_URL + TRACK_CLICK_URL,userProgress.userID,FacebookAnalyticsCollector.getInstance().getAccessToken());
                  newsHolder.addChild(newsItem);
                  newsItem.y = 89 + HOLDER_HEIGHT * 1 * i;
                  this.mAdsObject[i].item = newsItem;
               }
            }
            else
            {
               this.showPlaceholderAd();
            }
         }
         this.mUIView.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
      
      public function dispose() : void
      {
         if(this.mURLLoader)
         {
            this.mURLLoader.removeEventListener(Event.COMPLETE,this.onComplete);
            this.mURLLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            this.mURLLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
            this.mURLLoader = null;
         }
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
         if(this.mNewsImageManager)
         {
            this.mNewsImageManager.dispose();
            this.mNewsImageManager = null;
         }
         if(this.mPlaceholder)
         {
            this.mPlaceholder.removeEventListener(MouseEvent.CLICK,this.onPlaceHolderClick);
            this.mPlaceholder.removeChildren();
            this.mPlaceholder = null;
         }
         this.mAdsObject = null;
      }
      
      public function activateNewsItems(value:Boolean) : void
      {
         this.mNewsItemsActivated = value;
         this.updateNewsItems();
      }
      
      private function updateNewsItems() : void
      {
         if(!this.mAdsObject)
         {
            return;
         }
         for(var i:int = 0; i < this.mAdsObject.length; i++)
         {
            (this.mAdsObject[i].item as NewsItem).enableImpressionCounter(this.mNewsItemsActivated && i >= this.mScrollIndex * 2 && i <= this.mScrollIndex * 2 + 1);
         }
      }
   }
}
