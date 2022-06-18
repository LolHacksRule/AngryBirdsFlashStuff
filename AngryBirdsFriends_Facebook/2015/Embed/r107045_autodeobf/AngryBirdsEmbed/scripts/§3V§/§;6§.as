package §3V§
{
   import §"6§.§!9§;
   import flash.display.DisplayObject;
   
   public class §;6§
   {
      
      protected static const §?d§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §9S§:String = "flash";
      
      public static const §#!F§:String = "initialized";
      
      public static const §<2§:String = "loaded";
      
      public static const §#!D§:String = "level-started";
      
      public static const §&]§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §"!A§:String = "crash-log";
      
      public static const §<9§:String = "crash-trace";
      
      public static const §in §:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §=;§:Vector.<§?u§> = new Vector.<§?u§>();
       
      
      public function §;6§()
      {
         super();
      }
      
      public static function §>3§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §[V§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§9S§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §#!8§(§?d§,param1,param2,param3,param4);
      }
      
      protected static function §#!8§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §!9§.§=G§(param1,param2,param3,param4,param5);
         }
      }
   }
}
