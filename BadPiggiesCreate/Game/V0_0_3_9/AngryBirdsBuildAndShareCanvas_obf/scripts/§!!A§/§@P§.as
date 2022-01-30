package §!!A§
{
   import §%4§.§]8§;
   import flash.display.DisplayObject;
   
   public class §@P§
   {
      
      protected static const §`!Y§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §3!?§:String = "flash";
      
      public static const § !T§:String = "initialized";
      
      public static const §2!+§:String = "loaded";
      
      public static const §]!O§:String = "level-started";
      
      public static const §#%§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §-$§:String = "crash-log";
      
      public static const §&m§:String = "crash-trace";
      
      public static const §1I§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §^!c§:Vector.<§0M§> = new Vector.<§0M§>();
       
      
      public function §@P§()
      {
         super();
      }
      
      public static function §!,§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function static(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§3!?§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§`!Y§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §]8§.performCall(param1,param2,param3,param4,param5);
         }
      }
   }
}
