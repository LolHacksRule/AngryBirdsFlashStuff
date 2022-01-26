package §try§
{
   import §!!>§.§=-§;
   import flash.display.DisplayObject;
   
   public class §^h§
   {
      
      protected static const §4#§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §"!6§:String = "flash";
      
      public static const §=o§:String = "initialized";
      
      public static const §4>§:String = "loaded";
      
      public static const §[P§:String = "level-started";
      
      public static const §;t§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §1L§:String = "crash-log";
      
      public static const §%!A§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §<!3§:Vector.<§2l§> = new Vector.<§2l§>();
       
      
      public function §^h§()
      {
         super();
      }
      
      public static function §]!<§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §?z§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§"!6§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §^U§(§4#§,param1,param2,param3,param4);
      }
      
      protected static function §^U§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §=-§.§@1§(param1,param2,param3,param4,param5);
         }
      }
   }
}
