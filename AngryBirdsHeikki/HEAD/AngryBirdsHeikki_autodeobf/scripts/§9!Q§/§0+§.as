package §9!Q§
{
   import §@3§.§>M§;
   import flash.display.DisplayObject;
   
   public class §0+§
   {
      
      protected static const §!h§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §-r§:String = "flash";
      
      public static const §'!§:String = "initialized";
      
      public static const §5!I§:String = "loaded";
      
      public static const §;!,§:String = "level-started";
      
      public static const §]!O§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §7!c§:String = "crash-log";
      
      public static const §;3§:String = "crash-trace";
      
      public static const §`!I§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §^!U§:Vector.<§+!§> = new Vector.<§+!§>();
       
      
      public function §0+§()
      {
         super();
      }
      
      public static function §?Z§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §-f§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§-r§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§!h§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §>M§.§74§(param1,param2,param3,param4,param5);
         }
      }
   }
}
