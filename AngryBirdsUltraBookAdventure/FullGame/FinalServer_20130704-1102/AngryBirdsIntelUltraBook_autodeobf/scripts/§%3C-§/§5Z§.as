package §<-§
{
   import §>L§.§+!i§;
   import flash.display.DisplayObject;
   
   public class §5Z§
   {
      
      protected static const §``§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §^!u§:String = "flash";
      
      public static const §+!q§:String = "initialized";
      
      public static const §@!<§:String = "loaded";
      
      public static const §[@§:String = "level-started";
      
      public static const §0O§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §^,§:String = "crash-log";
      
      public static const §<!q§:String = "crash-trace";
      
      public static const §8!D§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §=N§:Vector.<§#z§> = new Vector.<§#z§>();
       
      
      public function §5Z§()
      {
         super();
      }
      
      public static function § !j§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §&!v§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§^!u§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§``§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §+!i§.§>!y§(param1,param2,param3,param4,param5);
         }
      }
   }
}
