package §8!Q§
{
   import §=V§.§,m§;
   import flash.display.DisplayObject;
   
   public class §4§
   {
      
      protected static const §'"§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §[N§:String = "flash";
      
      public static const §%!H§:String = "initialized";
      
      public static const §9!c§:String = "loaded";
      
      public static const §#!e§:String = "level-started";
      
      public static const §1!k§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §[!D§:String = "crash-log";
      
      public static const §--§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §9!"§:Vector.<§0!&§> = new Vector.<§0!&§>();
       
      
      public function §4§()
      {
         super();
      }
      
      public static function §,!S§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §?!@§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§[N§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §#!F§(§'"§,param1,param2,param3,param4);
      }
      
      protected static function §#!F§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §,m§.performCall(param1,param2,param3,param4,param5);
         }
      }
   }
}
