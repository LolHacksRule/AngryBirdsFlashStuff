package §+!B§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §-Q§
   {
      
      protected static const §;>§:String = "flash";
      
      public static const § 2§:String = §[m§.§ 2§;
      
      public static const §0!4§:String = §[m§.§0!4§;
      
      public static const §'!%§:String = §[m§.§'!%§;
      
      public static const §0Y§:String = §[m§.§0Y§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §[m§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §[m§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §[m§.ACTION_APPLICATION_CRASH;
      
      public static const §@! §:String = §[m§.§@! §;
      
      public static const §?c§:String = §[m§.§?c§;
      
      public static var enabled:Boolean = false;
      
      private static var §`j§:AnalyticsTracker;
      
      private static var §?6§:Vector.<§7`§> = new Vector.<§7`§>();
       
      
      public function §-Q§()
      {
         super();
      }
      
      public static function §%x§(param1:DisplayObject, param2:String) : void
      {
         if(!§`j§)
         {
            try
            {
               §`j§ = new GATracker(param1,param2);
               if(!§`j§.isReady())
               {
                  §`j§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §`j§.removeEventListener(AnalyticsEvent.READY,onReady);
         §"n§();
      }
      
      private static function §"n§() : void
      {
         var _loc1_:§7`§ = null;
         while(§?6§.length > 0)
         {
            _loc1_ = §?6§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§6O§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§`j§)
            {
               if(§`j§.isReady())
               {
                  §"n§();
                  §`j§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §?6§.push(new §7`§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
