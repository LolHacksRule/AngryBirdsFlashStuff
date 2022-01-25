package §9I§
{
   import §!T§.§'V§;
   import flash.display.DisplayObject;
   
   public class §]!^§
   {
      
      protected static const §;m§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §?I§:String = "flash";
      
      public static const §>!;§:String = "initialized";
      
      public static const §'"§:String = "loaded";
      
      public static const §0!B§:String = "level-started";
      
      public static const §<!#§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §+J§:String = "crash-log";
      
      public static const §,x§:String = "crash-trace";
      
      public static const §1!a§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var § 0§:Vector.<§,+§> = new Vector.<§,+§>();
       
      
      public function §]!^§()
      {
         super();
      }
      
      public static function §?j§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §,U§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§?I§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§;m§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §'V§.§@!c§(param1,param2,param3,param4,param5);
         }
      }
   }
}
