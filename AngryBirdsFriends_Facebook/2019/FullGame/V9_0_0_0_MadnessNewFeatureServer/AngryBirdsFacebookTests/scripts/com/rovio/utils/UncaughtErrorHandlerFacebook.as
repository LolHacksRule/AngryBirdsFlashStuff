package com.rovio.utils
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.popups.ErrorPopup;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.ui.popup.IPopup;
   import flash.events.IOErrorEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import starling.core.Starling;
   
   public class UncaughtErrorHandlerFacebook extends UncaughtErrorHandler
   {
       
      
      protected var mLevelManager:LevelManager;
      
      protected var mUserId:String;
      
      public function UncaughtErrorHandlerFacebook(serverRoot:String, uncaughtErrors:UncaughtErrorEvents, clientVersion:String, userId:String)
      {
         this.mUserId = userId;
         super(serverRoot,uncaughtErrors,clientVersion);
      }
      
      public function setLevelManager(levelManager:LevelManager) : void
      {
         this.mLevelManager = levelManager;
      }
      
      override protected function onError(event:UncaughtErrorEvent) : void
      {
         var errorID:int = 0;
         var errorMsg:String = null;
         var toStringInfo:String = null;
         var popup:IPopup = null;
         var stackTrace:String = null;
         super.onError(event);
         if(AngryBirdsBase.singleton && AngryBirdsBase.singleton.popupManager)
         {
            errorID = getErrorId(event.error);
            errorMsg = "Uncaught error.\n";
            if(errorID != 0)
            {
               errorMsg += "Error ID: " + errorID + "\n";
            }
            else
            {
               errorMsg += "Event errorID: " + event.errorID + "\n";
            }
            toStringInfo = event.toString();
            if(toStringInfo && toStringInfo != "")
            {
               errorMsg += "Info: " + toStringInfo + "\n";
            }
            else
            {
               stackTrace = getStackTrace(event.error);
               if(stackTrace)
               {
                  errorMsg += "Stacktrace: " + stackTrace;
               }
            }
            popup = new ErrorPopup(ErrorPopup.ERROR_GENERAL,errorMsg);
            AngryBirdsBase.singleton.popupManager.openPopup(popup);
         }
      }
      
      private function onIOError(e:IOErrorEvent) : void
      {
      }
      
      override protected function reportError(event:UncaughtErrorEvent) : void
      {
         super.reportError(event);
         var state:String = "";
         if(AngryBirdsEngine.smApp != null)
         {
            state = AngryBirdsEngine.smApp.getCurrentState();
         }
         if(state == null || state.length == 0)
         {
            state = "NoState";
         }
         var currentLevel:String = "";
         if(this.mLevelManager && this.mLevelManager.currentLevel != null)
         {
            currentLevel = this.mLevelManager.currentLevel;
         }
         var renderingMode:String = "GPU";
         if(Starling.current == null)
         {
            renderingMode = "NULL";
         }
         else if(Starling.isSoftware)
         {
            renderingMode = "CPU";
         }
         var log:String = getErrorId(event.error).toString() + "::" + state + "::" + this.getMessage(event.error) + "::" + renderingMode + "::" + currentLevel + "::" + mClientVersion;
         this.trackError(log,getTime(),getStackTrace(event.error));
      }
      
      override protected function reportErrorToOwnServers(errorID:int, stackTrace:String) : void
      {
         var errors:Array = null;
         var serverError:String = null;
         var clientError:String = null;
         var urlLoader:URLLoader = new URLLoader();
         var request:URLRequest = URLRequestFactory.getNonCachingURLRequest(this.getErrorReportPath(errorID));
         request.method = URLRequestMethod.POST;
         var errorObject:Object = {
            "clientType":"WEB_FLASH",
            "facebookUserId":this.mUserId,
            "errorCode":errorID
         };
         if(!stackTrace)
         {
            stackTrace = "";
         }
         else
         {
            errors = stackTrace.split("#CLIENT#");
            serverError = "";
            clientError = "";
            if(errors.length > 1)
            {
               serverError = errors[0];
               clientError = errors[1];
            }
            else
            {
               clientError = errors[0];
            }
            errorObject.s = serverError;
            errorObject.c = clientError;
         }
         var jsonErrors:String = JSON.stringify(errorObject);
         request.contentType = "application/json";
         request.data = jsonErrors;
         urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         urlLoader.load(request);
      }
      
      protected function getMessage(error:*) : String
      {
         var message:String = "-";
         if(error is Error)
         {
            message = Error(error).message;
         }
         return message;
      }
      
      override protected function trackErrorID(errorID:int, time:int, stackTrace:String = null) : void
      {
         FacebookGoogleAnalyticsTracker.trackClientError(errorID,time,this.mUserId,stackTrace);
      }
      
      protected function trackError(log:String, time:int, stackTrace:String) : void
      {
         var traceLog:String = null;
         if(!FacebookGoogleAnalyticsTracker.TRACK_ERRORS)
         {
            return;
         }
         if(stackTrace)
         {
            traceLog = log + "::" + stackTrace;
            FacebookGoogleAnalyticsTracker.trackFlashEvent(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH_TRACE,traceLog,time);
         }
         else
         {
            FacebookGoogleAnalyticsTracker.trackFlashEvent(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH_LOG,log,time);
         }
      }
      
      override protected function getErrorReportPath(errorID:int) : String
      {
         return mServerRoot + "/clienterror";
      }
   }
}
