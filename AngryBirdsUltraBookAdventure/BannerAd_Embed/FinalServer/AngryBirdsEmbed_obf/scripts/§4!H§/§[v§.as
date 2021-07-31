package §4!H§
{
   import §1!E§.§<w§;
   import flash.display.DisplayObject;
   
   public class §[v§
   {
      
      protected static const §-<§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §+2§:String = "flash";
      
      public static const §?i§:String = "initialized";
      
      public static const §&! §:String = "loaded";
      
      public static const §<J§:String = "level-started";
      
      public static const §break§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §]W§:String = "crash-log";
      
      public static const §"1§:String = "crash-trace";
      
      public static const §!l§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §'&§:Vector.<§+D§> = new Vector.<§+D§>();
       
      
      public function §[v§()
      {
         super();
      }
      
      public static function §97§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §,9§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§+2§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §7q§(§-<§,param1,param2,param3,param4);
      }
      
      protected static function §7q§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §<w§.§1x§(param1,param2,param3,param4,param5);
         }
      }
   }
}
