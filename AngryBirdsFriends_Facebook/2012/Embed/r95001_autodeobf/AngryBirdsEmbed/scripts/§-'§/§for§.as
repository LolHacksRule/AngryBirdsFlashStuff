package §-'§
{
   import §]!+§.§1=§;
   import flash.display.DisplayObject;
   
   public class §for§
   {
      
      protected static const §#8§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §4w§:String = "flash";
      
      public static const §0'§:String = "initialized";
      
      public static const §+-§:String = "loaded";
      
      public static const §`#§:String = "level-started";
      
      public static const §'`§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §]X§:String = "crash-log";
      
      public static const §!U§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §!W§:Vector.<§]m§> = new Vector.<§]m§>();
       
      
      public function §for§()
      {
         super();
      }
      
      public static function §!j§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §>W§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§4w§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §%?§(§#8§,param1,param2,param3,param4);
      }
      
      protected static function §%?§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §1=§.§4I§(param1,param2,param3,param4,param5);
         }
      }
   }
}
