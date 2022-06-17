package §]"'§
{
   import § "C§.§ !<§;
   import §!"§.§-!<§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §+"u§.§^"C§;
   import §+#B§.§ "f§;
   import §+#B§.§+$A§;
   import §+#B§.§5"w§;
   import §-"h§.§5!b§;
   import §6!'§.§@#c§;
   import §6!'§.§[!k§;
   import §7#j§.§@"F§;
   import §7h§.GiftInboxPopup;
   import §8"b§.§1"%§;
   import §9#K§.§=#f§;
   import §9&§.§7c§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.§%#§;
   import §?!N§.DataErasurePopup;
   import §?!N§.ErrorPopup;
   import §?!N§.ToSPopup;
   import §?!N§.WarningPopup;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   
   public class §1#"§
   {
      
      public static const §=$>§:String = "en-US";
      
      public static const §<!f§:String = "en";
      
      private static var §&"J§:§'!n§;
      
      private static var §2!6§:Vector.<§'!n§>;
      
      private static var §4!V§:Object;
      
      private static var §'d§:String = "";
      
      private static var §2W§:int = 0;
      
      private static var §[3§:String;
      
      private static var §%!d§:String;
      
      private static var §["-§:String;
      
      private static var §3$;§:String;
      
      private static var §#!i§:§-!<§;
      
      private static var §6"b§:int;
      
      private static var §-e§:Object;
       
      
      public function §1#"§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String, param4:String, param5:§-!<§) : void
      {
         §[3§ = param1;
         §%!d§ = param2;
         §["-§ = param3;
         §3$;§ = param4;
         §#!i§ = param5;
         if(§#!i§.§0"§)
         {
            §#!i§.addEventListener(Event.COMPLETE,§^r§);
         }
         else
         {
            §^#9§();
         }
      }
      
      private static function §^r§(param1:Event) : void
      {
         §#!i§.removeEventListener(Event.COMPLETE,§^r§);
         §^#9§();
      }
      
      private static function §^#9§() : void
      {
         §&"J§ = new §'!n§();
         §&"J§.dataFormat = URLLoaderDataFormat.TEXT;
         §&"J§.addEventListener(Event.COMPLETE,§?"l§);
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/login/");
         var _loc2_:Object = {
            "doNotUseCookies":"true",
            "clientType":"WEB_FLASH",
            "fbUserId":§[3§,
            "fbAccessToken":§%!d§,
            "fbAccessTokenExpiresInSeconds":§["-§,
            "localTimeZoneOffset":(new Date().timezoneOffset / 60).toString(),
            "acquisitionChannel":§3$;§,
            "rovioLevel2AccessToken":§#!i§.accessToken,
            "rovioLevel2AccessTokenExpiresInSeconds":§#!i§.expiresIn,
            "clientSessionid":§+$A§.§@"i§().§'$§(),
            "clientSessionCounter":§+$A§.§@"i§().§`#3§()
         };
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         §&"J§.load(_loc1_);
      }
      
      private static function §?"l§(param1:Event) : void
      {
         §4!V§ = §&"J§.data;
         if(§4!V§.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Server error of type \'" + §4!V§.type + "\':\n" + §4!V§.message + "\n Code: " + § "f§.§%a§));
         }
         if(§4!V§.uid != §[3§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Facebook IDs mismatch. Flashvar:\'" + §[3§ + "\', server:\'" + §4!V§.uid + "\', accessToken:\'" + §%!d§ + "\'.\n Code: " + § "f§.§=Z§));
         }
         if(§4!V§.name == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"User name cannot be null"));
         }
         §4!V§.currency = {
            "user_currency":"USD",
            "currency_exchange":10,
            "currency_exchange_inverse":0.1,
            "currency_offset":100
         };
         §4!V§.vCurrency = {
            "user_currency":"ABFC",
            "currency_exchange":0.01,
            "currency_exchange_inverse":100,
            "currency_offset":1
         };
         dataModel.currencyModel = new §"$>§();
         dataModel.§8!8§ = new §>I§(§4!V§.vCurrency);
         dataModel.§<!z§ = new §8"n§(§4!V§.vCurrency);
         userProgress.init(§4!V§.name,§4!V§.uid,§4!V§.tutorials);
         if(§4!V§.qr)
         {
            §^"C§.§?q§.§1$0§ = §4!V§.qr;
         }
         if(§4!V§.c)
         {
            if(§4!V§.c.gaee)
            {
               §5"w§.§7=§ = §4!V§.c.gaee.a == true;
            }
            else
            {
               §5"w§.§7=§ = false;
            }
            § !<§.injectData(§4!V§.c.abt);
            if(§4!V§.c.li)
            {
               §@#c§.§?q§.active = true;
               §[!k§.§4#v§(§4!V§.c.li);
            }
            else
            {
               §@#c§.§?q§.active = false;
            }
            if(§4!V§.c.og && §4!V§.c.og.openGraphAdminObjects)
            {
               §[#!§.injectData(§4!V§.c.og.openGraphAdminObjects);
            }
            if(§4!V§.c.ct)
            {
               §^"C§.§,";§ = int(§4!V§.c.ct);
            }
            if(§4!V§.c.scid)
            {
               §^"C§.§?q§.§8!H§(§4!V§.c.scid);
            }
            §+$A§.§@"i§().injectData(§4!V§);
         }
         §2!6§ = new Vector.<§'!n§>();
         §6"b§ = 0;
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            ++§6"b§;
            §9@§("true");
         }
         else
         {
            §'"%§("hasFriendListPermission","friendListPermission",§9@§);
         }
         §#$D§.§?q§.addEventListener(§#$D§.§-"q§,§`!#§);
         ++§6"b§;
         §#$D§.§?q§.§>!'§();
         §8Z§(AngryBirdsBase.SERVER_ROOT + "/requestexcludes/",§-Q§);
         §8Z§(AngryBirdsBase.SERVER_ROOT + "/getservertime",§7$4§);
         §8Z§(AngryBirdsBase.SERVER_ROOT + "/getrequests",§4!T§);
         §8Z§(AngryBirdsBase.SERVER_ROOT + "/geteggs",§%"1§);
         §8Z§(AngryBirdsBase.SERVER_ROOT + "/scores/getOwnEpisodeScores?episode=1,2,3,4,5,9,10,11,12,1000,4000,4001",§2"h§);
         dataModel.§"<§.§'L§();
         §1"X§();
      }
      
      private static function §'"%§(param1:String, param2:String, param3:Function) : void
      {
         ++§6"b§;
         §@"F§.addCallback(param2,param3);
         §@"F§.§^$#§(param1);
      }
      
      private static function §8Z§(param1:String, param2:Function) : void
      {
         ++§6"b§;
         var _loc3_:§'!n§ = new §'!n§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.addEventListener(Event.COMPLETE,param2);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§#7§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§#7§);
         _loc3_.addEventListener(§"!;§.§ #x§,§#7§);
         var _loc4_:URLRequest;
         (_loc4_ = §2"6§.§;z§(param1)).method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
         _loc3_.load(_loc4_);
         §2!6§.push(_loc3_);
      }
      
      private static function §#7§(param1:Event) : void
      {
         var _loc2_:§@#G§ = null;
         if(param1.type == §"!;§.§ #x§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§]"d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private static function §9@§(param1:String) : void
      {
         var _loc2_:§7c§ = null;
         §@"F§.§=F§("friendListPermission",§9@§);
         §<"c§.§1%§ = param1 == "true";
         if(§<"c§.§1%§)
         {
            §8"p§();
         }
         else
         {
            §'"a§(§'"a§.§!!8§).§@e§("POPUP");
            §4!V§.friends = [];
            §5!b§.§;!#§(null);
            §5!b§.§@"<§(null);
            §'"a§.§!!8§.§[!`§({"players":§4!V§.friends});
            _loc2_ = new §7c§();
            _loc2_.§%n§();
         }
         §="E§();
      }
      
      public static function §8"p§() : void
      {
         §8Z§(AngryBirdsBase.SERVER_ROOT + "/friends/getOverallScores?forceRefresh=true",§8I§);
         §""A§();
      }
      
      private static function §8I§(param1:Event) : void
      {
         var _loc2_:§'!n§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §2!6§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = §,z§(param1.target.data,"players");
               §4!V§.friends = _loc3_.players;
               §5!b§.§;!#§(§4!V§.friends);
               §'"a§.§!!8§.§[!`§({"players":§4!V§.friends});
               new §7c§().§%n§();
               §="E§();
               break;
            }
         }
      }
      
      protected static function onError(param1:IOErrorEvent) : void
      {
         §=#f§.log("Error while loading the initial data");
      }
      
      private static function §""A§() : void
      {
         §8Z§(AngryBirdsBase.SERVER_ROOT + "/friends/inviteCandidates?limit=6",§@X§);
      }
      
      protected static function §@X§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§@X§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,onError);
         §="E§();
         if(!param1.target.data || !param1.target.data.players)
         {
            return;
         }
         §5!b§.§@"<§(param1.target.data.players);
      }
      
      private static function §`!#§(param1:Event) : void
      {
         §="E§();
      }
      
      private static function §-Q§(param1:Event) : void
      {
         var _loc2_:§'!n§ = null;
         for each(_loc2_ in §2!6§)
         {
            if(_loc2_ == param1.target)
            {
               §4!V§.deauthorizedUserIds = param1.target.data.deauthorizedUserIds;
               §4!V§.excludedUserIds = param1.target.data.excludedUserIds;
               §-!#§.§?q§.§>0§(§4!V§.deauthorizedUserIds);
               §-!#§.§?q§.§0#1§(§4!V§.excludedUserIds);
               §-!#§.§?q§.§8"&§(null);
               §="E§();
               break;
            }
         }
      }
      
      private static function §7$4§(param1:Event) : void
      {
         var _loc2_:§'!n§ = null;
         for each(_loc2_ in §2!6§)
         {
            if(_loc2_ == param1.target)
            {
               §4!V§.servertime = param1.target.data.time;
               if(§4!V§.servertime)
               {
                  §@"%§(AngryBirdsBase.singleton.dataModel).serverSynchronizedTime = new §1"%§(§4!V§.servertime);
               }
               §="E§();
               break;
            }
         }
      }
      
      private static function §4!T§(param1:Event) : void
      {
         var _loc2_:§'!n§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §2!6§)
         {
            if(_loc2_ == param1.target)
            {
               §4!V§.requests = param1.target.data;
               GiftInboxPopup.injectData(§4!V§.requests);
               for each(_loc3_ in §4!V§.requests.brags)
               {
                  §@"F§.§^$#§("flashDeleteRequest",_loc3_.r);
               }
               §="E§();
               break;
            }
         }
      }
      
      private static function §@#i§(param1:Event) : void
      {
         var _loc2_:§'!n§ = null;
         for each(_loc2_ in §2!6§)
         {
            if(_loc2_ == param1.target)
            {
               §4!V§.drawconfig = param1.target.data;
               §="E§();
               break;
            }
         }
      }
      
      private static function §%"1§(param1:Event) : void
      {
         var _loc2_:§'!n§ = null;
         for each(_loc2_ in §2!6§)
         {
            if(_loc2_ == param1.target)
            {
               userProgress.§+"x§(param1.target.data);
               §="E§();
               break;
            }
         }
      }
      
      private static function §2"h§(param1:Event) : void
      {
         var _loc2_:§'!n§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §2!6§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = param1.target.data;
               userProgress.§<9§(_loc3_.levelScores);
               §="E§();
               break;
            }
         }
      }
      
      public static function §,z§(param1:Object, param2:String, param3:String = null) : Object
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
            if(§-!#§.§?q§.§]#0§()[_loc7_.uid] == null)
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
            userProgress.§8!S§(param3,_loc9_);
         }
         return _loc4_;
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      public static function get §0"§() : Boolean
      {
         return §&"J§ != null;
      }
      
      private static function get data() : Object
      {
         return §4!V§;
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      private static function §="E§() : void
      {
         if(§'"a§.§3#M§())
         {
            return;
         }
         --§6"b§;
         if(§6"b§ <= 0)
         {
            §2!6§.length = 0;
            §&"J§ = null;
            §'"a§.§2$2§();
         }
      }
      
      private static function §1"X§() : void
      {
         § "6§(§9!1§,§=!F§);
         ++§6"b§;
      }
      
      public static function § "6§(param1:Function, param2:Function) : void
      {
         var _loc3_:String = "/erasure/1/apps/" + §'"a§.§;#M§ + "/player?accessToken=" + §'"a§(§'"a§.§!!8§).§6#X§.§="4§.accessToken;
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest("https://" + §'"a§(§'"a§.§!!8§).§6#X§.§="4§.§2!o§ + ".rovio.com" + _loc3_)).method = URLRequestMethod.GET;
         var _loc5_:URLLoader;
         (_loc5_ = new URLLoader()).addEventListener(Event.COMPLETE,param1);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param2);
         _loc5_.load(_loc4_);
      }
      
      public static function §9!1§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§9!1§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§=!F§);
         var _loc3_:Object = JSON.parse(param1.currentTarget.data);
         var _loc4_:DataErasurePopup = new DataErasurePopup(§%#§.§3t§,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         _loc4_.injectData(_loc3_);
      }
      
      private static function §=!F§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§9!1§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§=!F§);
         §<$D§(URLRequestMethod.POST,null,§'c§,§#7§);
      }
      
      private static function §'c§(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Boolean = false;
         var _loc8_:Object = null;
         var _loc9_:ToSPopup = null;
         var _loc2_:Boolean = false;
         var _loc3_:URLLoader = param1.currentTarget as URLLoader;
         _loc3_.removeEventListener(Event.COMPLETE,§'c§);
         _loc3_.removeEventListener(IOErrorEvent.IO_ERROR,§#7§);
         _loc3_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§#7§);
         var _loc4_:Object = JSON.parse(param1.currentTarget.data);
         for each(_loc5_ in _loc4_.consents)
         {
            if(_loc5_.consentId == "tos")
            {
               if(_loc5_.answer != "YES")
               {
                  _loc2_ = true;
                  (_loc6_ = new Object())["locale"] = §=$>§;
                  _loc7_ = true;
                  for each(_loc8_ in _loc5_.consent.sections)
                  {
                     if(_loc8_.locale == §=$>§)
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
                     _loc6_["locale"] = §<!f§;
                     for each(_loc8_ in _loc5_.consent.sections)
                     {
                        _loc8_.locale = _loc8_.locale.substr(0,2);
                        if(_loc8_.locale == "en" || _loc8_.locale == §<!f§)
                        {
                           _loc6_[_loc8_.id] = _loc8_.text;
                           if(_loc8_.url != null)
                           {
                              _loc6_["url"] = _loc8_.url + _loc8_.locale;
                           }
                        }
                     }
                  }
                  _loc9_ = new ToSPopup(§%#§.§3t§,§9#5§.TOP);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc9_);
                  _loc9_.injectData(_loc6_["title"],_loc6_["body"],_loc6_["button-accept"],_loc6_["button-tos"],_loc6_["url"]);
                  §-e§ = _loc5_;
                  break;
               }
            }
         }
         if(!_loc2_)
         {
            §="E§();
         }
      }
      
      public static function §+!L§() : void
      {
         var _loc1_:Object = null;
         if(§-e§)
         {
            _loc1_ = new Object();
            _loc1_["answer"] = "YES";
            _loc1_["version"] = §-e§.version;
            _loc1_["id"] = §-e§.consentId;
            §<$D§(URLRequestMethod.POST,JSON.stringify(_loc1_),§[!g§,§#7§);
         }
      }
      
      private static function §[!g§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§[!g§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§#7§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§#7§);
         §="E§();
      }
      
      private static function §<$D§(param1:String, param2:String, param3:Function, param4:Function) : void
      {
         var _loc5_:String = "/consent/1/apps/" + §'"a§.§;#M§ + "/player/consents?accessToken=" + §'"a§(§'"a§.§!!8§).§6#X§.§="4§.accessToken;
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest("https://" + §'"a§(§'"a§.§!!8§).§6#X§.§="4§.§2!o§ + ".rovio.com" + _loc5_)).method = param1;
         _loc6_.requestHeaders = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",§'"a§(§'"a§.§!!8§).§6#X§.§="4§.accessToken)];
         _loc6_.contentType = "application/json";
         _loc6_.data = param2;
         var _loc7_:URLLoader;
         (_loc7_ = new URLLoader()).addEventListener(Event.COMPLETE,param3);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,param4);
         _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param4);
         _loc7_.load(_loc6_);
      }
      
      public static function §="k§() : int
      {
         if(§4!V§.lastClassicUnclaimedTournament)
         {
            return §4!V§.lastClassicUnclaimedTournament;
         }
         return -1;
      }
      
      public static function §7k§() : void
      {
         §4!V§.lastClassicUnclaimedTournament = null;
      }
   }
}
