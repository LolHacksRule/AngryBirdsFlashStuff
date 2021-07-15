package com.rovio.utils
{
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import flash.display.DisplayObject;
   
   public class GoogleAnalyticsTracker
   {
      
      protected static const TRACKING_FUNCTION:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const CATEGORY_FLASH:String = "flash";
      
      public static const ACTION_FLASH_INITIALIZED:String = "initialized";
      
      public static const ACTION_FLASH_LOADED:String = "loaded";
      
      public static const ACTION_GAME_LEVEL_STARTED:String = "level-started";
      
      public static const ACTION_GAME_LEVEL_COMPLETED:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const ACTION_APPLICATION_CRASH_LOG:String = "crash-log";
      
      public static const ACTION_APPLICATION_CRASH_TRACE:String = "crash-trace";
      
      public static const ACTION_XEET:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var sEventQueue:Vector.<GoogleAnalyticsEvent> = new Vector.<GoogleAnalyticsEvent>();
       
      
      public function GoogleAnalyticsTracker()
      {
         super();
      }
      
      public static function initFlashVersion(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function trackFlashEvent(param1:String, param2:String = null, param3:int = 0) : void
      {
         trackEvent(CATEGORY_FLASH,param1,param2,param3);
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         trackSampledEvent(TRACKING_FUNCTION,param1,param2,param3,param4);
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         if(enabled)
         {
            ExternalInterfaceHandler.performCall(param1,param2,param3,param4,param5);
         }
      }
   }
}
