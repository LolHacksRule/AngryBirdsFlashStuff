package §7A§
{
   import § 0§.§@Y§;
   import flash.display.DisplayObject;
   
   public class §>!]§
   {
      
      protected static const §=#0§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §5#,§:String = "flash";
      
      public static const §0"`§:String = "initialized";
      
      public static const §#8§:String = "loaded";
      
      public static const § ">§:String = "level-started";
      
      public static const §6k§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §4"%§:String = "crash-log";
      
      public static const §&"P§:String = "crash-trace";
      
      public static const §@!v§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §,"o§:Vector.<§;"&§> = new Vector.<§;"&§>();
       
      
      public function §>!]§()
      {
         super();
      }
      
      public static function §%!a§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §-!7§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§5#,§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §'j§(§=#0§,param1,param2,param3,param4);
      }
      
      protected static function §'j§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §@Y§.§7"H§(param1,param2,param3,param4,param5);
         }
      }
   }
}
