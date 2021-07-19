package com.rovio.utils
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.analytics.collector.AnalyticsEvent;
   import com.angrybirds.analytics.collector.AnalyticsEventParameter;
   import com.angrybirds.states.StateFacebookLevelSelection;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.globalization.DateTimeFormatter;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.system.Security;
   import flash.utils.Timer;
   import mx.utils.StringUtil;
   
   public class FacebookAnalyticsCollector
   {
      
      public static const ANALYTICS_URL_DEBUG:String = "https://smoke.rovio.com";
      
      public static const ANALYTICS_URL_STAGING:String = "https://mist.rovio.com";
      
      public static const ANALYTICS_URL_LIVE:String = "https://cloud.rovio.com";
      
      private static const LOGIN_SERVICE_URL:String = "/identity/2.0/facebook/weblogin";
      
      private static var mInstance:FacebookAnalyticsCollector;
      
      public static const EVENT_ACTION_LEVEL_STARTED:String = "LEVEL_STARTED";
      
      public static const EVENT_ACTION_LEVEL_ENDED_WIN:String = "LEVEL_COMPLETE";
      
      public static const EVENT_ACTION_LEVEL_ENDED_FAIL:String = "LEVEL_FAILED";
      
      public static const EVENT_ACTION_NOTIFICATION_SENT:String = "NOTIFICATION_SENT";
      
      public static const EVENT_ACTION_NOTIFICATION_CLICKED:String = "NOTIFICATION_CLICKED";
      
      public static const EVENT_GIFT_SENT:String = "GIFT_SENT";
      
      public static const EVENT_GIFT_CLAIMED:String = "GIFT_CLAIMED";
      
      public static const EVENT_SHOP_CATEGORY_ENTERED:String = "SHOP_CATEGORY_ENTERED";
      
      public static const EVENT_ACTION_SLINGSHOT_USED:String = "BIRD_SHOT";
      
      public static const EVENT_ALL_CONTENT_PLAYED:String = "TOURNAMENT_ALL_CONTENT_PLAYED";
      
      public static const EVENT_ACTION_TOURNAMENT_STATISTICS:String = "TOURNAMENT_STATISTICS";
      
      public static const EVENT_CHALLENGE_TOURNAMENT:String = "CHALLENGE_TOURNAMENT";
      
      public static const EVENT_ACTION_INVITATION_SENT:String = "INVITATION_SENT";
      
      public static const EVENT_REQUEST_FRIEND_PERMISSION:String = "REQUEST_FRIEND_PERMISSION";
      
      public static const EVENT_ACTION_INVENTORY_USED:String = "INVENTORY_USED";
      
      public static const EVENT_ACTION_INVENTORY_GAINED:String = "INVENTORY_GAINED";
      
      public static const EVENT_SHARE_BRAG:String = "FACEBOOK_SHARING";
      
      public static const SHARE_BRAG:String = "BRAG";
      
      public static const SHARE_BRAG_GOLD:String = "GOLD_CROWN";
      
      public static const SHARE_BRAG_SILVER:String = "SILVER_CROWN";
      
      public static const SHARE_BRAG_BRONZE:String = "BRONZE_CROWN";
      
      public static const SHARE_BRAG_THREE_STARS:String = "3STAR";
      
      public static const SHARE_BRAG_LEAGUE_WIN:String = "LEAGUE_WIN";
      
      public static const SHARE_BRAG_PROMOTION:String = "PROMOTION";
      
      public static const SHARE_BRAG_GOLD_TROPHY:String = "GOLD_TROPHY";
      
      public static const SHARE_BRAG_SILVER_TROPHY:String = "SILVER_TROPHY";
      
      public static const SHARE_BRAG_BRONZE_TROPHY:String = "BRONZE_TROPHY";
      
      public static const SHARE_BRAG_RESULT_SHARE:String = "SHARE";
      
      public static const SHARE_BRAG_RESULT_SKIP:String = "SKIP";
      
      private static const EVENT_DAILY_SPIN_UI:String = "DAILY_SPIN_UI";
      
      public static const DAILY_SPIN_USER_ACTION_SPIN_ICON_CLICKED:String = "SPIN_ICON_CLICKED";
      
      public static const DAILY_SPIN_USER_ACTION_WINDOW_CLOSED:String = "SPIN_WINDOW_CLOSED";
      
      private static const EVENT_DAILY_SPIN:String = "DAILY_SPIN";
      
      private static const EVENT_DAILY_SPIN_REMOVE:String = "DAILY_SPIN_REMOVE";
      
      public static const EVENT_DYNAMIC_POPUP_CLICK:String = "DYNAMIC_POPUP_CLICK";
      
      public static const EVENT_BRAND_BUTTON_CLICK:String = "BRAND_BUTTON_CLICK";
      
      private static var sButtonId:String = "";
      
      private static const SESSION_ID_TIME_REFRESH:Number = 60 * 1000 * 10;
      
      private static const RENEW_SESSION_ID_URL:String = "/setsessionid/";
      
      public static var INVENTORY_GAINED_TOURNAMENT_REWARD:String = "TOURNAMENT_REWARD";
      
      public static var INVENTORY_GAINED_LEAGUE_REWARD:String = "LEAGUE_REWARD";
      
      public static var INVENTORY_GAINED_LEVEL_REWARD:String = "LEVEL_REWARD";
      
      public static var INVENTORY_GAINED_DAILY_REWARD:String = "DAILY_REWARD";
      
      public static var INVENTORY_GAINED_PURCHASE:String = "PURCHASE";
      
      public static var INVENTORY_GAINED_GIFT:String = "GIFT";
      
      public static var INVENTORY_GAINED_GIFT_BIRTHDAY:String = "GIFT_BIRTHDAY";
      
      public static var INVENTORY_GAINED_QUALIFIER_REWARD:String = "QUALIFIER_REWARD";
      
      public static var INVENTORY_GAINED_REDEEM_CODE:String = "REDEEM_CODE";
      
      public static var INVENTORY_GAINED_FB_GIFT_CARD:String = "FB_GIFT_CARD";
      
      public static var INVENTORY_GAINED_FB_OFFER_WALL:String = "FB_OFFER_WALL";
      
      public static var INVENTORY_GAINED_INCENTIVIZED_FRIEND_INVITE:String = "INCENTIVIZED_FRIEND_INVITE";
      
      public static var SCREEN_EVENT_MAIN_MENU_SCREEN:String = "MAIN_MENU_SCREEN";
      
      public static var SCREEN_EVENT_TOURNAMENT_LEVEl_SELECTION_SCREEN:String = "TOURNAMENT_LEVEL_SELECTION_SCREEN";
      
      public static var SCREEN_EVENT_STORY_MODE_SCREEN:String = "STORY_MODE_SCREEN";
      
      public static const LEVEL_END_ACTION_BIG_CHECKMARK:String = "BIG_YES";
      
      public static const LEVEL_END_ACTION_SMALL_CHECKMARK:String = "SMALL_YES";
      
      public static const LEVEL_END_ACTION_TIMER:String = "TIMER";
      
      public static const TOURNAMENT_EVENT_BUTTON_CLICKED_FROM_LEVEL_SELECTION:String = "LEVEL_SELECTION_EVENT_BUTTON_CLICKED";
      
      public static const TOURNAMENT_EVENT_BUTTON_CLICKED_FROM_RESULT_SCREEN:String = "RESULT_SCREEN_EVENT_CHEST_CLICKED";
      
      public static const TOURNAMENT_EVENT_REWARD_CLAIMED:String = "EVENT_REWARD_CLAIMED";
       
      
      private var mAnalyticsUrl:String = "https://cloud.rovio.com";
      
      private var mLoader:URLLoader;
      
      private var mFacebookAccessToken:String;
      
      private var mUserId:String;
      
      private var CONTENT_TYPE_APPLICATION_JSON:String = "application/json";
      
      private var CONTENT_TYPE_APPLICATION_WWW_FORM:String = "application/x-www-form-urlencoded";
      
      private var mAnalyticsEvents:Vector.<AnalyticsEvent>;
      
      private var BATCH_SEND_INTERVAL_MS:Number = 60000;
      
      private var MAX_EVENTS_IN_QUEUE:Number = 100;
      
      private var mEnabled:Boolean = false;
      
      private var mBatchSendTimer:Timer;
      
      private var mSendingInProgress:Boolean = false;
      
      private var mSessionId:String = "";
      
      private var mSessionTime:Number = 0;
      
      private var mSessionDataLoader:ABFLoader;
      
      private var mSessionCounter:int = 1;
      
      private var mLevelEndingAction:String = null;
      
      public function FacebookAnalyticsCollector()
      {
         super();
      }
      
      public static function getInstance() : FacebookAnalyticsCollector
      {
         if(mInstance == null)
         {
            mInstance = new FacebookAnalyticsCollector();
         }
         return mInstance;
      }
      
      public static function get buttonId() : String
      {
         return sButtonId;
      }
      
      public static function set buttonId(value:String) : void
      {
         sButtonId = value;
      }
      
      public function init(userId:String, accessToken:String, doConnect:Boolean = true) : void
      {
         this.mUserId = userId;
         this.mFacebookAccessToken = accessToken;
         if(doConnect)
         {
            this.connect();
         }
      }
      
      private function getFacebookAccessToken() : String
      {
         return this.mFacebookAccessToken;
      }
      
      protected function onTimerReachedInterval(event:TimerEvent) : void
      {
         var requestHeaders:Array = null;
         if(this.mAnalyticsEvents && this.mAnalyticsEvents.length > 0 && !this.mSendingInProgress && this.mEnabled)
         {
            this.mSendingInProgress = true;
            requestHeaders = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",this.getAccessToken())];
            this.sendData(this.onEventsBatchSent,this.CONTENT_TYPE_APPLICATION_JSON,requestHeaders,true);
         }
      }
      
      private function onEventsBatchSent(e:Event) : void
      {
         if(e is ErrorEvent)
         {
         }
         this.mAnalyticsEvents.splice(0,this.mAnalyticsEvents.length);
         this.mSendingInProgress = false;
      }
      
      private function connect() : void
      {
         this.mBatchSendTimer = new Timer(this.BATCH_SEND_INTERVAL_MS);
         this.mBatchSendTimer.addEventListener(TimerEvent.TIMER,this.onTimerReachedInterval);
         this.mBatchSendTimer.start();
         Security.loadPolicyFile(this.mAnalyticsUrl + "/crossdomain.xml");
         Security.allowDomain(this.mAnalyticsUrl);
      }
      
      private function getUserAgent() : String
      {
         var userAgent:String = "no user agent";
         try
         {
            userAgent = ExternalInterface.call("window.navigator.userAgent.toString");
         }
         catch(e:Error)
         {
         }
         return userAgent;
      }
      
      private function sendData(callBack:Function, contentType:String = null, requestHeaders:Array = null, requireAccessToken:Boolean = false) : void
      {
         var batchesArray:Array = null;
         var batchesData:Object = null;
         var url:* = "/hoarder/2/apps/" + AngryBirdsFacebook.beaconAppId + "/events/player";
         if(requireAccessToken)
         {
            url += "?accessToken=" + this.getAccessToken();
         }
         var request:URLRequest = new URLRequest(this.mAnalyticsUrl + url);
         request.method = URLRequestMethod.POST;
         if(requestHeaders)
         {
            request.requestHeaders = requestHeaders;
         }
         if(contentType)
         {
            request.contentType = contentType;
         }
         var requestData:URLVariables = new URLVariables();
         if(contentType == this.CONTENT_TYPE_APPLICATION_JSON)
         {
            batchesArray = new Array();
            batchesArray.push({
               "accessToken":this.getAccessToken(),
               "events":this.getAnalyticsEvents()
            });
            batchesData = new Object();
            batchesData["batches"] = batchesArray;
            request.data = JSON.stringify(batchesData);
            request.data = (request.data as String).replace("[!l","tz");
         }
         else
         {
            request.data = requestData;
         }
         this.mLoader = new URLLoader();
         this.mLoader.addEventListener(Event.COMPLETE,callBack);
         this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,callBack);
         this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,callBack);
         this.mLoader.load(request);
      }
      
      public function trackLevelStartedEvent(levelId:String, tournamentId:int, chapterName:String, noOfStars:int, noOfRestarts:Number) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("LEVEL",levelId));
         parameters.push(new AnalyticsEventParameter("LEVEL_SORT_CODE",this.getLevelSortCode(levelId)));
         parameters.push(new AnalyticsEventParameter("TOURNAMENT_ID",tournamentId));
         parameters.push(new AnalyticsEventParameter("SCREEN",this.getRecentTrackableScreen()));
         parameters.push(new AnalyticsEventParameter("RESTART",noOfRestarts > 0));
         parameters.push(new AnalyticsEventParameter("STARS",noOfStars));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",true));
         this.createAnalyticsEvents(EVENT_ACTION_LEVEL_STARTED,parameters);
      }
      
      public function trackScreenView(screenNameEvent:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         this.createAnalyticsEvents(screenNameEvent,parameters);
      }
      
      public function trackLevelEndedEvent(passed:Boolean, levelId:String, tournamentId:int, chapterName:String, noOfBirdsUsed:Number, noOfBirdsAvailable:Number, noOfStars:Number, usedPowerups:Array, score:Number, firstTimeCompleted:Boolean = false, firstTimeThreeStars:Boolean = false, firstTime100:Boolean = false, mightyEagleUsed:Boolean = false, feathersPercentage:int = 0) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = null;
         var i:int = 0;
         var mySO:SharedObject = null;
         var levelAttemptsObject:Object = null;
         parameters = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("LEVEL",levelId));
         parameters.push(new AnalyticsEventParameter("TOURNAMENT_ID",tournamentId));
         parameters.push(new AnalyticsEventParameter("LEVEL_SORT_CODE",this.getLevelSortCode(levelId)));
         parameters.push(new AnalyticsEventParameter("SCORE",score));
         parameters.push(new AnalyticsEventParameter("BIRDS_SLUNG",noOfBirdsUsed));
         parameters.push(new AnalyticsEventParameter("BIRDS_AVAILABLE",noOfBirdsAvailable));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",true));
         if(usedPowerups)
         {
            for(i = 0; i < usedPowerups.length; i++)
            {
               parameters.push(new AnalyticsEventParameter("POWERUP_USED_" + (i + 1),usedPowerups[i]));
            }
         }
         if(mightyEagleUsed)
         {
            parameters.push(new AnalyticsEventParameter("EAGLE_SCORE",feathersPercentage));
         }
         try
         {
            mySO = SharedObject.getLocal(AngryBirdsFacebook.getLocalStorageID(),AngryBirdsFacebook.LOCAL_STORAGE_FOLDER);
            levelAttemptsObject = mySO.data.levelAttempts;
            if(!levelAttemptsObject)
            {
               levelAttemptsObject = new Object();
               levelAttemptsObject[levelId] = 1;
            }
            else if(levelAttemptsObject[levelId])
            {
               levelAttemptsObject[levelId] += 1;
            }
            else
            {
               levelAttemptsObject[levelId] = 1;
            }
            mySO.data.levelAttempts = levelAttemptsObject;
            mySO.flush();
            parameters.push(new AnalyticsEventParameter("ATTEMPTS",levelAttemptsObject[levelId]));
         }
         catch(e:Error)
         {
            parameters.push(new AnalyticsEventParameter("ATTEMPTS",1));
         }
         if(passed)
         {
            parameters.push(new AnalyticsEventParameter("STARS",noOfStars));
            parameters.push(new AnalyticsEventParameter("FIRST_TIME",firstTimeCompleted));
            if(this.mLevelEndingAction)
            {
               parameters.push(new AnalyticsEventParameter("LEVEL_END_BUTTON",this.mLevelEndingAction));
            }
            this.createAnalyticsEvents(EVENT_ACTION_LEVEL_ENDED_WIN,parameters);
         }
         else
         {
            parameters.push(new AnalyticsEventParameter("SCREEN",this.getRecentTrackableScreen()));
            if(this.mLevelEndingAction)
            {
               parameters.push(new AnalyticsEventParameter("LEVEL_END_BUTTON",this.mLevelEndingAction));
            }
            this.createAnalyticsEvents(EVENT_ACTION_LEVEL_ENDED_FAIL,parameters);
         }
         this.mLevelEndingAction = null;
      }
      
      public function trackTournamentStatisticsEvent(tournamentId:String, levelsCompleted:Number, redBirdBeaten:Boolean, yellowBirdBeaten:Boolean, noOfParticipants:Number, rank:Number, totalScore:Number, stars:Number) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("TOURNAMENT_ID",tournamentId));
         parameters.push(new AnalyticsEventParameter("LEVELS_COMPLETED",levelsCompleted));
         parameters.push(new AnalyticsEventParameter("RED_BEATEN",redBirdBeaten));
         parameters.push(new AnalyticsEventParameter("YELLOW_BEATEN",yellowBirdBeaten));
         parameters.push(new AnalyticsEventParameter("PARTICIPANTS",noOfParticipants));
         parameters.push(new AnalyticsEventParameter("RANK",rank));
         parameters.push(new AnalyticsEventParameter("TOTAL_SCORE",totalScore));
         parameters.push(new AnalyticsEventParameter("STARS",stars));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",true));
         this.createAnalyticsEvents(EVENT_ACTION_TOURNAMENT_STATISTICS,parameters);
      }
      
      public function trackShopCategoryEntered(category:String, fromWallet:Boolean = false) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         var fromScreen:* = this.getRecentTrackableScreen();
         if(fromWallet)
         {
            fromScreen += "_WALLET";
         }
         parameters.push(new AnalyticsEventParameter("SCREEN",fromScreen));
         parameters.push(new AnalyticsEventParameter("CATEGORY",category));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",true));
         this.createAnalyticsEvents(EVENT_SHOP_CATEGORY_ENTERED,parameters);
      }
      
      public function trackNotificationClickedEvent(notificationType:String, text:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("TYPE",notificationType));
         parameters.push(new AnalyticsEventParameter("TEXT",text));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",true));
         this.createAnalyticsEvents(EVENT_ACTION_NOTIFICATION_CLICKED,parameters);
      }
      
      public function trackSendGiftEvent(count:int, place:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("COUNT",count));
         parameters.push(new AnalyticsEventParameter("GIFT_PLACE",place));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",true));
         this.createAnalyticsEvents(EVENT_GIFT_SENT,parameters);
      }
      
      public function trackDailySpinUIAction(actionName:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("USER_ACTION",actionName));
         this.createAnalyticsEvents(EVENT_DAILY_SPIN_UI,parameters);
      }
      
      public function trackDailySpinReward(rewardName:String, count:uint, itemsOnWheel:uint) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("REWARD",rewardName));
         parameters.push(new AnalyticsEventParameter("REWARD_COUNT",count));
         parameters.push(new AnalyticsEventParameter("WHEEL_SEGMENTS",itemsOnWheel));
         this.createAnalyticsEvents(EVENT_DAILY_SPIN,parameters);
      }
      
      public function trackItemRemovedFromSpinningWheel(itemName:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("RESULT",itemName));
         this.createAnalyticsEvents(EVENT_DAILY_SPIN_REMOVE,parameters);
      }
      
      public function trackSendChallenge(from:String, to:String, tournamentID:int, activePlayerAmount:int) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("SENDER_ID",from));
         parameters.push(new AnalyticsEventParameter("RECEIVER_ID",to));
         parameters.push(new AnalyticsEventParameter("TOURNAMENT_ID",tournamentID));
         parameters.push(new AnalyticsEventParameter("PARTICIPANTS",activePlayerAmount));
         this.createAnalyticsEvents(EVENT_CHALLENGE_TOURNAMENT,parameters);
      }
      
      public function trackClaimGiftEvent(count:int, claimOnly:Boolean) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("COUNT",count));
         parameters.push(new AnalyticsEventParameter("CLAIM_ONLY",claimOnly));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",true));
         this.createAnalyticsEvents(EVENT_GIFT_CLAIMED,parameters);
      }
      
      public function trackTournamentEventButtonClick(clickedFrom:String, claimable:Boolean) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         if(clickedFrom == TOURNAMENT_EVENT_BUTTON_CLICKED_FROM_LEVEL_SELECTION)
         {
            parameters.push(new AnalyticsEventParameter("ANIMATED",claimable));
         }
         else
         {
            parameters.push(new AnalyticsEventParameter("CLAIMABLE",claimable));
         }
         this.createAnalyticsEvents(clickedFrom,parameters);
      }
      
      public function trackTournamentEventClaimReward(chest:int) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("CHEST",chest));
         this.createAnalyticsEvents(TOURNAMENT_EVENT_REWARD_CLAIMED,parameters);
      }
      
      public function trackInventoryGainedEvent(firstTimePurchased:Boolean = false, itemType:String = "", amount:Number = 0, gainType:String = "", screen:String = "", level:String = "", itemName:String = "", iapType:String = "", paidAmount:Number = 0, currency:String = "", receiptId:String = "", rovioAnalytics:Boolean = true) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("FIRST_TIME",firstTimePurchased));
         parameters.push(new AnalyticsEventParameter("ITEM_TYPE",itemType));
         parameters.push(new AnalyticsEventParameter("AMOUNT",amount));
         parameters.push(new AnalyticsEventParameter("GAIN_TYPE",gainType));
         parameters.push(new AnalyticsEventParameter("SCREEN",screen));
         parameters.push(new AnalyticsEventParameter("LEVEL",level));
         parameters.push(new AnalyticsEventParameter("ITEM_NAME",itemName));
         parameters.push(new AnalyticsEventParameter("IAP_TYPE",iapType));
         parameters.push(new AnalyticsEventParameter("PAID_AMOUNT",paidAmount));
         parameters.push(new AnalyticsEventParameter("CURRENCY",currency));
         parameters.push(new AnalyticsEventParameter("RECEIPT_ID",receiptId));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",rovioAnalytics));
         this.createAnalyticsEvents(EVENT_ACTION_INVENTORY_GAINED,parameters);
      }
      
      public function trackShareBragEvent(shareEvent:String, result:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("SHARE_EVENT",shareEvent));
         parameters.push(new AnalyticsEventParameter("RESULT",result));
         this.createAnalyticsEvents(EVENT_SHARE_BRAG,parameters);
      }
      
      private function createAnalyticsEvents(eventName:String, parameters:Vector.<AnalyticsEventParameter>, isFirstTime:Boolean = false, testCase:String = "", testGroup:String = "") : void
      {
         var parameter:AnalyticsEventParameter = null;
         var p:AnalyticsEventParameter = null;
         if(this.mEnabled && new Date().time - this.mSessionTime >= SESSION_ID_TIME_REFRESH)
         {
            this.mSessionId = this.generateSessionId();
            this.updateSessionId();
            this.incrementSessionCounter();
         }
         for each(parameter in this.createGenericEventParameters())
         {
            parameters.push(parameter);
         }
         if(this.getAnalyticsEvents().length >= this.MAX_EVENTS_IN_QUEUE)
         {
            if(!this.mBatchSendTimer)
            {
               this.connect();
            }
            this.mBatchSendTimer.reset();
            this.onTimerReachedInterval(null);
            this.mBatchSendTimer.start();
         }
         var parametersObject:Object = new Object();
         for each(p in parameters)
         {
            parametersObject[p.key] = p.value;
         }
         if(this.mEnabled)
         {
            this.getAnalyticsEvents().push(new AnalyticsEvent(eventName,parametersObject));
         }
      }
      
      private function createGenericEventParameters(firstTime:Boolean = false, testCase:String = "", testGroup:String = "") : Vector.<AnalyticsEventParameter>
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("SESSION_ID",this.sessionId()));
         parameters.push(new AnalyticsEventParameter("FB_CONNECT","YES"));
         parameters.push(new AnalyticsEventParameter("SESSION_COUNTER",this.sessionCounter()));
         return parameters;
      }
      
      public function getAnalyticsEvents() : Vector.<AnalyticsEvent>
      {
         if(this.mAnalyticsEvents == null)
         {
            this.mAnalyticsEvents = new Vector.<AnalyticsEvent>();
         }
         return this.mAnalyticsEvents;
      }
      
      private function createParameter(key:String, value:String) : AnalyticsEventParameter
      {
         return new AnalyticsEventParameter(key,value);
      }
      
      public function getAccessToken() : String
      {
         return AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).dataModelFriends.rovioAccessToken.accessToken;
      }
      
      protected function onIoError(event:IOErrorEvent) : void
      {
      }
      
      private function nowDateFormatted() : Number
      {
         var d:Date = new Date();
         return d.time;
      }
      
      public function formatDate(d:Date) : String
      {
         var dtf:DateTimeFormatter = new DateTimeFormatter("en-US");
         var msTimeZoneStrFormat:String = ".{0}{1}:{2}";
         dtf.setDateTimePattern("yyyy-MM-dd\'T\'HH:mm:ss");
         var timeZone:String = this.zeroPad(d.timezoneOffset / 60,2);
         var time:Array = timeZone.split(".");
         var hour:String = timeZone;
         var min:String = "00";
         if(time.length > 1)
         {
            hour = this.zeroPad(time[0],2);
            min = (parseFloat("0." + time[1].toString()) * 60).toString();
         }
         return dtf.format(d) + StringUtil.substitute(msTimeZoneStrFormat,d.milliseconds.toString().slice(0,2),hour,min);
      }
      
      private function zeroPad(value:Number, length:int) : String
      {
         var direction:String = value < 0 ? "-" : "+";
         var zero:String = "0";
         var result:String = value.toString().slice(1);
         while(result.length < length)
         {
            result = zero.concat(result);
         }
         return direction + result;
      }
      
      public function injectData(dataObject:Object) : void
      {
         if(dataObject.c && dataObject.c.analytics)
         {
            this.BATCH_SEND_INTERVAL_MS = (dataObject.c.analytics.ti as Number) * 1000;
            this.MAX_EVENTS_IN_QUEUE = dataObject.c.analytics.qs as Number;
            this.mEnabled = true;
            this.connect();
         }
         else
         {
            this.mEnabled = false;
         }
      }
      
      public function sessionId() : String
      {
         if(!this.mSessionId || this.mSessionId == "")
         {
            this.mSessionId = this.generateSessionId();
         }
         return this.mSessionId;
      }
      
      private function generateSessionId() : String
      {
         this.mSessionTime = new Date().time;
         return this.mSessionTime.toString();
      }
      
      protected function updateSessionId() : void
      {
         this.mSessionDataLoader = new ABFLoader();
         this.mSessionDataLoader.addEventListener(Event.COMPLETE,this.onDataLoaded);
         this.mSessionDataLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onDataLoadError);
         this.mSessionDataLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onDataLoadError);
         this.mSessionDataLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mSessionDataLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + RENEW_SESSION_ID_URL + this.mSessionId + "?=" + this.mSessionCounter));
      }
      
      protected function onDataLoadError(event:IOErrorEvent) : void
      {
      }
      
      protected function onDataLoaded(event:Event) : void
      {
         this.mSessionDataLoader.removeEventListener(Event.COMPLETE,this.onDataLoaded);
         this.mSessionDataLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onDataLoadError);
         this.mSessionDataLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onDataLoadError);
         this.mSessionDataLoader = null;
      }
      
      public function set analyticsUrl(value:String) : void
      {
         if(value)
         {
            this.mAnalyticsUrl = value;
         }
      }
      
      public function trackSlingshotUsed(levelId:String, nameOfSlingshot:String, kingslingActive:Boolean, slingscopeActive:Boolean, superseedActive:Boolean, wingmanActive:Boolean) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("LEVEL",levelId));
         parameters.push(new AnalyticsEventParameter("SLINGSHOT",nameOfSlingshot));
         parameters.push(new AnalyticsEventParameter("KINGSLING_ACTIVE",kingslingActive));
         parameters.push(new AnalyticsEventParameter("SLINGSCOPE_ACTIVE",slingscopeActive));
         parameters.push(new AnalyticsEventParameter("SUPERSEED_ACTIVE",superseedActive));
         parameters.push(new AnalyticsEventParameter("WINGMAN_ACTIVE",wingmanActive));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",true));
         this.createAnalyticsEvents(EVENT_ACTION_SLINGSHOT_USED,parameters);
      }
      
      public function trackAllContentPlayedEvent(contentType:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("CONTENT_TYPE",contentType));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",true));
         this.createAnalyticsEvents(EVENT_ALL_CONTENT_PLAYED,parameters);
      }
      
      public function trackInvitationSent(count:int, origin:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("COUNT",count));
         parameters.push(new AnalyticsEventParameter("ORIGIN",origin));
         this.createAnalyticsEvents(EVENT_ACTION_INVITATION_SENT,parameters);
      }
      
      public function trackRequestFriendPermission(origin:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("ORIGIN",origin));
         this.createAnalyticsEvents(EVENT_REQUEST_FRIEND_PERMISSION,parameters);
      }
      
      public function set enabled(value:Boolean) : void
      {
         this.mEnabled = value;
      }
      
      private function getLevelSortCode(levelId:String) : String
      {
         if(!levelId)
         {
            return "0-0";
         }
         var index:Number = levelId.indexOf("-");
         var episodeString:String = levelId.substr(0,index);
         var levelString:String = levelId.substr(index + 1);
         if(episodeString == StateFacebookLevelSelection.EPISODE_TOURNAMENT)
         {
            episodeString = "T";
            levelString = (TournamentModel.instance.levelIDs.indexOf(levelId) + 1).toString();
         }
         else if(episodeString.length == 1)
         {
            episodeString = "0" + episodeString;
         }
         if(levelString.length == 1)
         {
            levelString = "0" + levelString;
         }
         return episodeString + "-" + levelString;
      }
      
      private function getRecentTrackableScreen() : String
      {
         var recentStateInfoObject:Object = null;
         if(AngryBirdsEngine.smApp as AngryBirdsFacebook)
         {
            recentStateInfoObject = (AngryBirdsEngine.smApp as AngryBirdsFacebook).getRecentTrackableState();
            return recentStateInfoObject.screenName;
         }
         return AngryBirdsFacebook.TRACKABLE_STATE_NAMES[0][1];
      }
      
      private function incrementSessionCounter() : void
      {
         if(this.mSessionCounter >= int.MAX_VALUE)
         {
            this.mSessionCounter = 0;
         }
         ++this.mSessionCounter;
      }
      
      public function sessionCounter() : int
      {
         return this.mSessionCounter;
      }
      
      public function trackDynamicPopupResult(notificationName:String, result:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("NOTIFICATION_NAME",notificationName));
         parameters.push(new AnalyticsEventParameter("RESULT",result));
         parameters.push(new AnalyticsEventParameter("USER_ID",this.mUserId));
         this.createAnalyticsEvents(EVENT_DYNAMIC_POPUP_CLICK,parameters);
      }
      
      public function trackBrandedButtonClick(tournamentID:String) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("TOURNAMENT_ID",tournamentID));
         this.createAnalyticsEvents(EVENT_BRAND_BUTTON_CLICK,parameters);
      }
      
      public function trackInventoryUsed(itemType:String, amount:int, useType:String, iapType:String = "", itemAmount:int = 0, screen:String = "", level:String = "", rovioAnalytics:Boolean = true) : void
      {
         var parameters:Vector.<AnalyticsEventParameter> = new Vector.<AnalyticsEventParameter>();
         parameters.push(new AnalyticsEventParameter("ITEM_TYPE",itemType));
         parameters.push(new AnalyticsEventParameter("AMOUNT",amount));
         parameters.push(new AnalyticsEventParameter("USE_TYPE",useType));
         parameters.push(new AnalyticsEventParameter("IAP_TYPE",iapType));
         parameters.push(new AnalyticsEventParameter("ITEM_AMOUNT",itemAmount));
         parameters.push(new AnalyticsEventParameter("SCREEN",screen));
         parameters.push(new AnalyticsEventParameter("LEVEL",level));
         parameters.push(new AnalyticsEventParameter("ROVIO_ANALYTICS",rovioAnalytics));
         this.createAnalyticsEvents(EVENT_ACTION_INVENTORY_USED,parameters);
      }
      
      public function get levelEndingAction() : String
      {
         return this.mLevelEndingAction;
      }
      
      public function set levelEndingAction(value:String) : void
      {
         this.mLevelEndingAction = value;
      }
   }
}
