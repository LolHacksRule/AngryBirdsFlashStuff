package §%f§
{
   import §^t§.§4!C§;
   import flash.display.DisplayObject;
   
   public class §?6§
   {
      
      protected static const §'l§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §4q§:String = "flash";
      
      public static const §`V§:String = "initialized";
      
      public static const §<I§:String = "loaded";
      
      public static const §!!M§:String = "level-started";
      
      public static const §%!i§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §,;§:String = "crash-log";
      
      public static const §4e§:String = "crash-trace";
      
      public static const §=§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §?!V§:Vector.<§3O§> = new Vector.<§3O§>();
       
      
      public function §?6§()
      {
         super();
      }
      
      public static function §3!7§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §&!R§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§4q§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§'l§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §4!C§.§6'§(param1,param2,param3,param4,param5);
         }
      }
   }
}
