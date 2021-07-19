package §0!!§
{
   import flash.display.DisplayObject;
   
   public class §+i§
   {
      
      protected static const §>6§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §=!§:String = "flash";
      
      public static const § E§:String = "initialized";
      
      public static const §`!9§:String = "loaded";
      
      public static const §<K§:String = "level-started";
      
      public static const §^=§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §#4§:String = "crash-log";
      
      public static const §3%§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §-e§:Vector.<§0U§> = new Vector.<§0U§>();
       
      
      public function §+i§()
      {
         super();
      }
      
      public static function §4g§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §3!7§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§=!§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §[c§(§>6§,param1,param2,param3,param4);
      }
      
      protected static function §[c§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §%B§.§,!2§(param1,param2,param3,param4,param5);
         }
      }
   }
}
