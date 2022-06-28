package
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §,!O§.§3![§;
   import §0P§.Starling;
   import §7p§.§+!N§;
   import §7p§.GoogleAnalyticsTracker;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   [SWF(frameRate="60",backgroundColor="#000000",width="940",height="570")]
   public class AngryBirdsUltraBookCanvas extends §3![§
   {
      
      public static const AB_FACEBOOK_VERSION:String = "0.0.0.13 r97183)";
       
      
      private var §;!$§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
         }
      }
      
      private function init() : void
      {
         GoogleAnalyticsTracker.§6=§(stage,"UA-23082676-25");
         §+!N§.§@d§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§>>§);
         }
         else
         {
            this.loadingComplete();
         }
      }
      
      private function §?!0§(event:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
         this.init();
      }
      
      private function §>>§(event:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§>>§);
         this.loadingComplete();
      }
      
      private function loadingComplete() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§0u§);
         new AngryBirdsUltraBook(this);
      }
      
      private function §0u§(event:UncaughtErrorEvent) : void
      {
         var errorID:int = 0;
         var stackTrace:String = null;
         var state:String = null;
         var message:String = null;
         var time:int = 0;
         var currentLevel:String = null;
         var renderingMode:String = null;
         var log:String = null;
         var error:Error = null;
         var errorEvent:ErrorEvent = null;
         var traceLog:String = null;
         if(!this.§;!$§)
         {
            this.§;!$§ = true;
            errorID = 0;
            stackTrace = null;
            state = "";
            message = "-";
            time = Math.round(getTimer() / 1000);
            if(event.error is Error)
            {
               error = event.error as Error;
               errorID = error.errorID;
               message = error.message;
               stackTrace = error.getStackTrace();
            }
            else if(event.error is ErrorEvent)
            {
               errorEvent = event.error as ErrorEvent;
               errorID = errorEvent.errorID;
            }
            §+!N§.§+!X§(errorID,time);
            if(§]!B§.§%h§ != null)
            {
               state = §]!B§.§%h§.§!!e§();
            }
            if(state == null || state.length == 0)
            {
               state = "NoState";
            }
            currentLevel = LevelManager.§var§;
            if(currentLevel == null)
            {
               currentLevel = "";
            }
            renderingMode = "GPU";
            if(Starling.§!!F§ == null)
            {
               renderingMode = "NULL";
            }
            else if(Starling.isSoftware)
            {
               renderingMode = "CPU";
            }
            log = errorID.toString() + "::" + state + "::" + message + "::" + renderingMode + "::" + currentLevel + "::" + AB_FACEBOOK_VERSION;
            §+!N§.§1`§(GoogleAnalyticsTracker.§3!7§,log,time);
            if(stackTrace)
            {
               traceLog = log + "::" + stackTrace;
               §+!N§.§1`§(GoogleAnalyticsTracker.§#-§,traceLog,time);
            }
         }
      }
   }
}
