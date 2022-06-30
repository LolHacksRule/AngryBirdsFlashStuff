package §4!9§
{
   import §`h§.§[!H§;
   import flash.display.DisplayObject;
   
   public class §5d§
   {
      
      protected static const §<!O§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §@!U§:String = "flash";
      
      public static const §%L§:String = "initialized";
      
      public static const §^,§:String = "loaded";
      
      public static const §'!'§:String = "level-started";
      
      public static const §<!U§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §8!A§:String = "crash-log";
      
      public static const §7!+§:String = "crash-trace";
      
      public static const §default§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §-!L§:Vector.<§null §> = new Vector.<§null §>();
       
      
      public function §5d§()
      {
         super();
      }
      
      public static function §]!^§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §%;§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§@!U§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§<!O§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §[!H§.§'! §(param1,param2,param3,param4,param5);
         }
      }
   }
}
