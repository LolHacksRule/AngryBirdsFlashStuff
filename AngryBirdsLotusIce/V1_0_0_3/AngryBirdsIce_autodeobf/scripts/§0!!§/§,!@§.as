package §0!!§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §,!@§
   {
      
      protected static const §=!§:String = "flash";
      
      public static const § E§:String = §+i§.§ E§;
      
      public static const §`!9§:String = §+i§.§`!9§;
      
      public static const §<K§:String = §+i§.§<K§;
      
      public static const §^=§:String = §+i§.§^=§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §+i§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §+i§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §+i§.ACTION_APPLICATION_CRASH;
      
      public static const §#4§:String = §+i§.§#4§;
      
      public static const §3%§:String = §+i§.§3%§;
      
      public static var enabled:Boolean = false;
      
      private static var §[b§:AnalyticsTracker;
      
      private static var §-e§:Vector.<§0U§> = new Vector.<§0U§>();
       
      
      public function §,!@§()
      {
         super();
      }
      
      public static function §4g§(param1:DisplayObject, param2:String) : void
      {
         if(!§[b§)
         {
            try
            {
               §[b§ = new GATracker(param1,param2);
               if(!§[b§.isReady())
               {
                  §[b§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §[b§.removeEventListener(AnalyticsEvent.READY,onReady);
         §&Z§();
      }
      
      private static function §&Z§() : void
      {
         var _loc1_:§0U§ = null;
         while(§-e§.length > 0)
         {
            _loc1_ = §-e§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§^#§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§[b§)
            {
               if(§[b§.isReady())
               {
                  §&Z§();
                  §[b§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §-e§.push(new §0U§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
