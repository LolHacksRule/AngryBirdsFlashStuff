package §2i§
{
   import §6!N§.§=x§;
   import flash.display.DisplayObject;
   
   public class §=Q§
   {
      
      protected static const §;R§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §`!g§:String = "flash";
      
      public static const §<! §:String = "initialized";
      
      public static const §%O§:String = "loaded";
      
      public static const §75§:String = "level-started";
      
      public static const §`!@§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §^!6§:String = "crash-log";
      
      public static const §2@§:String = "crash-trace";
      
      public static const §2+§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §9R§:Vector.<§"j§> = new Vector.<§"j§>();
       
      
      public function §=Q§()
      {
         super();
      }
      
      public static function §>'§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §<Q§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§`!g§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(§;R§,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §=x§.performCall(param1,param2,param3,param4,param5);
         }
      }
   }
}
