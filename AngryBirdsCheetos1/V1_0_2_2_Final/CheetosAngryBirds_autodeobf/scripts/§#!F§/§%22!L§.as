package §#!F§
{
   import §&!7§.§,!A§;
   import flash.display.DisplayObject;
   
   public class §"!L§
   {
      
      protected static const §9t§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §!!R§:String = "flash";
      
      public static const §;Z§:String = "initialized";
      
      public static const §?P§:String = "loaded";
      
      public static const §0y§:String = "level-started";
      
      public static const §6>§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §;!O§:String = "crash-log";
      
      public static const §#!7§:String = "crash-trace";
      
      public static const §"!'§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §'!V§:Vector.<§%%§> = new Vector.<§%%§>();
       
      
      public function §"!L§()
      {
         super();
      }
      
      public static function §1!-§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §`0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§!!R§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§9t§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §,!A§.§9!M§(param1,param2,param3,param4,param5);
         }
      }
   }
}
