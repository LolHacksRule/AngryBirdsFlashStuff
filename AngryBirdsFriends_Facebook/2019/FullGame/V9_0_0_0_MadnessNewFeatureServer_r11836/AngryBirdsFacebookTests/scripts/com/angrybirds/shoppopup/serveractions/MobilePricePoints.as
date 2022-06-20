package com.angrybirds.shoppopup.serveractions
{
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.popups.requests.Country;
   import com.angrybirds.shoppopup.MobilePricePointItem;
   import com.angrybirds.shoppopup.events.MobilePricePointEvent;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class MobilePricePoints extends EventDispatcher
   {
       
      
      private var mMobilePricePointLoader:RetryingURLLoader;
      
      private var mMobilePricePointItems:Vector.<MobilePricePointItem>;
      
      private var mRawJSONData:Object;
      
      private var mCountries:Array;
      
      public function MobilePricePoints()
      {
         super();
      }
      
      public function get mobilePricePointItems() : Vector.<MobilePricePointItem>
      {
         return this.mMobilePricePointItems;
      }
      
      public function set mobilePricePointItems(value:Vector.<MobilePricePointItem>) : void
      {
         this.mMobilePricePointItems = value;
      }
      
      public function mobilePricePointsAsArray() : Array
      {
         return this.toArray(this.mobilePricePointItems);
      }
      
      public function countries() : Array
      {
         return this.mCountries;
      }
      
      private function toArray(iterable:*) : Array
      {
         var elem:Object = null;
         var ret:Array = [];
         for each(elem in iterable)
         {
            ret.push(elem);
         }
         return ret;
      }
      
      public function loadMobilePricePointItems() : void
      {
         if(this.mMobilePricePointLoader)
         {
            return;
         }
         this.mMobilePricePointLoader = new ABFLoader();
         this.mMobilePricePointLoader.addEventListener(Event.COMPLETE,this.onMobilePricePointsLoaded);
         this.mMobilePricePointLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onMobileListingLoadError);
         this.mMobilePricePointLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onMobileListingLoadError);
         this.mMobilePricePointLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onMobileListingLoadError);
         this.mMobilePricePointLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mMobilePricePointLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/mobilelisting?" + TournamentModel.instance.getCurrentTournamentIdParameter()));
      }
      
      private function onMobilePricePointsLoaded(e:Event) : void
      {
         this.mMobilePricePointLoader.removeEventListener(Event.COMPLETE,this.onMobilePricePointsLoaded);
         this.mMobilePricePointLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onMobileListingLoadError);
         this.mMobilePricePointLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onMobileListingLoadError);
         this.mMobilePricePointLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onMobileListingLoadError);
         this.parseJSONDataToMobileItems(this.mMobilePricePointLoader.data);
         var mobilePricePointEvent:MobilePricePointEvent = new MobilePricePointEvent(Event.COMPLETE);
         if(this.mMobilePricePointLoader.data.mc)
         {
            mobilePricePointEvent.mobileCountry = new Country(this.mMobilePricePointLoader.data.mc);
         }
         if(this.mMobilePricePointLoader.data.pmc)
         {
            mobilePricePointEvent.predictedMobileCountry = new Country(this.mMobilePricePointLoader.data.pmc);
         }
         dispatchEvent(mobilePricePointEvent);
         this.mMobilePricePointLoader = null;
      }
      
      private function parseJSONDataToMobileItems(jsonObject:Object) : void
      {
         var key:* = null;
         var pricePoint:MobilePricePointItem = null;
         var pricePointItem:MobilePricePointItem = null;
         this.mMobilePricePointItems = new Vector.<MobilePricePointItem>();
         for(key in jsonObject.prices)
         {
            pricePointItem = new MobilePricePointItem(key,jsonObject.prices[key],jsonObject.currency);
            this.mMobilePricePointItems.push(pricePointItem);
         }
         this.mCountries = [];
         for each(pricePoint in this.mMobilePricePointItems)
         {
            this.mCountries.push(new Country(pricePoint.countryCode));
         }
         this.mCountries.sortOn("name",Array.CASEINSENSITIVE);
      }
      
      private function onMobileListingLoadError(e:Event) : void
      {
         this.mMobilePricePointLoader.removeEventListener(Event.COMPLETE,this.onMobilePricePointsLoaded);
         this.mMobilePricePointLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onMobileListingLoadError);
         this.mMobilePricePointLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onMobileListingLoadError);
         this.mMobilePricePointLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onMobileListingLoadError);
         if(e.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED));
         }
         else
         {
            this.showWarningPopup();
         }
         this.mMobilePricePointLoader = null;
      }
      
      protected function showWarningPopup() : void
      {
         var popup:WarningPopup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
   }
}
