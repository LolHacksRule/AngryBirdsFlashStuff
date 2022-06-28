package §&!h§
{
   import §&9§.§1?§;
   import flash.display.DisplayObject;
   
   public class §"[§
   {
      
      protected static const §]!H§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §-!$§:String = "flash";
      
      public static const §"@§:String = "initialized";
      
      public static const §4j§:String = "loaded";
      
      public static const §%b§:String = "level-started";
      
      public static const §,!q§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §!!U§:String = "crash-log";
      
      public static const §false§:String = "crash-trace";
      
      public static const §9B§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §,!M§:Vector.<§9b§> = new Vector.<§9b§>();
       
      
      public function §"[§()
      {
         super();
      }
      
      public static function § i§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §8![§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§-!$§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§]!H§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §1?§.§>!X§(param1,param2,param3,param4,param5);
         }
      }
   }
}
