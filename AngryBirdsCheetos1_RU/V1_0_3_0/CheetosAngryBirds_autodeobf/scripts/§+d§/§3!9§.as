package §+d§
{
   import flash.display.DisplayObject;
   import §import§.§&^§;
   
   public class §3!9§
   {
      
      protected static const §+!_§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §1L§:String = "flash";
      
      public static const §%!;§:String = "initialized";
      
      public static const §3!!§:String = "loaded";
      
      public static const §[!!§:String = "level-started";
      
      public static const §]q§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §!u§:String = "crash-log";
      
      public static const § Z§:String = "crash-trace";
      
      public static const §>!9§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §>n§:Vector.<§3§> = new Vector.<§3§>();
       
      
      public function §3!9§()
      {
         super();
      }
      
      public static function §&0§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §&!V§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§1L§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§+!_§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §&^§.§4'§(param1,param2,param3,param4,param5);
         }
      }
   }
}
