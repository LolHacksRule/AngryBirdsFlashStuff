package §,#,§
{
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import §!L§.§`#u§;
   import §"#X§.§8#g§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §#"4§.§@$7§;
   import §#$?§.§7!b§;
   import §,!_§.§=!g§;
   import §-$'§.§;"f§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §6"p§.§^"t§;
   import §=#`§.GiftInboxPopup;
   import §>!f§.§>#-§;
   import §?Q§.§@#D§;
   import §?Q§.DataErasurePopup;
   import §?Q§.ErrorPopup;
   import §?Q§.ToSPopup;
   import §?Q§.WarningPopup;
   import §]#'§.§4"s§;
   import §]#'§.§6#P§;
   import §^"G§.§2+§;
   import §`"t§.§@#O§;
   import §`,§.§7!$§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   
   public class §%"#§
   {
      
      public static const §?"?§:String = "en-US";
      
      public static const §%#G§:String = "en";
      
      private static var §>#E§:§-$C§;
      
      private static var §["D§:Vector.<§-$C§>;
      
      private static var § k§:Object;
      
      private static var §0!Q§:String = "";
      
      private static var §[#x§:int = 0;
      
      private static var §[]§:String;
      
      private static var §8!-§:String;
      
      private static var §7>§:String;
      
      private static var §@"&§:String;
      
      private static var §?";§:§=!g§;
      
      private static var §`"-§:int;
      
      private static var §`P§:Object;
       
      
      public function §%"#§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String, param4:String, param5:§=!g§) : void
      {
         §[]§ = param1;
         §8!-§ = param2;
         §7>§ = param3;
         §@"&§ = param4;
         §?";§ = param5;
         if(§?";§.§9$$§)
         {
            §?";§.addEventListener(Event.COMPLETE,§'$&§);
         }
         else
         {
            §9#§();
         }
      }
      
      private static function §'$&§(param1:Event) : void
      {
         §?";§.removeEventListener(Event.COMPLETE,§'$&§);
         §9#§();
      }
      
      private static function §9#§() : void
      {
         §>#E§ = new §-$C§();
         §>#E§.dataFormat = URLLoaderDataFormat.TEXT;
         §>#E§.addEventListener(Event.COMPLETE,§=$B§);
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/login/");
         var _loc2_:Object = {
            "doNotUseCookies":"true",
            "clientType":"WEB_FLASH",
            "fbUserId":§[]§,
            "fbAccessToken":§8!-§,
            "fbAccessTokenExpiresInSeconds":§7>§,
            "localTimeZoneOffset":(new Date().timezoneOffset / 60).toString(),
            "acquisitionChannel":§@"&§,
            "rovioLevel2AccessToken":§?";§.accessToken,
            "rovioLevel2AccessTokenExpiresInSeconds":§?";§.expiresIn,
            "clientSessionid":§3";§.§#"'§().§ #C§(),
            "clientSessionCounter":§3";§.§#"'§().§8!"§()
         };
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         §>#E§.load(_loc1_);
      }
      
      private static function §=$B§(param1:Event) : void
      {
         § k§ = §>#E§.data;
         if(§ k§.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Server error of type \'" + § k§.type + "\':\n" + § k§.message + "\n Code: " + §@$7§.§'#W§));
         }
         if(§ k§.uid != §[]§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Facebook IDs mismatch. Flashvar:\'" + §[]§ + "\', server:\'" + § k§.uid + "\', accessToken:\'" + §8!-§ + "\'.\n Code: " + §@$7§.§-X§));
         }
         if(§ k§.name == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"User name cannot be null"));
         }
         § k§.currency = {
            "user_currency":"USD",
            "currency_exchange":10,
            "currency_exchange_inverse":0.1,
            "currency_offset":100
         };
         § k§.vCurrency = {
            "user_currency":"ABFC",
            "currency_exchange":0.01,
            "currency_exchange_inverse":100,
            "currency_offset":1
         };
         dataModel.currencyModel = new §1!P§();
         dataModel.§1q§ = new §>#g§(§ k§.vCurrency);
         dataModel.§5$B§ = new §2"X§(§ k§.vCurrency);
         userProgress.init(§ k§.name,§ k§.uid,§ k§.tutorials);
         if(§ k§.qr)
         {
            §7!$§.§+!,§.§ 8§ = § k§.qr;
         }
         if(§ k§.c)
         {
            if(§ k§.c.gaee)
            {
               §<"G§.§+$A§ = § k§.c.gaee.a == true;
            }
            else
            {
               §<"G§.§+$A§ = false;
            }
            §>#-§.injectData(§ k§.c.abt);
            if(§ k§.c.li)
            {
               §4"s§.§+!,§.active = true;
               §6#P§.§[B§(§ k§.c.li);
            }
            else
            {
               §4"s§.§+!,§.active = false;
            }
            if(§ k§.c.og && § k§.c.og.openGraphAdminObjects)
            {
               §@#5§.injectData(§ k§.c.og.openGraphAdminObjects);
            }
            if(§ k§.c.ct)
            {
               §7!$§.§1#7§ = int(§ k§.c.ct);
            }
            if(§ k§.c.scid)
            {
               §7!$§.§+!,§.§;i§(§ k§.c.scid);
            }
            §3";§.§#"'§().injectData(§ k§);
         }
         §["D§ = new Vector.<§-$C§>();
         §`"-§ = 0;
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            ++§`"-§;
            §;!f§("true");
         }
         else
         {
            §`#O§("hasFriendListPermission","friendListPermission",§;!f§);
         }
         §]#0§.§+!,§.addEventListener(§]#0§.§>"K§,§6"l§);
         ++§`"-§;
         §]#0§.§+!,§.§@!z§();
         §^k§(AngryBirdsBase.SERVER_ROOT + "/requestexcludes/",§;a§);
         §^k§(AngryBirdsBase.SERVER_ROOT + "/getservertime",§+$C§);
         §^k§(AngryBirdsBase.SERVER_ROOT + "/getrequests",§3#G§);
         §^k§(AngryBirdsBase.SERVER_ROOT + "/geteggs",§2#g§);
         §^k§(AngryBirdsBase.SERVER_ROOT + "/scores/getOwnEpisodeScores?episode=1,2,3,4,5,9,10,11,12,1000,4000,4001",§+!s§);
         dataModel.§8$+§.§@M§();
         §+f§();
      }
      
      private static function §`#O§(param1:String, param2:String, param3:Function) : void
      {
         ++§`"-§;
         §7!b§.addCallback(param2,param3);
         §7!b§.§7@§(param1);
      }
      
      private static function §^k§(param1:String, param2:Function) : void
      {
         ++§`"-§;
         var _loc3_:§-$C§ = new §-$C§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.addEventListener(Event.COMPLETE,param2);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§9$4§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9$4§);
         _loc3_.addEventListener(§+!p§.§2$9§,§9$4§);
         var _loc4_:URLRequest;
         (_loc4_ = §?#l§.§2#=§(param1)).method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
         _loc3_.load(_loc4_);
         §["D§.push(_loc3_);
      }
      
      private static function §9$4§(param1:Event) : void
      {
         var _loc2_:§,#@§ = null;
         if(param1.type == §+!p§.§2$9§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§-#d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private static function §;!f§(param1:String) : void
      {
         var _loc2_:§;"f§ = null;
         §7!b§.§&#&§("friendListPermission",§;!f§);
         §2+§.§%8§ = param1 == "true";
         if(§2+§.§%8§)
         {
            §2!j§();
         }
         else
         {
            §@z§(§@z§.§ !D§).§!"O§("POPUP");
            § k§.friends = [];
            §8#g§.§<U§(null);
            §8#g§.§1!H§(null);
            §@z§.§ !D§.§,"v§({"players":§ k§.friends});
            _loc2_ = new §;"f§();
            _loc2_.§2"<§();
         }
         §1">§();
      }
      
      public static function §2!j§() : void
      {
         §^k§(AngryBirdsBase.SERVER_ROOT + "/friends/getOverallScores?forceRefresh=true",§"!a§);
         §8!&§();
      }
      
      private static function §"!a§(param1:Event) : void
      {
         var _loc2_:§-$C§ = null;
         var _loc3_:Object = null;
         var _loc4_:§;"f§ = null;
         for each(_loc2_ in §["D§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = §@"?§(param1.target.data,"players");
               § k§.friends = _loc3_.players;
               §8#g§.§<U§(§ k§.friends);
               §@z§.§ !D§.§,"v§({"players":§ k§.friends});
               (_loc4_ = new §;"f§()).§2"<§();
               §1">§();
               break;
            }
         }
      }
      
      protected static function onError(param1:IOErrorEvent) : void
      {
         §^"t§.log("Error while loading the initial data");
      }
      
      private static function §8!&§() : void
      {
         §^k§(AngryBirdsBase.SERVER_ROOT + "/friends/inviteCandidates?limit=6",§^!L§);
      }
      
      protected static function §^!L§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§^!L§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,onError);
         §1">§();
         if(!param1.target.data || !param1.target.data.players)
         {
            return;
         }
         §8#g§.§1!H§(param1.target.data.players);
      }
      
      private static function §6"l§(param1:Event) : void
      {
         §1">§();
      }
      
      private static function §;a§(param1:Event) : void
      {
         var _loc2_:§-$C§ = null;
         for each(_loc2_ in §["D§)
         {
            if(_loc2_ == param1.target)
            {
               § k§.deauthorizedUserIds = param1.target.data.deauthorizedUserIds;
               § k§.excludedUserIds = param1.target.data.excludedUserIds;
               §4!g§.§+!,§.§]"@§(§ k§.deauthorizedUserIds);
               §4!g§.§+!,§.§?$C§(§ k§.excludedUserIds);
               §4!g§.§+!,§.§!<§(null);
               §1">§();
               break;
            }
         }
      }
      
      private static function §+$C§(param1:Event) : void
      {
         var _loc2_:§-$C§ = null;
         for each(_loc2_ in §["D§)
         {
            if(_loc2_ == param1.target)
            {
               § k§.servertime = param1.target.data.time;
               if(§ k§.servertime)
               {
                  §=#o§(AngryBirdsBase.singleton.dataModel).serverSynchronizedTime = new §@#O§(§ k§.servertime);
               }
               §1">§();
               break;
            }
         }
      }
      
      private static function §3#G§(param1:Event) : void
      {
         var _loc2_:§-$C§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §["D§)
         {
            if(_loc2_ == param1.target)
            {
               § k§.requests = param1.target.data;
               GiftInboxPopup.injectData(§ k§.requests);
               for each(_loc3_ in § k§.requests.brags)
               {
                  §7!b§.§7@§("flashDeleteRequest",_loc3_.r);
               }
               §1">§();
               break;
            }
         }
      }
      
      private static function §"7§(param1:Event) : void
      {
         var _loc2_:§-$C§ = null;
         for each(_loc2_ in §["D§)
         {
            if(_loc2_ == param1.target)
            {
               § k§.drawconfig = param1.target.data;
               §1">§();
               break;
            }
         }
      }
      
      private static function §2#g§(param1:Event) : void
      {
         var _loc2_:§-$C§ = null;
         for each(_loc2_ in §["D§)
         {
            if(_loc2_ == param1.target)
            {
               userProgress.§6"i§(param1.target.data);
               §1">§();
               break;
            }
         }
      }
      
      private static function §+!s§(param1:Event) : void
      {
         var _loc2_:§-$C§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §["D§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = param1.target.data;
               userProgress.§6#9§(_loc3_.levelScores);
               §1">§();
               break;
            }
         }
      }
      
      public static function §@"?§(param1:Object, param2:String, param3:String = null) : Object
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:Object = new Object();
         for(_loc5_ in param1)
         {
            if(_loc5_ != param2)
            {
               _loc4_[_loc5_] = param1[_loc5_];
            }
         }
         _loc4_[param2] = new Array();
         _loc6_ = 1;
         for each(_loc7_ in param1[param2])
         {
            if(§4!g§.§+!,§.§;"q§()[_loc7_.uid] == null)
            {
               _loc7_.r = _loc6_;
               _loc4_[param2].push(_loc7_);
               _loc6_++;
            }
         }
         _loc4_[param2].sortOn("r",Array.NUMERIC);
         if(param3)
         {
            _loc8_ = userProgress.userID;
            _loc9_ = 0;
            for each(_loc7_ in _loc4_[param2])
            {
               if(_loc7_.uid == _loc8_)
               {
                  _loc9_ = _loc7_.r;
                  break;
               }
            }
            userProgress.§=l§(param3,_loc9_);
         }
         return _loc4_;
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      public static function get §9$$§() : Boolean
      {
         return §>#E§ != null;
      }
      
      private static function get data() : Object
      {
         return § k§;
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      private static function §1">§() : void
      {
         if(§@z§.§--§())
         {
            return;
         }
         --§`"-§;
         if(§`"-§ <= 0)
         {
            §["D§.length = 0;
            §>#E§ = null;
            §@z§.§@$C§();
         }
      }
      
      private static function §+f§() : void
      {
         §;!Y§(§3M§,§0#9§);
         ++§`"-§;
      }
      
      public static function §;!Y§(param1:Function, param2:Function) : void
      {
         var _loc3_:String = "/erasure/1/apps/" + §@z§.§0"W§ + "/player?accessToken=" + §@z§(§@z§.§ !D§).§ !n§.§@#-§.accessToken;
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest("https://" + §@z§(§@z§.§ !D§).§ !n§.§@#-§.§<"k§ + ".rovio.com" + _loc3_)).method = URLRequestMethod.GET;
         var _loc5_:URLLoader;
         (_loc5_ = new URLLoader()).addEventListener(Event.COMPLETE,param1);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param2);
         _loc5_.load(_loc4_);
      }
      
      public static function §3M§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§3M§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§0#9§);
         var _loc3_:Object = JSON.parse(param1.currentTarget.data);
         var _loc4_:DataErasurePopup = new DataErasurePopup(§@#D§.§,"4§,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         _loc4_.injectData(_loc3_);
      }
      
      private static function §0#9§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§3M§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§0#9§);
         §,!>§(URLRequestMethod.POST,null,§-!v§,§9$4§);
      }
      
      private static function §-!v§(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Boolean = false;
         var _loc8_:Object = null;
         var _loc9_:ToSPopup = null;
         var _loc2_:Boolean = false;
         var _loc3_:URLLoader = param1.currentTarget as URLLoader;
         _loc3_.removeEventListener(Event.COMPLETE,§-!v§);
         _loc3_.removeEventListener(IOErrorEvent.IO_ERROR,§9$4§);
         _loc3_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§9$4§);
         var _loc4_:Object = JSON.parse(param1.currentTarget.data);
         for each(_loc5_ in _loc4_.consents)
         {
            if(_loc5_.consentId == "tos")
            {
               if(_loc5_.answer != "YES")
               {
                  _loc2_ = true;
                  (_loc6_ = new Object())["locale"] = §?"?§;
                  _loc7_ = true;
                  for each(_loc8_ in _loc5_.consent.sections)
                  {
                     if(_loc8_.locale == §?"?§)
                     {
                        _loc6_[_loc8_.id] = _loc8_.text;
                        if(_loc8_.url != null)
                        {
                           _loc6_["url"] = _loc8_.url + _loc8_.locale;
                        }
                        _loc7_ = false;
                     }
                  }
                  if(_loc7_)
                  {
                     _loc6_["locale"] = §%#G§;
                     for each(_loc8_ in _loc5_.consent.sections)
                     {
                        _loc8_.locale = _loc8_.locale.substr(0,2);
                        if(_loc8_.locale == "en" || _loc8_.locale == §%#G§)
                        {
                           _loc6_[_loc8_.id] = _loc8_.text;
                           if(_loc8_.url != null)
                           {
                              _loc6_["url"] = _loc8_.url + _loc8_.locale;
                           }
                        }
                     }
                  }
                  _loc9_ = new ToSPopup(§@#D§.§,"4§,§5R§.TOP);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc9_);
                  _loc9_.injectData(_loc6_["title"],_loc6_["body"],_loc6_["button-accept"],_loc6_["button-tos"],_loc6_["url"]);
                  §`P§ = _loc5_;
                  break;
               }
            }
         }
         if(!_loc2_)
         {
            §1">§();
         }
      }
      
      public static function §%!y§() : void
      {
         var _loc1_:Object = null;
         if(§`P§)
         {
            _loc1_ = new Object();
            _loc1_["answer"] = "YES";
            _loc1_["version"] = §`P§.version;
            _loc1_["id"] = §`P§.consentId;
            §,!>§(URLRequestMethod.POST,JSON.stringify(_loc1_),§9#t§,§9$4§);
         }
      }
      
      private static function §9#t§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§9#t§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§9$4§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§9$4§);
         §1">§();
      }
      
      private static function §,!>§(param1:String, param2:String, param3:Function, param4:Function) : void
      {
         var _loc5_:String = "/consent/1/apps/" + §@z§.§0"W§ + "/player/consents?accessToken=" + §@z§(§@z§.§ !D§).§ !n§.§@#-§.accessToken;
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest("https://" + §@z§(§@z§.§ !D§).§ !n§.§@#-§.§<"k§ + ".rovio.com" + _loc5_)).method = param1;
         _loc6_.requestHeaders = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",§@z§(§@z§.§ !D§).§ !n§.§@#-§.accessToken)];
         _loc6_.contentType = "application/json";
         _loc6_.data = param2;
         var _loc7_:URLLoader;
         (_loc7_ = new URLLoader()).addEventListener(Event.COMPLETE,param3);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,param4);
         _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param4);
         _loc7_.load(_loc6_);
      }
      
      public static function §9"1§() : int
      {
         if(§ k§.lastClassicUnclaimedTournament)
         {
            return § k§.lastClassicUnclaimedTournament;
         }
         return -1;
      }
      
      public static function §5A§() : void
      {
         § k§.lastClassicUnclaimedTournament = null;
      }
      
      public static function §]!9§() : Array
      {
         if(§ k§.autoclaimed && § k§.autoclaimed.length > 0 && § k§.autoclaimed[0] != null)
         {
            return § k§.autoclaimed;
         }
         return null;
      }
      
      public static function §6!A§() : void
      {
         § k§.autoclaimed = null;
      }
   }
}
