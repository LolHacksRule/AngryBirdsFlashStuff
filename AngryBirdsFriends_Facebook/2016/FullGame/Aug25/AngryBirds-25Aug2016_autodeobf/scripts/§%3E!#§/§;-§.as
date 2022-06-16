package §>!#§
{
   import §+"%§.§6X§;
   import flash.display.DisplayObject;
   
   public class §;-§
   {
      
      protected static const §2$0§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §#H§:String = "flash";
      
      public static const §7!h§:String = "initialized";
      
      public static const §1!]§:String = "loaded";
      
      public static const §6r§:String = "level-started";
      
      public static const §2x§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §;#l§:String = "crash-log";
      
      public static const §5F§:String = "crash-trace";
      
      public static const §3m§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §"!]§:Vector.<§5$#§> = new Vector.<§5$#§>();
       
      
      public function §;-§()
      {
         super();
      }
      
      public static function §`"H§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §`#f§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§#H§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§2$0§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §6X§.§3U§(param1,param2,param3,param4,param5);
         }
      }
   }
}
