package § e§
{
   import §5!;§.§40§;
   import flash.display.DisplayObject;
   
   public class §0y§
   {
      
      protected static const §-l§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §1@§:String = "flash";
      
      public static const §^x§:String = "initialized";
      
      public static const §7p§:String = "loaded";
      
      public static const ACTION_GAME_LEVEL_STARTED:String = "level-started";
      
      public static const §<a§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §0!B§:String = "crash-log";
      
      public static const §88§:String = "crash-trace";
      
      public static const §?!C§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §+[§:Vector.<§#>§> = new Vector.<§#>§>();
       
      
      public function §0y§()
      {
         super();
      }
      
      public static function §=!_§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §%p§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§1@§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§-l§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §40§.§&'§(param1,param2,param3,param4,param5);
         }
      }
   }
}
