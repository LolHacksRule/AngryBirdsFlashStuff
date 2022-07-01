package §`!s§
{
   import §6!!§.§4G§;
   import flash.display.DisplayObject;
   
   public class §!z§
   {
      
      protected static const §`!k§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §<4§:String = "flash";
      
      public static const §7C§:String = "initialized";
      
      public static const §?U§:String = "loaded";
      
      public static const §'!z§:String = "level-started";
      
      public static const §1!;§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const § ^§:String = "crash-log";
      
      public static const §=!W§:String = "crash-trace";
      
      public static const § !i§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §#i§:Vector.<§@!A§> = new Vector.<§@!A§>();
       
      
      public function §!z§()
      {
         super();
      }
      
      public static function §5E§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function § !F§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§<4§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§`!k§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §4G§.§&!7§(param1,param2,param3,param4,param5);
         }
      }
   }
}
