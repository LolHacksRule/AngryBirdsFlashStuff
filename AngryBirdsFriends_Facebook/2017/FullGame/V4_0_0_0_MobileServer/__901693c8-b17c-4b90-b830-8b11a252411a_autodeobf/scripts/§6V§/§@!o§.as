package §6V§
{
   import §6!0§.§ "8§;
   import flash.display.DisplayObject;
   
   public class §@!o§
   {
      
      protected static const §4#&§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §^"$§:String = "flash";
      
      public static const §""-§:String = "initialized";
      
      public static const §<#`§:String = "loaded";
      
      public static const §8z§:String = "level-started";
      
      public static const §'l§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §0"m§:String = "crash-log";
      
      public static const §5!J§:String = "crash-trace";
      
      public static const §[!D§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §<$0§:Vector.<§!"x§> = new Vector.<§!"x§>();
       
      
      public function §@!o§()
      {
         super();
      }
      
      public static function §3,§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §^!r§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§^"$§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§4#&§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            § "8§.§ "§(param1,param2,param3,param4,param5);
         }
      }
   }
}
