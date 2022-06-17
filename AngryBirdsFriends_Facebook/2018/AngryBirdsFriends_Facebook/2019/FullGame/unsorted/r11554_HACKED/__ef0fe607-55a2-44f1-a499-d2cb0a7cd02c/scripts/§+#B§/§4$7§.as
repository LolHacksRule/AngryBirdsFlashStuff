package §+#B§
{
   import §7#j§.§@"F§;
   import flash.display.DisplayObject;
   
   public class §4$7§
   {
      
      protected static const §+$&§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §^"B§:String = "flash";
      
      public static const §!#+§:String = "initialized";
      
      public static const §%#i§:String = "loaded";
      
      public static const §<"T§:String = "level-started";
      
      public static const §"#0§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §1!@§:String = "crash-log";
      
      public static const §'!^§:String = "crash-trace";
      
      public static const §@!$§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §8!$§:Vector.<§8"S§> = new Vector.<§8"S§>();
       
      
      public function §4$7§()
      {
         super();
      }
      
      public static function §!#Y§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §-!I§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§^"B§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§+$&§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §@"F§.§^$#§(param1,param2,param3,param4,param5);
         }
      }
   }
}
