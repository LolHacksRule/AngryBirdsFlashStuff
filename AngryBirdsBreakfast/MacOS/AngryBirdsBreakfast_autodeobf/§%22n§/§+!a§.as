package §"n§
{
   import §<G§.§2C§;
   import flash.display.DisplayObject;
   
   public class §+!a§
   {
      
      protected static const §[3§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §<!0§:String = "flash";
      
      public static const §]"%§:String = "initialized";
      
      public static const §%"§:String = "loaded";
      
      public static const §[`§:String = "level-started";
      
      public static const §-!y§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §;G§:String = "crash-log";
      
      public static const §%!F§:String = "crash-trace";
      
      public static const §7b§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §true §:Vector.<§ y§> = new Vector.<§ y§>();
       
      
      public function §+!a§()
      {
         super();
      }
      
      public static function § "0§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §@v§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§<!0§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§[3§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §2C§.§^!A§(param1,param2,param3,param4,param5);
         }
      }
   }
}
