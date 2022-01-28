package §_-2F§
{
   import §_-WS§.§_-sm§;
   import flash.display.DisplayObject;
   
   public class §_-B4§
   {
      
      protected static const §_-Mo§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §_-0U§:String = "flash";
      
      public static const §_-os§:String = "initialized";
      
      public static const §_-zc§:String = "loaded";
      
      public static const §_-u0§:String = "level-started";
      
      public static const §_-JW§:String = "level-completed";
      
      public static const §_-Yf§:String = "gpu-rendering";
      
      public static const §_-og§:String = "cpu-rendering";
      
      public static const §_-w4§:String = "crashed";
      
      public static const §_-Qs§:String = "crash-log";
      
      public static const §_-sv§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §_-60§:Vector.<§_-Ej§> = new Vector.<§_-Ej§>();
       
      
      public function §_-B4§()
      {
         super();
      }
      
      public static function §_-61§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §_-du§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§_-0U§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §_-Oy§(§_-Mo§,param1,param2,param3,param4);
      }
      
      protected static function §_-Oy§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §_-sm§.§_-rT§(param1,param2,param3,param4,param5);
         }
      }
   }
}
