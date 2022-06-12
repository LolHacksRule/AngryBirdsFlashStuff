package §9@§
{
   import §30§.§'"+§;
   import flash.display.DisplayObject;
   
   public class §3w§
   {
      
      protected static const §6V§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §`%§:String = "flash";
      
      public static const §1"=§:String = "initialized";
      
      public static const §5!'§:String = "loaded";
      
      public static const §#!S§:String = "level-started";
      
      public static const §>!P§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §-!f§:String = "crash-log";
      
      public static const §08§:String = "crash-trace";
      
      public static const §+"V§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §1"!§:Vector.<§#1§> = new Vector.<§#1§>();
       
      
      public function §3w§()
      {
         super();
      }
      
      public static function §&"B§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §#!0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§`%§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§6V§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §'"+§.§'!#§(param1,param2,param3,param4,param5);
         }
      }
   }
}
