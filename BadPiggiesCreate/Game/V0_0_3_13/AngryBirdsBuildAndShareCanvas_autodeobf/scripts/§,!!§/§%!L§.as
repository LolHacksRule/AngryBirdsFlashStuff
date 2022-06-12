package §,!!§
{
   import §3A§.§>1§;
   import flash.display.DisplayObject;
   
   public class §%!L§
   {
      
      protected static const §4T§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §>p§:String = "flash";
      
      public static const §&!+§:String = "initialized";
      
      public static const §-Z§:String = "loaded";
      
      public static const §`s§:String = "level-started";
      
      public static const §4V§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §3!h§:String = "crash-log";
      
      public static const §1%§:String = "crash-trace";
      
      public static const §'n§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §0!t§:Vector.<§>"3§> = new Vector.<§>"3§>();
       
      
      public function §%!L§()
      {
         super();
      }
      
      public static function §&t§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §"!@§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§>p§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§4T§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §>1§.performCall(param1,param2,param3,param4,param5);
         }
      }
   }
}
