package §9!?§
{
   import §^3§.§1K§;
   import flash.display.DisplayObject;
   
   public class §%t§
   {
      
      protected static const §'!?§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §]^§:String = "flash";
      
      public static const §0A§:String = "initialized";
      
      public static const §%u§:String = "loaded";
      
      public static const §;?§:String = "level-started";
      
      public static const §5!B§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §>!`§:String = "crash-log";
      
      public static const §96§:String = "crash-trace";
      
      public static const §-Z§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §6!d§:Vector.<§0!9§> = new Vector.<§0!9§>();
       
      
      public function §%t§()
      {
         super();
      }
      
      public static function §%V§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §^!4§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§]^§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§'!?§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §1K§.§%f§(param1,param2,param3,param4,param5);
         }
      }
   }
}
