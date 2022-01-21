package §1!D§
{
   import §<G§.§6n§;
   import flash.display.DisplayObject;
   
   public class §"!6§
   {
      
      protected static const §6P§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §=!M§:String = "flash";
      
      public static const §`7§:String = "initialized";
      
      public static const §7!-§:String = "loaded";
      
      public static const ACTION_GAME_LEVEL_STARTED:String = "level-started";
      
      public static const §5n§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §3g§:String = "crash-log";
      
      public static const §7#§:String = "crash-trace";
      
      public static const §@!Z§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §]R§:Vector.<§!§> = new Vector.<§!§>();
       
      
      public function §"!6§()
      {
         super();
      }
      
      public static function §,;§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §>G§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§=!M§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§6P§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §6n§.§+Z§(param1,param2,param3,param4,param5);
         }
      }
   }
}
