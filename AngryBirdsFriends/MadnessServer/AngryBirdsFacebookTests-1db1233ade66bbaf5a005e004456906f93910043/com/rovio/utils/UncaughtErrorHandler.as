package com.rovio.utils
{
   import com.rovio.factory.Base64;
   import com.rovio.server.URLRequestFactory;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class UncaughtErrorHandler extends EventDispatcher
   {
      
      public static const SESSION_STARTED_CODE:int = 54321;
       
      
      protected var mCrashReported:Boolean = false;
      
      protected var mServerRoot:String;
      
      protected var mStartupTime:Number;
      
      protected var mClientVersion:String;
      
      public function UncaughtErrorHandler(serverRoot:String, uncaughtErrors:UncaughtErrorEvents, clientVersion:String)
      {
         super();
         this.mStartupTime = new Date().time;
         this.mClientVersion = clientVersion;
         this.mServerRoot = serverRoot;
         uncaughtErrors.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.onUncaughtError);
      }
      
      protected function onError(event:UncaughtErrorEvent) : void
      {
      }
      
      protected function reportError(event:UncaughtErrorEvent) : void
      {
         var errorID:int = this.getErrorId(event.error);
         var stackTrace:String = this.getStackTrace(event.error);
         var time:int = this.getTime();
         this.reportErrorToOwnServers(errorID,stackTrace);
         this.trackErrorID(errorID,time,stackTrace);
      }
      
      protected function getTime() : int
      {
         return Math.round((new Date().time - this.mStartupTime) / 1000);
      }
      
      protected function getStackTrace(error:*) : String
      {
         var stackTrace:String = null;
         if(error is Error)
         {
            stackTrace = (error as Error).getStackTrace();
         }
         return stackTrace;
      }
      
      protected function getErrorId(error:*) : int
      {
         var errorID:int = 0;
         if(error is Error)
         {
            errorID = (error as Error).errorID;
         }
         else if(error is ErrorEvent)
         {
            errorID = (error as ErrorEvent).errorID;
         }
         return errorID;
      }
      
      protected function trackErrorID(errorID:int, time:int, stackTrace:String = null) : void
      {
      }
      
      public function reportSessionStartToOwnServers() : void
      {
         this.reportErrorToOwnServers(SESSION_STARTED_CODE,null);
      }
      
      protected function reportErrorToOwnServers(errorID:int, stackTrace:String) : void
      {
         var urlLoader:URLLoader = new URLLoader();
         var request:URLRequest = URLRequestFactory.getNonCachingURLRequest(this.getErrorReportPath(errorID));
         request.method = URLRequestMethod.POST;
         if(!stackTrace)
         {
            stackTrace = "";
         }
         request.contentType = "text/plain";
         request.data = Base64.encode(stackTrace);
         urlLoader.load(request);
      }
      
      protected function getErrorReportPath(errorID:int) : String
      {
         return this.mServerRoot + "/clienterror/" + errorID;
      }
      
      private function onUncaughtError(event:UncaughtErrorEvent) : void
      {
         if(this.mCrashReported)
         {
            return;
         }
         this.mCrashReported = true;
         this.reportError(event);
         this.onError(event);
      }
   }
}
