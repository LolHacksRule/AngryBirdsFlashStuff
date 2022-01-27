package §+d§
{
   import §5"Q§.§5"s§;
   import flash.display.DisplayObject;
   
   public class §`!<§
   {
      
      protected static const §-!g§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §8!a§:String = "flash";
      
      public static const §-!§:String = "initialized";
      
      public static const §?z§:String = "loaded";
      
      public static const §-x§:String = "level-started";
      
      public static const §;5§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §5>§:String = "crash-log";
      
      public static const §!#$§:String = "crash-trace";
      
      public static const §3#6§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §6!s§:Vector.<§9T§> = new Vector.<§9T§>();
       
      
      public function §`!<§()
      {
         super();
      }
      
      public static function §%!q§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §+#$§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§8!a§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §4n§(§-!g§,param1,param2,param3,param4);
      }
      
      protected static function §4n§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §5"s§.§<!8§(param1,param2,param3,param4,param5);
         }
      }
   }
}
