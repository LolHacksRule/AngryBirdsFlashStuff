package §>P§
{
   import §-?§.§?Q§;
   import flash.display.DisplayObject;
   
   public class §+!%§
   {
      
      protected static const §[!7§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §^T§:String = "flash";
      
      public static const §'!V§:String = "initialized";
      
      public static const §9!c§:String = "loaded";
      
      public static const §5!8§:String = "level-started";
      
      public static const §`!S§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §61§:String = "crash-log";
      
      public static const §&!&§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §%!&§:Vector.<§,!Q§> = new Vector.<§,!Q§>();
       
      
      public function §+!%§()
      {
         super();
      }
      
      public static function §5!!§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §0o§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§^T§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§[!7§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §?Q§.§'Y§(param1,param2,param3,param4,param5);
         }
      }
   }
}
