package com.angrybirds.shoppopup.serveractions
{
   import com.rovio.factory.Log;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.SessionRetryingURLLoader;
   import com.rovio.server.URLRequestFactory;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class ClientStorage extends EventDispatcher
   {
      
      public static const SEEN_ITEMS_STORAGE_NAME:String = "SeenItems";
      
      public static const CURRENT_SLINGSHOT_STORAGE_NAME:String = "CurrentSlingshot";
      
      public static const SOUND_SETTING_STORAGE_NAME:String = "SoundSetting";
      
      public static const TAB_SELECTION_STORAGE_NAME:String = "TabSelection";
      
      public static const PERSONALIZED_OFFER_STORAGE_NAME:String = "PersonalizedOffer";
      
      public static const FB_PIXEL_REPORT_STORAGE_NAME:String = "FBPixelReport";
      
      private static const CLEANED_DUPLICATED:String = "clnDupSnItms";
       
      
      private var mLoader:ABFLoader;
      
      private var mIsLoading:Boolean = false;
      
      private var mClientStorageData:Object;
      
      public function ClientStorage()
      {
         super();
         this.mClientStorageData = new Object();
      }
      
      public function get isLoading() : Boolean
      {
         return this.mIsLoading;
      }
      
      public function loadStorage() : void
      {
         if(this.mIsLoading)
         {
            return;
         }
         this.mIsLoading = true;
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/clientStorage/retrieve?st=" + SessionRetryingURLLoader.sessionToken);
         urlReq.method = URLRequestMethod.GET;
         urlReq.contentType = "application/json";
         this.mLoader = new ABFLoader();
         this.mLoader.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onLoadingError);
         this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadingError);
         this.mLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onLoadingError);
         this.mLoader.load(urlReq);
      }
      
      private function onLoadComplete(e:Event) : void
      {
         this.mIsLoading = false;
         if(e.target.data is String)
         {
            this.mClientStorageData = JSON.parse(e.target.data);
            this.cleanUpSeenItemsDuplicates();
         }
         this.mLoader.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function cleanUpSeenItemsDuplicates() : void
      {
         var i:int = 0;
         var j:int = 0;
         var cleanedUp:Boolean = this.mClientStorageData[CLEANED_DUPLICATED];
         var arr:Array = this.mClientStorageData[SEEN_ITEMS_STORAGE_NAME];
         if(arr != null && !cleanedUp)
         {
            for(i = 0; i < arr.length - 1; i++)
            {
               for(j = i + 1; j < arr.length; j++)
               {
                  if(arr[i] === arr[j])
                  {
                     arr.splice(j,1);
                  }
               }
            }
         }
         this.mClientStorageData[CLEANED_DUPLICATED] = true;
      }
      
      private function onLoadingError(event:ErrorEvent) : void
      {
         this.mIsLoading = false;
         Log.log("[Error!] Can\'t get the client storage data: " + event.type);
         this.mLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoadingError);
         this.mLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadingError);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function storeData(nameOfTheData:String, dataToBeStored:Object, resetThePreviousData:Boolean = false) : void
      {
         var key:* = null;
         var urlReq:URLRequest = null;
         if(this.mIsLoading)
         {
            return;
         }
         if(resetThePreviousData || !this.mClientStorageData[nameOfTheData])
         {
            if(dataToBeStored is Array)
            {
               this.mClientStorageData[nameOfTheData] = new Array();
            }
            else
            {
               this.mClientStorageData[nameOfTheData] = new Object();
            }
         }
         var dataFound:Boolean = resetThePreviousData;
         var addToArray:* = this.mClientStorageData[nameOfTheData] is Array;
         for(key in dataToBeStored)
         {
            if(addToArray)
            {
               this.mClientStorageData[nameOfTheData].push(dataToBeStored[key]);
            }
            else
            {
               this.mClientStorageData[nameOfTheData][key] = dataToBeStored[key];
            }
            dataFound = true;
         }
         if(dataFound)
         {
            urlReq = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/clientStorage/save?st=" + SessionRetryingURLLoader.sessionToken);
            urlReq.contentType = "application/json";
            urlReq.data = JSON.stringify(this.mClientStorageData);
            urlReq.method = URLRequestMethod.POST;
            this.mLoader = new ABFLoader();
            this.mLoader.addEventListener(Event.COMPLETE,this.onStoringComplete);
            this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onStoringError);
            this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onStoringError);
            this.mLoader.load(urlReq);
         }
      }
      
      private function onStoringComplete(e:Event) : void
      {
         this.mIsLoading = false;
         this.mLoader.removeEventListener(Event.COMPLETE,this.onStoringComplete);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      private function onStoringError(event:ErrorEvent) : void
      {
         this.mIsLoading = false;
         Log.log("[Error!] Can\'t save the client storage data: " + event.type);
         this.mLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onStoringError);
         this.mLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onStoringError);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      public function getData(dataName:String) : Object
      {
         if(!this.mClientStorageData[dataName])
         {
            return null;
         }
         return this.mClientStorageData[dataName];
      }
      
      public function hasItemBeenSeen(itemName:String) : Boolean
      {
         var name:String = null;
         var seenItems:Object = this.getData(ClientStorage.SEEN_ITEMS_STORAGE_NAME);
         for each(name in seenItems)
         {
            if(name == itemName)
            {
               return true;
            }
         }
         return false;
      }
   }
}
