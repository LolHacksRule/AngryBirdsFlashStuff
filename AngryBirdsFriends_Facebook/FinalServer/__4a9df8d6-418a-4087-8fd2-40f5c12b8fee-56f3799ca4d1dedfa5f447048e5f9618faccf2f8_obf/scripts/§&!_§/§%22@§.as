package §&!_§
{
   import §]C§.§ !+§;
   import flash.display.DisplayObject;
   
   public class §"@§
   {
      
      protected static const §8+§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §!m§:String = "flash";
      
      public static const §!$B§:String = "initialized";
      
      public static const §9!s§:String = "loaded";
      
      public static const §<S§:String = "level-started";
      
      public static const §0!N§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §<"7§:String = "crash-log";
      
      public static const §4$B§:String = "crash-trace";
      
      public static const §]2§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §#G§:Vector.<§5#K§> = new Vector.<§5#K§>();
       
      
      public function §"@§()
      {
         super();
      }
      
      public static function §3">§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §4!c§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§!m§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§8+§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            § !+§.§>$%§(param1,param2,param3,param4,param5);
         }
      }
   }
}
