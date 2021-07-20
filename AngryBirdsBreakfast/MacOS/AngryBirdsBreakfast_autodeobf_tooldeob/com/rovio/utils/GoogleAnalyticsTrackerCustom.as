package com.rovio.utils
{
   import flash.utils.getTimer;
   
   public class GoogleAnalyticsTrackerCustom extends GoogleAnalyticsTracker
   {
      
      public static const ACTION_GAME_LEVEL_SELECTION:String = "level-selection";
      
      public static const ACTION_REGISTRATION_SUCCESSFUL:String = "registration-success";
      
      public static const ACTION_REGISTRATION_FAILURE:String = "registration-failure";
      
      public static const ACTION_LOGIN_SUCCESSFUL:String = "login-success";
      
      public static const ACTION_LOGIN_FAILURE:String = "login-failure";
      
      private static const DEBUG_MODE:Boolean = AngryBirdsBase.DEBUG_MODE_ENABLED;
      
      private static const CATEGORY_FRAMERATE:String = "framerate";
      
      private static const CATEGORY_POWERUP_USED:String = "powerup-used";
      
      private static const CATEGORY_LEVEL_POWERUP_USED:String = "level-powerup-used";
      
      private static const CATEGORY_WARNING:String = "warning";
      
      private static const CATEGORY_USER_STATISTICS:String = "user-statistics";
      
      private static const CATEGORY_ERROR:String = "error";
      
      private static const ACTION_WARNING_DOWNLOAD_FAILED:String = "download-failed";
      
      private static const ACTION_WARNING_INVALID_LEVEL:String = "invalid-level";
      
      private static const ACTION_WARNING_FLASHVAR_MISSING:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [ACTION_GAME_LEVEL_STARTED,ACTION_GAME_LEVEL_COMPLETED];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH_LOG,ACTION_APPLICATION_CRASH_TRACE];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [CATEGORY_FRAMERATE];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [CATEGORY_ERROR];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const ACTION_CPU_FPS_FULL_SCREEN_REPORT:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const ACTION_GPU_FPS_FULL_SCREEN_REPORT:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var sLevelsReportedFPS:Array = [];
       
      
      public function GoogleAnalyticsTrackerCustom()
      {
         super();
      }
      
      public static function initSampling() : void
      {
         if(Math.random() <= 0.1)
         {
            sSample10Percent = true;
         }
         if(Math.random() <= 0.01)
         {
            sSample1Percent = true;
         }
      }
      
      public static function trackClientError(param1:int, param2:int) : void
      {
         trackFlashEvent(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function trackFlashEvent(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = getTrackingFunction(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         GoogleAnalyticsTracker.trackSampledEvent(_loc5_,CATEGORY_FLASH,param1,param2,param3);
      }
      
      public static function trackFramerateEvent(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(sLevelsReportedFPS.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = sLevelsReportedFPS.length == 0;
         sLevelsReportedFPS.push(param2);
         if(param3)
         {
            _loc6_ = GoogleAnalyticsTracker.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = GoogleAnalyticsTrackerCustom.ACTION_CPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         else
         {
            _loc6_ = GoogleAnalyticsTracker.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = GoogleAnalyticsTrackerCustom.ACTION_GPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         if(_loc5_)
         {
            trackFlashEvent(_loc6_,param1.toString(),param1);
         }
         trackCustomEvent(CATEGORY_FRAMERATE,_loc6_,param2,param1);
      }
      
      public static function trackDownloadFailed(param1:String) : void
      {
         trackCustomEvent(CATEGORY_WARNING,ACTION_WARNING_DOWNLOAD_FAILED,param1,0);
      }
      
      public static function trackInvalidLevel(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         trackCustomEvent(CATEGORY_WARNING,ACTION_WARNING_INVALID_LEVEL,param1,0);
      }
      
      public static function trackFlashVarMissing(param1:String) : void
      {
         trackCustomEvent(CATEGORY_WARNING,ACTION_WARNING_FLASHVAR_MISSING,param1,0);
      }
      
      public static function trackError(param1:String) : void
      {
         trackCustomEvent(CATEGORY_ERROR,param1,"",0,false);
      }
      
      private static function trackCustomEvent(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = TRACKING_FUNCTION;
            if(param5)
            {
               _loc6_ = getTrackingFunction(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function trackPowerupUsedEvent(param1:String, param2:String) : void
      {
         var _loc3_:int = getSecondsSince();
         trackFacebookEvent(CATEGORY_POWERUP_USED,param1,param2,0);
         trackFacebookEvent(CATEGORY_LEVEL_POWERUP_USED,param2,param1,0);
      }
      
      private static function trackFacebookEvent(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = TRACKING_FUNCTION;
            if(param5)
            {
               _loc6_ = getTrackingFunction(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function getTrackingFunction(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return TRACKING_FUNCTION;
      }
      
      private static function getSortedString(param1:Array) : String
      {
         var _loc4_:String = null;
         if(param1 == null || param1.length == 0)
         {
            return null;
         }
         var _loc2_:String = "";
         var _loc3_:Array = param1.concat();
         _loc3_.sort();
         for each(_loc4_ in _loc3_)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ += "-" + _loc4_;
            }
            else
            {
               _loc2_ = _loc4_;
            }
         }
         return _loc2_;
      }
      
      private static function getSecondsSince(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
