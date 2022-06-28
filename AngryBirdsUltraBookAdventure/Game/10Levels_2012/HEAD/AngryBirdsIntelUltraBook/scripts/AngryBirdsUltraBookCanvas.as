package
{
   import §"!!§.§&G§;
   import §"$§.Starling;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §9!!§.§85§;
   import §9!!§.GoogleAnalyticsTracker;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   [SWF(frameRate="60",backgroundColor="#000000",width="940",height="570")]
   public class AngryBirdsUltraBookCanvas extends §&G§
   {
      
      public static const AB_FACEBOOK_VERSION:String = "1.0.0.2 r97324)";
       
      
      private var §&!$§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§2!a§);
         }
      }
      
      private function init() : void
      {
         GoogleAnalyticsTracker.§'!#§(stage,"UA-23082676-25");
         §85§.§4l§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§'!`§);
         }
         else
         {
            this.loadingComplete();
         }
      }
      
      private function §2!a§(event:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§2!a§);
         this.init();
      }
      
      private function §'!`§(event:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§'!`§);
         this.loadingComplete();
      }
      
      private function loadingComplete() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§[w§);
         new AngryBirdsUltraBook(this);
      }
      
      private function §[w§(event:UncaughtErrorEvent) : void
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
         if(!this.§&!$§)
         {
            this.§&!$§ = true;
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
            §85§.§#!j§(errorID,time);
            if(§4!T§.§%!K§ != null)
            {
               state = §4!T§.§%!K§.§6!g§();
            }
            if(state == null || state.length == 0)
            {
               state = "NoState";
            }
            currentLevel = LevelManager.§!=§;
            if(currentLevel == null)
            {
               currentLevel = "";
            }
            renderingMode = "GPU";
            if(Starling.§'!A§ == null)
            {
               renderingMode = "NULL";
            }
            else if(Starling.isSoftware)
            {
               renderingMode = "CPU";
            }
            log = errorID.toString() + "::" + state + "::" + message + "::" + renderingMode + "::" + currentLevel + "::" + AB_FACEBOOK_VERSION;
            §85§.§,!=§(GoogleAnalyticsTracker.§8x§,log,time);
            if(stackTrace)
            {
               traceLog = log + "::" + stackTrace;
               §85§.§,!=§(GoogleAnalyticsTracker.§-2§,traceLog,time);
            }
         }
      }
   }
}
