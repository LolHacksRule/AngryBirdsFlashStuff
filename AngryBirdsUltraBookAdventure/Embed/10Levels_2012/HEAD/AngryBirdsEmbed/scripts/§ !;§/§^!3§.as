package § !;§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §^!3§
   {
      
      protected static const §'!6§:String = "flash";
      
      public static const §6!%§:String = §^Y§.§6!%§;
      
      public static const §#+§:String = §^Y§.§#+§;
      
      public static const §2!,§:String = §^Y§.§2!,§;
      
      public static const §]m§:String = §^Y§.§]m§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §^Y§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §^Y§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §^Y§.ACTION_APPLICATION_CRASH;
      
      public static const §4n§:String = §^Y§.§4n§;
      
      public static const §4§:String = §^Y§.§4§;
      
      public static var enabled:Boolean = false;
      
      private static var §^V§:AnalyticsTracker;
      
      private static var §,!F§:Vector.<§6!1§> = new Vector.<§6!1§>();
       
      
      public function §^!3§()
      {
         super();
      }
      
      public static function §8'§(param1:DisplayObject, param2:String) : void
      {
         if(!§^V§)
         {
            try
            {
               §^V§ = new GATracker(param1,param2);
               if(!§^V§.isReady())
               {
                  §^V§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §^V§.removeEventListener(AnalyticsEvent.READY,onReady);
         §--§();
      }
      
      private static function §--§() : void
      {
         var _loc1_:§6!1§ = null;
         while(§,!F§.length > 0)
         {
            _loc1_ = §,!F§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§%H§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§^V§)
            {
               if(§^V§.isReady())
               {
                  §--§();
                  §^V§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §,!F§.push(new §6!1§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
