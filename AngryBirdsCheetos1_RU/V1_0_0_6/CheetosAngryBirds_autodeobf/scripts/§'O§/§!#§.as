package §'O§
{
   import §%!5§.§;D§;
   import flash.display.DisplayObject;
   
   public class §!#§
   {
      
      protected static const §;!L§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §<S§:String = "flash";
      
      public static const §'!M§:String = "initialized";
      
      public static const §`B§:String = "loaded";
      
      public static const §0!'§:String = "level-started";
      
      public static const §6s§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §[8§:String = "crash-log";
      
      public static const §3!6§:String = "crash-trace";
      
      public static const §&%§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §>k§:Vector.<§1b§> = new Vector.<§1b§>();
       
      
      public function §!#§()
      {
         super();
      }
      
      public static function §8Z§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §6!S§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§<S§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§;!L§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §;D§.§;!6§(param1,param2,param3,param4,param5);
         }
      }
   }
}
