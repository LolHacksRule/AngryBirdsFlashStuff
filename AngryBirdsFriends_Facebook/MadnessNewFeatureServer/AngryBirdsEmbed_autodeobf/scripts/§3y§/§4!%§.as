package §3y§
{
   import §"=§.§1!B§;
   import flash.display.DisplayObject;
   
   public class §4!%§
   {
      
      protected static const §^q§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §15§:String = "flash";
      
      public static const §09§:String = "initialized";
      
      public static const §#!'§:String = "loaded";
      
      public static const §@j§:String = "level-started";
      
      public static const §0`§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §%?§:String = "crash-log";
      
      public static const §81§:String = "crash-trace";
      
      public static const §=4§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §-0§:Vector.<§31§> = new Vector.<§31§>();
       
      
      public function §4!%§()
      {
         super();
      }
      
      public static function §,%§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §#H§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§15§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §9J§(§^q§,param1,param2,param3,param4);
      }
      
      protected static function §9J§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §1!B§.§#!O§(param1,param2,param3,param4,param5);
         }
      }
   }
}
