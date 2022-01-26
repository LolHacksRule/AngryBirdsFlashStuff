package §,+§
{
   import §]u§.§+e§;
   import flash.display.DisplayObject;
   
   public class §4!Z§
   {
      
      protected static const §=!;§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §2!B§:String = "flash";
      
      public static const §"V§:String = "initialized";
      
      public static const §6&§:String = "loaded";
      
      public static const §+!`§:String = "level-started";
      
      public static const §!!5§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §!e§:String = "crash-log";
      
      public static const §0!R§:String = "crash-trace";
      
      public static const §,z§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §,6§:Vector.<§[!_§> = new Vector.<§[!_§>();
       
      
      public function §4!Z§()
      {
         super();
      }
      
      public static function §]R§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §08§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§2!B§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§=!;§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §+e§.§5?§(param1,param2,param3,param4,param5);
         }
      }
   }
}
