package §`!8§
{
   import §^R§.§6!-§;
   import flash.display.DisplayObject;
   
   public class §^!0§
   {
      
      protected static const §3!>§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §>2§:String = "flash";
      
      public static const §^!F§:String = "initialized";
      
      public static const §"L§:String = "loaded";
      
      public static const §#!'§:String = "level-started";
      
      public static const §7g§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §?!J§:String = "crash-log";
      
      public static const §,n§:String = "crash-trace";
      
      public static const §'S§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §>l§:Vector.<§>!,§> = new Vector.<§>!,§>();
       
      
      public function §^!0§()
      {
         super();
      }
      
      public static function §^!L§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §%P§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§>2§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§3!>§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §6!-§.§'!P§(param1,param2,param3,param4,param5);
         }
      }
   }
}
