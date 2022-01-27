package §"I§
{
   import §5^§.§3=§;
   import flash.display.DisplayObject;
   
   public class §7#§
   {
      
      protected static const §%!#§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §>_§:String = "flash";
      
      public static const § b§:String = "initialized";
      
      public static const §8!9§:String = "loaded";
      
      public static const §[!L§:String = "level-started";
      
      public static const §+6§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §0!&§:String = "crash-log";
      
      public static const §-'§:String = "crash-trace";
      
      public static const §,X§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §<<§:Vector.<§8z§> = new Vector.<§8z§>();
       
      
      public function §7#§()
      {
         super();
      }
      
      public static function §]!A§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §>!"§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§>_§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§%!#§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §3=§.§-!6§(param1,param2,param3,param4,param5);
         }
      }
   }
}
