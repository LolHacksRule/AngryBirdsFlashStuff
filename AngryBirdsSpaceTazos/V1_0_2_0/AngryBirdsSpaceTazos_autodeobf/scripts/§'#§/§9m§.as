package §'#§
{
   import §<l§.§#r§;
   import flash.display.DisplayObject;
   
   public class §9m§
   {
      
      protected static const §;5§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const § !g§:String = "flash";
      
      public static const §5",§:String = "initialized";
      
      public static const §-!D§:String = "loaded";
      
      public static const §@_§:String = "level-started";
      
      public static const §<!J§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const § set§:String = "crash-log";
      
      public static const §2T§:String = "crash-trace";
      
      public static const §,!]§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §,"&§:Vector.<§+"-§> = new Vector.<§+"-§>();
       
      
      public function §9m§()
      {
         super();
      }
      
      public static function §7=§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §6x§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§ !g§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§;5§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §#r§.§#!2§(param1,param2,param3,param4,param5);
         }
      }
   }
}
