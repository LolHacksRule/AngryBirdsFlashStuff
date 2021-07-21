package §8!Q§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class § ^§
   {
      
      protected static const §[N§:String = "flash";
      
      public static const §%!H§:String = §4§.§%!H§;
      
      public static const §9!c§:String = §4§.§9!c§;
      
      public static const §#!e§:String = §4§.§#!e§;
      
      public static const §1!k§:String = §4§.§1!k§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §4§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §4§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §4§.ACTION_APPLICATION_CRASH;
      
      public static const §[!D§:String = §4§.§[!D§;
      
      public static const §--§:String = §4§.§--§;
      
      public static var enabled:Boolean = false;
      
      private static var §45§:AnalyticsTracker;
      
      private static var §9!"§:Vector.<§0!&§> = new Vector.<§0!&§>();
       
      
      public function § ^§()
      {
         super();
      }
      
      public static function §,!S§(param1:DisplayObject, param2:String) : void
      {
         if(!§45§)
         {
            try
            {
               §45§ = new GATracker(param1,param2);
               if(!§45§.isReady())
               {
                  §45§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §45§.removeEventListener(AnalyticsEvent.READY,onReady);
         §!_§();
      }
      
      private static function §!_§() : void
      {
         var _loc1_:§0!&§ = null;
         while(§9!"§.length > 0)
         {
            _loc1_ = §9!"§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§?r§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§45§)
            {
               if(§45§.isReady())
               {
                  §!_§();
                  §45§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §9!"§.push(new §0!&§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
