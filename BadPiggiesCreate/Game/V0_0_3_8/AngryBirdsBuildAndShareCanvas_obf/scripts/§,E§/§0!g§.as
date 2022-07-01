package §,E§
{
   import §]!h§.§%E§;
   import flash.display.DisplayObject;
   
   public class §0!g§
   {
      
      protected static const §1=§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §6"3§:String = "flash";
      
      public static const §6!E§:String = "initialized";
      
      public static const §>4§:String = "loaded";
      
      public static const §-!v§:String = "level-started";
      
      public static const §![§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §#!Z§:String = "crash-log";
      
      public static const §9Q§:String = "crash-trace";
      
      public static const §&o§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §@k§:Vector.<§6!J§> = new Vector.<§6!J§>();
       
      
      public function §0!g§()
      {
         super();
      }
      
      public static function §8l§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §8"0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§6"3§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§1=§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §%E§.performCall(param1,param2,param3,param4,param5);
         }
      }
   }
}
