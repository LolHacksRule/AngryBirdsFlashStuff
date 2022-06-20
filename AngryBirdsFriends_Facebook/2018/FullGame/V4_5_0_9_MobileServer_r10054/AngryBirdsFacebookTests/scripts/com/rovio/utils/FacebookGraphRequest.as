package com.rovio.utils
{
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.server.RetryingURLLoader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class FacebookGraphRequest extends EventDispatcher
   {
      
      protected static const GRAPH_URL:String = "https://graph.facebook.com/";
      
      protected static var sAccessToken:String;
       
      
      private var mLoader:RetryingURLLoader;
      
      protected var mCommand:String;
      
      private var mParameters:Object;
      
      private var mResults:Object;
      
      private var mAccessTokenRenewalAttempted:Boolean = false;
      
      public function FacebookGraphRequest(command:String, parameters:Object = null)
      {
         super();
         if(!sAccessToken)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.mCommand = command;
         this.mParameters = parameters;
      }
      
      public static function set accessToken(value:String) : void
      {
         sAccessToken = value;
      }
      
      public function load() : void
      {
         var parameterName:* = null;
         if(this.mLoader)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.mResults = null;
         var request:URLRequest = new URLRequest(this.getGraphURL());
         request.method = URLRequestMethod.GET;
         var requestData:URLVariables = new URLVariables();
         requestData.access_token = sAccessToken;
         if(this.mParameters)
         {
            for(parameterName in this.mParameters)
            {
               requestData[parameterName] = this.mParameters[parameterName];
            }
         }
         request.data = requestData;
         this.mLoader = new RetryingURLLoader();
         this.mLoader.addEventListener(Event.COMPLETE,this.onDataLoaded);
         this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         this.mLoader.load(request);
      }
      
      private function onIoError(e:IOErrorEvent) : void
      {
         if(!this.mAccessTokenRenewalAttempted)
         {
            this.mAccessTokenRenewalAttempted = true;
            ExternalInterfaceHandler.addCallback("accessTokenRenewed",this.onAccessTokenRenewed);
            ExternalInterfaceHandler.performCall("renewAccessToken");
         }
         else
         {
            ExternalInterfaceHandler.performCall("requestAuthorization");
         }
      }
      
      protected function onDataLoaded(e:Event) : void
      {
         var response:Object = null;
         try
         {
            response = JSON.parse(this.mLoader.data);
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + getGraphURL() + ":\n" + mLoader.data);
         }
         this.mAccessTokenRenewalAttempted = false;
         this.mResults = response;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get results() : Object
      {
         return this.mResults;
      }
      
      protected function onAccessTokenRenewed(newAccessToken:String) : void
      {
         accessToken = newAccessToken;
         ExternalInterfaceHandler.removeCallback("accessTokenRenewed",this.onAccessTokenRenewed);
         this.mLoader = null;
         this.load();
      }
      
      public function cancel() : void
      {
         if(this.mLoader)
         {
            try
            {
               this.mLoader.close();
            }
            catch(e:Error)
            {
            }
            this.mLoader = null;
         }
         this.mAccessTokenRenewalAttempted = false;
      }
      
      protected function getGraphURL() : String
      {
         return GRAPH_URL + this.mCommand;
      }
   }
}
