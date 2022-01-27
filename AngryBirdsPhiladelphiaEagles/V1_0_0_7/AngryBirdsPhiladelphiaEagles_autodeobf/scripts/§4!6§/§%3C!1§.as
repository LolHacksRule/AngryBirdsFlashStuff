package §4!6§
{
   import §>!+§.§@G§;
   import flash.display.DisplayObject;
   
   public class §<!1§
   {
      
      protected static const §5!&§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const § !F§:String = "flash";
      
      public static const §;!L§:String = "initialized";
      
      public static const §3Z§:String = "loaded";
      
      public static const §'m§:String = "level-started";
      
      public static const §=§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §]`§:String = "crash-log";
      
      public static const §2y§:String = "crash-trace";
      
      public static const §6!%§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §?"§:Vector.<§!V§> = new Vector.<§!V§>();
       
      
      public function §<!1§()
      {
         super();
      }
      
      public static function §;!G§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §!§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§ !F§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§5!&§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §@G§.§6C§(param1,param2,param3,param4,param5);
         }
      }
   }
}
