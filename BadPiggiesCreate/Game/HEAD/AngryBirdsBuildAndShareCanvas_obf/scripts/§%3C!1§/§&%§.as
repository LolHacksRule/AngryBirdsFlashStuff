package §<!1§
{
   import §[!8§.§6!H§;
   import flash.display.DisplayObject;
   
   public class §&%§
   {
      
      protected static const §@!C§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §^R§:String = "flash";
      
      public static const §if§:String = "initialized";
      
      public static const §`!2§:String = "loaded";
      
      public static const §+S§:String = "level-started";
      
      public static const §,!@§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §2v§:String = "crash-log";
      
      public static const §!!`§:String = "crash-trace";
      
      public static const §[!-§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §3!]§:Vector.<§&"0§> = new Vector.<§&"0§>();
       
      
      public function §&%§()
      {
         super();
      }
      
      public static function §2H§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §#W§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§^R§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§@!C§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §6!H§.§2!i§(param1,param2,param3,param4,param5);
         }
      }
   }
}
