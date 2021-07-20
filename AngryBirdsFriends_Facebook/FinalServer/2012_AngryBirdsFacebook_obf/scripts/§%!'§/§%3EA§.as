package §%!'§
{
   import §<<§.§=!L§;
   import flash.display.DisplayObject;
   
   public class §>A§
   {
      
      protected static const §1<§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §while§:String = "flash";
      
      public static const §[l§:String = "initialized";
      
      public static const §'!4§:String = "loaded";
      
      public static const §7M§:String = "level-started";
      
      public static const §&Y§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §0m§:String = "crash-log";
      
      public static const §!! §:String = "crash-trace";
      
      public static const §3!M§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §<!6§:Vector.<§5Q§> = new Vector.<§5Q§>();
       
      
      public function §>A§()
      {
         super();
      }
      
      public static function §^7§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §7"9§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§while§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§1<§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §=!L§.§+">§(param1,param2,param3,param4,param5);
         }
      }
   }
}
