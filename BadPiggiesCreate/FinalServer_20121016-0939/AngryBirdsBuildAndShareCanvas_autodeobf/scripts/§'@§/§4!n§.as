package §'@§
{
   import §9";§.§#!c§;
   import flash.display.DisplayObject;
   
   public class §4!n§
   {
      
      protected static const §#,§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §@$§:String = "flash";
      
      public static const §%!Q§:String = "initialized";
      
      public static const §&!1§:String = "loaded";
      
      public static const §^",§:String = "level-started";
      
      public static const §]!y§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §3!c§:String = "crash-log";
      
      public static const §'"&§:String = "crash-trace";
      
      public static const §6C§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §^§:Vector.<§!+§> = new Vector.<§!+§>();
       
      
      public function §4!n§()
      {
         super();
      }
      
      public static function §'!b§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §@!Q§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§@$§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§#,§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §#!c§.performCall(param1,param2,param3,param4,param5);
         }
      }
   }
}
