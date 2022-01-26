package §=!S§
{
   import §>!I§.§8S§;
   import flash.display.DisplayObject;
   
   public class §+!G§
   {
      
      protected static const §=1§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §0!U§:String = "flash";
      
      public static const §,!C§:String = "initialized";
      
      public static const §8!+§:String = "loaded";
      
      public static const § 1§:String = "level-started";
      
      public static const §0v§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §7K§:String = "crash-log";
      
      public static const §^!§:String = "crash-trace";
      
      public static const §-!>§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §-!L§:Vector.<§7!-§> = new Vector.<§7!-§>();
       
      
      public function §+!G§()
      {
         super();
      }
      
      public static function §5!D§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §1!?§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§0!U§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§=1§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §8S§.§<p§(param1,param2,param3,param4,param5);
         }
      }
   }
}
