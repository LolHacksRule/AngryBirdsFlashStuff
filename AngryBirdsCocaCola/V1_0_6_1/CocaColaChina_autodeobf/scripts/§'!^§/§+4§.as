package §'!^§
{
   import §6A§.§"g§;
   import flash.display.DisplayObject;
   
   public class §+4§
   {
      
      protected static const §?!K§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §1n§:String = "flash";
      
      public static const §;!7§:String = "initialized";
      
      public static const §;%§:String = "loaded";
      
      public static const §63§:String = "level-started";
      
      public static const §#m§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §6c§:String = "crash-log";
      
      public static const §]!0§:String = "crash-trace";
      
      public static const §89§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §=>§:Vector.<§&s§> = new Vector.<§&s§>();
       
      
      public function §+4§()
      {
         super();
      }
      
      public static function §!!%§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §?!O§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§1n§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§?!K§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §"g§.§`!@§(param1,param2,param3,param4,param5);
         }
      }
   }
}
