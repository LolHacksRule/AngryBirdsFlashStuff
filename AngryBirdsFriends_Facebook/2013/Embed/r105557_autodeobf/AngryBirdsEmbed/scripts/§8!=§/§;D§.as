package §8!=§
{
   import §0!6§.§#!9§;
   import flash.display.DisplayObject;
   
   public class §;D§
   {
      
      protected static const §1E§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §]x§:String = "flash";
      
      public static const §5!A§:String = "initialized";
      
      public static const §0D§:String = "loaded";
      
      public static const §0!?§:String = "level-started";
      
      public static const §47§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §18§:String = "crash-log";
      
      public static const §3-§:String = "crash-trace";
      
      public static const §+>§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §9S§:Vector.<§`!8§> = new Vector.<§`!8§>();
       
      
      public function §;D§()
      {
         super();
      }
      
      public static function §]!8§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §<!L§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§]x§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §,!;§(§1E§,param1,param2,param3,param4);
      }
      
      protected static function §,!;§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §#!9§.§-! §(param1,param2,param3,param4,param5);
         }
      }
   }
}
