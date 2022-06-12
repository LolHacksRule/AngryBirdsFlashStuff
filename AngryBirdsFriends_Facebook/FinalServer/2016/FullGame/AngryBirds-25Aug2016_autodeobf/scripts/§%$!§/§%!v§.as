package §%$!§
{
   import §!x§.§4"d§;
   import §+"%§.§6X§;
   import §0#d§.§<#u§;
   import §1!@§.§@#w§;
   import §4q§.§!#Q§;
   import §5"$§.§]!m§;
   import §7g§.§4!q§;
   import §7g§.§`!b§;
   import §7z§.§7"m§;
   import §;!Q§.§7B§;
   import §<"_§.§6"3§;
   import §=#W§.§^"H§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §>!#§.§@"$§;
   import §?"R§.ErrorPopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §]$9§.§5$!§;
   import §]$9§.§5$5§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import §`#?§.GiftInboxPopup;
   import §`3§.§ "i§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §%!v§
   {
      
      private static var §=!^§:§5$!§;
      
      private static var §5"C§:Vector.<§5$!§>;
      
      private static var §"j§:Object;
      
      private static var §+l§:String = "";
      
      private static var §!;§:int = 0;
      
      private static var §`"Y§:String;
      
      private static var §9z§:String;
      
      private static var §"!V§:String;
      
      private static var §6D§:String;
      
      private static var §0S§:§6"3§;
      
      private static var §>!&§:int;
       
      
      public function §%!v§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String, param4:String, param5:§6"3§) : void
      {
         §`"Y§ = param1;
         §9z§ = param2;
         §"!V§ = param3;
         §6D§ = param4;
         §0S§ = param5;
         if(§0S§.§-#!§)
         {
            §0S§.addEventListener(Event.COMPLETE,§'!w§);
         }
         else
         {
            §-t§();
         }
      }
      
      private static function §'!w§(param1:Event) : void
      {
         §0S§.removeEventListener(Event.COMPLETE,§'!w§);
         §-t§();
      }
      
      private static function §-t§() : void
      {
         §=!^§ = new §5$!§();
         §=!^§.dataFormat = URLLoaderDataFormat.TEXT;
         §=!^§.addEventListener(Event.COMPLETE,§1#U§);
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/login/");
         var _loc2_:Object = {
            "doNotUseCookies":"true",
            "clientType":"WEB_FLASH",
            "fbUserId":§`"Y§,
            "fbAccessToken":§9z§,
            "fbAccessTokenExpiresInSeconds":§"!V§,
            "localTimeZoneOffset":(new Date().timezoneOffset / 60).toString(),
            "acquisitionChannel":§6D§,
            "rovioLevel2AccessToken":§0S§.accessToken,
            "rovioLevel2AccessTokenExpiresInSeconds":§0S§.expiresIn,
            "clientSessionid":§-#A§.§6$2§().§-!?§(),
            "clientSessionCounter":§-#A§.§6$2§().§3#E§()
         };
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         §=!^§.load(_loc1_);
      }
      
      private static function §1#U§(param1:Event) : void
      {
         §"j§ = §=!^§.data;
         if(§"j§.error)
         {
            throw new Error("Server error of type \'" + §"j§.type + "\':\n" + §"j§.message,§@"$§.§%"U§);
         }
         if(§"j§.uid != §`"Y§)
         {
            throw new Error("Facebook IDs mismatch. Flashvar:\'" + §`"Y§ + "\', server:\'" + §"j§.uid + "\', accessToken:\'" + §9z§ + "\'.",§@"$§.§%"y§);
         }
         if(§"j§.name == null)
         {
            throw new Error("User name cannot be null");
         }
         §"j§.currency = {
            "user_currency":"USD",
            "currency_exchange":10,
            "currency_exchange_inverse":0.1,
            "currency_offset":100
         };
         §"j§.vCurrency = {
            "user_currency":"ABFC",
            "currency_exchange":0.01,
            "currency_exchange_inverse":100,
            "currency_offset":1
         };
         dataModel.currencyModel = new §<,§();
         dataModel.§<$&§ = new §=]§(§"j§.vCurrency);
         dataModel.§@#R§ = new §<>§(§"j§.vCurrency);
         userProgress.init(§"j§.name,§"j§.uid,§"j§.tutorials);
         if(§"j§.qr)
         {
            §]!m§.§3!]§.§""7§ = §"j§.qr;
         }
         if(§"j§.c)
         {
            if(§"j§.c.tp)
            {
               dataModel.§9"k§ = §"j§.c.tp.a == true;
            }
            else
            {
               dataModel.§9"k§ = false;
            }
            if(§"j§.c.gaee)
            {
               §,"W§.§=!R§ = §"j§.c.gaee.a == true;
            }
            else
            {
               §,"W§.§=!R§ = false;
            }
            if(§"j§.c.li)
            {
               §4!q§.§3!]§.active = true;
               §`!b§.§'#2§(§"j§.c.li);
            }
            else
            {
               §4!q§.§3!]§.active = false;
            }
            if(§"j§.c.og && §"j§.c.og.openGraphAdminObjects)
            {
               §0"F§.injectData(§"j§.c.og.openGraphAdminObjects);
            }
            if(§"j§.c.ct)
            {
               §]!m§.§break§ = int(§"j§.c.ct);
            }
            if(§"j§.c.scid)
            {
               §]!m§.§3!]§.§^#U§(§"j§.c.scid);
            }
            §-#A§.§6$2§().injectData(§"j§);
         }
         §5"C§ = new Vector.<§5$!§>();
         §>!&§ = 0;
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            ++§>!&§;
            §3M§("true");
         }
         else
         {
            §2#,§("hasFriendListPermission","friendListPermission",§3M§);
         }
         §%h§.§3!]§.addEventListener(§%h§.§>#?§,§2n§);
         ++§>!&§;
         §%h§.§3!]§.§=L§();
         §!#b§(AngryBirdsBase.SERVER_ROOT + "/requestexcludes/",§"6§);
         §!#b§(AngryBirdsBase.SERVER_ROOT + "/getservertime",§!!5§);
         §!#b§(AngryBirdsBase.SERVER_ROOT + "/getrequests",§["0§);
         §!#b§(AngryBirdsBase.SERVER_ROOT + "/abtesting/getabtestconfig",§0Q§);
         §!#b§(AngryBirdsBase.SERVER_ROOT + "/draw/getconfig",§!"4§);
         §!#b§(AngryBirdsBase.SERVER_ROOT + "/geteggs",§[!,§);
         §!#b§(AngryBirdsBase.SERVER_ROOT + "/scores/getOwnEpisodeScores?episode=1,2,3,4,5,9,10,11,12,1000,4000,4001",§>#2§);
         dataModel.§+!=§.§]"U§();
      }
      
      private static function §2#,§(param1:String, param2:String, param3:Function) : void
      {
         ++§>!&§;
         §6X§.addCallback(param2,param3);
         §6X§.§3U§(param1);
      }
      
      private static function §!#b§(param1:String, param2:Function) : void
      {
         ++§>!&§;
         var _loc3_:§5$!§ = new §5$!§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.addEventListener(Event.COMPLETE,param2);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§&#[§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§&#[§);
         _loc3_.addEventListener(§>#J§.§-$%§,§&#[§);
         var _loc4_:URLRequest;
         (_loc4_ = §>J§.§'[§(param1)).method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
         _loc3_.load(_loc4_);
         §5"C§.push(_loc3_);
      }
      
      private static function §&#[§(param1:Event) : void
      {
         var _loc2_:§8!H§ = null;
         if(param1.type == §>#J§.§-$%§)
         {
            _loc2_ = new ErrorPopup(§[W§.ERROR,§<d§.TOP,ErrorPopup.§`"4§);
         }
         else
         {
            _loc2_ = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private static function §3M§(param1:String) : void
      {
         var _loc2_:§ "i§ = null;
         §6X§.§5!3§("friendListPermission",§3M§);
         §<#u§.§ #C§ = param1 == "true";
         if(§<#u§.§ #C§)
         {
            §=##§();
         }
         else
         {
            §8G§(§8G§.§%#S§).§`p§("POPUP");
            §"j§.friends = [];
            §7"m§.§="0§(null);
            §7"m§.§18§(null);
            §8G§.§%#S§.§#F§({"players":§"j§.friends});
            _loc2_ = new § "i§();
            _loc2_.§2v§();
         }
         §+>§();
      }
      
      public static function §=##§() : void
      {
         §!#b§(AngryBirdsBase.SERVER_ROOT + "/friends/getOverallScores?forceRefresh=true",§5f§);
         §9"Y§();
      }
      
      private static function §5f§(param1:Event) : void
      {
         var _loc2_:§5$!§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §5"C§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = §0!z§(param1.target.data,"players");
               §"j§.friends = _loc3_.players;
               §7"m§.§="0§(§"j§.friends);
               §8G§.§%#S§.§#F§({"players":§"j§.friends});
               new § "i§().§2v§();
               §+>§();
               break;
            }
         }
      }
      
      protected static function onError(param1:IOErrorEvent) : void
      {
         §4"d§.log("Error while loading the initial data");
      }
      
      private static function §9"Y§() : void
      {
         var _loc1_:URLRequest = §8G§.§%#S§.§+"X§.§1#_§("https://graph.facebook.com/" + §8G§.§4#§ + "/me/invitable_friends/");
         var _loc2_:§5$5§ = new §5$5§(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,§?"J§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,onError);
         ++§>!&§;
      }
      
      protected static function §?"J§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§?"J§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,onError);
         var _loc3_:Object = JSON.parse(param1.target.data);
         §7"m§.§18§(_loc3_.data);
         §+>§();
      }
      
      private static function §2n§(param1:Event) : void
      {
         §+>§();
      }
      
      private static function §"6§(param1:Event) : void
      {
         var _loc2_:§5$!§ = null;
         for each(_loc2_ in §5"C§)
         {
            if(_loc2_ == param1.target)
            {
               §"j§.deauthorizedUserIds = param1.target.data.deauthorizedUserIds;
               §"j§.excludedUserIds = param1.target.data.excludedUserIds;
               §1#`§.§3!]§.§@!'§(§"j§.deauthorizedUserIds);
               §1#`§.§3!]§.§++§(§"j§.excludedUserIds);
               §1#`§.§3!]§.§8!$§(null);
               §+>§();
               break;
            }
         }
      }
      
      private static function §!!5§(param1:Event) : void
      {
         var _loc2_:§5$!§ = null;
         for each(_loc2_ in §5"C§)
         {
            if(_loc2_ == param1.target)
            {
               §"j§.servertime = param1.target.data.time;
               if(§"j§.servertime)
               {
                  §+3§(AngryBirdsBase.singleton.dataModel).serverSynchronizedTime = new §@#w§(§"j§.servertime);
               }
               §+>§();
               break;
            }
         }
      }
      
      private static function §["0§(param1:Event) : void
      {
         var _loc2_:§5$!§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §5"C§)
         {
            if(_loc2_ == param1.target)
            {
               §"j§.requests = param1.target.data;
               GiftInboxPopup.injectData(§"j§.requests);
               for each(_loc3_ in §"j§.requests.brags)
               {
                  §6X§.§3U§("flashDeleteRequest",_loc3_.r);
               }
               §+>§();
               break;
            }
         }
      }
      
      private static function §0Q§(param1:Event) : void
      {
         var _loc2_:§5$!§ = null;
         for each(_loc2_ in §5"C§)
         {
            if(_loc2_ == param1.target)
            {
               §"j§.abtesting = param1.target.data;
               §^"H§.injectData(§"j§.abtesting);
               §+>§();
               break;
            }
         }
      }
      
      private static function §!"4§(param1:Event) : void
      {
         var _loc2_:§5$!§ = null;
         for each(_loc2_ in §5"C§)
         {
            if(_loc2_ == param1.target)
            {
               §"j§.drawconfig = param1.target.data;
               if(§"j§.drawconfig && §"j§.drawconfig.draw == §7B§.§2!k§)
               {
                  §+3§(§8G§.§%#S§.dataModel).§&!?§ = new §7B§(§"j§.drawconfig);
               }
               else
               {
                  §+3§(§8G§.§%#S§.dataModel).§&!?§ = new §7B§({});
               }
               §+>§();
               break;
            }
         }
      }
      
      private static function §[!,§(param1:Event) : void
      {
         var _loc2_:§5$!§ = null;
         for each(_loc2_ in §5"C§)
         {
            if(_loc2_ == param1.target)
            {
               userProgress.§+"p§(param1.target.data);
               §+>§();
               break;
            }
         }
      }
      
      private static function §>#2§(param1:Event) : void
      {
         var _loc2_:§5$!§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §5"C§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = param1.target.data;
               userProgress.§&"-§(_loc3_.levelScores);
               §+>§();
               break;
            }
         }
      }
      
      public static function §0!z§(param1:Object, param2:String, param3:String = null) : Object
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
            if(§1#`§.§3!]§.§ #j§()[_loc7_.uid] == null)
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
            userProgress.§%w§(param3,_loc9_);
         }
         return _loc4_;
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      public static function get §-#!§() : Boolean
      {
         return §=!^§ != null;
      }
      
      private static function get data() : Object
      {
         return §"j§;
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      private static function §+>§() : void
      {
         if(§8G§.§4#"§())
         {
            return;
         }
         --§>!&§;
         if(§>!&§ <= 0)
         {
            §5"C§.length = 0;
            §=!^§ = null;
            §8G§.§]O§();
         }
      }
   }
}
