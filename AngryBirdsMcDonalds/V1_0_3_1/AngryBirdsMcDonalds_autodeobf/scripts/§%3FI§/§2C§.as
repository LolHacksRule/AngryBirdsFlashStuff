package §?I§
{
   import §7,§.§=d§;
   import flash.display.DisplayObject;
   
   public class §2C§
   {
      
      protected static const §"!d§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §46§:String = "flash";
      
      public static const §`<§:String = "initialized";
      
      public static const § ]§:String = "loaded";
      
      public static const ACTION_GAME_LEVEL_STARTED:String = "level-started";
      
      public static const §"V§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §+!'§:String = "crash-log";
      
      public static const §"!4§:String = "crash-trace";
      
      public static const §"!N§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §3c§:Vector.<§@=§> = new Vector.<§@=§>();
       
      
      public function §2C§()
      {
         super();
      }
      
      public static function §"l§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §=<§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§46§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§"!d§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §=d§.§2!l§(param1,param2,param3,param4,param5);
         }
      }
   }
}
