package §`!@§
{
   import §?u§.§+V§;
   import flash.display.DisplayObject;
   
   public class §&[§
   {
      
      protected static const §,! §:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §[r§:String = "flash";
      
      public static const §2!W§:String = "initialized";
      
      public static const §?!N§:String = "loaded";
      
      public static const §4;§:String = "level-started";
      
      public static const §%,§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §]<§:String = "crash-log";
      
      public static const §?d§:String = "crash-trace";
      
      public static const §]C§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §##§:Vector.<§9Z§> = new Vector.<§9Z§>();
       
      
      public function §&[§()
      {
         super();
      }
      
      public static function §=!1§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function § !9§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§[r§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§,! §,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §+V§.§3!'§(param1,param2,param3,param4,param5);
         }
      }
   }
}
