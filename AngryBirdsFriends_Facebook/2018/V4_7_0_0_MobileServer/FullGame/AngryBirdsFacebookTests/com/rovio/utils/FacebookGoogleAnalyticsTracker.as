package com.rovio.utils
{
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import flash.utils.getTimer;
   
   public class FacebookGoogleAnalyticsTracker extends GoogleAnalyticsTracker
   {
      
      private static const DEBUG_MODE:Boolean = AngryBirdsBase.DEBUG_MODE_ENABLED;
      
      private static const CATEGORY_POWERUP_USED:String = "POWERUP-USED";
      
      private static const CATEGORY_LEVEL_POWERUP_USED:String = "LEVEL-POWERUP-USED";
      
      private static const CATEGORY_POWERUP_LEVEL_COMPLETED:String = "POWERUP-" + ACTION_GAME_LEVEL_COMPLETED;
      
      private static const CATEGORY_LEVEL_POWERUP_COMPLETED:String = ACTION_GAME_LEVEL_COMPLETED + "-POWERUP";
      
      private static const CATEGORY_FRAMERATE:String = "FRAMERATE";
      
      private static const CATEGORY_EXTERNAL_PAUSE:String = "EXTERNAL-PAUSE";
      
      private static const CATEGORY_GIFT:String = "GIFT";
      
      private static const CATEGORY_SHOP:String = "SHOP";
      
      private static const CATEGORY_BRAG:String = "BRAG";
      
      private static const CATEGORY_INVITE:String = "INVITE";
      
      private static const CATEGORY_AVATAR:String = "AVATAR";
      
      private static const CATEGORY_SHARE_BRAG:String = "FACEBOOK_SHARING";
      
      private static const CATEGORY_BRANDED_SHOP:String = "BRANDED-SHOP";
      
      private static const CATEGORY_POWERUP_GAINED:String = "POWERUP-GAINED";
      
      private static const CATEGORY_POWERUP_STATISTICS:String = "POWERUP-STATISTICS";
      
      private static const CATEGORY_VIRTUAL_CURRENCY_GAINED:String = "VIRTUAL-CURRENCY-GAINED";
      
      private static const CATEGORY_SUGGESTION:String = "POWERUP-SUGGESTION";
      
      private static const CATEGORY_WINGMAN_USAGE:String = "WINGMAN-USAGE";
      
      private static const CATEGORY_WARNING:String = "WARNING";
      
      private static const CATEGORY_USER_STATISTICS:String = "USER-STATISTICS";
      
      private static const CATEGORY_TOURNAMENT_STATISTICS:String = "TOURNAMENT-STATISTICS";
      
      private static const CATEGORY_STREAMING:String = "STREAMING";
      
      private static const CATEGORY_EXTERNAL_URL:String = "EXTERNAL-URL";
      
      private static const CATEGORY_VIRTUAL_CURRENCY_STATISTICS:String = "VIRTUAL-CURRENCY-STATISTICS";
      
      private static const CATEGORY_TOURNAMENT:String = "TOURNAMENT";
      
      private static const CATEGORY_ERROR:String = "ERROR";
      
      private static const ACTION_EXTERNAL_PAUSED:String = "PAUSED";
      
      private static const ACTION_EXTERNAL_RESUMED:String = "RESUMED";
      
      private static const ACTION_GIFT_CLAIMED:String = "GIFT-CLAIMED";
      
      private static const ACTION_GIFT_CLAIMED_ONLY:String = "GIFT-CLAIMED-ONLY";
      
      private static const ACTION_GIFT_CLAIMED_AND_SENT:String = "GIFT-CLAIMED-AND-SENT";
      
      private static const ACTION_GIFT_SENT:String = "GIFT-SENT";
      
      private static const ACTION_GIFT_SIDEBAR:String = "SIDEBAR";
      
      private static const ACTION_GIFT_POPUP:String = "POPUP";
      
      private static const ACTION_CAMPAIGN_GIFT_CLAIMED:String = "CAMPAIGN-GIFT-CLAIMED";
      
      private static const ACTION_SHOP_OPEN:String = "OPENED";
      
      private static const ACTION_SHOP_PRODUCT_SELECTED:String = "PRODUCT-SELECTED";
      
      private static const ACTION_SHOP_PRODUCT_BUY_SELECTED:String = "PRODUCT-BUY-SELECTED";
      
      private static const ACTION_SHOP_PRODUCT_BUY_COMPLETED:String = "PRODUCT-BUY-COMPLETED";
      
      private static const ACTION_SHOP_PRODUCT_EARN_SELECTED:String = "PRODUCT-EARN-SELECTED";
      
      private static const ACTION_SHOP_PRODUCT_EARN_COMPLETED:String = "PRODUCT-EARN-COMPLETED";
      
      private static const ACTION_SHOP_PRODUCT_REDEEM_SELECTED:String = "PRODUCT-REDEEM-SELECTED";
      
      private static const ACTION_SHOP_PRODUCT_REDEEM_COMPLETED:String = "PRODUCT-REDEEM-COMPLETED";
      
      private static const ACTION_BRAG_SHOWN:String = "BRAG-SHOWN";
      
      private static const ACTION_BRAG_CLICKED:String = "BRAG-CLICKED";
      
      private static const ACTION_SHARE_BRAG_RESULT_SHARE:String = "SHARE";
      
      private static const ACTION_SHARE_BRAG_RESULT_SKIP:String = "SKIP";
      
      private static const ACTION_INVITE_FRIEND_CLICKED:String = "FRIEND-CLICKED";
      
      private static const ACTION_INVITE_GENERIC_CLICKED:String = "GENERIC-CLICKED";
      
      private static const ACTION_AVATAR_OPEN:String = "OPENED";
      
      private static const ACTION_AVATAR_SET:String = "SET";
      
      private static const ACTION_AVATAR_PRODUCT_SET:String = "PRODUCT-SET";
      
      private static const ACTION_AVATAR_PRODUCT_BUY_SELECTED:String = ACTION_SHOP_PRODUCT_BUY_SELECTED;
      
      private static const ACTION_AVATAR_PRODUCT_BUY_COMPLETED:String = ACTION_SHOP_PRODUCT_BUY_COMPLETED;
      
      private static const ACTION_AVATAR_SHARE_CLICKED:String = "SHARE-CLICKED";
      
      private static const ACTION_AVATAR_SHARE_COMPLETED:String = "SHARE-COMPLETED";
      
      private static const ACTION_RAFFLE_TICKET_COLLECTED:String = "TICKET-COLLECTED";
      
      private static const ACTION_MAX_RAFFLE_TICKETS_COLLECTED_ONE_DAY:String = "MAX-TICKETS-COLLECTED-ONE-DAY";
      
      private static const ACTION_MAX_RAFFLE_TICKETS_COLLECTED_WHOLE_DRAW:String = "MAX-TICKETS-COLLECTED-WHOLE-DRAW";
      
      private static const ACTION_WARNING_DOWNLOAD_FAILED:String = "DOWNLOAD-FAILED";
      
      private static const ACTION_WARNING_3RD_PARTY_COOKIES_DISABLED:String = "3RD-PARTY-COOKIES-MISSING";
      
      private static const ACTION_WARNING_INVALID_LEVEL:String = "INVALID-LEVEL";
      
      private static const ACTION_WARNING_FLASHVAR_MISSING:String = "FLASH-VAR-MISSING";
      
      private static const ACTION_USER_STATISTIC_FRIEND_COUNT:String = "FRIEND-COUNT";
      
      private static const ACTION_TOURNAMENT_SHARE_SCORE_CLICKED:String = "TOURNAMENT-SHARE-SCORE_CLICKED";
      
      private static const ACTION_TOURNAMENT_SHARE_SCORE_COMPLETED:String = "TOURNAMENT-SHARE-SCORE_COMPLETED";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "RED-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "YELLOW-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "RED-LOST-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "YELLOW-LOST-BY";
      
      private static const ACTION_USER_STATISTIC_VC_COUNT:String = "VIRTUAL-CURRENCY-COUNT";
      
      private static const ACTION_USER_STATISTIC_VC_COUNT_PAYER:String = "VIRTUAL-CURRENCY-COUNT-PAYER";
      
      private static const ACTION_USER_STATISTIC_VC_COUNT_NONPAYER:String = "VIRTUAL-CURRENCY-COUNT-NONPAYER";
      
      private static const ACTION_STREAMING_START:String = "START";
      
      private static const ACTION_STREAMING_COMPLETE:String = "COMPLETE";
      
      private static const ACTION_STREAMING_ERROR:String = "ERROR";
      
      private static const ACTION_EXTERNAL_URL_OPEN:String = "OPEN";
      
      private static const ACTION_FREE_SAMPLES:String = "FREE-SAMPLES";
      
      private static const ACTION_POWERUP_SUGGESTION_SHOWN:String = "POWERUP-SUGGESTION-SHOWN";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [ACTION_GAME_LEVEL_STARTED,ACTION_GAME_LEVEL_COMPLETED,ACTION_FLASH_INITIALIZED,ACTION_FLASH_LOADED,ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH_TRACE];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [CATEGORY_POWERUP_USED,CATEGORY_LEVEL_POWERUP_USED,CATEGORY_POWERUP_LEVEL_COMPLETED,CATEGORY_LEVEL_POWERUP_COMPLETED,CATEGORY_FRAMERATE,CATEGORY_EXTERNAL_PAUSE,CATEGORY_GIFT,CATEGORY_SHOP,CATEGORY_BRAG,CATEGORY_INVITE,CATEGORY_AVATAR,CATEGORY_POWERUP_GAINED,CATEGORY_POWERUP_STATISTICS,CATEGORY_VIRTUAL_CURRENCY_GAINED,CATEGORY_TOURNAMENT_STATISTICS,CATEGORY_SUGGESTION,CATEGORY_WINGMAN_USAGE,CATEGORY_ERROR,CATEGORY_STREAMING];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [];
      
      private static const FULL_SCREEN:String = "-FULL-SCREEN";
      
      private static const ACTION_CPU_FPS_FULL_SCREEN_REPORT:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const ACTION_GPU_FPS_FULL_SCREEN_REPORT:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const POWERUP_SOURCE_DAILY_REWARD:String = "DAILYREWARD";
      
      public static const POWERUP_SOURCE_TOURNAMENT_LEVEL_COMPLETE:String = "TOURNAMENTLEVELCOMPLETE";
      
      public static const POWERUP_SOURCE_TOURNAMENT_PRIZE:String = "TOURNAMENTPRIZE";
      
      public static const POWERUP_SOURCE_GIFT:String = "GIFT";
      
      public static const POWERUP_SOURCE_SHOP:String = "SHOP";
      
      public static const TRACKING_FUNCTION_PAGE_VIEW:String = "trackPageView";
      
      public static const TRACKING_FUNCTION_TRANSACTION:String = "trackTransaction";
      
      public static const TRACKING_FUNCTION_TRANSACTION_ITEMS:String = "trackTransactionItems";
      
      public static const VIRTUAL_PAGE_VIEW_CATEGORY_MAIN_MENU:String = "MAIN_MENU";
      
      public static const VIRTUAL_PAGE_VIEW_CATEGORY_CHAPTER_MENU:String = "CHAPTERS";
      
      public static const VIRTUAL_PAGE_VIEW_CATEGORY_LEVEL_PACK:String = "LEVEL_PACK";
      
      public static const VIRTUAL_PAGE_VIEW_CATEGORY_SHOP:String = "SHOP";
      
      public static const VIRTUAL_PAGE_VIEW_CATEGORY_LEVEL:String = "LEVEL";
      
      public static const VIRTUAL_PAGE_VIEW_ID_FRONTPAGE:String = "FRONTPAGE";
      
      public static const VIRTUAL_PAGE_VIEW_ID_COINS:String = "COINS";
      
      public static const VIRTUAL_PAGE_VIEW_ID_TABBED_SHOP:String = "TABBED-SHOP";
      
      public static const VIRTUAL_PAGE_VIEW_ID_BRANDED:String = "BRANDED";
      
      public static const VIRTUAL_PAGE_VIEW_ID_AVATAR:String = "AVATAR";
      
      public static const VIRTUAL_PAGE_VIEW_ID_THANK_YOU:String = "THANK-YOU";
      
      public static const VIRTUAL_PAGE_VIEW_ID_QUICKBUY_SHOP:String = "QUICKBUY-SHOP";
      
      public static const ACTION_GAME_LEVEL_WIN:String = "COMPLETED";
      
      public static const ACTION_GAME_LEVEL_FAIL:String = "FAILED";
      
      public static const VIRTUAL_PAGE_VIEW_CATEGORY_GAME:String = "GAME";
      
      public static const TRACKING_BIRD_SHOT:String = "BIRD_SHOT";
      
      public static const TRACKING_LEVEL_UNLOCK:String = "LEVEL_UNLOCK_PURCHASED";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var sLevelsReportedFPS:Array = [];
      
      private static var sGiftsClaimed:int = 0;
      
      private static var sExternalPauses:int = 0;
      
      private static var sExternalPauseStart:int = 0;
      
      private static var sPreviousPowerupUseTime:int = 0;
      
      private static const COUNTRY:String = "FINLAND";
      
      private static const STATE:String = "UUSIMAA";
      
      private static const CITY:String = "HELSINKI";
      
      public static var enabledVpv:Boolean = false;
      
      public static var VIRTUAL_PAGE_VIEW_ID_POWERUP_SUGGESTION_BUY:String = "BUY";
      
      public static var VIRTUAL_PAGE_VIEW_POWERUP_SUGGESTION:String = "POWERUP-SUGGESTION";
      
      private static var ACTION_POWERUP_SUGGESTION_BUY:String = "BUY";
      
      private static var ACTION_POWERUP_SUGGESTION_CLOSE:String = "CLOSE";
      
      private static var ACTION_POWERUP_SUGGESTION_USE:String = "USE";
      
      private static var ACTION_POWERUP_SUGGESTION_BUY_NOT_ENOUGH_COINS:String = "BUY-NOT-ENOUGH-COINS";
      
      private static var trackEcommerce:Boolean = false;
      
      public static var TRACK_ERRORS:Boolean = true;
       
      
      public function FacebookGoogleAnalyticsTracker()
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
      
      public static function trackClientError(errorID:int, time:int, facebookUserId:String, stackTrace:String = null) : void
      {
         if(!TRACK_ERRORS)
         {
            return;
         }
         trackFlashEvent(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH,errorID.toString(),time);
      }
      
      public static function trackFlashEvent(action:String, label:String = null, value:int = 0) : void
      {
         var trackingFunction:String = getTrackingFunction(action,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         GoogleAnalyticsTracker.trackSampledEvent(trackingFunction,CATEGORY_FLASH,action,label,value);
      }
      
      public static function trackPowerupUsedEvent(powerupType:String, level:String) : void
      {
         var time:int = getSecondsSince();
         trackFacebookEvent(CATEGORY_POWERUP_USED,powerupType,level,0);
         trackFacebookEvent(CATEGORY_LEVEL_POWERUP_USED,level,powerupType,0);
      }
      
      public static function trackPowerupGained(powerupSource:String, powerupType:String, amount:int) : void
      {
         for(var i:int = 0; i < amount; i++)
         {
            trackFacebookEvent(CATEGORY_POWERUP_GAINED,powerupSource,powerupType,0);
         }
      }
      
      public static function trackPowerupLevelCompletedEvent(powerupsUsed:Array, level:String, score:int) : void
      {
         var action:String = null;
         if(enabled)
         {
            action = getSortedString(powerupsUsed);
            if(action)
            {
               trackFacebookEvent(CATEGORY_POWERUP_LEVEL_COMPLETED,action,level,score);
               trackFacebookEvent(CATEGORY_LEVEL_POWERUP_COMPLETED,level,action,score);
            }
         }
      }
      
      public static function trackVirtualCurrencyGained(vcSource:String, powerupType:String, amount:int) : void
      {
         trackFacebookEvent(CATEGORY_VIRTUAL_CURRENCY_GAINED,vcSource,powerupType,amount);
      }
      
      public static function trackFramerateEvent(frameRate:int, levelId:String, isSoftware:Boolean, isFullScreen:Boolean) : void
      {
         var reportType:String = null;
         if(sLevelsReportedFPS.indexOf(levelId) >= 0)
         {
            return;
         }
         var isFirstReport:* = sLevelsReportedFPS.length == 0;
         sLevelsReportedFPS.push(levelId);
         if(isSoftware)
         {
            reportType = GoogleAnalyticsTracker.ACTION_CPU_FPS_REPORT;
            if(isFullScreen)
            {
               reportType = FacebookGoogleAnalyticsTracker.ACTION_CPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         else
         {
            reportType = GoogleAnalyticsTracker.ACTION_GPU_FPS_REPORT;
            if(isFullScreen)
            {
               reportType = FacebookGoogleAnalyticsTracker.ACTION_GPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         if(isFirstReport)
         {
            trackFlashEvent(reportType,frameRate.toString(),frameRate);
         }
         trackFacebookEvent(CATEGORY_FRAMERATE,reportType,levelId,frameRate);
      }
      
      public static function trackGiftClaimedEvent(id:String, count:int) : void
      {
         ++sGiftsClaimed;
         trackFacebookEvent(CATEGORY_GIFT,ACTION_GIFT_CLAIMED,id,count);
      }
      
      public static function trackGiftSentSideBarEvent() : void
      {
         trackFacebookEvent(CATEGORY_GIFT,ACTION_GIFT_SENT,ACTION_GIFT_SIDEBAR,0);
      }
      
      public static function trackGiftSentPopupEvent() : void
      {
         trackFacebookEvent(CATEGORY_GIFT,ACTION_GIFT_SENT,ACTION_GIFT_POPUP,0);
      }
      
      public static function trackGiftClaimOnlyEvent() : void
      {
         trackFacebookEvent(CATEGORY_GIFT,ACTION_GIFT_CLAIMED_ONLY,null,0);
      }
      
      public static function trackClaimAndSendGiftEvent(value:int = 0) : void
      {
         trackFacebookEvent(CATEGORY_GIFT,ACTION_GIFT_CLAIMED_AND_SENT,null,value);
      }
      
      public static function trackCampaignGiftClaimedEvent() : void
      {
         trackFacebookEvent(CATEGORY_GIFT,ACTION_CAMPAIGN_GIFT_CLAIMED,null,0);
      }
      
      public static function trackBrandedShopOpened(from:String) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_BRANDED_SHOP,ACTION_SHOP_OPEN,from,0);
         }
      }
      
      public static function trackShopOpened() : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_SHOP,ACTION_SHOP_OPEN,null,0);
         }
      }
      
      public static function trackShopProductSelected(productType:String) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_SELECTED,productType,0);
         }
      }
      
      public static function trackShopProductBuySelected(product:String, count:int) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_BUY_SELECTED,product,count,true);
         }
      }
      
      public static function trackShopProductBuyCompleted(product:String, count:int) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_BUY_COMPLETED,product,count,true);
         }
      }
      
      public static function trackShopProductEarnSelected(product:String) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_EARN_SELECTED,product,0,true);
         }
      }
      
      public static function trackShopProductEarnCompleted(product:String, count:int) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_EARN_COMPLETED,product,count,true);
         }
      }
      
      public static function trackShopProductRedeemSelected(product:String) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_REDEEM_SELECTED,product,0,true);
         }
      }
      
      public static function trackShopProductRedeemCompleted(product:String, count:int) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_REDEEM_COMPLETED,product,count,true);
         }
      }
      
      public static function trackBragShown(position:String) : void
      {
         trackFacebookEvent(CATEGORY_BRAG,ACTION_BRAG_SHOWN,position,0);
      }
      
      public static function trackBragClicked(position:String) : void
      {
         trackFacebookEvent(CATEGORY_BRAG,ACTION_BRAG_CLICKED,position,0);
      }
      
      public static function trackShareBrag(action:String) : void
      {
         trackFacebookEvent(CATEGORY_SHARE_BRAG,action,ACTION_SHARE_BRAG_RESULT_SHARE,0);
      }
      
      public static function trackShareBragSkip(action:String) : void
      {
         trackFacebookEvent(CATEGORY_SHARE_BRAG,action,ACTION_SHARE_BRAG_RESULT_SKIP,0);
      }
      
      public static function trackInviteFriendClicked() : void
      {
         trackFacebookEvent(CATEGORY_INVITE,ACTION_INVITE_FRIEND_CLICKED,null,0);
      }
      
      public static function trackRaffleTicketCollected(numberOfTickets:int) : void
      {
         trackFacebookEvent(CATEGORY_USER_STATISTICS,ACTION_RAFFLE_TICKET_COLLECTED,null,numberOfTickets);
      }
      
      public static function trackMaxRaffleTicketsCollectedForDay() : void
      {
         trackFacebookEvent(CATEGORY_USER_STATISTICS,ACTION_MAX_RAFFLE_TICKETS_COLLECTED_ONE_DAY,null,0);
      }
      
      public static function trackMaxRaffleTicketsCollectedWholeDraw() : void
      {
         trackFacebookEvent(CATEGORY_USER_STATISTICS,ACTION_MAX_RAFFLE_TICKETS_COLLECTED_WHOLE_DRAW,null,0);
      }
      
      public static function trackWingmanUsed(levelId:String, wingmanIndex:String) : void
      {
         trackFacebookEvent(CATEGORY_WINGMAN_USAGE,levelId,wingmanIndex,0);
      }
      
      public static function trackInviteGenericClicked() : void
      {
         trackFacebookEvent(CATEGORY_INVITE,ACTION_INVITE_GENERIC_CLICKED,null,0);
      }
      
      public static function trackAvatarOpened() : void
      {
         trackFacebookEvent(CATEGORY_AVATAR,ACTION_AVATAR_OPEN,null,0);
      }
      
      public static function trackAvatarSet() : void
      {
         trackFacebookEvent(CATEGORY_AVATAR,ACTION_AVATAR_SET,null,0);
      }
      
      public static function trackAvatarProductSet(product:String) : void
      {
         trackFacebookEvent(CATEGORY_AVATAR,ACTION_AVATAR_PRODUCT_SET,product,0);
      }
      
      public static function trackAvatarShareClicked() : void
      {
         trackFacebookEvent(CATEGORY_AVATAR,ACTION_AVATAR_SHARE_CLICKED,null,0);
      }
      
      public static function trackAvatarShareCompleted() : void
      {
         trackFacebookEvent(CATEGORY_AVATAR,ACTION_AVATAR_SHARE_COMPLETED,null,0);
      }
      
      public static function trackAvatarProductBuySelected(product:String, priceCredits:int = 0) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_AVATAR,ACTION_AVATAR_PRODUCT_BUY_SELECTED,product,priceCredits,true);
         }
      }
      
      public static function trackAvatarProductBuyCompleted(product:String, priceCredits:int = 0) : void
      {
         if(!DEBUG_MODE)
         {
            trackFacebookEvent(CATEGORY_AVATAR,ACTION_AVATAR_PRODUCT_BUY_COMPLETED,product,priceCredits,true);
         }
      }
      
      public static function trackDownloadFailed(fileName:String) : void
      {
         trackFacebookEvent(CATEGORY_WARNING,ACTION_WARNING_DOWNLOAD_FAILED,fileName,0);
      }
      
      public static function track3rdPartyCookiesDisabled() : void
      {
         trackFacebookEvent(CATEGORY_WARNING,ACTION_WARNING_3RD_PARTY_COOKIES_DISABLED,null,0);
      }
      
      public static function trackInvalidLevel(levelId:String) : void
      {
         if(levelId == null)
         {
            levelId = "[null]";
         }
         else if(levelId.length == 0)
         {
            levelId = "[empty]";
         }
         trackFacebookEvent(CATEGORY_WARNING,ACTION_WARNING_INVALID_LEVEL,levelId,0);
      }
      
      public static function trackFlashVarMissing(variable:String) : void
      {
         trackFacebookEvent(CATEGORY_WARNING,ACTION_WARNING_FLASHVAR_MISSING,variable,0);
      }
      
      public static function trackFriendCount(count:int) : void
      {
         trackFacebookEvent(CATEGORY_USER_STATISTICS,ACTION_USER_STATISTIC_FRIEND_COUNT,count.toString(),count);
      }
      
      public static function trackTournamentFriendCount(count:int) : void
      {
         trackFacebookEvent(CATEGORY_TOURNAMENT_STATISTICS,ACTION_USER_STATISTIC_FRIEND_COUNT,count.toString(),count);
      }
      
      public static function trackTournamentBeatBotBirds(levelId:String, beatBirdBot1:Boolean, beatBirdBot2:Boolean, birdBot1Score:Number, birdBot2Score:Number) : void
      {
         if(birdBot1Score < 0)
         {
            birdBot1Score *= -1;
         }
         if(birdBot2Score < 0)
         {
            birdBot2Score *= -1;
         }
         if(beatBirdBot1)
         {
            trackFacebookEvent(CATEGORY_TOURNAMENT_STATISTICS,levelId,ACTION_BIRD_BOT_BEATEN_BY_1,birdBot1Score);
         }
         else
         {
            trackFacebookEvent(CATEGORY_TOURNAMENT_STATISTICS,levelId,ACTION_BIRD_BOT_LOST_BY_1,birdBot1Score);
         }
         if(beatBirdBot2)
         {
            trackFacebookEvent(CATEGORY_TOURNAMENT_STATISTICS,levelId,ACTION_BIRD_BOT_BEATEN_BY_2,birdBot2Score);
         }
         else
         {
            trackFacebookEvent(CATEGORY_TOURNAMENT_STATISTICS,levelId,ACTION_BIRD_BOT_LOST_BY_2,birdBot2Score);
         }
      }
      
      public static function trackTournamentScoreShareClicked() : void
      {
         trackFacebookEvent(CATEGORY_TOURNAMENT,ACTION_TOURNAMENT_SHARE_SCORE_CLICKED,null,0);
      }
      
      public static function trackTournamentScoreShareCompleted() : void
      {
         trackFacebookEvent(CATEGORY_TOURNAMENT,ACTION_TOURNAMENT_SHARE_SCORE_COMPLETED,null,0);
      }
      
      public static function trackPowerupCount(powerupType:String, count:int) : void
      {
         trackFacebookEvent(CATEGORY_POWERUP_STATISTICS,powerupType,"",count);
      }
      
      public static function trackVirtualCurrencyCount(count:int, isPayer:Boolean = false) : void
      {
         trackFacebookEvent(CATEGORY_VIRTUAL_CURRENCY_STATISTICS,ACTION_USER_STATISTIC_VC_COUNT,"",count);
         trackFacebookEvent(CATEGORY_VIRTUAL_CURRENCY_STATISTICS,!!isPayer ? ACTION_USER_STATISTIC_VC_COUNT_PAYER : ACTION_USER_STATISTIC_VC_COUNT_NONPAYER,"",count);
      }
      
      public static function trackStreamingStart(songId:String) : void
      {
         trackFacebookEvent(CATEGORY_STREAMING,ACTION_STREAMING_START,songId,0);
      }
      
      public static function trackStreamingError(songId:String, errorID:int) : void
      {
         if(!TRACK_ERRORS)
         {
            return;
         }
         trackFacebookEvent(CATEGORY_STREAMING,ACTION_STREAMING_ERROR,songId,errorID);
      }
      
      public static function trackStreamingComplete(songId:String) : void
      {
         trackFacebookEvent(CATEGORY_STREAMING,ACTION_STREAMING_COMPLETE,songId,0);
      }
      
      public static function trackExternalURLOpen(url:String) : void
      {
         trackFacebookEvent(CATEGORY_EXTERNAL_URL,ACTION_EXTERNAL_URL_OPEN,url,0);
      }
      
      public static function trackError(errorDescription:String) : void
      {
         if(!TRACK_ERRORS)
         {
            return;
         }
         trackFacebookEvent(CATEGORY_ERROR,errorDescription,"",0,true);
      }
      
      public static function trackPageView(virtualPageView:IVirtualPageView, identifier:String = null, optionalData:String = null) : void
      {
         var data:* = null;
         if(enabled && enabledVpv)
         {
            data = "_/" + virtualPageView.getCategoryName() + "/";
            if(!identifier)
            {
               data += virtualPageView.getIdentifier();
            }
            else
            {
               data += identifier;
            }
            if(optionalData)
            {
               data += "/" + optionalData;
            }
            ExternalInterfaceHandler.performCall(TRACKING_FUNCTION_PAGE_VIEW,data);
         }
      }
      
      public static function trackTransaction(orderId:String, shopName:String, sku:String, name:String, category:String, price:Number, quantity:Number, tax:Number) : void
      {
         var data:Object = null;
         if(enabled && trackEcommerce)
         {
            data = new Object();
            data["orderId"] = orderId;
            data["shopName"] = shopName;
            data["sku"] = sku;
            data["name"] = name;
            data["category"] = category;
            data["price"] = price;
            data["quantity"] = quantity;
            data["tax"] = tax;
            data["city"] = CITY;
            data["state"] = STATE;
            data["country"] = COUNTRY;
            ExternalInterfaceHandler.performCall(TRACKING_FUNCTION_TRANSACTION,data);
         }
      }
      
      public static function trackTransactionItems(orderId:String, shopName:String, category:String, items:Array) : void
      {
         var data:Object = null;
         if(enabled && trackEcommerce)
         {
            data = new Object();
            data["orderId"] = orderId;
            data["shopName"] = shopName;
            data["category"] = category;
            data["city"] = CITY;
            data["state"] = STATE;
            data["country"] = COUNTRY;
            ExternalInterfaceHandler.performCall(TRACKING_FUNCTION_TRANSACTION_ITEMS,data,items);
         }
      }
      
      public static function trackPowerupSuggestionShown(level:String) : void
      {
         trackFacebookEvent(CATEGORY_SUGGESTION,ACTION_POWERUP_SUGGESTION_SHOWN,level,0);
      }
      
      public static function trackPowerupSuggestionBuy(level:String) : void
      {
         trackFacebookEvent(CATEGORY_SUGGESTION,ACTION_POWERUP_SUGGESTION_BUY,level,0);
      }
      
      public static function trackPowerupSuggestionBuyUnconfirmed(level:String) : void
      {
         trackFacebookEvent(CATEGORY_SUGGESTION,ACTION_POWERUP_SUGGESTION_BUY_NOT_ENOUGH_COINS,level,0);
      }
      
      public static function trackPowerupSuggestionUse(level:String) : void
      {
         trackFacebookEvent(CATEGORY_SUGGESTION,ACTION_POWERUP_SUGGESTION_USE,level,0);
      }
      
      public static function trackPowerupSuggestionClose(level:String) : void
      {
         trackFacebookEvent(CATEGORY_SUGGESTION,ACTION_POWERUP_SUGGESTION_CLOSE,level,0);
      }
      
      private static function trackFacebookEvent(category:String, action:String, label:String, value:int, sampling:Boolean = true) : void
      {
         var trackingFunction:String = null;
         if(enabled)
         {
            trackingFunction = TRACKING_FUNCTION;
            if(sampling)
            {
               trackingFunction = getTrackingFunction(category,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(trackingFunction,category,action,label,value);
         }
      }
      
      private static function getTrackingFunction(type:String, sample100Percent:Array, sample1Percent:Array) : String
      {
         if(sample1Percent.indexOf(type) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(sample100Percent.indexOf(type) < 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         return TRACKING_FUNCTION;
      }
      
      private static function getSortedString(originalData:Array) : String
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
      
      private static function getSecondsSince(since:int = 0) : int
      {
         return getTimer() / 1000 - since;
      }
      
      public static function trackShot(slingshotUsed:String, levelName:String, birdIndex:int, kingslingActive:Boolean, slingscopeActive:Boolean, superseedActive:Boolean, wingmanActive:Boolean) : void
      {
         var data:Object = null;
         if(enabled)
         {
            data = new Object();
            data["slingshot"] = slingshotUsed;
            data["level"] = levelName;
            data["bird_index"] = birdIndex;
            data["kingsling_active"] = kingslingActive;
            data["slingscope_active"] = slingscopeActive;
            data["superseed_active"] = superseedActive;
            data["wingman_active"] = wingmanActive;
            ExternalInterfaceHandler.performCall(TRACKING_BIRD_SHOT,data);
         }
      }
      
      public static function trackLevelUnlock(levelName:String, from:String) : void
      {
         var data:Object = new Object();
         data["level"] = levelName;
         data["from"] = from;
         ExternalInterfaceHandler.performCall(TRACKING_LEVEL_UNLOCK,data);
      }
   }
}
