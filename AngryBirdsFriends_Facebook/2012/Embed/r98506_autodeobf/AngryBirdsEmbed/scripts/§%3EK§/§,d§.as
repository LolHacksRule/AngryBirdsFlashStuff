package §>K§
{
   import §!x§.§!&§;
   import flash.display.DisplayObject;
   
   public class §,d§
   {
      
      protected static const §9W§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §3!J§:String = "flash";
      
      public static const §14§:String = "initialized";
      
      public static const § !1§:String = "loaded";
      
      public static const §,!4§:String = "level-started";
      
      public static const §%!F§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §9H§:String = "crash-log";
      
      public static const §[q§:String = "crash-trace";
      
      public static const §2v§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §`k§:Vector.<§5! §> = new Vector.<§5! §>();
       
      
      public function §,d§()
      {
         super();
      }
      
      public static function §1U§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §#U§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§3!J§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §;h§(§9W§,param1,param2,param3,param4);
      }
      
      protected static function §;h§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §!&§.§5>§(param1,param2,param3,param4,param5);
         }
      }
   }
}
