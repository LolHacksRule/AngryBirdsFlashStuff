package §5=§
{
   import §&"§.ExternalInterfaceHandler;
   import flash.display.DisplayObject;
   
   public class GoogleAnalyticsTracker
   {
      
      protected static const §4!?§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §2!"§:String = "flash";
      
      public static const §+!B§:String = "initialized";
      
      public static const §4Q§:String = "loaded";
      
      public static const §4'§:String = "level-started";
      
      public static const § !I§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §&b§:String = "crash-log";
      
      public static const §;=§:String = "crash-trace";
      
      public static const § §:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §9b§:Vector.<§6!2§> = new Vector.<§6!2§>();
       
      
      public function GoogleAnalyticsTracker()
      {
         super();
      }
      
      public static function §?!?§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §&k§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§2!"§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§4!?§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            ExternalInterfaceHandler.§`F§(param1,param2,param3,param4,param5);
         }
      }
   }
}
