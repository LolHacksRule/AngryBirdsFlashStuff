package §+!B§
{
   import §<d§.§9!1§;
   import flash.display.DisplayObject;
   
   public class §[m§
   {
      
      protected static const §81§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §;>§:String = "flash";
      
      public static const § 2§:String = "initialized";
      
      public static const §0!4§:String = "loaded";
      
      public static const §'!%§:String = "level-started";
      
      public static const §0Y§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §@! §:String = "crash-log";
      
      public static const §?c§:String = "crash-trace";
      
      public static const §-!2§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §?6§:Vector.<§7`§> = new Vector.<§7`§>();
       
      
      public function §[m§()
      {
         super();
      }
      
      public static function §%x§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §"!A§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§;>§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §8s§(§81§,param1,param2,param3,param4);
      }
      
      protected static function §8s§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §9!1§.§!!I§(param1,param2,param3,param4,param5);
         }
      }
   }
}
