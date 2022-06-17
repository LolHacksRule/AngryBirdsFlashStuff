package §>#Y§
{
   import § h§.§-!S§;
   import § h§.DataErasurePopup;
   import § h§.ErrorPopup;
   import § h§.ToSPopup;
   import § h§.WarningPopup;
   import §!!H§.§?w§;
   import §#!G§.§-#]§;
   import §#"3§.§4!h§;
   import §&!A§.§7!8§;
   import §'q§.GiftInboxPopup;
   import §-"S§.§>#G§;
   import §-"T§.§7#f§;
   import §0"M§.§0"L§;
   import §2E§.§'@§;
   import §2E§.§=$3§;
   import §2E§.§]!P§;
   import §4#$§.§5"L§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §?_§.§9! §;
   import §]!4§.§=#c§;
   import §^#?§.§#!T§;
   import §^#?§.§?#,§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   
   public class §2"%§
   {
      
      public static const §0;§:String = "en-US";
      
      public static const §`z§:String = "en";
      
      private static var §3$#§:§5"f§;
      
      private static var §>R§:Vector.<§5"f§>;
      
      private static var §;"$§:Object;
      
      private static var §+"5§:String = "";
      
      private static var §`!4§:int = 0;
      
      private static var §[!n§:String;
      
      private static var §?L§:String;
      
      private static var §4#F§:String;
      
      private static var §&C§:String;
      
      private static var §@!Z§:§7#f§;
      
      private static var §+!H§:int;
      
      private static var §7"`§:Object;
       
      
      public function §2"%§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String, param4:String, param5:§7#f§) : void
      {
         §[!n§ = param1;
         §?L§ = param2;
         §4#F§ = param3;
         §&C§ = param4;
         §@!Z§ = param5;
         if(§@!Z§.§#!?§)
         {
            §@!Z§.addEventListener(Event.COMPLETE,§"n§);
         }
         else
         {
            §;!+§();
         }
      }
      
      private static function §"n§(param1:Event) : void
      {
         §@!Z§.removeEventListener(Event.COMPLETE,§"n§);
         §;!+§();
      }
      
      private static function §;!+§() : void
      {
         §3$#§ = new §5"f§();
         §3$#§.dataFormat = URLLoaderDataFormat.TEXT;
         §3$#§.addEventListener(Event.COMPLETE,§2#f§);
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/login/");
         var _loc2_:Object = {
            "doNotUseCookies":"true",
            "clientType":"WEB_FLASH",
            "fbUserId":§[!n§,
            "fbAccessToken":§?L§,
            "fbAccessTokenExpiresInSeconds":§4#F§,
            "localTimeZoneOffset":(new Date().timezoneOffset / 60).toString(),
            "acquisitionChannel":§&C§,
            "rovioLevel2AccessToken":§@!Z§.accessToken,
            "rovioLevel2AccessTokenExpiresInSeconds":§@!Z§.expiresIn,
            "clientSessionid":§]!P§.§1!7§().§;$-§(),
            "clientSessionCounter":§]!P§.§1!7§().§[!L§()
         };
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         §3$#§.load(_loc1_);
      }
      
      private static function §2#f§(param1:Event) : void
      {
         §;"$§ = §3$#§.data;
         if(§;"$§.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Server error of type \'" + §;"$§.type + "\':\n" + §;"$§.message + "\n Code: " + §=$3§.§8!!§));
         }
         if(§;"$§.uid != §[!n§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Facebook IDs mismatch. Flashvar:\'" + §[!n§ + "\', server:\'" + §;"$§.uid + "\', accessToken:\'" + §?L§ + "\'.\n Code: " + §=$3§.§'!T§));
         }
         if(§;"$§.name == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"User name cannot be null"));
         }
         §;"$§.currency = {
            "user_currency":"USD",
            "currency_exchange":10,
            "currency_exchange_inverse":0.1,
            "currency_offset":100
         };
         §;"$§.vCurrency = {
            "user_currency":"ABFC",
            "currency_exchange":0.01,
            "currency_exchange_inverse":100,
            "currency_offset":1
         };
         dataModel.currencyModel = new §`#Y§();
         dataModel.§%$;§ = new §2$8§(§;"$§.vCurrency);
         dataModel.§"g§ = new §7#H§(§;"$§.vCurrency);
         userProgress.init(§;"$§.name,§;"$§.uid,§;"$§.tutorials);
         if(§;"$§.qr)
         {
            §5"L§.§3"1§.§5!F§ = §;"$§.qr;
         }
         if(§;"$§.c)
         {
            if(§;"$§.c.gaee)
            {
               §'@§.§6$§ = §;"$§.c.gaee.a == true;
            }
            else
            {
               §'@§.§6$§ = false;
            }
            §7!8§.injectData(§;"$§.c.abt);
            if(§;"$§.c.li)
            {
               §?#,§.§3"1§.active = true;
               §#!T§.§!#z§(§;"$§.c.li);
            }
            else
            {
               §?#,§.§3"1§.active = false;
            }
            if(§;"$§.c.og && §;"$§.c.og.openGraphAdminObjects)
            {
               §!#?§.injectData(§;"$§.c.og.openGraphAdminObjects);
            }
            if(§;"$§.c.ct)
            {
               §5"L§.§4"z§ = int(§;"$§.c.ct);
            }
            if(§;"$§.c.scid)
            {
               §5"L§.§3"1§.§@#'§(§;"$§.c.scid);
            }
            §]!P§.§1!7§().injectData(§;"$§);
         }
         §>R§ = new Vector.<§5"f§>();
         §+!H§ = 0;
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            ++§+!H§;
            §@!C§("true");
         }
         else
         {
            §8$B§("hasFriendListPermission","friendListPermission",§@!C§);
         }
         §!",§.§3"1§.addEventListener(§!",§.§#$&§,§!#x§);
         ++§+!H§;
         §!",§.§3"1§.§,"&§();
         §1##§(AngryBirdsBase.SERVER_ROOT + "/requestexcludes/",§66§);
         §1##§(AngryBirdsBase.SERVER_ROOT + "/getservertime",§`!?§);
         §1##§(AngryBirdsBase.SERVER_ROOT + "/getrequests",§5[§);
         §1##§(AngryBirdsBase.SERVER_ROOT + "/geteggs",§>"F§);
         §1##§(AngryBirdsBase.SERVER_ROOT + "/scores/getOwnEpisodeScores?episode=1,2,3,4,5,9,10,11,12,1000,4000,4001",§!!K§);
         dataModel.§^"O§.§<F§();
         §0$§();
      }
      
      private static function §8$B§(param1:String, param2:String, param3:Function) : void
      {
         ++§+!H§;
         §=#c§.addCallback(param2,param3);
         §=#c§.§<!t§(param1);
      }
      
      private static function §1##§(param1:String, param2:Function) : void
      {
         ++§+!H§;
         var _loc3_:§5"f§ = new §5"f§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.addEventListener(Event.COMPLETE,param2);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§<"a§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§<"a§);
         _loc3_.addEventListener(§;" §.§`S§,§<"a§);
         var _loc4_:URLRequest;
         (_loc4_ = §!"`§.§@!A§(param1)).method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
         _loc3_.load(_loc4_);
         §>R§.push(_loc3_);
      }
      
      private static function §<"a§(param1:Event) : void
      {
         var _loc2_:§?!y§ = null;
         if(param1.type == §;" §.§`S§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§&_§);
         }
         else
         {
            _loc2_ = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private static function §@!C§(param1:String) : void
      {
         var _loc2_:§0"L§ = null;
         §=#c§.§`$ §("friendListPermission",§@!C§);
         §9! §.§=!?§ = param1 == "true";
         if(§9! §.§=!?§)
         {
            §0!2§();
         }
         else
         {
            §^"a§(§^"a§.§9!h§).§31§("POPUP");
            §;"$§.friends = [];
            §-#]§.§1#X§(null);
            §-#]§.§5!;§(null);
            §^"a§.§9!h§.§[K§({"players":§;"$§.friends});
            _loc2_ = new §0"L§();
            _loc2_.§+#!§();
         }
         §3$3§();
      }
      
      public static function §0!2§() : void
      {
         §1##§(AngryBirdsBase.SERVER_ROOT + "/friends/getOverallScores?forceRefresh=true",§-S§);
         §4#U§();
      }
      
      private static function §-S§(param1:Event) : void
      {
         var _loc2_:§5"f§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §>R§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = §%E§(param1.target.data,"players");
               §;"$§.friends = _loc3_.players;
               §-#]§.§1#X§(§;"$§.friends);
               §^"a§.§9!h§.§[K§({"players":§;"$§.friends});
               new §0"L§().§+#!§();
               §3$3§();
               break;
            }
         }
      }
      
      protected static function onError(param1:IOErrorEvent) : void
      {
         §4!h§.log("Error while loading the initial data");
      }
      
      private static function §4#U§() : void
      {
         §1##§(AngryBirdsBase.SERVER_ROOT + "/friends/inviteCandidates?limit=6",§9V§);
      }
      
      protected static function §9V§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§9V§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,onError);
         §3$3§();
         if(!param1.target.data || !param1.target.data.players)
         {
            return;
         }
         §-#]§.§5!;§(param1.target.data.players);
      }
      
      private static function §!#x§(param1:Event) : void
      {
         §3$3§();
      }
      
      private static function §66§(param1:Event) : void
      {
         var _loc2_:§5"f§ = null;
         for each(_loc2_ in §>R§)
         {
            if(_loc2_ == param1.target)
            {
               §;"$§.deauthorizedUserIds = param1.target.data.deauthorizedUserIds;
               §;"$§.excludedUserIds = param1.target.data.excludedUserIds;
               §6"k§.§3"1§.§!!P§(§;"$§.deauthorizedUserIds);
               §6"k§.§3"1§.§>!m§(§;"$§.excludedUserIds);
               §6"k§.§3"1§.§-"?§(null);
               §3$3§();
               break;
            }
         }
      }
      
      private static function §`!?§(param1:Event) : void
      {
         var _loc2_:§5"f§ = null;
         for each(_loc2_ in §>R§)
         {
            if(_loc2_ == param1.target)
            {
               §;"$§.servertime = param1.target.data.time;
               if(§;"$§.servertime)
               {
                  §,#b§(AngryBirdsBase.singleton.dataModel).serverSynchronizedTime = new §?w§(§;"$§.servertime);
               }
               §3$3§();
               break;
            }
         }
      }
      
      private static function §5[§(param1:Event) : void
      {
         var _loc2_:§5"f§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §>R§)
         {
            if(_loc2_ == param1.target)
            {
               §;"$§.requests = param1.target.data;
               GiftInboxPopup.injectData(§;"$§.requests);
               for each(_loc3_ in §;"$§.requests.brags)
               {
                  §=#c§.§<!t§("flashDeleteRequest",_loc3_.r);
               }
               §3$3§();
               break;
            }
         }
      }
      
      private static function §["7§(param1:Event) : void
      {
         var _loc2_:§5"f§ = null;
         for each(_loc2_ in §>R§)
         {
            if(_loc2_ == param1.target)
            {
               §;"$§.drawconfig = param1.target.data;
               §3$3§();
               break;
            }
         }
      }
      
      private static function §>"F§(param1:Event) : void
      {
         var _loc2_:§5"f§ = null;
         for each(_loc2_ in §>R§)
         {
            if(_loc2_ == param1.target)
            {
               userProgress.§9$"§(param1.target.data);
               §3$3§();
               break;
            }
         }
      }
      
      private static function §!!K§(param1:Event) : void
      {
         var _loc2_:§5"f§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §>R§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = param1.target.data;
               userProgress.§'$ §(_loc3_.levelScores);
               §3$3§();
               break;
            }
         }
      }
      
      public static function §%E§(param1:Object, param2:String, param3:String = null) : Object
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
            if(§6"k§.§3"1§.§0!o§()[_loc7_.uid] == null)
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
            userProgress.§##D§(param3,_loc9_);
         }
         return _loc4_;
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      public static function get §#!?§() : Boolean
      {
         return §3$#§ != null;
      }
      
      private static function get data() : Object
      {
         return §;"$§;
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      private static function §3$3§() : void
      {
         if(§^"a§.§2i§())
         {
            return;
         }
         --§+!H§;
         if(§+!H§ <= 0)
         {
            §>R§.length = 0;
            §3$#§ = null;
            §^"a§.§4#u§();
         }
      }
      
      private static function §0$§() : void
      {
         §%+§(§%k§,§'#D§);
         ++§+!H§;
      }
      
      public static function §%+§(param1:Function, param2:Function) : void
      {
         var _loc3_:String = "/erasure/1/apps/" + §^"a§.§-!"§ + "/player?accessToken=" + §^"a§(§^"a§.§9!h§).§9$0§.§0"6§.accessToken;
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest("https://" + §^"a§(§^"a§.§9!h§).§9$0§.§0"6§.§!!y§ + ".rovio.com" + _loc3_)).method = URLRequestMethod.GET;
         var _loc5_:URLLoader;
         (_loc5_ = new URLLoader()).addEventListener(Event.COMPLETE,param1);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param2);
         _loc5_.load(_loc4_);
      }
      
      public static function §%k§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§%k§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§'#D§);
         var _loc3_:Object = JSON.parse(param1.currentTarget.data);
         var _loc4_:DataErasurePopup = new DataErasurePopup(§-!S§.§ !^§,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         _loc4_.injectData(_loc3_);
      }
      
      private static function §'#D§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§%k§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§'#D§);
         §;!Z§(URLRequestMethod.POST,null,§1#]§,§<"a§);
      }
      
      private static function §1#]§(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc3_:URLLoader = param1.currentTarget as URLLoader;
         _loc3_.removeEventListener(Event.COMPLETE,§1#]§);
         _loc3_.removeEventListener(IOErrorEvent.IO_ERROR,§<"a§);
         _loc3_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§<"a§);
         var _loc4_:Object = JSON.parse(param1.currentTarget.data);
         for each(_loc5_ in _loc4_.consents)
         {
            if(_loc5_.consentId == "tos")
            {
               _loc5_.answer;
            }
         }
         §3$3§();
      }
      
      public static function §?D§() : void
      {
         var _loc1_:Object = null;
         if(§7"`§)
         {
            _loc1_ = new Object();
            _loc1_["answer"] = "YES";
            _loc1_["version"] = §7"`§.version;
            _loc1_["id"] = §7"`§.consentId;
            §;!Z§(URLRequestMethod.POST,JSON.stringify(_loc1_),§,#!§,§<"a§);
         }
      }
      
      private static function §,#!§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§,#!§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§<"a§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§<"a§);
         §3$3§();
      }
      
      private static function §;!Z§(param1:String, param2:String, param3:Function, param4:Function) : void
      {
         var _loc5_:String = "/consent/1/apps/" + §^"a§.§-!"§ + "/player/consents?accessToken=" + §^"a§(§^"a§.§9!h§).§9$0§.§0"6§.accessToken;
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest("https://" + §^"a§(§^"a§.§9!h§).§9$0§.§0"6§.§!!y§ + ".rovio.com" + _loc5_)).method = param1;
         _loc6_.requestHeaders = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",§^"a§(§^"a§.§9!h§).§9$0§.§0"6§.accessToken)];
         _loc6_.contentType = "application/json";
         _loc6_.data = param2;
         var _loc7_:URLLoader;
         (_loc7_ = new URLLoader()).addEventListener(Event.COMPLETE,param3);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,param4);
         _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param4);
         _loc7_.load(_loc6_);
      }
      
      public static function §4!;§() : int
      {
         if(§;"$§.lastClassicUnclaimedTournament)
         {
            return §;"$§.lastClassicUnclaimedTournament;
         }
         return -1;
      }
      
      public static function §+#E§() : void
      {
         §;"$§.lastClassicUnclaimedTournament = null;
      }
      
      public static function §^'§() : Array
      {
         if(§;"$§.autoclaimed && §;"$§.autoclaimed.length > 0 && §;"$§.autoclaimed[0] != null)
         {
            return §;"$§.autoclaimed;
         }
         return null;
      }
      
      public static function §=#T§() : void
      {
         §;"$§.autoclaimed = null;
      }
   }
}
