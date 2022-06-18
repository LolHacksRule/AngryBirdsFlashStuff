package §3V§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §34§
   {
      
      protected static const §9S§:String = "flash";
      
      public static const §#!F§:String = §;6§.§#!F§;
      
      public static const §<2§:String = §;6§.§<2§;
      
      public static const §#!D§:String = §;6§.§#!D§;
      
      public static const §&]§:String = §;6§.§&]§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §;6§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §;6§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §;6§.ACTION_APPLICATION_CRASH;
      
      public static const §"!A§:String = §;6§.§"!A§;
      
      public static const §<9§:String = §;6§.§<9§;
      
      public static var enabled:Boolean = false;
      
      private static var §%w§:AnalyticsTracker;
      
      private static var §=;§:Vector.<§?u§> = new Vector.<§?u§>();
       
      
      public function §34§()
      {
         super();
      }
      
      public static function §>3§(param1:DisplayObject, param2:String) : void
      {
         if(!§%w§)
         {
            try
            {
               §%w§ = new GATracker(param1,param2);
               if(!§%w§.isReady())
               {
                  §%w§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §%w§.removeEventListener(AnalyticsEvent.READY,onReady);
         §?N§();
      }
      
      private static function §?N§() : void
      {
         var _loc1_:§?u§ = null;
         while(§=;§.length > 0)
         {
            _loc1_ = §=;§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§9!A§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§%w§)
            {
               if(§%w§.isReady())
               {
                  §?N§();
                  §%w§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §=;§.push(new §?u§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
