package §^3§
{
   import §#!5§.§>!0§;
   import flash.display.DisplayObject;
   
   public class §=!Z§
   {
      
      protected static const §@l§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §!g§:String = "flash";
      
      public static const §2y§:String = "initialized";
      
      public static const §1g§:String = "loaded";
      
      public static const §+!%§:String = "level-started";
      
      public static const §]J§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §>!7§:String = "crash-log";
      
      public static const §;f§:String = "crash-trace";
      
      public static const §@!1§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §!!8§:Vector.<§=!C§> = new Vector.<§=!C§>();
       
      
      public function §=!Z§()
      {
         super();
      }
      
      public static function §4!O§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §2^§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§!g§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§@l§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §>!0§.§7!I§(param1,param2,param3,param4,param5);
         }
      }
   }
}
