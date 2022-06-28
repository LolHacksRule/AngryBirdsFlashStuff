package §%!6§
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import com.google.analytics.events.AnalyticsEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §5!A§
   {
      
      protected static const §2`§:String = "flash";
      
      public static const §@C§:String = §;!$§.§@C§;
      
      public static const § m§:String = §;!$§.§ m§;
      
      public static const §]x§:String = §;!$§.§]x§;
      
      public static const §9!C§:String = §;!$§.§9!C§;
      
      public static const ACTION_GPU_FPS_REPORT:String = §;!$§.ACTION_GPU_FPS_REPORT;
      
      public static const ACTION_CPU_FPS_REPORT:String = §;!$§.ACTION_CPU_FPS_REPORT;
      
      public static const ACTION_APPLICATION_CRASH:String = §;!$§.ACTION_APPLICATION_CRASH;
      
      public static const §7'§:String = §;!$§.§7'§;
      
      public static const §'!+§:String = §;!$§.§'!+§;
      
      public static var enabled:Boolean = false;
      
      private static var §`!!§:AnalyticsTracker;
      
      private static var §-!%§:Vector.<§"6§> = new Vector.<§"6§>();
       
      
      public function §5!A§()
      {
         super();
      }
      
      public static function §1!I§(param1:DisplayObject, param2:String) : void
      {
         if(!§`!!§)
         {
            try
            {
               §`!!§ = new GATracker(param1,param2);
               if(!§`!!§.isReady())
               {
                  §`!!§.addEventListener(AnalyticsEvent.READY,onReady);
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private static function onReady(param1:Event) : void
      {
         §`!!§.removeEventListener(AnalyticsEvent.READY,onReady);
         §@#§();
      }
      
      private static function §@#§() : void
      {
         var _loc1_:§"6§ = null;
         while(§-!%§.length > 0)
         {
            _loc1_ = §-!%§.shift();
            trackEvent(_loc1_.category,_loc1_.action,_loc1_.§`!D§,_loc1_.value);
         }
      }
      
      protected static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         if(enabled)
         {
            if(§`!!§)
            {
               if(§`!!§.isReady())
               {
                  §@#§();
                  §`!!§.trackEvent(param1,param2,param3,param4);
               }
               else
               {
                  §-!%§.push(new §"6§(param1,param2,param3,param4));
               }
            }
         }
      }
   }
}
