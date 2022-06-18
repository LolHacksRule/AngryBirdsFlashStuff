package §4!'§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §0g§
   {
      
      protected static const §-N§:String = "flash";
      
      public static const §!!2§:String = §4R§.§!!2§;
      
      public static const §%?§:String = §4R§.§%?§;
      
      public static const §5"§:String = §4R§.§5"§;
      
      public static const §4!0§:String = §4R§.§4!0§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §4R§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §4R§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §4R§.ACTION_APPLICATION_CRASH;
      
      public static const §2"§:String = §4R§.§2"§;
      
      public static const § set§:String = §4R§.§ set§;
      
      public static var enabled:Boolean = false;
      
      private static var §?w§:AnalyticsTracker;
      
      private static var §&>§:Vector.<§`Q§> = new Vector.<§`Q§>();
       
      
      public function §0g§()
      {
         super();
      }
      
      public static function §"!;§(param1:DisplayObject, param2:String) : void
      {
         if(!§?w§)
         {
            try
            {
               §?w§ = new GATracker(param1,param2);
               if(!§?w§.isReady())
               {
                  §?w§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §?w§.removeEventListener(AnalyticsEvent.READY,onReady);
         §-!>§();
      }
      
      private static function §-!>§() : void
      {
         var _loc1_:§`Q§ = null;
         while(§&>§.length > 0)
         {
            _loc1_ = §&>§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§8N§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§?w§)
            {
               if(§?w§.isReady())
               {
                  §-!>§();
                  §?w§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §&>§.push(new §`Q§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
