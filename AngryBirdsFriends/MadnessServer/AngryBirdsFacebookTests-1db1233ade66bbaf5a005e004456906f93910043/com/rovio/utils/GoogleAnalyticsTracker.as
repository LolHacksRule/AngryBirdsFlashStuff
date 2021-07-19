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
      
      public static function initFlashVersion(rootDisplayObject:DisplayObject, account:String) : void
      {
      }
      
      public static function trackFlashEvent(action:String, label:String = null, value:int = 0) : void
      {
         trackEvent(CATEGORY_FLASH,action,label,value);
      }
      
      private static function trackEvent(category:String, action:String, label:String, value:int = 0) : void
      {
         trackSampledEvent(TRACKING_FUNCTION,category,action,label,value);
      }
      
      protected static function trackSampledEvent(trackingFunction:String, category:String, action:String, label:String, value:int = 0) : void
      {
         if(enabled)
         {
            ExternalInterfaceHandler.performCall(trackingFunction,category,action,label,value);
         }
      }
   }
}
