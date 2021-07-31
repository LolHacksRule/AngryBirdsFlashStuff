package §4!H§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §#3§
   {
      
      protected static const §+2§:String = "flash";
      
      public static const §?i§:String = §[v§.§?i§;
      
      public static const §&! §:String = §[v§.§&! §;
      
      public static const §<J§:String = §[v§.§<J§;
      
      public static const §break§:String = §[v§.§break§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §[v§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §[v§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §[v§.ACTION_APPLICATION_CRASH;
      
      public static const §]W§:String = §[v§.§]W§;
      
      public static const §"1§:String = §[v§.§"1§;
      
      public static var enabled:Boolean = false;
      
      private static var §8-§:AnalyticsTracker;
      
      private static var §'&§:Vector.<§+D§> = new Vector.<§+D§>();
       
      
      public function §#3§()
      {
         super();
      }
      
      public static function §97§(param1:DisplayObject, param2:String) : void
      {
         if(!§8-§)
         {
            try
            {
               §8-§ = new GATracker(param1,param2);
               if(!§8-§.isReady())
               {
                  §8-§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §8-§.removeEventListener(AnalyticsEvent.READY,onReady);
         §5l§();
      }
      
      private static function §5l§() : void
      {
         var _loc1_:§+D§ = null;
         while(§'&§.length > 0)
         {
            _loc1_ = §'&§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§^P§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§8-§)
            {
               if(§8-§.isReady())
               {
                  §5l§();
                  §8-§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §'&§.push(new §+D§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
