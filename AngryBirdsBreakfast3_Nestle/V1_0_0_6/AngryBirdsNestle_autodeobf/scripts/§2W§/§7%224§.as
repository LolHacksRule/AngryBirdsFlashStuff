package §2W§
{
   import §8x§.§]"-§;
   import flash.display.DisplayObject;
   
   public class §7"4§
   {
      
      protected static const §@!1§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §91§:String = "flash";
      
      public static const §],§:String = "initialized";
      
      public static const §4!j§:String = "loaded";
      
      public static const §6!Z§:String = "level-started";
      
      public static const §,!R§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §2!m§:String = "crash-log";
      
      public static const §?!]§:String = "crash-trace";
      
      public static const §0!n§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §"!l§:Vector.<§+v§> = new Vector.<§+v§>();
       
      
      public function §7"4§()
      {
         super();
      }
      
      public static function §1g§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §2!4§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§91§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§@!1§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §]"-§.§6V§(param1,param2,param3,param4,param5);
         }
      }
   }
}
