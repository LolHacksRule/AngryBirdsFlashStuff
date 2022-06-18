package §8!=§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §4!§
   {
      
      protected static const §]x§:String = "flash";
      
      public static const §5!A§:String = §;D§.§5!A§;
      
      public static const §0D§:String = §;D§.§0D§;
      
      public static const §0!?§:String = §;D§.§0!?§;
      
      public static const §47§:String = §;D§.§47§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §;D§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §;D§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §;D§.ACTION_APPLICATION_CRASH;
      
      public static const §18§:String = §;D§.§18§;
      
      public static const §3-§:String = §;D§.§3-§;
      
      public static var enabled:Boolean = false;
      
      private static var §8'§:AnalyticsTracker;
      
      private static var §9S§:Vector.<§`!8§> = new Vector.<§`!8§>();
       
      
      public function §4!§()
      {
         super();
      }
      
      public static function §]!8§(param1:DisplayObject, param2:String) : void
      {
         if(!§8'§)
         {
            try
            {
               §8'§ = new GATracker(param1,param2);
               if(!§8'§.isReady())
               {
                  §8'§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §8'§.removeEventListener(AnalyticsEvent.READY,onReady);
         §8h§();
      }
      
      private static function §8h§() : void
      {
         var _loc1_:§`!8§ = null;
         while(§9S§.length > 0)
         {
            _loc1_ = §9S§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§!,§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§8'§)
            {
               if(§8'§.isReady())
               {
                  §8h§();
                  §8'§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §9S§.push(new §`!8§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
