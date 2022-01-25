package §&$§
{
   import §"!_§.§%4§;
   import flash.display.DisplayObject;
   
   public class §6j§
   {
      
      protected static const §[`§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §+O§:String = "flash";
      
      public static const §%I§:String = "initialized";
      
      public static const §,!Z§:String = "loaded";
      
      public static const §#!+§:String = "level-started";
      
      public static const §`!]§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §[!=§:String = "crash-log";
      
      public static const §!7§:String = "crash-trace";
      
      public static const §6!K§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §44§:Vector.<§1R§> = new Vector.<§1R§>();
       
      
      public function §6j§()
      {
         super();
      }
      
      public static function §0z§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §+!J§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§+O§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§[`§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §%4§.§5!3§(param1,param2,param3,param4,param5);
         }
      }
   }
}
