package §4u§
{
   import §26§.§3v§;
   import flash.display.DisplayObject;
   
   public class §]b§
   {
      
      protected static const §0"4§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §4!y§:String = "flash";
      
      public static const §0B§:String = "initialized";
      
      public static const §0,§:String = "loaded";
      
      public static const §9"A§:String = "level-started";
      
      public static const §#N§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §5t§:String = "crash-log";
      
      public static const §^"1§:String = "crash-trace";
      
      public static const §8"=§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §<"!§:Vector.<§25§> = new Vector.<§25§>();
       
      
      public function §]b§()
      {
         super();
      }
      
      public static function §[7§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §<>§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§4!y§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§0"4§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §3v§.§0!Z§(param1,param2,param3,param4,param5);
         }
      }
   }
}
