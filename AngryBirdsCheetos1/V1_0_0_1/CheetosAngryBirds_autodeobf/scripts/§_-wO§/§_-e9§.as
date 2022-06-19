package §_-wO§
{
   import §_-3N§.§_-Dp§;
   import flash.display.DisplayObject;
   
   public class §_-e9§
   {
      
      protected static const §_-J6§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §_-l6§:String = "flash";
      
      public static const §_-0-w§:String = "initialized";
      
      public static const §_-kh§:String = "loaded";
      
      public static const §_-od§:String = "level-started";
      
      public static const §_-Md§:String = "level-completed";
      
      public static const §_-iV§:String = "gpu-rendering";
      
      public static const §_-Oo§:String = "cpu-rendering";
      
      public static const §_-ox§:String = "crashed";
      
      public static const §_-2n§:String = "crash-log";
      
      public static const §_-Rz§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §_-f-§:Vector.<§_-9A§> = new Vector.<§_-9A§>();
       
      
      public function §_-e9§()
      {
         super();
      }
      
      public static function §_-9e§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §_-k§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§_-l6§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §_-hq§(§_-J6§,param1,param2,param3,param4);
      }
      
      protected static function §_-hq§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §_-Dp§.§_-JB§(param1,param2,param3,param4,param5);
         }
      }
   }
}
