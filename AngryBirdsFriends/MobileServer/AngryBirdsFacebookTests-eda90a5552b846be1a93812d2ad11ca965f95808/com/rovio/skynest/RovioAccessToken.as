package com.rovio.skynest
{
   import com.rovio.adobe.crypto.HMAC;
   import com.rovio.adobe.crypto.SHA256;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.factory.Base64;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import mx.utils.Base64Encoder;
   
   public class RovioAccessToken extends EventDispatcher
   {
      
      public static const ENV_CLOUD:String = "cloud";
      
      public static const ENV_MIST:String = "mist";
      
      public static const ENV_SMOKE:String = "smoke";
      
      private static const USE_REST_API_LOGIN:Boolean = false;
      
      private static const LOGIN_SERVICE_WEBLOGIN_URL:String = "/identity/2.0/facebook/weblogin";
      
      private static const LOGIN_SERVICE_REST_API_URL:String = "/session/2/apps/";
      
      private static const REQUEST_CONTENT_TYPE:String = "application/x-www-form-urlencoded";
       
      
      protected var mClientID:String;
      
      protected var mPersistentGuid:String;
      
      protected var mUserAgent:String;
      
      protected var mEnvironment:String;
      
      private var mLoader:URLLoader;
      
      private var mAccessToken:String;
      
      private var mExpiresIn:Number;
      
      private var mRefreshToken:String;
      
      private var mScope:String;
      
      public function RovioAccessToken(clientID:String, persistentGuid:String, environment:String = "cloud", userAgent:String = null)
      {
         super();
         this.mClientID = clientID;
         this.mPersistentGuid = persistentGuid;
         this.mUserAgent = userAgent || this.getUserAgent();
         this.mEnvironment = environment;
      }
      
      public function get accessToken() : String
      {
         return this.mAccessToken;
      }
      
      public function get expiresIn() : Number
      {
         return this.mExpiresIn;
      }
      
      public function get refreshToken() : String
      {
         return this.mRefreshToken;
      }
      
      public function get scope() : String
      {
         return this.mScope;
      }
      
      public function get isLoading() : Boolean
      {
         return this.mLoader != null;
      }
      
      protected function getRequestData() : URLVariables
      {
         var requestData:URLVariables = new URLVariables();
         requestData.clientId = this.mClientID;
         requestData.persistentGuid = this.mPersistentGuid;
         requestData.userAgent = this.mUserAgent;
         requestData.distributionChannel = "facebook";
         return requestData;
      }
      
      protected function createJSONRequestData() : Object
      {
         var object:Object = new Object();
         object.provider = "facebook";
         object.clientId = this.mClientID;
         object.distributionChannel = "facebook";
         return object;
      }
      
      public function requestAccessToken() : void
      {
         if(this.isLoading)
         {
            return;
         }
         var request:URLRequest = this.createRequest();
         this.mLoader = new URLLoader();
         this.mLoader.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
         this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadError);
         this.mLoader.load(request);
      }
      
      protected function createRequest() : URLRequest
      {
         var encoder:Base64Encoder = null;
         var jsonObject:Object = null;
         var body:String = null;
         var hashBytes:ByteArray = null;
         var hash:String = null;
         var i:int = 0;
         var signature:String = null;
         var request:URLRequest = null;
         var dataOBJ:Object = null;
         var webLoginRequest:URLRequest = null;
         if(USE_REST_API_LOGIN)
         {
            encoder = new Base64Encoder();
            jsonObject = this.createJSONRequestData();
            body = Base64.encode(JSON.stringify(jsonObject));
            hashBytes = new ByteArray();
            hash = HMAC.hash(this.getClientSecret(),body,SHA256);
            for(i = 0; i < hash.length; i += 2)
            {
               hashBytes.writeByte(parseInt(hash.charAt(i) + hash.charAt(i + 1),16));
            }
            signature = Base64.encodeByteArray(hashBytes);
            signature = signature.replace(/\+/g,"-").replace(/\//g,"_").replace(/\=+$/,"");
            request = new URLRequest("https://" + this.mEnvironment + ".rovio.com" + LOGIN_SERVICE_REST_API_URL + this.mClientID + "/sessions/external");
            dataOBJ = {
               "body":body,
               "signature":signature
            };
            request.data = JSON.stringify(dataOBJ);
            request.method = URLRequestMethod.POST;
            request.contentType = "application/json";
            return request;
         }
         webLoginRequest = new URLRequest("https://" + this.mEnvironment + ".rovio.com" + LOGIN_SERVICE_WEBLOGIN_URL);
         webLoginRequest.data = this.getRequestData();
         webLoginRequest.method = URLRequestMethod.POST;
         webLoginRequest.contentType = REQUEST_CONTENT_TYPE;
         webLoginRequest.requestHeaders = [new URLRequestHeader("Content-Type",REQUEST_CONTENT_TYPE)];
         return webLoginRequest;
      }
      
      protected function getClientSecret() : String
      {
         return "";
      }
      
      protected function onLoadComplete(e:Event) : void
      {
         var parsedObject:Object = null;
         var userAuth:Object = null;
         try
         {
            parsedObject = JSON.parse(this.mLoader.data);
            if(USE_REST_API_LOGIN)
            {
               userAuth = parsedObject.userAuth;
            }
            else
            {
               userAuth = parsedObject;
            }
            this.mAccessToken = userAuth.accessToken;
            this.mRefreshToken = userAuth.refreshToken;
            this.mExpiresIn = userAuth.expiresIn;
            this.mScope = userAuth.scope;
         }
         catch(e:Error)
         {
         }
         this.mLoader = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function onLoadError(e:Event) : void
      {
         this.mLoader = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function getUserAgent() : String
      {
         return ExternalInterfaceHandler.performCall("window.navigator.userAgent.toString") || "no user agent";
      }
   }
}
