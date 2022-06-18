package §#[§
{
   import §,'§.§[2§;
   import flash.display.DisplayObject;
   
   public class §9;§
   {
      
      protected static const §#+§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §0N§:String = "flash";
      
      public static const §3;§:String = "initialized";
      
      public static const §'!E§:String = "loaded";
      
      public static const §5e§:String = "level-started";
      
      public static const §[!Y§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §9!1§:String = "crash-log";
      
      public static const §-!Y§:String = "crash-trace";
      
      public static const §"!%§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §try §:Vector.<§+!;§> = new Vector.<§+!;§>();
       
      
      public function §9;§()
      {
         super();
      }
      
      public static function §%e§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function § 3§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§0N§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§#+§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §[2§.§^J§(param1,param2,param3,param4,param5);
         }
      }
   }
}
