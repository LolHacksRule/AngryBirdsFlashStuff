package §]+§
{
   import §;!o§.§>!l§;
   import flash.display.DisplayObject;
   
   public class §%!M§
   {
      
      protected static const §2!6§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §4i§:String = "flash";
      
      public static const §%!?§:String = "initialized";
      
      public static const §%6§:String = "loaded";
      
      public static const §4U§:String = "level-started";
      
      public static const §]-§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §-c§:String = "crash-log";
      
      public static const §<!J§:String = "crash-trace";
      
      public static const §&!9§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §8W§:Vector.<§2![§> = new Vector.<§2![§>();
       
      
      public function §%!M§()
      {
         super();
      }
      
      public static function §7o§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §[!G§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§4i§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§2!6§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §>!l§.§ a§(param1,param2,param3,param4,param5);
         }
      }
   }
}
