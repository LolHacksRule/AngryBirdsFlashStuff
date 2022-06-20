package com.angrybirds.data
{
   import com.angrybirds.abtesting.ABTestingModel;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.giftinbox.GiftInboxPopup;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.LeagueType;
   import com.angrybirds.popups.DataErasurePopup;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.ToSPopup;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.server.AvatarLoader;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.utils.ServerSynchronizedTime;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.factory.Log;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.skynest.RovioAccessToken;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.ErrorCode;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import data.user.FacebookUserProgress;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   
   public class InitDataLoader
   {
      
      public static const USER_LOCALE:String = "en-US";
      
      public static const USER_LOCALE_SHORT:String = "en";
      
      private static var sLoader:ABFLoader;
      
      private static var sLoaders:Vector.<ABFLoader>;
      
      private static var sData:Object;
      
      private static var sError:String = "";
      
      private static var sErrorCode:int = 0;
      
      private static var sFacebookUserId:String;
      
      private static var sAccessToken:String;
      
      private static var sExpiresInSeconds:String;
      
      private static var sAcquisitionChannel:String;
      
      private static var sRovioAccessToken:RovioAccessToken;
      
      private static var sDataLoaderCounter:int;
      
      private static var sSavedConsentData:Object;
       
      
      public function InitDataLoader()
      {
         super();
      }
      
      public static function load(facebookUserId:String, accessToken:String, expiresInSeconds:String, acquisitionChannel:String, rovioAccessToken:RovioAccessToken) : void
      {
         sFacebookUserId = facebookUserId;
         sAccessToken = accessToken;
         sExpiresInSeconds = expiresInSeconds;
         sAcquisitionChannel = acquisitionChannel;
         sRovioAccessToken = rovioAccessToken;
         if(sRovioAccessToken.isLoading)
         {
            sRovioAccessToken.addEventListener(Event.COMPLETE,onRovioAccessTokenLoaded);
         }
         else
         {
            serverCallLogIn();
         }
      }
      
      private static function onRovioAccessTokenLoaded(e:Event) : void
      {
         sRovioAccessToken.removeEventListener(Event.COMPLETE,onRovioAccessTokenLoaded);
         serverCallLogIn();
      }
      
      private static function serverCallLogIn() : void
      {
         sLoader = new ABFLoader();
         sLoader.dataFormat = URLLoaderDataFormat.TEXT;
         sLoader.addEventListener(Event.COMPLETE,onLoginDataLoaded);
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/login/");
         var postData:Object = {
            "doNotUseCookies":"true",
            "clientType":"WEB_FLASH",
            "fbUserId":sFacebookUserId,
            "fbAccessToken":sAccessToken,
            "fbAccessTokenExpiresInSeconds":sExpiresInSeconds,
            "localTimeZoneOffset":(new Date().timezoneOffset / 60).toString(),
            "acquisitionChannel":sAcquisitionChannel,
            "rovioLevel2AccessToken":sRovioAccessToken.accessToken,
            "rovioLevel2AccessTokenExpiresInSeconds":sRovioAccessToken.expiresIn,
            "clientSessionid":FacebookAnalyticsCollector.getInstance().sessionId(),
            "clientSessionCounter":FacebookAnalyticsCollector.getInstance().sessionCounter()
         };
         urlRequest.data = JSON.stringify(postData);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = "application/json";
         sLoader.load(urlRequest);
      }
      
      private static function onLoginDataLoaded(e:Event) : void
      {
         sData = sLoader.data;
         if(sData.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Server error of type \'" + sData.type + "\':\n" + sData.message + "\n Code: " + ErrorCode.AUTHENTICATION_ERROR));
         }
         if(sData.uid != sFacebookUserId)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Facebook IDs mismatch. Flashvar:\'" + sFacebookUserId + "\', server:\'" + sData.uid + "\', accessToken:\'" + sAccessToken + "\'.\n Code: " + ErrorCode.FACEBOOK_ID_MISMATCH));
         }
         if(sData.name == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"User name cannot be null"));
         }
         sData.currency = {
            "user_currency":"USD",
            "currency_exchange":10,
            "currency_exchange_inverse":0.1,
            "currency_offset":100
         };
         sData.vCurrency = {
            "user_currency":"ABFC",
            "currency_exchange":0.01,
            "currency_exchange_inverse":100,
            "currency_offset":1
         };
         dataModel.currencyModel = new CurrencyModel();
         dataModel.virtualCurrencyModel = new VirtualCurrencyModel(sData.vCurrency);
         dataModel.piggyCurrencyModel = new PiggyCurrencyModel(sData.vCurrency);
         userProgress.init(sData.name,sData.uid,sData.tutorials);
         if(sData.qr)
         {
            TournamentModel.instance.qualifierRoundsCompleted = sData.qr;
         }
         if(sData.c)
         {
            if(sData.c.gaee)
            {
               FacebookGoogleAnalyticsTracker.TRACK_ERRORS = sData.c.gaee.a == true;
            }
            else
            {
               FacebookGoogleAnalyticsTracker.TRACK_ERRORS = false;
            }
            ABTestingModel.injectData(sData.c.abt);
            if(sData.c.li)
            {
               LeagueModel.instance.active = true;
               LeagueType.injectLeagueConfig(sData.c.li);
            }
            else
            {
               LeagueModel.instance.active = false;
            }
            if(sData.c.og && sData.c.og.openGraphAdminObjects)
            {
               OpenGraphData.injectData(sData.c.og.openGraphAdminObjects);
            }
            if(sData.c.ct)
            {
               TournamentModel.CACHE_VALIDITY_SECONDS = int(sData.c.ct);
            }
            if(sData.c.scid)
            {
               TournamentModel.instance.activateTournamentCampaign(sData.c.scid);
            }
            FacebookAnalyticsCollector.getInstance().injectData(sData);
         }
         sLoaders = new Vector.<ABFLoader>();
         sDataLoaderCounter = 0;
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            ++sDataLoaderCounter;
            onFriendListPermission("true");
         }
         else
         {
            addExternalLoader("hasFriendListPermission","friendListPermission",onFriendListPermission);
         }
         ItemsInventory.instance.addEventListener(ItemsInventory.EVENT_INVENTORY_LOADED,onInventoryLoaded);
         ++sDataLoaderCounter;
         ItemsInventory.instance.loadInventory();
         addLoader(AngryBirdsBase.SERVER_ROOT + "/requestexcludes/",onRequestExcludesLoaded);
         addLoader(AngryBirdsBase.SERVER_ROOT + "/getservertime",onServerTimeLoaded);
         addLoader(AngryBirdsBase.SERVER_ROOT + "/getrequests",onRequestsLoaded);
         addLoader(AngryBirdsBase.SERVER_ROOT + "/geteggs",onEggsLoaded);
         addLoader(AngryBirdsBase.SERVER_ROOT + "/scores/getOwnEpisodeScores?episode=1,2,3,4,5,9,10,11,12,1000,4000,4001",onEpisodeScoreLoaded);
         dataModel.clientStorage.loadStorage();
         loadGDPR();
      }
      
      private static function addExternalLoader(externalCall:String, callbackIdentifier:String, callbackFunction:Function) : void
      {
         ++sDataLoaderCounter;
         ExternalInterfaceHandler.addCallback(callbackIdentifier,callbackFunction);
         ExternalInterfaceHandler.performCall(externalCall);
      }
      
      private static function addLoader(urlAddress:String, callbackFunction:Function) : void
      {
         ++sDataLoaderCounter;
         var loader:ABFLoader = new ABFLoader();
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.addEventListener(Event.COMPLETE,callbackFunction);
         loader.addEventListener(IOErrorEvent.IO_ERROR,onLoaderError);
         loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onLoaderError);
         loader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,onLoaderError);
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(urlAddress);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         loader.load(urlRequest);
         sLoaders.push(loader);
      }
      
      private static function onLoaderError(event:Event) : void
      {
         var popup:IPopup = null;
         if(event.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            popup = new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED);
         }
         else
         {
            popup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      private static function onFriendListPermission(hasPermission:String) : void
      {
         var avatarLoader:AvatarLoader = null;
         ExternalInterfaceHandler.removeCallback("friendListPermission",onFriendListPermission);
         FriendsBar.FRIEND_LIST_PERMISSION_GRANTED = hasPermission == "true";
         if(FriendsBar.FRIEND_LIST_PERMISSION_GRANTED)
         {
            loadFriends();
         }
         else
         {
            AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).requestFriendListPermission("POPUP");
            sData.friends = [];
            FriendsDataCache.injectFriendsData(null);
            FriendsDataCache.injectInviteFriendsData(null);
            AngryBirdsFacebook.sSingleton.initHighScoreListManager({"players":sData.friends});
            avatarLoader = new AvatarLoader();
            avatarLoader.loadAvatarItems();
         }
         reduceDataLoaderCounter();
      }
      
      public static function loadFriends() : void
      {
         addLoader(AngryBirdsBase.SERVER_ROOT + "/friends/getOverallScores?forceRefresh=true",onFriendsLoaded);
         loadInviteCandidates();
      }
      
      private static function onFriendsLoaded(e:Event) : void
      {
         var loader:ABFLoader = null;
         var friendsData:Object = null;
         var avatarLoader:AvatarLoader = null;
         for each(loader in sLoaders)
         {
            if(loader == e.target)
            {
               friendsData = removeUsersWhoHaveUninstalledApp(e.target.data,"players");
               sData.friends = friendsData.players;
               FriendsDataCache.injectFriendsData(sData.friends);
               AngryBirdsFacebook.sSingleton.initHighScoreListManager({"players":sData.friends});
               avatarLoader = new AvatarLoader();
               avatarLoader.loadAvatarItems();
               reduceDataLoaderCounter();
               break;
            }
         }
      }
      
      protected static function onError(e:IOErrorEvent) : void
      {
         Log.log("Error while loading the initial data");
      }
      
      private static function loadInviteCandidates() : void
      {
         addLoader(AngryBirdsBase.SERVER_ROOT + "/friends/inviteCandidates?limit=6",onInviteCandidatesLoaded);
      }
      
      protected static function onInviteCandidatesLoaded(e:Event) : void
      {
         var loader:URLLoader = e.currentTarget as URLLoader;
         loader.removeEventListener(Event.COMPLETE,onInviteCandidatesLoaded);
         loader.removeEventListener(IOErrorEvent.IO_ERROR,onError);
         reduceDataLoaderCounter();
         if(!e.target.data || !e.target.data.players)
         {
            return;
         }
         FriendsDataCache.injectInviteFriendsData(e.target.data.players);
      }
      
      private static function onInventoryLoaded(e:Event) : void
      {
         reduceDataLoaderCounter();
      }
      
      private static function onRequestExcludesLoaded(e:Event) : void
      {
         var loader:ABFLoader = null;
         for each(loader in sLoaders)
         {
            if(loader == e.target)
            {
               sData.deauthorizedUserIds = e.target.data.deauthorizedUserIds;
               sData.excludedUserIds = e.target.data.excludedUserIds;
               ExceptionUserIDsManager.instance.injectUninstallData(sData.deauthorizedUserIds);
               ExceptionUserIDsManager.instance.injectGiftExcludeData(sData.excludedUserIds);
               ExceptionUserIDsManager.instance.injectChallengeExcludeData(null);
               reduceDataLoaderCounter();
               break;
            }
         }
      }
      
      private static function onServerTimeLoaded(e:Event) : void
      {
         var loader:ABFLoader = null;
         for each(loader in sLoaders)
         {
            if(loader == e.target)
            {
               sData.servertime = e.target.data.time;
               if(sData.servertime)
               {
                  DataModelFriends(AngryBirdsBase.singleton.dataModel).serverSynchronizedTime = new ServerSynchronizedTime(sData.servertime);
               }
               reduceDataLoaderCounter();
               break;
            }
         }
      }
      
      private static function onRequestsLoaded(e:Event) : void
      {
         var loader:ABFLoader = null;
         var bragObject:Object = null;
         for each(loader in sLoaders)
         {
            if(loader == e.target)
            {
               sData.requests = e.target.data;
               GiftInboxPopup.injectData(sData.requests);
               for each(bragObject in sData.requests.brags)
               {
                  ExternalInterfaceHandler.performCall("flashDeleteRequest",bragObject.r);
               }
               reduceDataLoaderCounter();
               break;
            }
         }
      }
      
      private static function onDrawConfigLoaded(e:Event) : void
      {
         var loader:ABFLoader = null;
         for each(loader in sLoaders)
         {
            if(loader == e.target)
            {
               sData.drawconfig = e.target.data;
               reduceDataLoaderCounter();
               break;
            }
         }
      }
      
      private static function onEggsLoaded(e:Event) : void
      {
         var loader:ABFLoader = null;
         for each(loader in sLoaders)
         {
            if(loader == e.target)
            {
               userProgress.setUnlockedEggs(e.target.data);
               reduceDataLoaderCounter();
               break;
            }
         }
      }
      
      private static function onEpisodeScoreLoaded(e:Event) : void
      {
         var loader:ABFLoader = null;
         var scoreObject:Object = null;
         for each(loader in sLoaders)
         {
            if(loader == e.target)
            {
               scoreObject = e.target.data;
               userProgress.setEpisodeScore(scoreObject.levelScores);
               reduceDataLoaderCounter();
               break;
            }
         }
      }
      
      public static function removeUsersWhoHaveUninstalledApp(data:Object, rootName:String, level:String = null) : Object
      {
         var nodeName:* = null;
         var i:int = 0;
         var friend:Object = null;
         var userId:String = null;
         var updatedRank:int = 0;
         if(data == null)
         {
            return null;
         }
         var realFriends:Object = new Object();
         for(nodeName in data)
         {
            if(nodeName != rootName)
            {
               realFriends[nodeName] = data[nodeName];
            }
         }
         realFriends[rootName] = new Array();
         i = 1;
         for each(friend in data[rootName])
         {
            if(ExceptionUserIDsManager.instance.getUninstallIDs()[friend.uid] == null)
            {
               friend.r = i;
               realFriends[rootName].push(friend);
               i++;
            }
         }
         realFriends[rootName].sortOn("r",Array.NUMERIC);
         if(level)
         {
            userId = userProgress.userID;
            updatedRank = 0;
            for each(friend in realFriends[rootName])
            {
               if(friend.uid == userId)
               {
                  updatedRank = friend.r;
                  break;
               }
            }
            userProgress.setRankForLevel(level,updatedRank);
         }
         return realFriends;
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      public static function get isLoading() : Boolean
      {
         return sLoader != null;
      }
      
      private static function get data() : Object
      {
         return sData;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      private static function reduceDataLoaderCounter() : void
      {
         if(AngryBirdsFacebook.isInitDataLoaded())
         {
            return;
         }
         --sDataLoaderCounter;
         if(sDataLoaderCounter <= 0)
         {
            sLoaders.length = 0;
            sLoader = null;
            AngryBirdsFacebook.initDataLoaded();
         }
      }
      
      private static function loadGDPR() : void
      {
         loadGDPRErasureState(onErasureStateLoaded,onErasureStateError);
         ++sDataLoaderCounter;
      }
      
      public static function loadGDPRErasureState(erasureFoundFunc:Function, erasureNotFoundFunc:Function) : void
      {
         var urlPath:String = "/erasure/1/apps/" + AngryBirdsFacebook.beaconAppId + "/player?accessToken=" + AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).dataModelFriends.rovioAccessToken.accessToken;
         var request:URLRequest = new URLRequest("https://" + AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).dataModelFriends.rovioAccessToken.environment + ".rovio.com" + urlPath);
         request.method = URLRequestMethod.GET;
         var loader:URLLoader = new URLLoader();
         loader.addEventListener(Event.COMPLETE,erasureFoundFunc);
         loader.addEventListener(IOErrorEvent.IO_ERROR,erasureNotFoundFunc);
         loader.load(request);
      }
      
      public static function onErasureStateLoaded(e:Event) : void
      {
         var loader:URLLoader = e.currentTarget as URLLoader;
         loader.removeEventListener(Event.COMPLETE,onErasureStateLoaded);
         loader.removeEventListener(IOErrorEvent.IO_ERROR,onErasureStateError);
         var loadedErasureData:Object = JSON.parse(e.currentTarget.data);
         var popup:DataErasurePopup = new DataErasurePopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
         popup.injectData(loadedErasureData);
      }
      
      private static function onErasureStateError(event:Event) : void
      {
         var loader:URLLoader = event.currentTarget as URLLoader;
         loader.removeEventListener(Event.COMPLETE,onErasureStateLoaded);
         loader.removeEventListener(IOErrorEvent.IO_ERROR,onErasureStateError);
         createToSRequest(URLRequestMethod.POST,null,onConsentsLoaded,onLoaderError);
      }
      
      private static function onConsentsLoaded(e:Event) : void
      {
         var consentDataObj:Object = null;
         var popupContent:Object = null;
         var checkAgainWithShortLocale:Boolean = false;
         var section:Object = null;
         var popup:ToSPopup = null;
         var toSNeedsToBeAccepted:Boolean = false;
         var loader:URLLoader = e.currentTarget as URLLoader;
         loader.removeEventListener(Event.COMPLETE,onConsentsLoaded);
         loader.removeEventListener(IOErrorEvent.IO_ERROR,onLoaderError);
         loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onLoaderError);
         var loadedConsentsData:Object = JSON.parse(e.currentTarget.data);
         for each(consentDataObj in loadedConsentsData.consents)
         {
            if(consentDataObj.consentId == "tos")
            {
               if(consentDataObj.answer != "YES")
               {
                  toSNeedsToBeAccepted = true;
                  popupContent = new Object();
                  popupContent["locale"] = USER_LOCALE;
                  checkAgainWithShortLocale = true;
                  for each(section in consentDataObj.consent.sections)
                  {
                     if(section.locale == USER_LOCALE)
                     {
                        popupContent[section.id] = section.text;
                        if(section.url != null)
                        {
                           popupContent["url"] = section.url + section.locale;
                        }
                        checkAgainWithShortLocale = false;
                     }
                  }
                  if(checkAgainWithShortLocale)
                  {
                     popupContent["locale"] = USER_LOCALE_SHORT;
                     for each(section in consentDataObj.consent.sections)
                     {
                        section.locale = section.locale.substr(0,2);
                        if(section.locale == "en" || section.locale == USER_LOCALE_SHORT)
                        {
                           popupContent[section.id] = section.text;
                           if(section.url != null)
                           {
                              popupContent["url"] = section.url + section.locale;
                           }
                        }
                     }
                  }
                  popup = new ToSPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
                  AngryBirdsBase.singleton.popupManager.openPopup(popup);
                  popup.injectData(popupContent["title"],popupContent["body"],popupContent["button-accept"],popupContent["button-tos"],popupContent["url"]);
                  sSavedConsentData = consentDataObj;
                  break;
               }
            }
         }
         if(!toSNeedsToBeAccepted)
         {
            reduceDataLoaderCounter();
         }
      }
      
      public static function toSAccepted() : void
      {
         var saveData:Object = null;
         if(sSavedConsentData)
         {
            saveData = new Object();
            saveData["answer"] = "YES";
            saveData["version"] = sSavedConsentData.version;
            saveData["id"] = sSavedConsentData.consentId;
            createToSRequest(URLRequestMethod.POST,JSON.stringify(saveData),onConsentsSaved,onLoaderError);
         }
      }
      
      private static function onConsentsSaved(e:Event) : void
      {
         var loader:URLLoader = e.currentTarget as URLLoader;
         loader.removeEventListener(Event.COMPLETE,onConsentsSaved);
         loader.removeEventListener(IOErrorEvent.IO_ERROR,onLoaderError);
         loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onLoaderError);
         reduceDataLoaderCounter();
      }
      
      private static function createToSRequest(method:String, data:String, callBack:Function, errorCallback:Function) : void
      {
         var urlPath:String = "/consent/1/apps/" + AngryBirdsFacebook.beaconAppId + "/player/consents?accessToken=" + AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).dataModelFriends.rovioAccessToken.accessToken;
         var request:URLRequest = new URLRequest("https://" + AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).dataModelFriends.rovioAccessToken.environment + ".rovio.com" + urlPath);
         request.method = method;
         request.requestHeaders = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).dataModelFriends.rovioAccessToken.accessToken)];
         request.contentType = "application/json";
         request.data = data;
         var loader:URLLoader = new URLLoader();
         loader.addEventListener(Event.COMPLETE,callBack);
         loader.addEventListener(IOErrorEvent.IO_ERROR,errorCallback);
         loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,errorCallback);
         loader.load(request);
      }
      
      public static function getLastClassicUnclaimedTournamentId() : int
      {
         if(sData.lastClassicUnclaimedTournament)
         {
            return sData.lastClassicUnclaimedTournament;
         }
         return -1;
      }
      
      public static function resetLastClassicUnclaimedTournamentId() : void
      {
         sData.lastClassicUnclaimedTournament = null;
      }
      
      public static function getAutoclaimedRewards() : Array
      {
         if(sData.autoclaimed && sData.autoclaimed.length > 0 && sData.autoclaimed[0] != null)
         {
            return sData.autoclaimed;
         }
         return null;
      }
      
      public static function resetAutoclaimedRewards() : void
      {
         sData.autoclaimed = null;
      }
   }
}
