package §_-aD§
{
   import §_-Is§.§_-3Q§;
   import flash.display.DisplayObject;
   
   public class §_-OS§
   {
      
      protected static const §_-M7§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §_-7G§:String = "flash";
      
      public static const §_-AV§:String = "initialized";
      
      public static const §_-1j§:String = "loaded";
      
      public static const §_-2c§:String = "level-started";
      
      public static const §_-gK§:String = "level-completed";
      
      public static const §_-mj§:String = "gpu-rendering";
      
      public static const §_-3D§:String = "cpu-rendering";
      
      public static const §_-m4§:String = "crashed";
      
      public static const §_-6a§:String = "crash-log";
      
      public static const §_-cw§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §_-Zd§:Vector.<§_-QV§> = new Vector.<§_-QV§>();
       
      
      public function §_-OS§()
      {
         super();
      }
      
      public static function §_-C8§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §_-0-7§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§_-7G§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §_-oQ§(§_-M7§,param1,param2,param3,param4);
      }
      
      protected static function §_-oQ§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §_-3Q§.§_-st§(param1,param2,param3,param4,param5);
         }
      }
   }
}
