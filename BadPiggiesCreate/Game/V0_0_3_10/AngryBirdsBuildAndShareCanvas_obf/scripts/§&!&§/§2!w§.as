package §&!&§
{
   import §2!9§.§#"3§;
   import flash.display.DisplayObject;
   
   public class §2!w§
   {
      
      protected static const §2!0§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const § N§:String = "flash";
      
      public static const §-W§:String = "initialized";
      
      public static const §[""§:String = "loaded";
      
      public static const §3!f§:String = "level-started";
      
      public static const §3!G§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §+"4§:String = "crash-log";
      
      public static const §3j§:String = "crash-trace";
      
      public static const §^W§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §#"#§:Vector.<§?!R§> = new Vector.<§?!R§>();
       
      
      public function §2!w§()
      {
         super();
      }
      
      public static function §4!2§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §1p§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§ N§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§2!0§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §#"3§.performCall(param1,param2,param3,param4,param5);
         }
      }
   }
}
