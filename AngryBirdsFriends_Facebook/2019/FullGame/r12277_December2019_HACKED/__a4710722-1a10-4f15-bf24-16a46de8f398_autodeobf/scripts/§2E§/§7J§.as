package §2E§
{
   import §]!4§.§=#c§;
   import flash.display.DisplayObject;
   
   public class §7J§
   {
      
      protected static const §'!&§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §2!7§:String = "flash";
      
      public static const §^"<§:String = "initialized";
      
      public static const §2! §:String = "loaded";
      
      public static const §,!L§:String = "level-started";
      
      public static const §%#w§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §;!r§:String = "crash-log";
      
      public static const §6!5§:String = "crash-trace";
      
      public static const §>!s§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §7"z§:Vector.<§+#a§> = new Vector.<§+#a§>();
       
      
      public function §7J§()
      {
         super();
      }
      
      public static function §-"X§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §4"x§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§2!7§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§'!&§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §=#c§.§<!t§(param1,param2,param3,param4,param5);
         }
      }
   }
}
