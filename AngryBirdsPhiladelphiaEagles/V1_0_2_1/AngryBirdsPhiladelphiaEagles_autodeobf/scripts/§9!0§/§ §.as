package §9!0§
{
   import §!=§.§[!F§;
   import flash.display.DisplayObject;
   
   public class § §
   {
      
      protected static const §>a§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §"2§:String = "flash";
      
      public static const §'!!§:String = "initialized";
      
      public static const §]8§:String = "loaded";
      
      public static const §+c§:String = "level-started";
      
      public static const §`%§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §5`§:String = "crash-log";
      
      public static const §2g§:String = "crash-trace";
      
      public static const §63§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §%4§:Vector.<§'!?§> = new Vector.<§'!?§>();
       
      
      public function § §()
      {
         super();
      }
      
      public static function §9>§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §,!1§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§"2§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§>a§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §[!F§.§;!&§(param1,param2,param3,param4,param5);
         }
      }
   }
}
