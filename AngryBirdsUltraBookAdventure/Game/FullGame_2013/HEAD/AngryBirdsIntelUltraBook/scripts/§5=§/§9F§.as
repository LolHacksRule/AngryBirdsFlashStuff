package §5=§
{
   import §^!7§.§+!I§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §9F§ extends GoogleAnalyticsTracker
   {
      
      private static const DEBUG_MODE:Boolean = AngryBirdsFP11.DEBUG_MODE_ENABLED;
      
      private static const CATEGORY_POWERUP_USED:String = "powerup-used";
      
      private static const CATEGORY_LEVEL_POWERUP_USED:String = "level-powerup-used";
      
      private static const CATEGORY_POWERUP_LEVEL_COMPLETED:String = "powerup-" + § !I§;
      
      private static const CATEGORY_LEVEL_POWERUP_COMPLETED:String = § !I§ + "-powerup";
      
      private static const CATEGORY_FRAMERATE:String = "framerate";
      
      private static const CATEGORY_EXTERNAL_PAUSE:String = "external-pause";
      
      private static const CATEGORY_GIFT:String = "gift";
      
      private static const CATEGORY_SHOP:String = "shop";
      
      private static const CATEGORY_BRAG:String = "brag";
      
      private static const CATEGORY_INVITE:String = "invite";
      
      private static const CATEGORY_AVATAR:String = "avatar";
      
      private static const CATEGORY_WARNING:String = "warning";
      
      private static const CATEGORY_USER_STATISTICS:String = "user-statistics";
      
      private static const CATEGORY_ERROR:String = "error";
      
      private static const ACTION_EXTERNAL_PAUSED:String = "paused";
      
      private static const ACTION_EXTERNAL_RESUMED:String = "resumed";
      
      private static const ACTION_GIFT_CLAIMED:String = "gift-claimed";
      
      private static const ACTION_CAMPAIGN_GIFT_CLAIMED:String = "campaign-gift-claimed";
      
      private static const ACTION_SHOP_OPEN:String = "opened";
      
      private static const ACTION_SHOP_PRODUCT_SELECTED:String = "product-selected";
      
      private static const ACTION_SHOP_PRODUCT_BUY_SELECTED:String = "product-buy-selected";
      
      private static const ACTION_SHOP_PRODUCT_BUY_COMPLETED:String = "product-buy-completed";
      
      private static const ACTION_BRAG_SHOWN:String = "brag-shown";
      
      private static const ACTION_BRAG_CLICKED:String = "brag-clicked";
      
      private static const ACTION_INVITE_FRIEND_CLICKED:String = "friend-clicked";
      
      private static const ACTION_INVITE_GENERIC_CLICKED:String = "generic-clicked";
      
      private static const ACTION_AVATAR_OPEN:String = "opened";
      
      private static const ACTION_AVATAR_SET:String = "set";
      
      private static const ACTION_AVATAR_PRODUCT_SET:String = "product-set";
      
      private static const ACTION_AVATAR_PRODUCT_BUY_SELECTED:String = ACTION_SHOP_PRODUCT_BUY_SELECTED;
      
      private static const ACTION_AVATAR_PRODUCT_BUY_COMPLETED:String = ACTION_SHOP_PRODUCT_BUY_COMPLETED;
      
      private static const ACTION_AVATAR_SHARE_CLICKED:String = "share-clicked";
      
      private static const ACTION_AVATAR_SHARE_COMPLETED:String = "share-completed";
      
      private static const ACTION_WARNING_DOWNLOAD_FAILED:String = "download-failed";
      
      private static const ACTION_WARNING_3RD_PARTY_COOKIES_DISABLED:String = "3rd-party-cookies-missing";
      
      private static const ACTION_WARNING_INVALID_LEVEL:String = "invalid-level";
      
      private static const ACTION_WARNING_FLASHVAR_MISSING:String = "flash-var-missing";
      
      private static const ACTION_USER_STATISTIC_FRIEND_COUNT:String = "friend-count";
      
      private static const ACTION_ADVERTISEMENT_CLICK:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§4'§,§ !I§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§&b§,§;=§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [CATEGORY_POWERUP_USED,CATEGORY_LEVEL_POWERUP_USED,CATEGORY_POWERUP_LEVEL_COMPLETED,CATEGORY_LEVEL_POWERUP_COMPLETED,CATEGORY_FRAMERATE,CATEGORY_EXTERNAL_PAUSE,CATEGORY_GIFT,CATEGORY_SHOP,CATEGORY_BRAG,CATEGORY_INVITE,CATEGORY_AVATAR];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [CATEGORY_ERROR];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const ACTION_CPU_FPS_FULL_SCREEN_REPORT:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const ACTION_GPU_FPS_FULL_SCREEN_REPORT:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var sLevelsReportedFPS:Array = [];
      
      private static var sGiftsClaimed:int = 0;
      
      private static var sExternalPauses:int = 0;
      
      private static var sExternalPauseStart:int = 0;
      
      private static var sPreviousPowerupUseTime:int = 0;
       
      
      public function §9F§()
      {
         super();
      }
      
      public static function §-!O§() : void
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
      
      public static function §=!T§(errorID:int, time:int) : void
      {
         trace("Client error: " + errorID);
         §&k§(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH,errorID.toString(),time);
         var urlLoader:URLLoader = new URLLoader();
         urlLoader.load(§+!I§.§[O§(AngryBirdsFP11.SERVER_ROOT + "/clienterror/" + errorID));
      }
      
      public static function §&k§(action:String, label:String = null, value:int = 0) : void
      {
         var trackingFunction:String = § !G§(action,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         GoogleAnalyticsTracker.trackSampledEvent(trackingFunction,§2!"§,action,label,value);
      }
      
      public static function §"§(powerupType:String, level:String) : void
      {
         var time:int = §^d§();
         §#d§(CATEGORY_POWERUP_USED,powerupType,level,0);
         §#d§(CATEGORY_LEVEL_POWERUP_USED,level,powerupType,0);
      }
      
      public static function §-y§(powerupsUsed:Array, level:String, score:int) : void
      {
         var action:String = null;
         if(enabled)
         {
            action = §%e§(powerupsUsed);
            if(action)
            {
               §#d§(CATEGORY_POWERUP_LEVEL_COMPLETED,action,level,score);
               §#d§(CATEGORY_LEVEL_POWERUP_COMPLETED,level,action,score);
            }
         }
      }
      
      public static function §@V§(frameRate:int, levelId:String, isSoftware:Boolean, isFullScreen:Boolean) : void
      {
         var reportType:String = null;
         if(sLevelsReportedFPS.indexOf(levelId) >= 0)
         {
            return;
         }
         var isFirstReport:Boolean = sLevelsReportedFPS.length == 0;
         sLevelsReportedFPS.push(levelId);
         if(isSoftware)
         {
            reportType = GoogleAnalyticsTracker.ACTION_CPU_FPS_REPORT;
            if(isFullScreen)
            {
               reportType = §9F§.ACTION_CPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         else
         {
            reportType = GoogleAnalyticsTracker.ACTION_GPU_FPS_REPORT;
            if(isFullScreen)
            {
               reportType = §9F§.ACTION_GPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         if(isFirstReport)
         {
            §&k§(reportType,frameRate.toString(),frameRate);
         }
         §#d§(CATEGORY_FRAMERATE,reportType,levelId,frameRate);
      }
      
      public static function §2!F§(id:String, count:int) : void
      {
         ++sGiftsClaimed;
         §#d§(CATEGORY_GIFT,ACTION_GIFT_CLAIMED,id,count);
      }
      
      public static function § f§() : void
      {
         §#d§(CATEGORY_GIFT,ACTION_CAMPAIGN_GIFT_CLAIMED,null,0);
      }
      
      public static function §25§() : void
      {
         ++sExternalPauses;
         sExternalPauseStart = §^d§();
         §#d§(CATEGORY_EXTERNAL_PAUSE,ACTION_EXTERNAL_PAUSED,sExternalPauses.toString(),sExternalPauseStart);
      }
      
      public static function §3!N§() : void
      {
         §#d§(CATEGORY_EXTERNAL_PAUSE,ACTION_EXTERNAL_RESUMED,"",§^d§(sExternalPauseStart));
      }
      
      public static function §6!d§() : void
      {
         if(!DEBUG_MODE)
         {
            §#d§(CATEGORY_SHOP,ACTION_SHOP_OPEN,null,0);
         }
      }
      
      public static function §&!3§(productType:String) : void
      {
         if(!DEBUG_MODE)
         {
            §#d§(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_SELECTED,productType,0);
         }
      }
      
      public static function §42§(product:String, count:int) : void
      {
         if(!DEBUG_MODE)
         {
            §#d§(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_BUY_SELECTED,product,count,false);
         }
      }
      
      public static function §;"§(product:String, count:int) : void
      {
         if(!DEBUG_MODE)
         {
            §#d§(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_BUY_COMPLETED,product,count,false);
         }
      }
      
      public static function §6!I§(position:String) : void
      {
         §#d§(CATEGORY_BRAG,ACTION_BRAG_SHOWN,position,0);
      }
      
      public static function §"N§(position:String) : void
      {
         §#d§(CATEGORY_BRAG,ACTION_BRAG_CLICKED,position,0);
      }
      
      public static function §#!T§() : void
      {
         §#d§(CATEGORY_INVITE,ACTION_INVITE_FRIEND_CLICKED,null,0);
      }
      
      public static function §?1§() : void
      {
         §#d§(CATEGORY_INVITE,ACTION_INVITE_GENERIC_CLICKED,null,0);
      }
      
      public static function §7!0§() : void
      {
         §#d§(CATEGORY_AVATAR,ACTION_AVATAR_OPEN,null,0);
      }
      
      public static function §%!§() : void
      {
         §#d§(CATEGORY_AVATAR,ACTION_AVATAR_SET,null,0);
      }
      
      public static function §61§(product:String) : void
      {
         §#d§(CATEGORY_AVATAR,ACTION_AVATAR_PRODUCT_SET,product,0);
      }
      
      public static function §0`§() : void
      {
         §#d§(CATEGORY_AVATAR,ACTION_AVATAR_SHARE_CLICKED,null,0);
      }
      
      public static function §+5§() : void
      {
         §#d§(CATEGORY_AVATAR,ACTION_AVATAR_SHARE_COMPLETED,null,0);
      }
      
      public static function §,E§(product:String, priceCredits:int = 0) : void
      {
         if(!DEBUG_MODE)
         {
            §#d§(CATEGORY_AVATAR,ACTION_AVATAR_PRODUCT_BUY_SELECTED,product,priceCredits,false);
         }
      }
      
      public static function §-!<§(product:String, priceCredits:int = 0) : void
      {
         if(!DEBUG_MODE)
         {
            §#d§(CATEGORY_AVATAR,ACTION_AVATAR_PRODUCT_BUY_COMPLETED,product,priceCredits,false);
         }
      }
      
      public static function §40§(fileName:String) : void
      {
         §#d§(CATEGORY_WARNING,ACTION_WARNING_DOWNLOAD_FAILED,fileName,0);
      }
      
      public static function §>@§() : void
      {
         §#d§(CATEGORY_WARNING,ACTION_WARNING_3RD_PARTY_COOKIES_DISABLED,null,0);
      }
      
      public static function §+!d§(levelId:String) : void
      {
         if(levelId == null)
         {
            levelId = "[null]";
         }
         else if(levelId.length == 0)
         {
            levelId = "[empty]";
         }
         §#d§(CATEGORY_WARNING,ACTION_WARNING_INVALID_LEVEL,levelId,0);
      }
      
      public static function §<0§(variable:String) : void
      {
         §#d§(CATEGORY_WARNING,ACTION_WARNING_FLASHVAR_MISSING,variable,0);
      }
      
      public static function §7u§(count:int) : void
      {
         §#d§(CATEGORY_USER_STATISTICS,ACTION_USER_STATISTIC_FRIEND_COUNT,count.toString(),count);
      }
      
      public static function §+3§(url:String) : void
      {
         §#d§(CATEGORY_USER_STATISTICS,ACTION_ADVERTISEMENT_CLICK,url,0);
      }
      
      public static function §while§(errorDescription:String) : void
      {
         §#d§(CATEGORY_ERROR,errorDescription,"",0,false);
      }
      
      private static function §#d§(category:String, action:String, label:String, value:int, sampling:Boolean = true) : void
      {
         var trackingFunction:String = null;
         if(enabled)
         {
            trackingFunction = §4!?§;
            if(sampling)
            {
               trackingFunction = § !G§(category,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(trackingFunction,category,action,label,value);
         }
      }
      
      private static function § !G§(type:String, sample100Percent:Array, sample1Percent:Array) : String
      {
         if(sample1Percent.indexOf(type) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(sample100Percent.indexOf(type) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §4!?§;
      }
      
      private static function §%e§(originalData:Array) : String
      {
         var powerup:String = null;
         if(originalData == null || originalData.length == 0)
         {
            return null;
         }
         var result:String = "";
         var sortedData:Array = originalData.concat();
         sortedData.sort();
         for each(powerup in sortedData)
         {
            if(result.length > 0)
            {
               result += "-" + powerup;
            }
            else
            {
               result = powerup;
            }
         }
         return result;
      }
      
      private static function §^d§(since:int = 0) : int
      {
         return getTimer() / 1000 - since;
      }
   }
}
