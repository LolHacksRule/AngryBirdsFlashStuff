package
{
   import § "I§.§?!%§;
   import § 0§.§@Y§;
   import §!X§.§!"A§;
   import §!X§.§"!R§;
   import §!X§.§"S§;
   import §!X§.§'";§;
   import §!X§.§,"p§;
   import §!X§.§2!C§;
   import §!X§.§5!j§;
   import §!X§.§5+§;
   import §!X§.§7"@§;
   import §!X§.§;'§;
   import §!X§.§=!z§;
   import §!X§.StateCutScene;
   import §!X§.StatePlay;
   import §!X§.§["9§;
   import §!X§.§[%§;
   import §!X§.§]!z§;
   import §"!P§.§3G§;
   import §"!P§.§?"7§;
   import §#!$§.§2,§;
   import §#<§.§8!j§;
   import §%!c§.§%h§;
   import §%!c§.§,"%§;
   import §%!c§.§2![§;
   import §%!c§.§4"O§;
   import §%!c§.§;"h§;
   import §%!c§.§@!#§;
   import §,!_§.§2!%§;
   import §,"^§.§9#'§;
   import §,"v§.§7T§;
   import §,#+§.§7!m§;
   import §,#+§.§;"y§;
   import §,#+§.§@"F§;
   import §0!=§.§<"7§;
   import §0" §.§5N§;
   import §0"I§.§[Y§;
   import §0"I§.§^!9§;
   import §0R§.§!!M§;
   import §0R§.§0!8§;
   import §0R§.§>v§;
   import §0R§.§@P§;
   import §0b§.§%A§;
   import §0b§.§&w§;
   import §0b§.§-W§;
   import §0b§.§7">§;
   import §0b§.§;!y§;
   import §1G§.§7m§;
   import §2Q§.§9"]§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §5!q§.§3"X§;
   import §5!q§.§6"@§;
   import §6"e§.§+!§;
   import §7"l§.§>">§;
   import §7"l§.§[!0§;
   import §7§.§["&§;
   import §7A§.§5"2§;
   import §7A§.§<"M§;
   import §7A§.§>!]§;
   import §7A§.§@!A§;
   import §<"s§.§0u§;
   import §<"s§.§@![§;
   import §="<§.§>"C§;
   import §>!2§.§^;§;
   import §>"!§.§>D§;
   import §>P§.§5"3§;
   import §@!7§.§0!3§;
   import §@b§.§&M§;
   import §@b§.§-";§;
   import §@b§.§1"0§;
   import §[!`§.§#e§;
   import §`!b§.§;!m§;
   import §`!b§.§>"h§;
   import §`"8§.§#"S§;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import §`"8§.§1,§;
   import §`"8§.§2"+§;
   import §`"8§.§6`§;
   import §`"8§.§6v§;
   import §`"8§.§9";§;
   import §`"8§.§;z§;
   import §`"8§.§>6§;
   import §`"8§.§@T§;
   import §`"8§.§[F§;
   import §`"8§.§^x§;
   import com.angrybirds.§;!e§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.system.Security;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class §&"1§ extends §9" §
   {
      
      public static const §-?§:String = "r628";
      
      public static const §9"e§:String = "AngryBirdsStarWarsFacebookSettings";
      
      public static const §+!$§:String = "/";
      
      protected static var §6!u§:Class = §;"K§;
      
      protected static var §%"w§:Class = §@C§;
      
      protected static var §=!P§:Class = §"!;§;
      
      protected static var §#B§:Class = §`#6§;
      
      protected static var §;"7§:Class = §`1§;
       
      
      private var §3"N§:§@P§;
      
      private var §2#3§:§5N§;
      
      private var §8"6§:§2!%§;
      
      private var §9"O§:§<"7§;
      
      private var §;#§:§>v§;
      
      private var §%"c§:String;
      
      private var §#!v§:String;
      
      public function §&"1§(param1:§7m§, param2:String, param3:String)
      {
         this.§3"N§ = new §@P§(param1.loaderInfo.uncaughtErrorEvents,§-?§);
         this.§+"d§();
         §["&§.§^"I§ = true;
         §>!]§.enabled = true;
         §0!8§.§-!7§(§>!]§.§0"`§);
         super(param1,param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]",param1.stage.loaderInfo.parameters.serverRoot || "http://head-dot-angrybirds-black-dev.appspot.com");
         §@Y§.addCallback("getSessionToken",this.getSessionToken);
         §@Y§.addCallback("invitationBatchSent",this.§83§);
         §@Y§.addCallback("error",this.§'"B§);
         this.§3"N§.§31§(§ !p§);
         this.§3"N§.§-"Q§();
         §!!M§.accessToken = this.accessToken;
      }
      
      public function get §#"t§() : §>v§
      {
         return this.§;#§;
      }
      
      private function §+"d§() : void
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
      }
      
      private function get accessToken() : String
      {
         return §#!§("accessToken") || this.§#!v§;
      }
      
      private function §7!U§() : void
      {
         var _loc1_:String = §#!§("userId") || this.§%"c§;
         if(!§[!S§)
         {
            if(!_loc1_)
            {
               §0!8§.§1!-§("userId");
            }
            if(!this.accessToken)
            {
               §0!8§.§1!-§("accessToken");
            }
            if(!§#!§("tokenExpiresIn"))
            {
               §0!8§.§1!-§("tokenExpiresIn");
            }
         }
         if(!_loc1_)
         {
            throw new Error("No facebook user ID",§<"M§.§7!&§);
         }
         this.§8"6§ = new §2!%§(new URLRequest(SERVER_ROOT + "/init/" + _loc1_ + "/" + this.accessToken + "/" + (§#!§("tokenExpiresIn") || "7012") + "/" + (new Date().timezoneOffset / 60).toString() + "/" + §#!§("acquisitionChannel")));
      }
      
      override protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§7!U§();
         super.init(param1,param2,param3);
      }
      
      override protected function initialize() : void
      {
         var mySO:SharedObject = null;
         super.initialize();
         this.§9#%§();
         §[9§.addEventListener(Event.INIT,this.§0;§);
         §[9§.addEventListener(Event.COMPLETE,this.§<"Q§);
         §!# §.localizationMapping = new §9"]§("en");
         this.§`""§();
         var serverVersion:String = canvas.stage.loaderInfo.parameters.serverVersion || "";
         this.§;#§ = new §>v§(serverVersion);
         this.§;#§.start();
         var soundsEnabled:Boolean = true;
         try
         {
            mySO = SharedObject.getLocal(§9"e§,§+!$§);
            if(mySO.data.useSounds == undefined)
            {
               mySO.data.useSounds = soundsEnabled;
            }
            soundsEnabled = mySO.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §+!5§(soundsEnabled);
      }
      
      override protected function setupPopupManager() : void
      {
         §`!7§ = new MovieClip();
         §7"A§.stage.addChild(§`!7§);
         §"q§ = new §@![§(§`!7§,§!# §,this);
         §"q§.addEventListener(§8!j§.OPEN,§^"%§);
         §"q§.addEventListener(§8!j§.CLOSE,§;!7§);
         §"q§.addEventListener(§2,§.§#"J§,§^"%§);
         §"q§.addEventListener(§2,§.§!"w§,§;!7§);
         §="d§ = new §%A§(§"q§,§]S§,§0u§.§1"J§,new §-W§(),new §&w§(),new §;!y§());
      }
      
      override public function resumeEngine() : void
      {
         var _loc1_:Boolean = §@![§(§"q§).§;"<§();
         var _loc2_:Boolean = §[9§.isExternallyPaused();
         var _loc3_:Boolean = §@![§(§"q§).§^j§();
         if(!_loc1_ && !_loc2_ && !§1"2§ && !_loc3_)
         {
            §;!e§.resume();
         }
      }
      
      protected function §`""§() : void
      {
         this.§2#3§ = new §5N§(new §7T§());
      }
      
      override protected function initializeLevelManager() : §7!m§
      {
         return new §@"F§();
      }
      
      public function §5"W§() : §7T§
      {
         return this.§2#3§.§^3§;
      }
      
      protected function §0;§(param1:Event) : void
      {
         §?!%§.§ X§(false);
      }
      
      protected function §<"Q§(param1:Event) : void
      {
         §?!%§.§ X§(true);
      }
      
      override protected function initializeDataModel() : void
      {
         §]S§ = new §-!w§();
      }
      
      protected function §@!'§() : void
      {
         var _loc1_:§0!3§ = new §0!3§(§;"@§.SERVER_ROOT);
         §-!w§(§]S§).§9"1§ = new §6v§(_loc1_);
      }
      
      protected function §^4§() : void
      {
         var _loc2_:Object = null;
         var _loc1_:§#f§ = §-!w§(§]S§).§=>§ = new §#f§();
         for each(_loc2_ in this.§8"6§.data.items)
         {
            _loc1_.§""e§(_loc2_.i,_loc2_.q);
         }
         _loc1_.§7#'§ = true;
      }
      
      protected function §1>§() : void
      {
         var _loc1_:§2"+§ = §-!w§(§]S§).§'"l§ = new §2"+§("BlackFacebookSettings-" + this.§8"6§.data.userId);
         _loc1_.§>"t§(this.§8"6§.data.excludedUserIds);
         _loc1_.§+#7§(this.§8"6§.data.deauthorizedUserIds);
      }
      
      protected function §&!-§() : void
      {
         §-!w§(§]S§).§-"h§ = new §;z§(this.accessToken);
      }
      
      protected function §&d§() : void
      {
         var _loc1_:§?"7§ = §-!w§(§]S§).§0!;§ = new §?"7§();
         _loc1_.name = this.§8"6§.data.user.name;
         _loc1_.lastName = this.§8"6§.data.user.lastName;
         _loc1_.id = this.§8"6§.data.user.userId;
         _loc1_.accessToken = this.accessToken;
      }
      
      protected function §0Q§() : void
      {
         var _loc1_:§-";§ = §-!w§(§]S§).birdLevels = new §-";§();
         _loc1_.update(new §5"2§(this.§8"6§.data.birdLevels));
      }
      
      protected function §1p§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:int = 0;
         var _loc2_:§5"2§ = §-!w§(§]S§).§^!f§ = new §5"2§();
         for each(_loc3_ in this.§8"6§.data.friends.items)
         {
            if(!_loc3_.i)
            {
               _loc2_[_loc3_.u] = _loc3_.n + " " + _loc3_.l;
               _loc1_++;
            }
         }
         if(_loc1_ >= 1)
         {
            §0!8§.§[Z§(_loc1_ - 1);
         }
      }
      
      protected function §5"7§() : void
      {
         var _loc2_:String = null;
         var _loc1_:§5"2§ = §-!w§(§]S§).abfFriends = new §5"2§();
         for each(_loc2_ in this.§8"6§.data.friends.abfFriends)
         {
            _loc1_[_loc2_] = _loc2_;
         }
      }
      
      protected function §4b§() : void
      {
         §-!w§(§]S§).§;L§ = new §6`§(this.§8"6§.data.starCoins);
      }
      
      protected function §3"=§() : void
      {
         var _loc1_:§-!w§ = §-!w§(§]S§);
         _loc1_.§`!§ = new §@T§(this.§8"6§.data.energy.q,this.§8"6§.data.energy.p,this.§8"6§.data.energy.t,this.§8"6§.data.energy.m,_loc1_);
      }
      
      protected function §"!$§() : void
      {
         §-!w§(§]S§).§?v§ = new §^x§();
         §-!w§(§]S§).§?v§.§#"W§(this.§8"6§.data);
      }
      
      protected function §2w§() : void
      {
         §-!w§(§]S§).§!#%§ = new §[F§(§-!w§(§]S§).§0!;§.accessToken,§-!w§(§]S§).§0!;§.id);
      }
      
      protected function §@!q§() : void
      {
         var _loc1_:Object = null;
         §-!w§(§]S§).§2!J§ = new §>6§(this.§8"6§.data.tournament,§-!w§(§]S§).§0!;§.id,§-!w§(§]S§).§0!;§.name);
         if(this.§8"6§.data.tournament.lastResult)
         {
            for each(_loc1_ in this.§8"6§.data.tournament.lastResult.prizes)
            {
               if(_loc1_.itemId == "StarCoin")
               {
                  §-!w§(§]S§).§;L§.§8"2§(§-!w§(§]S§).§;L§.starCoins - _loc1_.quantity);
               }
            }
         }
      }
      
      protected function §[g§() : void
      {
         §-!w§(§]S§).§#"9§ = new §9";§(this.§8"6§.data.requests.gifts,this.§8"6§.data.requests.inviteGifts,this.§8"6§.data.requests.brags,this.§8"6§.data.requests.challenges,this.§8"6§.data.requests.requestsForHelp,this.§8"6§.data.requests.dailyRewards);
      }
      
      protected function §<!#§() : void
      {
         this.§,!e§();
         this.§&d§();
         this.§1>§();
         this.§&!-§();
         this.§^4§();
         this.§0Q§();
         this.§1p§();
         this.§5"7§();
         this.§4b§();
         this.§3"=§();
         this.§"!$§();
         this.§2w§();
         this.§=3§();
         this.§@!'§();
         this.§@!q§();
         this.§[g§();
         this.§6'§();
         §-!w§(§]S§).§#t§ = new §#"S§();
         this.§>"?§();
      }
      
      protected function §6'§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§8"6§.data.infoText)
         {
            _loc1_ = this.§8"6§.data.infoText.id;
            _loc2_ = this.§8"6§.data.infoText.title;
            _loc3_ = this.§8"6§.data.infoText.message;
            §-!w§(§]S§).§=!p§ = new §1,§(_loc1_,_loc2_,_loc3_);
         }
      }
      
      override protected function initializeGame() : void
      {
         if(this.§8"6§.data.error)
         {
            throw new Error("Server error of type \'" + this.§8"6§.data.type + "\': \'" + this.§8"6§.data.message + "\'");
         }
         if(this.§8"6§.data.st == undefined)
         {
            throw new Error("Server\'s init function did not return a session token.");
         }
         if(this.§8"6§.data.user.userId != (§#!§("userId") || this.§%"c§))
         {
            throw new Error("User IDs don\'t match.",§<"M§.§>O§);
         }
         super.initializeGame();
         this.§<!#§();
         this.§3!i§();
         resize(true);
         canvas.stage.setChildIndex(§`!7§,canvas.stage.numChildren - 1);
      }
      
      override protected function initializeUserProgress() : void
      {
      }
      
      protected function §,!e§() : void
      {
         §]S§.userProgress = new §3G§(SERVER_ROOT,§ !p§,this.§8"6§.data.state,this.§8"6§.data.st,this.§8"6§.data.user);
      }
      
      override protected function initializeStates() : void
      {
         §;"g§(new §5!j§(§ !p§,§5"3§(§#"§),§!# §,false));
         §;"g§(new §[%§(§ !p§,§!# §,false));
         §;"g§(new §["9§(§ !p§,§!# §,false));
         §;"g§(new §2!C§(§ !p§,§!# §,false));
         §;"g§(new §]!z§(§ !p§,§!# §,false));
         §;"g§(new §=!z§(§ !p§,§!# §,false));
         §;"g§(new §;'§(§ !p§,§!# §,false));
         §;"g§(new §!"A§(§ !p§,§!# §,false));
         §;"g§(new §"!R§(§ !p§,§!# §,false));
         §;"g§(new §"S§(§ !p§,§!# §,false));
         §;"g§(new §'";§(§ !p§,§!# §,false));
         §;"g§(new §@!#§(§ !p§,§!# §,false));
         §;"g§(new §%h§(§ !p§,§!# §,false));
         §;"g§(new §,"%§(§ !p§,§!# §,false));
         §;"g§(new §2![§(§ !p§,§!# §,false));
         §;"g§(new §;"h§(§ !p§,§!# §,false));
         §;"g§(new §4"O§(§ !p§,§5"3§(§#"§),§!# §,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §!!P§(null);
         }
      }
      
      override protected function initStateLoad() : §[!0§
      {
         if(!§[!S§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §0!8§.§1!-§("assetsUrl");
            }
         }
         return new §9#'§(§!# §,this.§8"6§,true,§[!0§.§'#2§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §9#%§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §-?§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §^!P§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      private function §=3§() : void
      {
         §-!w§(§]S§).§2-§ = new §;!m§(SERVER_ROOT,this.§8"6§.data.user.userId,this.§8"6§.data.user.name,this.§8"6§.data.friends);
      }
      
      private function §3!i§() : void
      {
         this.§9"O§ = new §<"7§(stage.stageHeight,§-!w§(§]S§).§2-§,this.§8"6§.data.user.userId,§-!w§(§]S§),§;"y§(§ !p§));
         this.§9"O§.showTotalScores();
         this.§9"O§.x = stage.stageWidth - 180;
         canvas.stage.addChild(this.§9"O§);
         this.§9"O§.addEventListener(§#e§.FULL_SCREEN,this.§1!P§);
         this.§9"O§.addEventListener(§#e§.§8"`§,this.§-!I§);
         this.§9"O§.addEventListener(§#e§.§9!@§,this.§@"&§);
         this.§9"O§.addEventListener(§#e§.§&!e§,this.§@"&§);
         this.§9"O§.addEventListener(§#e§.§-!O§,this.§[!e§);
         this.§9"O§.addEventListener(§#e§.INBOX,this.§5F§);
         this.§9"O§.addEventListener(§#e§.SHOP,this.§@!<§);
         this.§9"O§.addEventListener(§#e§.§<"4§,this.§]#+§);
         this.§9"O§.addEventListener(§#e§.§;"F§,this.§7#0§);
         this.§9"O§.addEventListener(§#e§.§"l§,this.§##1§);
         §!!P§(null);
      }
      
      public function get §`!u§() : §<"7§
      {
         return this.§9"O§;
      }
      
      override protected function initializeLevelMain() : §3"X§
      {
         return new §6"@§(stage,§#"§,§ G§,§ !p§);
      }
      
      override protected function getAssetMap() : XML
      {
         return §^!9§.§-^§(§6!u§);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §0!8§.§-!7§(§>!]§.§#8§,_loc1_.toString(),_loc1_);
         super.setFirstGameState();
         §0"B§(§>">§.§'#2§);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         super.onGraphicsInitialized(param1);
         §0"B§(§'";§.§'#2§);
      }
      
      public function §+K§() : void
      {
         §0"B§(§5+§.§'#2§);
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:int = param1;
         if(this.§9"O§)
         {
            param1 -= 180;
            this.§9"O§.x = param1;
            this.§9"O§.height = param2;
         }
         super.resizeViews(param1,param2);
         §"q§.setViewSize(_loc3_,param2);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §^!9§.§-^§(§%"w§);
         §@!A§.§`6§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getPopupData() : XML
      {
         var _loc1_:XML = super.getPopupData();
         var _loc2_:XML = §^!9§.§-^§(§=!P§);
         §@!A§.§`6§(_loc2_,_loc1_,["Popups"],true);
         return _loc1_;
      }
      
      override protected function loadBackgrounds() : void
      {
         super.loadBackgrounds();
         §]8§.loadBackgroundsLua(this.§1"h§());
      }
      
      protected function §1"h§() : String
      {
         return §[Y§.§-^§(§;"7§);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §-?§.replace("{svn_version}","local dev build") + " BETA, " + "Server: " + §^!P§;
      }
      
      private function §1l§(param1:ErrorEvent) : void
      {
         throw new Error(param1.toString());
      }
      
      private function §1!P§(param1:§#e§) : void
      {
         §35§();
      }
      
      private function §-!I§(param1:§#e§) : void
      {
         var mySO:SharedObject = null;
         var e:§#e§ = param1;
         §+!5§(!§"8§());
         if(§"8§())
         {
            if(§=#$§() == StatePlay.§'#2§)
            {
               §;!e§.§<x§.background.playAmbientSound();
            }
            else if(§=#$§() == §5+§.§'#2§ || §=#$§() == §,"p§.§'#2§ || §=#$§() == §7"@§.§'#2§)
            {
               §;"@§.singleton.playThemeMusic();
            }
         }
         this.§9"O§.§?3§();
         try
         {
            mySO = SharedObject.getLocal(§9"e§,§+!$§);
            mySO.data.useSounds = §else §;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §5"K§(param1:String) : void
      {
         param1 = § !p§.getValidLevelId(param1);
         § !p§.loadLevel(param1);
         if(param1.indexOf("2000-") > -1)
         {
            §0"B§(§;"h§.§'#2§);
         }
         else
         {
            §0"B§(StateCutScene.§'#2§);
         }
      }
      
      public function §8"X§(param1:String, param2:Boolean) : void
      {
         var _loc3_:int = §]S§.userProgress.getScoreForLevel(param1);
         var _loc4_:int = §]S§.userProgress.getStarsForLevel(param1);
         var _loc5_:int = §]S§.userProgress.getEagleScoreForLevel(param1);
         var _loc6_:int = this.§8L§(param1,_loc3_,_loc4_,_loc5_,param2);
         if(param2)
         {
            §-!w§(§]S§).§2!J§.§>"k§(param1,_loc6_,_loc3_);
            §-!w§(§]S§).§2!J§.§4,§ = true;
         }
         else if(_loc6_)
         {
            §3G§(§]S§.userProgress).§2"z§(param1,_loc6_);
         }
      }
      
      override public function playThemeMusic() : void
      {
         var _loc1_:§7T§ = §&"1§(§;"@§.singleton).§5"W§();
         _loc1_.§`"v§(§5N§.§4!n§,false);
      }
      
      override public function stopThemeMusic() : void
      {
         var _loc1_:§7T§ = §&"1§(§;"@§.singleton).§5"W§();
         _loc1_.§9!H§();
         _loc1_.§6T§();
      }
      
      private function §8L§(param1:String, param2:int, param3:int, param4:int = 0, param5:Boolean = false) : int
      {
         var _loc8_:§>"h§ = null;
         var _loc9_:int = 0;
         var _loc6_:Array = [];
         var _loc7_:int = this.§`!u§.§`"9§(param1,param2,param3,param4,_loc6_,param5);
         for each(_loc8_ in _loc6_)
         {
            _loc9_ = _loc8_.§["Q§ - 1;
            §0!8§.§&"<§(_loc9_.toString());
         }
         return _loc7_;
      }
      
      private function §@"&§(param1:§#e§) : void
      {
         var _loc2_:§7">§ = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:§#f§ = null;
         var _loc5_:§1"0§ = null;
         if(param1.type == §#e§.§&!e§)
         {
            _loc2_ = §;"@§.singleton.tutorialPopupManager;
            _loc3_ = _loc2_.§4!H§.getTutorialNamesForMapping(§&w§.§4$§);
            _loc4_ = §-!w§(§;"@§.singleton.dataModel).§=>§;
            for each(_loc5_ in _loc4_.§[!D§.§8"A§)
            {
               if(!(_loc5_.§%"0§ == §&M§.§0!f§ && § !p§.getCurrentEpisodeModel().name == "2000"))
               {
                  if(_loc4_.§"!V§(_loc5_.§0B§) > 0)
                  {
                     _loc3_.unshift(_loc5_.§0B§);
                  }
               }
            }
            §="d§.openMultipleTutorialPopups(_loc3_,true,true,true,true);
         }
         else
         {
            if(§=#$§() != §7"@§.§'#2§)
            {
               §0"B§(§7"@§.§'#2§);
            }
            §"q§.closePopup(-1,true,false,true);
         }
      }
      
      private function §[!e§(param1:§#e§) : void
      {
         var _loc2_:§5!R§ = new §>D§(§0u§.§1"J§,§^T§.TOP,§>D§.§-" §);
         §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true);
         §0!8§.§`!U§();
      }
      
      private function §5F§(param1:§#e§) : void
      {
         var _loc2_:§5!R§ = new §^;§(§@"F§(§ !p§),§0u§.§1"J§,§^T§.TOP);
         §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      private function §@!<§(param1:§#e§) : void
      {
         §@![§(§;"@§.singleton.popupManager).§2"N§();
      }
      
      private function §]#+§(param1:§#e§) : void
      {
         var _loc2_:§5!R§ = new §>D§(§0u§.§1"J§,§^T§.TOP,§>D§.§,!9§);
         §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      private function §7#0§(param1:§#e§) : void
      {
         var _loc2_:§5!R§ = new §+!§(§0u§.§1"J§,§^T§.TOP,§+!§.§!v§);
         §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      private function §##1§(param1:§#e§) : void
      {
         §@![§(§;"@§.singleton.popupManager).§2"N§(§>"C§.§9"U§);
      }
      
      private function §83§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §-!w§(dataModel).§'"l§.§4"§(_loc2_);
         }
      }
      
      private function getSessionToken() : String
      {
         return §2!%§.§+!k§;
      }
      
      override public function externalPause() : void
      {
         super.externalPause();
         §0!8§.§,Z§();
      }
      
      override public function externalResume() : void
      {
         super.externalResume();
         §0!8§.§;"e§();
      }
      
      private function §>"?§() : void
      {
         var _loc1_:§-!w§ = §-!w§(§]S§);
         if(_loc1_.§#"9§.§%"y§)
         {
            §0!8§.§[I§(§0!8§.§>" §,_loc1_.§;L§.starCoins);
            if(!_loc1_.§`!§.§'O§)
            {
               §0!8§.§[I§(§0!8§.§[m§,_loc1_.§`!§.energy);
               §0!8§.§[I§(§0!8§.§>"G§,_loc1_.§=>§.§"!V§(§#f§.§"X§));
            }
            §0!8§.§[I§(§0!8§.§["W§,_loc1_.§=>§.§"!V§(§#f§.§]"i§));
            §0!8§.§[I§(§0!8§.§-"C§,_loc1_.§=>§.§"!V§(§#f§.§!"L§));
            §0!8§.§[I§(§0!8§.§^"r§,_loc1_.§=>§.§"!V§(§#f§.§]Z§));
            §0!8§.§[I§(§0!8§.§1!k§,_loc1_.§=>§.§"!V§(§#f§.§0"v§));
         }
      }
      
      private function §'"B§(param1:String) : void
      {
         throw new Error("Error from external interface:\n\'" + param1 + "\'");
      }
   }
}
