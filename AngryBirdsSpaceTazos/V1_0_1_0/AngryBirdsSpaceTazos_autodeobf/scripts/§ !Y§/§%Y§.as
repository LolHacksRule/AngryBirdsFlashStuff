package § !Y§
{
   import §<"8§.§6!c§;
   import flash.display.DisplayObject;
   
   public class §%Y§
   {
      
      protected static const §?!U§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §!!&§:String = "flash";
      
      public static const §`!;§:String = "initialized";
      
      public static const §%!%§:String = "loaded";
      
      public static const §!t§:String = "level-started";
      
      public static const §49§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §8!5§:String = "crash-log";
      
      public static const §83§:String = "crash-trace";
      
      public static const §3d§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §&!V§:Vector.<§2@§> = new Vector.<§2@§>();
       
      
      public function §%Y§()
      {
         super();
      }
      
      public static function §%!-§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §^!U§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§!!&§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§?!U§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §6!c§.§?!6§(param1,param2,param3,param4,param5);
         }
      }
   }
}
