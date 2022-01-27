package §1!i§
{
   import §="V§.§""v§;
   import flash.display.DisplayObject;
   
   public class §>!%§
   {
      
      protected static const §!"<§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §'"r§:String = "flash";
      
      public static const §-#+§:String = "initialized";
      
      public static const §,F§:String = "loaded";
      
      public static const §,6§:String = "level-started";
      
      public static const §""+§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §!!W§:String = "crash-log";
      
      public static const §?#T§:String = "crash-trace";
      
      public static const §!"Y§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §3!d§:Vector.<§ "X§> = new Vector.<§ "X§>();
       
      
      public function §>!%§()
      {
         super();
      }
      
      public static function §-i§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §2!L§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§'"r§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §>#V§(§!"<§,param1,param2,param3,param4);
      }
      
      protected static function §>#V§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §""v§.§&R§(param1,param2,param3,param4,param5);
         }
      }
   }
}
