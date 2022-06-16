package §3y§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §=l§
   {
      
      protected static const §15§:String = "flash";
      
      public static const §09§:String = §4!%§.§09§;
      
      public static const §#!'§:String = §4!%§.§#!'§;
      
      public static const §@j§:String = §4!%§.§@j§;
      
      public static const §0`§:String = §4!%§.§0`§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §4!%§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §4!%§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §4!%§.ACTION_APPLICATION_CRASH;
      
      public static const §%?§:String = §4!%§.§%?§;
      
      public static const §81§:String = §4!%§.§81§;
      
      public static var enabled:Boolean = false;
      
      private static var §?y§:AnalyticsTracker;
      
      private static var §-0§:Vector.<§31§> = new Vector.<§31§>();
       
      
      public function §=l§()
      {
         super();
      }
      
      public static function §,%§(param1:DisplayObject, param2:String) : void
      {
         if(!§?y§)
         {
            try
            {
               §?y§ = new GATracker(param1,param2);
               if(!§?y§.isReady())
               {
                  §?y§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §?y§.removeEventListener(AnalyticsEvent.READY,onReady);
         §'!G§();
      }
      
      private static function §'!G§() : void
      {
         var _loc1_:§31§ = null;
         while(§-0§.length > 0)
         {
            _loc1_ = §-0§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§1o§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§?y§)
            {
               if(§?y§.isReady())
               {
                  §'!G§();
                  §?y§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §-0§.push(new §31§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
