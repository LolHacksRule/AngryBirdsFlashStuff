package §<!<§
{
   import §<"1§.§,U§;
   import flash.display.DisplayObject;
   
   public class §7c§
   {
      
      protected static const §7-§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §8+§:String = "flash";
      
      public static const §<"B§:String = "initialized";
      
      public static const §5""§:String = "loaded";
      
      public static const §6!J§:String = "level-started";
      
      public static const § !i§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §""6§:String = "crash-log";
      
      public static const §%C§:String = "crash-trace";
      
      public static const §-!I§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var § G§:Vector.<§]j§> = new Vector.<§]j§>();
       
      
      public function §7c§()
      {
         super();
      }
      
      public static function §3">§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §'"-§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§8+§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§7-§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §,U§.§53§(param1,param2,param3,param4,param5);
         }
      }
   }
}
