package §#"4§
{
   import §#$?§.§7!b§;
   import flash.display.DisplayObject;
   
   public class §"!o§
   {
      
      protected static const §5!?§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §3"k§:String = "flash";
      
      public static const §"t§:String = "initialized";
      
      public static const §>H§:String = "loaded";
      
      public static const §#'§:String = "level-started";
      
      public static const §?%§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §>!=§:String = "crash-log";
      
      public static const §9p§:String = "crash-trace";
      
      public static const §=$D§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §@+§:Vector.<§!#O§> = new Vector.<§!#O§>();
       
      
      public function §"!o§()
      {
         super();
      }
      
      public static function §;S§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §[#]§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§3"k§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§5!?§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §7!b§.§7@§(param1,param2,param3,param4,param5);
         }
      }
   }
}
