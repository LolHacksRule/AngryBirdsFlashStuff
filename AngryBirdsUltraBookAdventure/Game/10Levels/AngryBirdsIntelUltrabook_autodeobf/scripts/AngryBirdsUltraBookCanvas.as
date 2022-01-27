package
{
   import §5=§.§9F§;
   import §5=§.GoogleAnalyticsTracker;
   import §7!>§.Starling;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import §`y§.§4!g§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   [SWF(frameRate="60",backgroundColor="#000000",width="940",height="570")]
   public class AngryBirdsUltraBookCanvas extends §4!g§
   {
      
      public static const AB_FACEBOOK_VERSION:String = "1.0.0.4 r97391)";
       
      
      private var §3!`§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§1Z§);
         }
      }
      
      private function init() : void
      {
         GoogleAnalyticsTracker.§?!?§(stage,"UA-23082676-25");
         §9F§.§-!O§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§#v§);
         }
         else
         {
            this.loadingComplete();
         }
      }
      
      private function §1Z§(event:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§1Z§);
         this.init();
      }
      
      private function §#v§(event:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§#v§);
         this.loadingComplete();
      }
      
      private function loadingComplete() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§2!4§);
         new AngryBirdsUltraBook(this);
      }
      
      private function §2!4§(event:UncaughtErrorEvent) : void
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
         if(!this.§3!`§)
         {
            this.§3!`§ = true;
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
            §9F§.§=!T§(errorID,time);
            if(§`S§.§=F§ != null)
            {
               state = §`S§.§=F§.§+'§();
            }
            if(state == null || state.length == 0)
            {
               state = "NoState";
            }
            currentLevel = LevelManager.§1m§;
            if(currentLevel == null)
            {
               currentLevel = "";
            }
            renderingMode = "GPU";
            if(Starling.§7!+§ == null)
            {
               renderingMode = "NULL";
            }
            else if(Starling.isSoftware)
            {
               renderingMode = "CPU";
            }
            log = errorID.toString() + "::" + state + "::" + message + "::" + renderingMode + "::" + currentLevel + "::" + AB_FACEBOOK_VERSION;
            §9F§.§&k§(GoogleAnalyticsTracker.§&b§,log,time);
            if(stackTrace)
            {
               traceLog = log + "::" + stackTrace;
               §9F§.§&k§(GoogleAnalyticsTracker.§;=§,traceLog,time);
            }
         }
      }
   }
}
