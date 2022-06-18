package §>K§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §"!C§
   {
      
      protected static const §3!J§:String = "flash";
      
      public static const §14§:String = §,d§.§14§;
      
      public static const § !1§:String = §,d§.§ !1§;
      
      public static const §,!4§:String = §,d§.§,!4§;
      
      public static const §%!F§:String = §,d§.§%!F§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §,d§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §,d§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §,d§.ACTION_APPLICATION_CRASH;
      
      public static const §9H§:String = §,d§.§9H§;
      
      public static const §[q§:String = §,d§.§[q§;
      
      public static var enabled:Boolean = false;
      
      private static var §"!H§:AnalyticsTracker;
      
      private static var §`k§:Vector.<§5! §> = new Vector.<§5! §>();
       
      
      public function §"!C§()
      {
         super();
      }
      
      public static function §1U§(param1:DisplayObject, param2:String) : void
      {
         if(!§"!H§)
         {
            try
            {
               §"!H§ = new GATracker(param1,param2);
               if(!§"!H§.isReady())
               {
                  §"!H§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §"!H§.removeEventListener(AnalyticsEvent.READY,onReady);
         §7!#§();
      }
      
      private static function §7!#§() : void
      {
         var _loc1_:§5! § = null;
         while(§`k§.length > 0)
         {
            _loc1_ = §`k§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§1P§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§"!H§)
            {
               if(§"!H§.isReady())
               {
                  §7!#§();
                  §"!H§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §`k§.push(new §5! §(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
