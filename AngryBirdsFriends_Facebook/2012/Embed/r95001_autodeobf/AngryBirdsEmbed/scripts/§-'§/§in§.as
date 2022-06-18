package §-'§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §in§
   {
      
      protected static const §4w§:String = "flash";
      
      public static const §0'§:String = §for§.§0'§;
      
      public static const §+-§:String = §for§.§+-§;
      
      public static const §`#§:String = §for§.§`#§;
      
      public static const §'`§:String = §for§.§'`§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §for§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §for§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §for§.ACTION_APPLICATION_CRASH;
      
      public static const §]X§:String = §for§.§]X§;
      
      public static const §!U§:String = §for§.§!U§;
      
      public static var enabled:Boolean = false;
      
      private static var §=R§:AnalyticsTracker;
      
      private static var §!W§:Vector.<§]m§> = new Vector.<§]m§>();
       
      
      public function §in§()
      {
         super();
      }
      
      public static function §!j§(param1:DisplayObject, param2:String) : void
      {
         if(!§=R§)
         {
            try
            {
               §=R§ = new GATracker(param1,param2);
               if(!§=R§.isReady())
               {
                  §=R§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §=R§.removeEventListener(AnalyticsEvent.READY,onReady);
         §?j§();
      }
      
      private static function §?j§() : void
      {
         var _loc1_:§]m§ = null;
         while(§!W§.length > 0)
         {
            _loc1_ = §!W§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§7Y§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§=R§)
            {
               if(§=R§.isReady())
               {
                  §?j§();
                  §=R§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §!W§.push(new §]m§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
