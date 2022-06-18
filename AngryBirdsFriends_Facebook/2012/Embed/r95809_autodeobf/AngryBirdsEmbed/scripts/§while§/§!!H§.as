package §while§
{
   import §#;§.§`!D§;
   import flash.display.DisplayObject;
   
   public class §!!H§
   {
      
      protected static const §3!7§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §0!"§:String = "flash";
      
      public static const §2@§:String = "initialized";
      
      public static const §,%§:String = "loaded";
      
      public static const §!"§:String = "level-started";
      
      public static const §%!2§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §;D§:String = "crash-log";
      
      public static const §=H§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §2u§:Vector.<§6!4§> = new Vector.<§6!4§>();
       
      
      public function §!!H§()
      {
         super();
      }
      
      public static function §0?§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §53§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§0!"§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §^!>§(§3!7§,param1,param2,param3,param4);
      }
      
      protected static function §^!>§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §`!D§.§&j§(param1,param2,param3,param4,param5);
         }
      }
   }
}
