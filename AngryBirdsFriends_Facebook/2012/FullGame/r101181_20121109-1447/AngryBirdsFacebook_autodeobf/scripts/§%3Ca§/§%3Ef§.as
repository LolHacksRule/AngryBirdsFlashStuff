package §<a§
{
   import §+N§.§@!]§;
   import flash.display.DisplayObject;
   
   public class §>f§
   {
      
      protected static const §;f§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §5";§:String = "flash";
      
      public static const §^a§:String = "initialized";
      
      public static const §]!Q§:String = "loaded";
      
      public static const §]",§:String = "level-started";
      
      public static const §5!k§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §0@§:String = "crash-log";
      
      public static const §+k§:String = "crash-trace";
      
      public static const §0" §:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §2W§:Vector.<§,m§> = new Vector.<§,m§>();
       
      
      public function §>f§()
      {
         super();
      }
      
      public static function §;!$§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §""1§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§5";§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§;f§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §@!]§.§9"'§(param1,param2,param3,param4,param5);
         }
      }
   }
}
