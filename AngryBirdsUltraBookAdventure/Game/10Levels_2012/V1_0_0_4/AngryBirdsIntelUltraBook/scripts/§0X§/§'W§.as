package §0X§
{
   import §@i§.§=r§;
   import flash.display.DisplayObject;
   
   public class §'W§
   {
      
      protected static const §3!&§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §0!T§:String = "flash";
      
      public static const §[!#§:String = "initialized";
      
      public static const §-!f§:String = "loaded";
      
      public static const §9!e§:String = "level-started";
      
      public static const §`q§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §"<§:String = "crash-log";
      
      public static const §><§:String = "crash-trace";
      
      public static const §7!2§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §"#§:Vector.<§9w§> = new Vector.<§9w§>();
       
      
      public function §'W§()
      {
         super();
      }
      
      public static function set(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §var §(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§0!T§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§3!&§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §=r§.§[!3§(param1,param2,param3,param4,param5);
         }
      }
   }
}
