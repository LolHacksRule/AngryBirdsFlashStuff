package §try§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §9Q§
   {
      
      protected static const §"!6§:String = "flash";
      
      public static const §=o§:String = §^h§.§=o§;
      
      public static const §4>§:String = §^h§.§4>§;
      
      public static const §[P§:String = §^h§.§[P§;
      
      public static const §;t§:String = §^h§.§;t§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §^h§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §^h§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §^h§.ACTION_APPLICATION_CRASH;
      
      public static const §1L§:String = §^h§.§1L§;
      
      public static const §%!A§:String = §^h§.§%!A§;
      
      public static var enabled:Boolean = false;
      
      private static var §>3§:AnalyticsTracker;
      
      private static var §<!3§:Vector.<§2l§> = new Vector.<§2l§>();
       
      
      public function §9Q§()
      {
         super();
      }
      
      public static function §]!<§(param1:DisplayObject, param2:String) : void
      {
         if(!§>3§)
         {
            try
            {
               §>3§ = new GATracker(param1,param2);
               if(!§>3§.isReady())
               {
                  §>3§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §>3§.removeEventListener(AnalyticsEvent.READY,onReady);
         §<$§();
      }
      
      private static function §<$§() : void
      {
         var _loc1_:§2l§ = null;
         while(§<!3§.length > 0)
         {
            _loc1_ = §<!3§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§5F§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§>3§)
            {
               if(§>3§.isReady())
               {
                  §<$§();
                  §>3§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §<!3§.push(new §2l§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
