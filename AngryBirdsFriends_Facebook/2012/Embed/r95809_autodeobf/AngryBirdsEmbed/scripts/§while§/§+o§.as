package §while§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §+o§
   {
      
      protected static const §0!"§:String = "flash";
      
      public static const §2@§:String = §!!H§.§2@§;
      
      public static const §,%§:String = §!!H§.§,%§;
      
      public static const §!"§:String = §!!H§.§!"§;
      
      public static const §%!2§:String = §!!H§.§%!2§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §!!H§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §!!H§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §!!H§.ACTION_APPLICATION_CRASH;
      
      public static const §;D§:String = §!!H§.§;D§;
      
      public static const §=H§:String = §!!H§.§=H§;
      
      public static var enabled:Boolean = false;
      
      private static var §=5§:AnalyticsTracker;
      
      private static var §2u§:Vector.<§6!4§> = new Vector.<§6!4§>();
       
      
      public function §+o§()
      {
         super();
      }
      
      public static function §0?§(param1:DisplayObject, param2:String) : void
      {
         if(!§=5§)
         {
            try
            {
               §=5§ = new GATracker(param1,param2);
               if(!§=5§.isReady())
               {
                  §=5§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §=5§.removeEventListener(AnalyticsEvent.READY,onReady);
         §6A§();
      }
      
      private static function §6A§() : void
      {
         var _loc1_:§6!4§ = null;
         while(§2u§.length > 0)
         {
            _loc1_ = §2u§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§#!9§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§=5§)
            {
               if(§=5§.isReady())
               {
                  §6A§();
                  §=5§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §2u§.push(new §6!4§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
