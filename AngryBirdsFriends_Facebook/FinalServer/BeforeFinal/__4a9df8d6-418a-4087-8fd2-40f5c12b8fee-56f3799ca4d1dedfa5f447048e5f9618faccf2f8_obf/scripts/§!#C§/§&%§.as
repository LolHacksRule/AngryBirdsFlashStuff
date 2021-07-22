package §!#C§
{
   import § §.§,#l§;
   import §"!n§.§0"g§;
   import §##N§.§'#c§;
   import §##Z§.§'#N§;
   import §##Z§.§<$2§;
   import §&!_§.§!!K§;
   import §&!_§.§+#`§;
   import §&!_§.§0I§;
   import §0!s§.§5!-§;
   import §0!s§.§]"Y§;
   import §1"l§.§`""§;
   import §1#v§.§;!Y§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §7"G§.§8!T§;
   import §7R§.§ #`§;
   import §;"W§.GiftInboxPopup;
   import §<!r§.§'##§;
   import §=E§.§<T§;
   import §>z§.§#"l§;
   import §>z§.DataErasurePopup;
   import §>z§.ErrorPopup;
   import §>z§.ToSPopup;
   import §>z§.WarningPopup;
   import §]C§.§ !+§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   
   public class §&%§
   {
      
      public static const §<!L§:String = "en-US";
      
      public static const §,#,§:String = "en";
      
      private static var §^X§:§!!o§;
      
      private static var §^"t§:Vector.<§!!o§>;
      
      private static var §,"'§:Object;
      
      private static var §07§:String = "";
      
      private static var §&8§:int = 0;
      
      private static var §'#z§:String;
      
      private static var §>!7§:String;
      
      private static var §1#g§:String;
      
      private static var §19§:String;
      
      private static var §-#H§:§'#c§;
      
      private static var §3#;§:int;
      
      private static var §]#J§:Object;
       
      
      public function §&%§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String, param4:String, param5:§'#c§) : void
      {
         §'#z§ = param1;
         §>!7§ = param2;
         §1#g§ = param3;
         §19§ = param4;
         §-#H§ = param5;
         if(§-#H§.§6#J§)
         {
            §-#H§.addEventListener(Event.COMPLETE,§"T§);
         }
         else
         {
            §<V§();
         }
      }
      
      private static function §"T§(param1:Event) : void
      {
         §-#H§.removeEventListener(Event.COMPLETE,§"T§);
         §<V§();
      }
      
      private static function §<V§() : void
      {
         §^X§ = new §!!o§();
         §^X§.dataFormat = URLLoaderDataFormat.TEXT;
         §^X§.addEventListener(Event.COMPLETE,§8$9§);
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/login/");
         var _loc2_:Object = {
            "doNotUseCookies":"true",
            "clientType":"WEB_FLASH",
            "fbUserId":§'#z§,
            "fbAccessToken":§>!7§,
            "fbAccessTokenExpiresInSeconds":§1#g§,
            "localTimeZoneOffset":(new Date().timezoneOffset / 60).toString(),
            "acquisitionChannel":§19§,
            "rovioLevel2AccessToken":§-#H§.accessToken,
            "rovioLevel2AccessTokenExpiresInSeconds":§-#H§.expiresIn,
            "clientSessionid":§!!K§.§%#S§().§?P§(),
            "clientSessionCounter":§!!K§.§%#S§().§2#Z§()
         };
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         §^X§.load(_loc1_);
      }
      
      private static function §8$9§(param1:Event) : void
      {
         §,"'§ = §^X§.data;
         if(§,"'§.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Server error of type \'" + §,"'§.type + "\':\n" + §,"'§.message + "\n Code: " + §+#`§.§^"X§));
         }
         if(§,"'§.uid != §'#z§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Facebook IDs mismatch. Flashvar:\'" + §'#z§ + "\', server:\'" + §,"'§.uid + "\', accessToken:\'" + §>!7§ + "\'.\n Code: " + §+#`§.§,!&§));
         }
         if(§,"'§.name == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"User name cannot be null"));
         }
         §,"'§.currency = {
            "user_currency":"USD",
            "currency_exchange":10,
            "currency_exchange_inverse":0.1,
            "currency_offset":100
         };
         §,"'§.vCurrency = {
            "user_currency":"ABFC",
            "currency_exchange":0.01,
            "currency_exchange_inverse":100,
            "currency_offset":1
         };
         dataModel.currencyModel = new §7C§();
         dataModel.§1W§ = new §null§(§,"'§.vCurrency);
         dataModel.§#"I§ = new §]"W§(§,"'§.vCurrency);
         userProgress.init(§,"'§.name,§,"'§.uid,§,"'§.tutorials);
         if(§,"'§.qr)
         {
            §'##§.§`"H§.§`d§ = §,"'§.qr;
         }
         if(§,"'§.c)
         {
            if(§,"'§.c.gaee)
            {
               §0I§.§8#P§ = §,"'§.c.gaee.a == true;
            }
            else
            {
               §0I§.§8#P§ = false;
            }
            §,#l§.injectData(§,"'§.c.abt);
            if(§,"'§.c.li)
            {
               §<$2§.§`"H§.active = true;
               §'#N§.§7!@§(§,"'§.c.li);
            }
            else
            {
               §<$2§.§`"H§.active = false;
            }
            if(§,"'§.c.og && §,"'§.c.og.openGraphAdminObjects)
            {
               §5H§.injectData(§,"'§.c.og.openGraphAdminObjects);
            }
            if(§,"'§.c.ct)
            {
               §'##§.§7#%§ = int(§,"'§.c.ct);
            }
            if(§,"'§.c.scid)
            {
               §'##§.§`"H§.§?4§(§,"'§.c.scid);
            }
            §!!K§.§%#S§().injectData(§,"'§);
         }
         §^"t§ = new Vector.<§!!o§>();
         §3#;§ = 0;
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            ++§3#;§;
            §4#s§("true");
         }
         else
         {
            §#-§("hasFriendListPermission","friendListPermission",§4#s§);
         }
         § $?§.§`"H§.addEventListener(§ $?§.§["S§,§+!s§);
         ++§3#;§;
         § $?§.§`"H§.§-!P§();
         §&o§(AngryBirdsBase.SERVER_ROOT + "/requestexcludes/",§8K§);
         §&o§(AngryBirdsBase.SERVER_ROOT + "/getservertime",§]#z§);
         §&o§(AngryBirdsBase.SERVER_ROOT + "/getrequests",§#$7§);
         §&o§(AngryBirdsBase.SERVER_ROOT + "/geteggs",§[!W§);
         §&o§(AngryBirdsBase.SERVER_ROOT + "/scores/getOwnEpisodeScores?episode=1,2,3,4,5,9,10,11,12,1000,4000,4001",§52§);
         dataModel.§92§.§5#M§();
         §=!"§();
      }
      
      private static function §#-§(param1:String, param2:String, param3:Function) : void
      {
         ++§3#;§;
         § !+§.addCallback(param2,param3);
         § !+§.§>$%§(param1);
      }
      
      private static function §&o§(param1:String, param2:Function) : void
      {
         ++§3#;§;
         var _loc3_:§!!o§ = new §!!o§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.addEventListener(Event.COMPLETE,param2);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§+V§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§+V§);
         _loc3_.addEventListener(§>5§.§@!@§,§+V§);
         var _loc4_:URLRequest;
         (_loc4_ = §;#&§.§ #G§(param1)).method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
         _loc3_.load(_loc4_);
         §^"t§.push(_loc3_);
      }
      
      private static function §+V§(param1:Event) : void
      {
         var _loc2_:§5!-§ = null;
         if(param1.type == §>5§.§@!@§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§ $@§);
         }
         else
         {
            _loc2_ = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private static function §4#s§(param1:String) : void
      {
         var _loc2_:§8!T§ = null;
         § !+§.§?!§("friendListPermission",§4#s§);
         §`""§.§'!'§ = param1 == "true";
         if(§`""§.§'!'§)
         {
            §5!Z§();
         }
         else
         {
            § #v§(§ #v§.§1!!§).§3#X§("POPUP");
            §,"'§.friends = [];
            §<T§.§`X§(null);
            §<T§.§%Q§(null);
            § #v§.§1!!§.§;g§({"players":§,"'§.friends});
            _loc2_ = new §8!T§();
            _loc2_.§=""§();
         }
         §<!p§();
      }
      
      public static function §5!Z§() : void
      {
         §&o§(AngryBirdsBase.SERVER_ROOT + "/friends/getOverallScores?forceRefresh=true",§"!7§);
         §1#%§();
      }
      
      private static function §"!7§(param1:Event) : void
      {
         var _loc2_:§!!o§ = null;
         var _loc3_:Object = null;
         var _loc4_:§8!T§ = null;
         for each(_loc2_ in §^"t§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = §-x§(param1.target.data,"players");
               §,"'§.friends = _loc3_.players;
               §<T§.§`X§(§,"'§.friends);
               § #v§.§1!!§.§;g§({"players":§,"'§.friends});
               (_loc4_ = new §8!T§()).§=""§();
               §<!p§();
               break;
            }
         }
      }
      
      protected static function onError(param1:IOErrorEvent) : void
      {
         §;!Y§.log("Error while loading the initial data");
      }
      
      private static function §1#%§() : void
      {
         §&o§(AngryBirdsBase.SERVER_ROOT + "/friends/inviteCandidates?limit=6",§1#T§);
      }
      
      protected static function §1#T§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§1#T§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,onError);
         §<!p§();
         if(!param1.target.data || !param1.target.data.players)
         {
            return;
         }
         §<T§.§%Q§(param1.target.data.players);
      }
      
      private static function §+!s§(param1:Event) : void
      {
         §<!p§();
      }
      
      private static function §8K§(param1:Event) : void
      {
         var _loc2_:§!!o§ = null;
         for each(_loc2_ in §^"t§)
         {
            if(_loc2_ == param1.target)
            {
               §,"'§.deauthorizedUserIds = param1.target.data.deauthorizedUserIds;
               §,"'§.excludedUserIds = param1.target.data.excludedUserIds;
               §1%§.§`"H§.§&$7§(§,"'§.deauthorizedUserIds);
               §1%§.§`"H§.§<,§(§,"'§.excludedUserIds);
               §1%§.§`"H§.§'#&§(null);
               §<!p§();
               break;
            }
         }
      }
      
      private static function §]#z§(param1:Event) : void
      {
         var _loc2_:§!!o§ = null;
         for each(_loc2_ in §^"t§)
         {
            if(_loc2_ == param1.target)
            {
               §,"'§.servertime = param1.target.data.time;
               if(§,"'§.servertime)
               {
                  §4!Q§(AngryBirdsBase.singleton.dataModel).serverSynchronizedTime = new §0"g§(§,"'§.servertime);
               }
               §<!p§();
               break;
            }
         }
      }
      
      private static function §#$7§(param1:Event) : void
      {
         var _loc2_:§!!o§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §^"t§)
         {
            if(_loc2_ == param1.target)
            {
               §,"'§.requests = param1.target.data;
               GiftInboxPopup.injectData(§,"'§.requests);
               for each(_loc3_ in §,"'§.requests.brags)
               {
                  § !+§.§>$%§("flashDeleteRequest",_loc3_.r);
               }
               §<!p§();
               break;
            }
         }
      }
      
      private static function §'#w§(param1:Event) : void
      {
         var _loc2_:§!!o§ = null;
         for each(_loc2_ in §^"t§)
         {
            if(_loc2_ == param1.target)
            {
               §,"'§.drawconfig = param1.target.data;
               §<!p§();
               break;
            }
         }
      }
      
      private static function §[!W§(param1:Event) : void
      {
         var _loc2_:§!!o§ = null;
         for each(_loc2_ in §^"t§)
         {
            if(_loc2_ == param1.target)
            {
               userProgress.§'"D§(param1.target.data);
               §<!p§();
               break;
            }
         }
      }
      
      private static function §52§(param1:Event) : void
      {
         var _loc2_:§!!o§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §^"t§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = param1.target.data;
               userProgress.§<"$§(_loc3_.levelScores);
               §<!p§();
               break;
            }
         }
      }
      
      public static function §-x§(param1:Object, param2:String, param3:String = null) : Object
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
            if(§1%§.§`"H§.§+!V§()[_loc7_.uid] == null)
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
            userProgress.§5"=§(param3,_loc9_);
         }
         return _loc4_;
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      public static function get §6#J§() : Boolean
      {
         return §^X§ != null;
      }
      
      private static function get data() : Object
      {
         return §,"'§;
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      private static function §<!p§() : void
      {
         if(§ #v§.§6#!§())
         {
            return;
         }
         --§3#;§;
         if(§3#;§ <= 0)
         {
            §^"t§.length = 0;
            §^X§ = null;
            § #v§.§3"d§();
         }
      }
      
      private static function §=!"§() : void
      {
         §^!c§(§5"8§,§[#j§);
         ++§3#;§;
      }
      
      public static function §^!c§(param1:Function, param2:Function) : void
      {
         var _loc3_:String = "/erasure/1/apps/" + § #v§.§>#r§ + "/player?accessToken=" + § #v§(§ #v§.§1!!§).§]p§.§["D§.accessToken;
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest("https://" + § #v§(§ #v§.§1!!§).§]p§.§["D§.§2#S§ + ".rovio.com" + _loc3_)).method = URLRequestMethod.GET;
         var _loc5_:URLLoader;
         (_loc5_ = new URLLoader()).addEventListener(Event.COMPLETE,param1);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param2);
         _loc5_.load(_loc4_);
      }
      
      public static function §5"8§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§5"8§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§[#j§);
         var _loc3_:Object = JSON.parse(param1.currentTarget.data);
         var _loc4_:DataErasurePopup = new DataErasurePopup(§#"l§.§?!b§,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         _loc4_.injectData(_loc3_);
      }
      
      private static function §[#j§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§5"8§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§[#j§);
         §0!p§(URLRequestMethod.POST,null,§2e§,§+V§);
      }
      
      private static function §2e§(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Boolean = false;
         var _loc8_:Object = null;
         var _loc9_:ToSPopup = null;
         var _loc2_:Boolean = false;
         var _loc3_:URLLoader = param1.currentTarget as URLLoader;
         _loc3_.removeEventListener(Event.COMPLETE,§2e§);
         _loc3_.removeEventListener(IOErrorEvent.IO_ERROR,§+V§);
         _loc3_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§+V§);
         var _loc4_:Object = JSON.parse(param1.currentTarget.data);
         for each(_loc5_ in _loc4_.consents)
         {
            if(_loc5_.consentId == "tos")
            {
               if(_loc5_.answer != "YES")
               {
                  _loc2_ = true;
                  (_loc6_ = new Object())["locale"] = §<!L§;
                  _loc7_ = true;
                  for each(_loc8_ in _loc5_.consent.sections)
                  {
                     if(_loc8_.locale == §<!L§)
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
                     _loc6_["locale"] = §,#,§;
                     for each(_loc8_ in _loc5_.consent.sections)
                     {
                        _loc8_.locale = _loc8_.locale.substr(0,2);
                        if(_loc8_.locale == "en" || _loc8_.locale == §,#,§)
                        {
                           _loc6_[_loc8_.id] = _loc8_.text;
                           if(_loc8_.url != null)
                           {
                              _loc6_["url"] = _loc8_.url + _loc8_.locale;
                           }
                        }
                     }
                  }
                  _loc9_ = new ToSPopup(§#"l§.§?!b§,§]"Y§.TOP);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc9_);
                  _loc9_.injectData(_loc6_["title"],_loc6_["body"],_loc6_["button-accept"],_loc6_["button-tos"],_loc6_["url"]);
                  §]#J§ = _loc5_;
                  break;
               }
            }
         }
         if(!_loc2_)
         {
            §<!p§();
         }
      }
      
      public static function §7$"§() : void
      {
         var _loc1_:Object = null;
         if(§]#J§)
         {
            _loc1_ = new Object();
            _loc1_["answer"] = "YES";
            _loc1_["version"] = §]#J§.version;
            _loc1_["id"] = §]#J§.consentId;
            §0!p§(URLRequestMethod.POST,JSON.stringify(_loc1_),§6>§,§+V§);
         }
      }
      
      private static function §6>§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§6>§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§+V§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§+V§);
         §<!p§();
      }
      
      private static function §0!p§(param1:String, param2:String, param3:Function, param4:Function) : void
      {
         var _loc5_:String = "/consent/1/apps/" + § #v§.§>#r§ + "/player/consents?accessToken=" + § #v§(§ #v§.§1!!§).§]p§.§["D§.accessToken;
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest("https://" + § #v§(§ #v§.§1!!§).§]p§.§["D§.§2#S§ + ".rovio.com" + _loc5_)).method = param1;
         _loc6_.requestHeaders = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",§ #v§(§ #v§.§1!!§).§]p§.§["D§.accessToken)];
         _loc6_.contentType = "application/json";
         _loc6_.data = param2;
         var _loc7_:URLLoader;
         (_loc7_ = new URLLoader()).addEventListener(Event.COMPLETE,param3);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,param4);
         _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param4);
         _loc7_.load(_loc6_);
      }
      
      public static function §#!=§() : int
      {
         if(§,"'§.lastClassicUnclaimedTournament)
         {
            return §,"'§.lastClassicUnclaimedTournament;
         }
         return -1;
      }
      
      public static function §;$@§() : void
      {
         §,"'§.lastClassicUnclaimedTournament = null;
      }
      
      public static function §5J§() : Array
      {
         if(§,"'§.autoclaimed && §,"'§.autoclaimed.length > 0 && §,"'§.autoclaimed[0] != null)
         {
            return §,"'§.autoclaimed;
         }
         return null;
      }
      
      public static function §5C§() : void
      {
         §,"'§.autoclaimed = null;
      }
   }
}
