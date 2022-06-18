package §0!F§
{
   import §>!6§.§0L§;
   import flash.display.DisplayObject;
   
   public class §,!U§
   {
      
      protected static const §8!@§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §63§:String = "flash";
      
      public static const §!n§:String = "initialized";
      
      public static const §`e§:String = "loaded";
      
      public static const §"!4§:String = "level-started";
      
      public static const §"9§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §2!,§:String = "crash-log";
      
      public static const §"!_§:String = "crash-trace";
      
      public static const §,!O§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §^H§:Vector.<§3!4§> = new Vector.<§3!4§>();
       
      
      public function §,!U§()
      {
         super();
      }
      
      public static function §9!C§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §7!]§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§63§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§8!@§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §0L§.§[!H§(param1,param2,param3,param4,param5);
         }
      }
   }
}
