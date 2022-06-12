package §-!^§
{
   import §6<§.§&`§;
   import flash.display.DisplayObject;
   
   public class §-y§
   {
      
      protected static const §-P§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const § else§:String = "flash";
      
      public static const §]a§:String = "initialized";
      
      public static const §""3§:String = "loaded";
      
      public static const §6!x§:String = "level-started";
      
      public static const §>!§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §2!@§:String = "crash-log";
      
      public static const §8!z§:String = "crash-trace";
      
      public static const §%"-§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §3!%§:Vector.<§,"=§> = new Vector.<§,"=§>();
       
      
      public function §-y§()
      {
         super();
      }
      
      public static function §6!r§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §+"=§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§ else§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§-P§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §&`§.performCall(param1,param2,param3,param4,param5);
         }
      }
   }
}
