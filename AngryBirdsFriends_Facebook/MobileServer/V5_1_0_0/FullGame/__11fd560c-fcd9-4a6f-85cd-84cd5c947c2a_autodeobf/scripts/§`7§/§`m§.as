package §`7§
{
   import §%!x§.§^!K§;
   import flash.display.DisplayObject;
   
   public class §`m§
   {
      
      protected static const §%H§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §5G§:String = "flash";
      
      public static const §4!s§:String = "initialized";
      
      public static const §3!W§:String = "loaded";
      
      public static const §+"-§:String = "level-started";
      
      public static const §&G§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §`#O§:String = "crash-log";
      
      public static const §4!e§:String = "crash-trace";
      
      public static const §""Q§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §8"Y§:Vector.<§0§> = new Vector.<§0§>();
       
      
      public function §`m§()
      {
         super();
      }
      
      public static function §!"?§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §"<§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§5G§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§%H§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §^!K§.§+"D§(param1,param2,param3,param4,param5);
         }
      }
   }
}
