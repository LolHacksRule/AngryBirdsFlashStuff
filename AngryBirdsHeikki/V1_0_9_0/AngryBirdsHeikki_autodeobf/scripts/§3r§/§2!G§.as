package §3r§
{
   import flash.display.DisplayObject;
   import §for§.§0!d§;
   
   public class §2!G§
   {
      
      protected static const §,8§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §,v§:String = "flash";
      
      public static const §set §:String = "initialized";
      
      public static const §3Y§:String = "loaded";
      
      public static const §+m§:String = "level-started";
      
      public static const §%!Q§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §[!B§:String = "crash-log";
      
      public static const §<!<§:String = "crash-trace";
      
      public static const § e§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §%Y§:Vector.<§[!+§> = new Vector.<§[!+§>();
       
      
      public function §2!G§()
      {
         super();
      }
      
      public static function §4!d§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §"6§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§,v§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§,8§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §0!d§.§%z§(param1,param2,param3,param4,param5);
         }
      }
   }
}
