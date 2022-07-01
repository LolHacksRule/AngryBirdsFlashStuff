package §!!&§
{
   import §'!'§.§0!p§;
   import flash.display.DisplayObject;
   
   public class §@!C§
   {
      
      protected static const §,"'§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §default§:String = "flash";
      
      public static const §-v§:String = "initialized";
      
      public static const §=x§:String = "loaded";
      
      public static const §!F§:String = "level-started";
      
      public static const §%!5§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §4x§:String = "crash-log";
      
      public static const §<!=§:String = "crash-trace";
      
      public static const §?!P§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §+!p§:Vector.<§<"-§> = new Vector.<§<"-§>();
       
      
      public function §@!C§()
      {
         super();
      }
      
      public static function §[`§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §-!Y§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§default§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§,"'§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §0!p§.§`_§(param1,param2,param3,param4,param5);
         }
      }
   }
}
