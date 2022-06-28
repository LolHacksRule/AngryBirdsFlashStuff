package § !;§
{
   import §3!9§.§2!4§;
   import flash.display.DisplayObject;
   
   public class §^Y§
   {
      
      protected static const §=F§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §'!6§:String = "flash";
      
      public static const §6!%§:String = "initialized";
      
      public static const §#+§:String = "loaded";
      
      public static const §2!,§:String = "level-started";
      
      public static const §]m§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §4n§:String = "crash-log";
      
      public static const §4§:String = "crash-trace";
      
      public static const §!u§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §,!F§:Vector.<§6!1§> = new Vector.<§6!1§>();
       
      
      public function §^Y§()
      {
         super();
      }
      
      public static function §8'§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §#r§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§'!6§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §9E§(§=F§,param1,param2,param3,param4);
      }
      
      protected static function §9E§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §2!4§.§[L§(param1,param2,param3,param4,param5);
         }
      }
   }
}
