package §!V§
{
   import §=!g§.§!!@§;
   import flash.display.DisplayObject;
   
   public class §<!g§
   {
      
      protected static const §?!N§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §3A§:String = "flash";
      
      public static const §8Q§:String = "initialized";
      
      public static const §0B§:String = "loaded";
      
      public static const §#S§:String = "level-started";
      
      public static const §0!=§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §^!A§:String = "crash-log";
      
      public static const §#!b§:String = "crash-trace";
      
      public static const §6!h§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §&!%§:Vector.<§?b§> = new Vector.<§?b§>();
       
      
      public function §<!g§()
      {
         super();
      }
      
      public static function §5!X§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §@Y§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§3A§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§?!N§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §!!@§.§%Q§(param1,param2,param3,param4,param5);
         }
      }
   }
}
