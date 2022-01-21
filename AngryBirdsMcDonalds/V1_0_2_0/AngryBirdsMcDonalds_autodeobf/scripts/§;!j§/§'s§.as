package §;!j§
{
   import §`c§.§`Z§;
   import flash.display.DisplayObject;
   
   public class §'s§
   {
      
      protected static const §=3§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §`!b§:String = "flash";
      
      public static const §6!g§:String = "initialized";
      
      public static const §-]§:String = "loaded";
      
      public static const ACTION_GAME_LEVEL_STARTED:String = "level-started";
      
      public static const §<!K§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §`@§:String = "crash-log";
      
      public static const §13§:String = "crash-trace";
      
      public static const §,'§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §>K§:Vector.<§%d§> = new Vector.<§%d§>();
       
      
      public function §'s§()
      {
         super();
      }
      
      public static function §&f§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §%!<§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§`!b§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§=3§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §`Z§.§?D§(param1,param2,param3,param4,param5);
         }
      }
   }
}
