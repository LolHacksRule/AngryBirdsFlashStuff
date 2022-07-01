package §`6§
{
   import §?-§.§do §;
   import flash.display.DisplayObject;
   
   public class §9a§
   {
      
      protected static const §6!O§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §<!U§:String = "flash";
      
      public static const §&!+§:String = "initialized";
      
      public static const §`N§:String = "loaded";
      
      public static const §1G§:String = "level-started";
      
      public static const §4!Q§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §0!<§:String = "crash-log";
      
      public static const §%!v§:String = "crash-trace";
      
      public static const §'!5§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §!'§:Vector.<§7!3§> = new Vector.<§7!3§>();
       
      
      public function §9a§()
      {
         super();
      }
      
      public static function §%P§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §8"0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§<!U§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§6!O§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §do §.§>"-§(param1,param2,param3,param4,param5);
         }
      }
   }
}
