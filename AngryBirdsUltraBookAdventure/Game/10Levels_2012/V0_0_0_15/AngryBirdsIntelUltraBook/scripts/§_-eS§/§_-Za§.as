package §_-eS§
{
   import §_-Y8§.§_-05J§;
   import flash.display.DisplayObject;
   
   public class §_-Za§
   {
      
      protected static const §_-0Ai§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §_-042§:String = "flash";
      
      public static const §_-R6§:String = "initialized";
      
      public static const §_-2N§:String = "loaded";
      
      public static const §_-ku§:String = "level-started";
      
      public static const §_-yA§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §_-5v§:String = "crash-log";
      
      public static const §_-j2§:String = "crash-trace";
      
      public static const §_-jk§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §_-VB§:Vector.<§_-0M§> = new Vector.<§_-0M§>();
       
      
      public function §_-Za§()
      {
         super();
      }
      
      public static function §_-YL§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §_-Ve§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§_-042§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§_-0Ai§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §_-05J§.§_-0At§(param1,param2,param3,param4,param5);
         }
      }
   }
}
