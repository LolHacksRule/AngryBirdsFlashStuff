package §4!'§
{
   import §6L§.§^3§;
   import flash.display.DisplayObject;
   
   public class §4R§
   {
      
      protected static const §5w§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §-N§:String = "flash";
      
      public static const §!!2§:String = "initialized";
      
      public static const §%?§:String = "loaded";
      
      public static const §5"§:String = "level-started";
      
      public static const §4!0§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §2"§:String = "crash-log";
      
      public static const § set§:String = "crash-trace";
      
      public static const §54§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §&>§:Vector.<§`Q§> = new Vector.<§`Q§>();
       
      
      public function §4R§()
      {
         super();
      }
      
      public static function §"!;§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §>J§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§-N§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §"Z§(§5w§,param1,param2,param3,param4);
      }
      
      protected static function §"Z§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §^3§.§%Z§(param1,param2,param3,param4,param5);
         }
      }
   }
}
