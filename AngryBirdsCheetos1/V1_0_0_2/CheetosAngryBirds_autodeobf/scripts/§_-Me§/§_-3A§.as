package §_-Me§
{
   import §_-M6§.§_-Qg§;
   import flash.display.DisplayObject;
   
   public class §_-3A§
   {
      
      protected static const §_-ZK§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §_-RG§:String = "flash";
      
      public static const §_-2E§:String = "initialized";
      
      public static const §_-cK§:String = "loaded";
      
      public static const §_-Gi§:String = "level-started";
      
      public static const §_-0-v§:String = "level-completed";
      
      public static const §_-Qo§:String = "gpu-rendering";
      
      public static const §_-Zm§:String = "cpu-rendering";
      
      public static const §_-kc§:String = "crashed";
      
      public static const §_-Yn§:String = "crash-log";
      
      public static const §_-A3§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §_-2O§:Vector.<§_-tF§> = new Vector.<§_-tF§>();
       
      
      public function §_-3A§()
      {
         super();
      }
      
      public static function §_-AL§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §_-me§(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(§_-RG§,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         §_-fc§(§_-ZK§,param1,param2,param3,param4);
      }
      
      protected static function §_-fc§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            §_-Qg§.§_-No§(param1,param2,param3,param4,param5);
         }
      }
   }
}
