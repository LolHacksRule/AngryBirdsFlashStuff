package §!%§
{
   import §?!N§.§?!"§;
   import flash.display.DisplayObject;
   
   public class § D§
   {
      
      protected static const §]m§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §1G§:String = "flash";
      
      public static const § 0§:String = "initialized";
      
      public static const §+!0§:String = "loaded";
      
      public static const §[!H§:String = "level-started";
      
      public static const §9!K§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §9!,§:String = "crash-log";
      
      public static const §]z§:String = "crash-trace";
      
      public static const §,K§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §5!'§:Vector.<§^i§> = new Vector.<§^i§>();
       
      
      public function § D§()
      {
         super();
      }
      
      public static function §1Z§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §]!§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§1G§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§]m§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §?!"§.§7`§(param1,param2,param3,param4,param5);
         }
      }
   }
}
