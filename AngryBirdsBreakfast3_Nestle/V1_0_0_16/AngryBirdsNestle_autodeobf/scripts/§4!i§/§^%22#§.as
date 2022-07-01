package §4!i§
{
   import §;V§.§%c§;
   import flash.display.DisplayObject;
   
   public class §^"#§
   {
      
      protected static const §;i§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §&Q§:String = "flash";
      
      public static const §5T§:String = "initialized";
      
      public static const §-B§:String = "loaded";
      
      public static const §61§:String = "level-started";
      
      public static const §&!$§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §3",§:String = "crash-log";
      
      public static const §9"&§:String = "crash-trace";
      
      public static const § !2§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §='§:Vector.<§0!2§> = new Vector.<§0!2§>();
       
      
      public function §^"#§()
      {
         super();
      }
      
      public static function §'!5§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §1x§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§&Q§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§;i§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §%c§.§6"§(param1,param2,param3,param4,param5);
         }
      }
   }
}
