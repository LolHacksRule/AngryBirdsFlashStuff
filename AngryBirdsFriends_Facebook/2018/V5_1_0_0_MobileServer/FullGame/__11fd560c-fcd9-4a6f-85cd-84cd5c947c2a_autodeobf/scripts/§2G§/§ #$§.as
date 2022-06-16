package §2G§
{
   import §%!x§.§^!K§;
   import §%#w§.§2#s§;
   import §%#w§.§?"z§;
   import §%$B§.GiftInboxPopup;
   import §&N§.§5#"§;
   import §-!S§.§##>§;
   import §-#F§.§@!5§;
   import §1!=§.§%#;§;
   import §1!=§.§^"U§;
   import §3r§.§]!4§;
   import §4#a§.§4@§;
   import §7!%§.§4"I§;
   import §8#!§.§5`§;
   import §?P§.DataErasurePopup;
   import §?P§.ErrorPopup;
   import §?P§.ToSPopup;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@V§.§1"V§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import §[#[§.§=#e§;
   import §]!6§.§6Y§;
   import §`7§.§ try§;
   import §`7§.§[$-§;
   import §`7§.§`"x§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   
   public class § #$§
   {
      
      public static var §0g§:String = "en-US";
      
      public static var §3<§:String = "en";
      
      private static var § F§:§1"V§;
      
      private static var §"$%§:Vector.<§1"V§>;
      
      private static var §%D§:Object;
      
      private static var § $!§:String = "";
      
      private static var §,"F§:int = 0;
      
      private static var §&9§:String;
      
      private static var §`f§:String;
      
      private static var §1$ §:String;
      
      private static var §7#e§:String;
      
      private static var §]j§:§@!5§;
      
      private static var §"#g§:int;
      
      private static var §1J§:Object;
       
      
      public function § #$§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String, param4:String, param5:§@!5§) : void
      {
         §&9§ = param1;
         §`f§ = param2;
         §1$ § = param3;
         §7#e§ = param4;
         §]j§ = param5;
         if(§]j§.§8R§)
         {
            §]j§.addEventListener(Event.COMPLETE,§#i§);
         }
         else
         {
            §9$<§();
         }
      }
      
      private static function §#i§(param1:Event) : void
      {
         §]j§.removeEventListener(Event.COMPLETE,§#i§);
         §9$<§();
      }
      
      private static function §9$<§() : void
      {
         § F§ = new §1"V§();
         § F§.dataFormat = URLLoaderDataFormat.TEXT;
         § F§.addEventListener(Event.COMPLETE,§]"P§);
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/login/");
         var _loc2_:Object = {
            "doNotUseCookies":"true",
            "clientType":"WEB_FLASH",
            "fbUserId":§&9§,
            "fbAccessToken":§`f§,
            "fbAccessTokenExpiresInSeconds":§1$ §,
            "localTimeZoneOffset":(new Date().timezoneOffset / 60).toString(),
            "acquisitionChannel":§7#e§,
            "rovioLevel2AccessToken":§]j§.accessToken,
            "rovioLevel2AccessTokenExpiresInSeconds":§]j§.expiresIn,
            "clientSessionid":§ try§.§!!t§().§65§(),
            "clientSessionCounter":§ try§.§!!t§().§<#-§()
         };
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         § F§.load(_loc1_);
      }
      
      private static function §]"P§(param1:Event) : void
      {
         §%D§ = § F§.data;
         if(§%D§.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Server error of type \'" + §%D§.type + "\':\n" + §%D§.message + "\n Code: " + §[$-§.§]##§));
         }
         if(§%D§.uid != §&9§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Facebook IDs mismatch. Flashvar:\'" + §&9§ + "\', server:\'" + §%D§.uid + "\', accessToken:\'" + §`f§ + "\'.\n Code: " + §[$-§.§`"0§));
         }
         if(§%D§.name == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"User name cannot be null"));
         }
         §%D§.currency = {
            "user_currency":"USD",
            "currency_exchange":10,
            "currency_exchange_inverse":0.1,
            "currency_offset":100
         };
         §%D§.vCurrency = {
            "user_currency":"ABFC",
            "currency_exchange":0.01,
            "currency_exchange_inverse":100,
            "currency_offset":1
         };
         dataModel.currencyModel = new §;G§();
         dataModel.§""[§ = new §"G§(§%D§.vCurrency);
         dataModel.§<!c§ = new §["n§(§%D§.vCurrency);
         userProgress.init(§%D§.name,§%D§.uid,§%D§.tutorials);
         if(§%D§.qr)
         {
            §5`§.§6!§.§'$<§ = §%D§.qr;
         }
         if(§%D§.c)
         {
            if(§%D§.c.gaee)
            {
               §`"x§.§`#z§ = §%D§.c.gaee.a == true;
            }
            else
            {
               §`"x§.§`#z§ = false;
            }
            §5#"§.injectData(§%D§.c.abt);
            if(§%D§.c.li)
            {
               §2#s§.§6!§.active = true;
               §?"z§.§`"Z§(§%D§.c.li);
            }
            else
            {
               §2#s§.§6!§.active = false;
            }
            if(§%D§.c.og && §%D§.c.og.openGraphAdminObjects)
            {
               §9=§.injectData(§%D§.c.og.openGraphAdminObjects);
            }
            if(§%D§.c.ct)
            {
               §5`§.§9"I§ = int(§%D§.c.ct);
            }
            if(§%D§.c.scid)
            {
               §5`§.§6!§.§+$1§(§%D§.c.scid);
            }
            § try§.§!!t§().injectData(§%D§);
         }
         §"$%§ = new Vector.<§1"V§>();
         §"#g§ = 0;
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            ++§"#g§;
            §1!;§("true");
         }
         else
         {
            § q§("hasFriendListPermission","friendListPermission",§1!;§);
         }
         §-#+§.§6!§.addEventListener(§-#+§.§6+§,§%u§);
         ++§"#g§;
         §-#+§.§6!§.§<"k§();
         §0z§(AngryBirdsBase.SERVER_ROOT + "/requestexcludes/",§-f§);
         §0z§(AngryBirdsBase.SERVER_ROOT + "/getservertime",§]!!§);
         §0z§(AngryBirdsBase.SERVER_ROOT + "/getrequests",§11§);
         §0z§(AngryBirdsBase.SERVER_ROOT + "/geteggs",§8H§);
         §0z§(AngryBirdsBase.SERVER_ROOT + "/scores/getOwnEpisodeScores?episode=1,2,3,4,5,9,10,11,12,1000,4000,4001",§5t§);
         dataModel.§3S§.§^!M§();
         § "5§();
      }
      
      private static function § q§(param1:String, param2:String, param3:Function) : void
      {
         ++§"#g§;
         §^!K§.addCallback(param2,param3);
         §^!K§.§+"D§(param1);
      }
      
      private static function §0z§(param1:String, param2:Function) : void
      {
         ++§"#g§;
         var _loc3_:§1"V§ = new §1"V§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.addEventListener(Event.COMPLETE,param2);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§+$=§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§+$=§);
         _loc3_.addEventListener(§;m§.§!$5§,§+$=§);
         var _loc4_:URLRequest;
         (_loc4_ = §["0§.§ G§(param1)).method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
         _loc3_.load(_loc4_);
         §"$%§.push(_loc3_);
      }
      
      private static function §+$=§(param1:Event) : void
      {
         var _loc2_:§%#;§ = null;
         if(param1.type == §;m§.§!$5§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§=!%§);
         }
         else
         {
            _loc2_ = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private static function §1!;§(param1:String) : void
      {
         var _loc2_:§4@§ = null;
         §^!K§.§,"i§("friendListPermission",§1!;§);
         §]!4§.§>$1§ = param1 == "true";
         if(§]!4§.§>$1§)
         {
            §@&§();
         }
         else
         {
            §,A§(§,A§.§2#O§).§ !a§("POPUP");
            §%D§.friends = [];
            §4"I§.§]>§(null);
            §4"I§.§6"]§(null);
            §,A§.§2#O§.§0"s§({"players":§%D§.friends});
            _loc2_ = new §4@§();
            _loc2_.§@"@§();
         }
         §0"g§();
      }
      
      public static function §@&§() : void
      {
         §0z§(AngryBirdsBase.SERVER_ROOT + "/friends/getOverallScores?forceRefresh=true",§,"y§);
         §`§();
      }
      
      private static function §,"y§(param1:Event) : void
      {
         var _loc2_:§1"V§ = null;
         var _loc3_:Object = null;
         var _loc4_:§4@§ = null;
         for each(_loc2_ in §"$%§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = §3>§(param1.target.data,"players");
               §%D§.friends = _loc3_.players;
               §4"I§.§]>§(§%D§.friends);
               §,A§.§2#O§.§0"s§({"players":§%D§.friends});
               (_loc4_ = new §4@§()).§@"@§();
               §0"g§();
               break;
            }
         }
      }
      
      protected static function onError(param1:IOErrorEvent) : void
      {
         §6Y§.log("Error while loading the initial data");
      }
      
      private static function §`§() : void
      {
         §0z§(AngryBirdsBase.SERVER_ROOT + "/friends/inviteCandidates?limit=6",§3"Y§);
      }
      
      protected static function §3"Y§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§3"Y§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,onError);
         §0"g§();
         if(!param1.target.data || !param1.target.data.players)
         {
            return;
         }
         §4"I§.§6"]§(param1.target.data.players);
      }
      
      private static function §%u§(param1:Event) : void
      {
         §0"g§();
      }
      
      private static function §-f§(param1:Event) : void
      {
         var _loc2_:§1"V§ = null;
         for each(_loc2_ in §"$%§)
         {
            if(_loc2_ == param1.target)
            {
               §%D§.deauthorizedUserIds = param1.target.data.deauthorizedUserIds;
               §%D§.excludedUserIds = param1.target.data.excludedUserIds;
               §&"+§.§6!§.§+"z§(§%D§.deauthorizedUserIds);
               §&"+§.§6!§.§6$4§(§%D§.excludedUserIds);
               §&"+§.§6!§.§4"b§(null);
               §0"g§();
               break;
            }
         }
      }
      
      private static function §]!!§(param1:Event) : void
      {
         var _loc2_:§1"V§ = null;
         for each(_loc2_ in §"$%§)
         {
            if(_loc2_ == param1.target)
            {
               §%D§.servertime = param1.target.data.time;
               if(§%D§.servertime)
               {
                  §#"8§(AngryBirdsBase.singleton.dataModel).serverSynchronizedTime = new §=#e§(§%D§.servertime);
               }
               §0"g§();
               break;
            }
         }
      }
      
      private static function §11§(param1:Event) : void
      {
         var _loc2_:§1"V§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §"$%§)
         {
            if(_loc2_ == param1.target)
            {
               §%D§.requests = param1.target.data;
               GiftInboxPopup.injectData(§%D§.requests);
               for each(_loc3_ in §%D§.requests.brags)
               {
                  §^!K§.§+"D§("flashDeleteRequest",_loc3_.r);
               }
               §0"g§();
               break;
            }
         }
      }
      
      private static function §+#Y§(param1:Event) : void
      {
         var _loc2_:§1"V§ = null;
         for each(_loc2_ in §"$%§)
         {
            if(_loc2_ == param1.target)
            {
               §%D§.drawconfig = param1.target.data;
               §0"g§();
               break;
            }
         }
      }
      
      private static function §8H§(param1:Event) : void
      {
         var _loc2_:§1"V§ = null;
         for each(_loc2_ in §"$%§)
         {
            if(_loc2_ == param1.target)
            {
               userProgress.§="4§(param1.target.data);
               §0"g§();
               break;
            }
         }
      }
      
      private static function §5t§(param1:Event) : void
      {
         var _loc2_:§1"V§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §"$%§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = param1.target.data;
               userProgress.§4!F§(_loc3_.levelScores);
               §0"g§();
               break;
            }
         }
      }
      
      public static function §3>§(param1:Object, param2:String, param3:String = null) : Object
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
            if(§&"+§.§6!§.§>?§()[_loc7_.uid] == null)
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
            userProgress.§>#+§(param3,_loc9_);
         }
         return _loc4_;
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      public static function get §8R§() : Boolean
      {
         return § F§ != null;
      }
      
      private static function get data() : Object
      {
         return §%D§;
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      private static function §0"g§() : void
      {
         if(§,A§.§,!B§())
         {
            return;
         }
         --§"#g§;
         if(§"#g§ <= 0)
         {
            §"$%§.length = 0;
            § F§ = null;
            §,A§.§%$-§();
         }
      }
      
      private static function § "5§() : void
      {
         var _loc1_:URLLoader = new URLLoader(§,A§.§2#O§.§[$4§.§[";§("https://graph.facebook.com/" + §,A§.§?G§ + "/me?fields=locale&"));
         _loc1_.addEventListener(Event.COMPLETE,§]!s§);
         _loc1_.addEventListener(IOErrorEvent.IO_ERROR,§]!s§);
         _loc1_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§]!s§);
         ++§"#g§;
      }
      
      private static function §]!s§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§]!s§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§]!s§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§]!s§);
         if(param1.target && param1.target.data)
         {
            _loc3_ = JSON.parse(param1.target.data);
            if(_loc3_ && _loc3_.locale)
            {
               §0g§ = _loc3_.locale.split("_").join("-");
               §3<§ = _loc3_.locale.substr(0,2);
            }
         }
         §@$#§(§?!s§,§;#9§);
      }
      
      public static function §@$#§(param1:Function, param2:Function) : void
      {
         var _loc3_:String = "/erasure/1/apps/" + §,A§.§ !;§ + "/player?accessToken=" + §,A§(§,A§.§2#O§).§<u§.§@!o§.accessToken;
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest("https://" + §,A§(§,A§.§2#O§).§<u§.§@!o§.§>"j§ + ".rovio.com" + _loc3_)).method = URLRequestMethod.GET;
         var _loc5_:URLLoader;
         (_loc5_ = new URLLoader()).addEventListener(Event.COMPLETE,param1);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param2);
         _loc5_.load(_loc4_);
      }
      
      public static function §?!s§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§?!s§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§;#9§);
         var _loc3_:Object = JSON.parse(param1.currentTarget.data);
         var _loc4_:DataErasurePopup = new DataErasurePopup(§]"$§.§[#=§,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         _loc4_.injectData(_loc3_);
      }
      
      private static function §;#9§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§?!s§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§;#9§);
         §1!9§(URLRequestMethod.POST,null,§'"^§,§+$=§);
      }
      
      private static function §'"^§(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Boolean = false;
         var _loc8_:Object = null;
         var _loc9_:ToSPopup = null;
         var _loc2_:Boolean = false;
         var _loc3_:URLLoader = param1.currentTarget as URLLoader;
         _loc3_.removeEventListener(Event.COMPLETE,§'"^§);
         _loc3_.removeEventListener(IOErrorEvent.IO_ERROR,§+$=§);
         _loc3_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§+$=§);
         var _loc4_:Object = JSON.parse(param1.currentTarget.data);
         for each(_loc5_ in _loc4_.consents)
         {
            if(_loc5_.consentId == "tos")
            {
               if(_loc5_.answer != "YES")
               {
                  _loc2_ = true;
                  (_loc6_ = new Object())["locale"] = §0g§;
                  _loc7_ = true;
                  for each(_loc8_ in _loc5_.consent.sections)
                  {
                     if(_loc8_.locale == §0g§)
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
                     _loc6_["locale"] = §3<§;
                     for each(_loc8_ in _loc5_.consent.sections)
                     {
                        _loc8_.locale = _loc8_.locale.substr(0,2);
                        if(_loc8_.locale == "en" || _loc8_.locale == §3<§)
                        {
                           _loc6_[_loc8_.id] = _loc8_.text;
                           if(_loc8_.url != null)
                           {
                              _loc6_["url"] = _loc8_.url + _loc8_.locale;
                           }
                        }
                     }
                  }
                  _loc9_ = new ToSPopup(§]"$§.§[#=§,§^"U§.TOP);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc9_);
                  _loc9_.injectData(_loc6_["title"],_loc6_["body"],_loc6_["button-accept"],_loc6_["button-tos"],_loc6_["url"]);
                  §1J§ = _loc5_;
                  break;
               }
            }
         }
         if(!_loc2_)
         {
            §0"g§();
         }
      }
      
      public static function §-#m§() : void
      {
         var _loc1_:Object = null;
         if(§1J§)
         {
            _loc1_ = new Object();
            _loc1_["answer"] = "YES";
            _loc1_["version"] = §1J§.version;
            _loc1_["id"] = §1J§.consentId;
            §1!9§(URLRequestMethod.POST,JSON.stringify(_loc1_),§#!L§,§+$=§);
         }
      }
      
      private static function §#!L§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§#!L§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,§+$=§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,§+$=§);
         §0"g§();
      }
      
      private static function §1!9§(param1:String, param2:String, param3:Function, param4:Function) : void
      {
         var _loc5_:String = "/consent/1/apps/" + §,A§.§ !;§ + "/player/consents?accessToken=" + §,A§(§,A§.§2#O§).§<u§.§@!o§.accessToken;
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest("https://" + §,A§(§,A§.§2#O§).§<u§.§@!o§.§>"j§ + ".rovio.com" + _loc5_)).method = param1;
         _loc6_.requestHeaders = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",§,A§(§,A§.§2#O§).§<u§.§@!o§.accessToken)];
         _loc6_.contentType = "application/json";
         _loc6_.data = param2;
         var _loc7_:URLLoader;
         (_loc7_ = new URLLoader()).addEventListener(Event.COMPLETE,param3);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,param4);
         _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param4);
         _loc7_.load(_loc6_);
      }
   }
}
