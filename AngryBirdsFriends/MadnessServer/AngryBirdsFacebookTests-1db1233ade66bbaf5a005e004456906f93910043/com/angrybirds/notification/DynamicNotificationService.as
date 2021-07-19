package com.angrybirds.notification
{
   import com.angrybirds.popups.ErrorPopup;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.utils.ErrorCode;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class DynamicNotificationService extends EventDispatcher implements IDynamicNotificationService
   {
       
      
      private var mUrlLoader:RetryingURLLoader;
      
      private var mNotifications:Vector.<DynamicNotification>;
      
      public function DynamicNotificationService()
      {
         super();
         this.mNotifications = new Vector.<DynamicNotification>();
      }
      
      public function loadActiveNotifications() : void
      {
         if(this.mUrlLoader)
         {
            return;
         }
         this.mUrlLoader = new ABFLoader();
         this.mUrlLoader.addEventListener(Event.COMPLETE,this.onNotificationsLoaded);
         this.mUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/getdynamicnotifications");
         this.mUrlLoader.load(urlReq);
      }
      
      protected function onNotificationsLoaded(event:Event) : void
      {
         var rawJSONData:Object = null;
         var obj:Object = null;
         var dynamicNotification:DynamicNotification = null;
         this.mNotifications.length = 0;
         try
         {
            if(this.mUrlLoader.data.hasOwnProperty("st"))
            {
               delete this.mUrlLoader.data["st"];
            }
            rawJSONData = this.mUrlLoader.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Error parsing JSON: " + mUrlLoader.data + "\nError code: " + ErrorCode.JSON_PARSE_ERROR));
         }
         if(rawJSONData.errorCode)
         {
            return;
         }
         for each(obj in this.mUrlLoader.data)
         {
            dynamicNotification = new DynamicNotification(obj.sid);
            dynamicNotification.insertData(obj);
            this.mNotifications.push(dynamicNotification);
         }
         this.mUrlLoader = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function updateNotification(arrayOfSeenNotifications:Array) : void
      {
         if(this.mUrlLoader)
         {
            return;
         }
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/markseendynamicnotifications");
         this.mUrlLoader = new ABFLoader();
         this.mUrlLoader.addEventListener(Event.COMPLETE,this.onNotificationsUpdated);
         this.mUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var postData:Array = arrayOfSeenNotifications;
         urlReq.data = JSON.stringify(postData);
         urlReq.method = URLRequestMethod.POST;
         urlReq.contentType = "application/json";
         this.mUrlLoader.load(urlReq);
      }
      
      protected function onNotificationsUpdated(event:Event) : void
      {
         this.mUrlLoader = null;
      }
      
      public function get notifications() : Vector.<DynamicNotification>
      {
         return this.mNotifications;
      }
   }
}
