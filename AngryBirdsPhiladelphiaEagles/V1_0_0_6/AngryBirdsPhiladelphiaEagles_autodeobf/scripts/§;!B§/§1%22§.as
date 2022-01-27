package §;!B§
{
   import §@!L§.§%K§;
   import flash.display.DisplayObject;
   
   public class §1"§
   {
      
      protected static const §46§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §[!,§:String = "flash";
      
      public static const §7l§:String = "initialized";
      
      public static const §=Y§:String = "loaded";
      
      public static const §'2§:String = "level-started";
      
      public static const §@r§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §9E§:String = "crash-log";
      
      public static const §=!L§:String = "crash-trace";
      
      public static const §2!5§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §!-§:Vector.<§@!M§> = new Vector.<§@!M§>();
       
      
      public function §1"§()
      {
         super();
      }
      
      public static function §#!7§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §`!O§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§[!,§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§46§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §%K§.§6!K§(param1,param2,param3,param4,param5);
         }
      }
   }
}
