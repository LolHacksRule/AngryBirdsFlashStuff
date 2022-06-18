package §&"J§
{
   import § $%§.§%§;
   import § $%§.§0#`§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import § o§.WarningPopup;
   import §-!_§.GiftInboxPopup;
   import §2F§.§>§;
   import §3#G§.§="1§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6$#§.§]"$§;
   import §6V§.§4!v§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §<"p§.§?!T§;
   import §<#m§.§!"<§;
   import §<#m§.§^#o§;
   import §[0§.§5#;§;
   import §[0§.§;$-§;
   import §]#p§.§%!?§;
   import §];§.§-!t§;
   import §^#]§.§^!<§;
   import §`!R§.§&"8§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §<!u§
   {
      
      private static var § S§:§4"v§;
      
      private static var §+F§:Vector.<§4"v§>;
      
      private static var §!"$§:Object;
      
      private static var §&=§:String = "";
      
      private static var §4d§:int = 0;
      
      private static var §6#4§:String;
      
      private static var §&X§:String;
      
      private static var §`!8§:String;
      
      private static var §3!Y§:String;
      
      private static var §2#P§:§]"$§;
      
      private static var §7"1§:int;
       
      
      public function §<!u§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String, param4:String, param5:§]"$§) : void
      {
         §6#4§ = param1;
         §&X§ = param2;
         §`!8§ = param3;
         §3!Y§ = param4;
         §2#P§ = param5;
         if(§2#P§.§"$1§)
         {
            §2#P§.addEventListener(Event.COMPLETE,§<=§);
         }
         else
         {
            §+!@§();
         }
      }
      
      private static function §<=§(param1:Event) : void
      {
         §2#P§.removeEventListener(Event.COMPLETE,§<=§);
         §+!@§();
      }
      
      private static function §+!@§() : void
      {
         § S§ = new §4"v§();
         § S§.dataFormat = URLLoaderDataFormat.TEXT;
         § S§.addEventListener(Event.COMPLETE,§@#e§);
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/login/");
         var _loc2_:Object = {
            "doNotUseCookies":"true",
            "clientType":"WEB_FLASH",
            "fbUserId":§6#4§,
            "fbAccessToken":§&X§,
            "fbAccessTokenExpiresInSeconds":§`!8§,
            "localTimeZoneOffset":(new Date().timezoneOffset / 60).toString(),
            "acquisitionChannel":§3!Y§,
            "rovioLevel2AccessToken":§2#P§.accessToken,
            "rovioLevel2AccessTokenExpiresInSeconds":§2#P§.expiresIn,
            "clientSessionid":§?!=§.§3!q§().§'"X§(),
            "clientSessionCounter":§?!=§.§3!q§().§?#2§()
         };
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         § S§.load(_loc1_);
      }
      
      private static function §@#e§(param1:Event) : void
      {
         §!"$§ = § S§.data;
         if(§!"$§.error)
         {
            throw new Error("Server error of type \'" + §!"$§.type + "\':\n" + §!"$§.message,§4!v§.§5"u§);
         }
         if(§!"$§.uid != §6#4§)
         {
            throw new Error("Facebook IDs mismatch. Flashvar:\'" + §6#4§ + "\', server:\'" + §!"$§.uid + "\', accessToken:\'" + §&X§ + "\'.",§4!v§.§5"<§);
         }
         if(§!"$§.name == null)
         {
            throw new Error("User name cannot be null");
         }
         §!"$§.currency = {
            "user_currency":"USD",
            "currency_exchange":10,
            "currency_exchange_inverse":0.1,
            "currency_offset":100
         };
         §!"$§.vCurrency = {
            "user_currency":"ABFC",
            "currency_exchange":0.01,
            "currency_exchange_inverse":100,
            "currency_offset":1
         };
         dataModel.currencyModel = new §6r§();
         dataModel.§>p§ = new §6$0§(§!"$§.vCurrency);
         dataModel.§>#n§ = new §2"e§(§!"$§.vCurrency);
         userProgress.init(§!"$§.name,§!"$§.uid,§!"$§.tutorials);
         if(§!"$§.qr)
         {
            §-!t§.§ "D§.§1c§ = §!"$§.qr;
         }
         if(§!"$§.c)
         {
            if(§!"$§.c.tp)
            {
               dataModel.§5"9§ = §!"$§.c.tp.a == true;
            }
            else
            {
               dataModel.§5"9§ = false;
            }
            if(§!"$§.c.gaee)
            {
               §`"5§.§1#4§ = §!"$§.c.gaee.a == true;
            }
            else
            {
               §`"5§.§1#4§ = false;
            }
            §>#0§.injectData(§!"$§.c.abt);
            if(§!"$§.c.li)
            {
               §;$-§.§ "D§.active = true;
               §5#;§.§+x§(§!"$§.c.li);
            }
            else
            {
               §;$-§.§ "D§.active = false;
            }
            if(§!"$§.c.og && §!"$§.c.og.openGraphAdminObjects)
            {
               §9N§.injectData(§!"$§.c.og.openGraphAdminObjects);
            }
            if(§!"$§.c.ct)
            {
               §-!t§.§<N§ = int(§!"$§.c.ct);
            }
            if(§!"$§.c.scid)
            {
               §-!t§.§ "D§.§+!V§(§!"$§.c.scid);
            }
            §?!=§.§3!q§().injectData(§!"$§);
         }
         §+F§ = new Vector.<§4"v§>();
         §7"1§ = 0;
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            ++§7"1§;
            §#d§("true");
         }
         else
         {
            §@!s§("hasFriendListPermission","friendListPermission",§#d§);
         }
         §4"W§.§ "D§.addEventListener(§4"W§.§8!Z§,§["V§);
         ++§7"1§;
         §4"W§.§ "D§.§@!z§();
         §,y§(AngryBirdsBase.SERVER_ROOT + "/requestexcludes/",§<!U§);
         §,y§(AngryBirdsBase.SERVER_ROOT + "/getservertime",§`"u§);
         §,y§(AngryBirdsBase.SERVER_ROOT + "/getrequests",§5!g§);
         §,y§(AngryBirdsBase.SERVER_ROOT + "/geteggs",§`"w§);
         §,y§(AngryBirdsBase.SERVER_ROOT + "/scores/getOwnEpisodeScores?episode=1,2,3,4,5,9,10,11,12,1000,4000,4001",§'"A§);
         dataModel.§ in§.§>$§();
      }
      
      private static function §@!s§(param1:String, param2:String, param3:Function) : void
      {
         ++§7"1§;
         § "8§.addCallback(param2,param3);
         § "8§.§ "§(param1);
      }
      
      private static function §,y§(param1:String, param2:Function) : void
      {
         ++§7"1§;
         var _loc3_:§4"v§ = new §4"v§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.addEventListener(Event.COMPLETE,param2);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,§7U§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§7U§);
         _loc3_.addEventListener(§]e§.§5!;§,§7U§);
         var _loc4_:URLRequest;
         (_loc4_ = §%#9§.§`#<§(param1)).method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
         _loc3_.load(_loc4_);
         §+F§.push(_loc3_);
      }
      
      private static function §7U§(param1:Event) : void
      {
         var _loc2_:§!"<§ = null;
         if(param1.type == §]e§.§5!;§)
         {
            _loc2_ = new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§?"V§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private static function §#d§(param1:String) : void
      {
         var _loc2_:§="1§ = null;
         § "8§.§+#R§("friendListPermission",§#d§);
         §&"8§.§4!I§ = param1 == "true";
         if(§&"8§.§4!I§)
         {
            §%"K§();
         }
         else
         {
            §-#+§(§-#+§.§;!$§).§+T§("POPUP");
            §!"$§.friends = [];
            §%!?§.§@#!§(null);
            §%!?§.§,#K§(null);
            §-#+§.§;!$§.§6#3§({"players":§!"$§.friends});
            _loc2_ = new §="1§();
            _loc2_.§3A§();
         }
         §9#C§();
      }
      
      public static function §%"K§() : void
      {
         §,y§(AngryBirdsBase.SERVER_ROOT + "/friends/getOverallScores?forceRefresh=true",§;#Y§);
         §;#"§();
      }
      
      private static function §;#Y§(param1:Event) : void
      {
         var _loc2_:§4"v§ = null;
         var _loc3_:Object = null;
         var _loc4_:§="1§ = null;
         for each(_loc2_ in §+F§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = §9M§(param1.target.data,"players");
               §!"$§.friends = _loc3_.players;
               §%!?§.§@#!§(§!"$§.friends);
               §-#+§.§;!$§.§6#3§({"players":§!"$§.friends});
               (_loc4_ = new §="1§()).§3A§();
               §9#C§();
               break;
            }
         }
      }
      
      protected static function onError(param1:IOErrorEvent) : void
      {
         §?!T§.log("Error while loading the initial data");
      }
      
      private static function §;#"§() : void
      {
         var _loc1_:URLRequest = §-#+§.§;!$§.§+@§.§8?§("https://graph.facebook.com/" + §-#+§.§;L§ + "/me/invitable_friends/");
         var _loc2_:§0#`§ = new §0#`§(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,§-Z§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,onError);
         ++§7"1§;
      }
      
      protected static function §-Z§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,§-Z§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,onError);
         var _loc3_:Object = JSON.parse(param1.target.data);
         §%!?§.§,#K§(_loc3_.data);
         §9#C§();
      }
      
      private static function §["V§(param1:Event) : void
      {
         §9#C§();
      }
      
      private static function §<!U§(param1:Event) : void
      {
         var _loc2_:§4"v§ = null;
         for each(_loc2_ in §+F§)
         {
            if(_loc2_ == param1.target)
            {
               §!"$§.deauthorizedUserIds = param1.target.data.deauthorizedUserIds;
               §!"$§.excludedUserIds = param1.target.data.excludedUserIds;
               §"!F§.§ "D§.§@6§(§!"$§.deauthorizedUserIds);
               §"!F§.§ "D§.§@#i§(§!"$§.excludedUserIds);
               §"!F§.§ "D§.§?!F§(null);
               §9#C§();
               break;
            }
         }
      }
      
      private static function §`"u§(param1:Event) : void
      {
         var _loc2_:§4"v§ = null;
         for each(_loc2_ in §+F§)
         {
            if(_loc2_ == param1.target)
            {
               §!"$§.servertime = param1.target.data.time;
               if(§!"$§.servertime)
               {
                  §`]§(AngryBirdsBase.singleton.dataModel).serverSynchronizedTime = new §^!<§(§!"$§.servertime);
               }
               §9#C§();
               break;
            }
         }
      }
      
      private static function §5!g§(param1:Event) : void
      {
         var _loc2_:§4"v§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §+F§)
         {
            if(_loc2_ == param1.target)
            {
               §!"$§.requests = param1.target.data;
               GiftInboxPopup.injectData(§!"$§.requests);
               for each(_loc3_ in §!"$§.requests.brags)
               {
                  § "8§.§ "§("flashDeleteRequest",_loc3_.r);
               }
               §9#C§();
               break;
            }
         }
      }
      
      private static function §["8§(param1:Event) : void
      {
         var _loc2_:§4"v§ = null;
         for each(_loc2_ in §+F§)
         {
            if(_loc2_ == param1.target)
            {
               §!"$§.drawconfig = param1.target.data;
               §9#C§();
               break;
            }
         }
      }
      
      private static function §`"w§(param1:Event) : void
      {
         var _loc2_:§4"v§ = null;
         for each(_loc2_ in §+F§)
         {
            if(_loc2_ == param1.target)
            {
               userProgress.§1!I§(param1.target.data);
               §9#C§();
               break;
            }
         }
      }
      
      private static function §'"A§(param1:Event) : void
      {
         var _loc2_:§4"v§ = null;
         var _loc3_:Object = null;
         for each(_loc2_ in §+F§)
         {
            if(_loc2_ == param1.target)
            {
               _loc3_ = param1.target.data;
               userProgress.§>"$§(_loc3_.levelScores);
               §9#C§();
               break;
            }
         }
      }
      
      public static function §9M§(param1:Object, param2:String, param3:String = null) : Object
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
            if(§"!F§.§ "D§.§>"Z§()[_loc7_.uid] == null)
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
            userProgress.§&#@§(param3,_loc9_);
         }
         return _loc4_;
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      public static function get §"$1§() : Boolean
      {
         return § S§ != null;
      }
      
      private static function get data() : Object
      {
         return §!"$§;
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      private static function §9#C§() : void
      {
         if(§-#+§.§1"<§())
         {
            return;
         }
         --§7"1§;
         if(§7"1§ <= 0)
         {
            §+F§.length = 0;
            § S§ = null;
            §-#+§.§7"4§();
         }
      }
   }
}
