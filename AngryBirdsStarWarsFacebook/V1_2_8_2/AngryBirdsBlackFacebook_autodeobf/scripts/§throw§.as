package
{
   import §!b§.§ ?§;
   import §!b§.§!0§;
   import §!b§.§;!D§;
   import §!b§.§]!s§;
   import §"!H§.§6!M§;
   import §"§.§0F§;
   import §"§.§;!E§;
   import §"d§.§%-§;
   import §#g§.§>"-§;
   import §%!G§.§`?§;
   import §%"Q§.§!K§;
   import §%"Q§.§#"L§;
   import §%"Q§.§#V§;
   import §%"Q§.§'!V§;
   import §%"Q§.§-"B§;
   import §%"Q§.§0!F§;
   import §%"Q§.§8"s§;
   import §%"Q§.§8?§;
   import §%"Q§.§;?§;
   import §%"Q§.§=!h§;
   import §%"Q§.§>"+§;
   import §%"Q§.§>"l§;
   import §%"Q§.§?!W§;
   import §%"Q§.StateCutScene;
   import §%"Q§.StatePlay;
   import §%"Q§.§["?§;
   import §'"A§.§!§;
   import §'"A§.§#§;
   import §'"A§.§3"x§;
   import §+"Y§.§4#%§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+&§.§&q§;
   import §+=§.§9"j§;
   import §+d§.§2!g§;
   import §+d§.§8#&§;
   import §+d§.§@h§;
   import §+d§.§`!<§;
   import §,§.§["W§;
   import §-![§.§""9§;
   import §0"k§.§-"[§;
   import §0"k§.§@!D§;
   import §2!o§.§>#!§;
   import §5"Q§.§5"s§;
   import §6"-§.§^!Q§;
   import §7!H§.§5k§;
   import §7!n§.§>"H§;
   import §7"P§.§7"u§;
   import §8"'§.§#!0§;
   import §8"'§.§-0§;
   import §8"'§.§0h§;
   import §8"'§.§4!T§;
   import §8"'§.§6!W§;
   import §8"'§.§`k§;
   import §9"U§.§!!7§;
   import §9"U§.§!!K§;
   import §9"U§.§,!c§;
   import §9"U§.§,N§;
   import §9"U§.§0!2§;
   import §9"U§.§5"T§;
   import §9"U§.§6e§;
   import §9"U§.§7"1§;
   import §9"U§.§;"[§;
   import §9"U§.§;9§;
   import §9"U§.§>!Y§;
   import §9"U§.§[!b§;
   import §9"U§.§[!s§;
   import §9"`§.§<e§;
   import §9"`§.§]"9§;
   import §9&§.§@"K§;
   import §9§.§3!?§;
   import §9§.§=q§;
   import §;!3§.§^"z§;
   import §[G§.§5"y§;
   import §]3§.§1H§;
   import §`"1§.§02§;
   import §`"T§.§!"i§;
   import §`"T§.§3#&§;
   import §`"T§.§7?§;
   import §`"T§.§[l§;
   import §`"T§.§]R§;
   import §`"n§.§""r§;
   import §`"n§.§2J§;
   import com.angrybirds.§<!J§;
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
   import §null §.§ #$§;
   import §null §.§1"o§;
   import §null §.§5#§;
   
   public class §throw§ extends §7!Q§
   {
      
      public static const §7"V§:String = "r642";
      
      public static const §2"T§:String = "AngryBirdsStarWarsFacebookSettings";
      
      public static const §8z§:String = "/";
      
      protected static var §;#-§:Class = §8!]§;
      
      protected static var §0#$§:Class = §4"3§;
      
      protected static var §"@§:Class = §0=§;
      
      protected static var §'_§:Class = §^!o§;
      
      protected static var §0#5§:Class = §@§;
       
      
      private var §&!`§:§;!D§;
      
      private var §<p§:§7"u§;
      
      private var §@"1§:§`?§;
      
      private var § ",§:§5"y§;
      
      private var §["&§:§!0§;
      
      private var §2O§:String;
      
      private var §+H§:String;
      
      public function §throw§(param1:§@"K§, param2:String, param3:String)
      {
         this.§&!`§ = new §;!D§(param1.loaderInfo.uncaughtErrorEvents,§7"V§);
         this.§0#0§();
         §9"j§.§>#5§ = true;
         §`!<§.enabled = true;
         §]!s§.§+#$§(§`!<§.§-!§);
         super(param1,param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]",param1.stage.loaderInfo.parameters.serverRoot || "http://head-dot-angrybirds-black-dev.appspot.com");
         §5"s§.addCallback("getSessionToken",this.getSessionToken);
         §5"s§.addCallback("invitationBatchSent",this.§"a§);
         §5"s§.addCallback("error",this.§&W§);
         this.§&!`§.§"h§(§'""§);
         this.§&!`§.§^!n§();
         § ?§.accessToken = this.accessToken;
      }
      
      public function get §^!O§() : §!0§
      {
         return this.§["&§;
      }
      
      private function §0#0§() : void
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
      }
      
      private function get accessToken() : String
      {
         return §[t§("accessToken") || this.§+H§;
      }
      
      private function §+^§() : void
      {
         var _loc1_:String = §[t§("userId") || this.§2O§;
         if(!§<C§)
         {
            if(!_loc1_)
            {
               §]!s§.§%"§("userId");
            }
            if(!this.accessToken)
            {
               §]!s§.§%"§("accessToken");
            }
            if(!§[t§("tokenExpiresIn"))
            {
               §]!s§.§%"§("tokenExpiresIn");
            }
         }
         if(!_loc1_)
         {
            throw new Error("No facebook user ID",§8#&§.§,"a§);
         }
         this.§@"1§ = new §`?§(new URLRequest(SERVER_ROOT + "/init/" + _loc1_ + "/" + this.accessToken + "/" + (§[t§("tokenExpiresIn") || "7012") + "/" + (new Date().timezoneOffset / 60).toString() + "/" + §[t§("acquisitionChannel")));
      }
      
      override protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§+^§();
         super.init(param1,param2,param3);
      }
      
      override protected function initialize() : void
      {
         var mySO:SharedObject = null;
         super.initialize();
         this.§!>§();
         §`"!§.addEventListener(Event.INIT,this.§7!m§);
         §`"!§.addEventListener(Event.COMPLETE,this.§39§);
         §1!L§.localizationMapping = new §""9§("en");
         this.§,"q§();
         var serverVersion:String = canvas.stage.loaderInfo.parameters.serverVersion || "";
         this.§["&§ = new §!0§(serverVersion);
         this.§["&§.start();
         var soundsEnabled:Boolean = true;
         try
         {
            mySO = SharedObject.getLocal(§2"T§,§8z§);
            if(mySO.data.useSounds == undefined)
            {
               mySO.data.useSounds = soundsEnabled;
            }
            soundsEnabled = mySO.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §"W§(soundsEnabled);
      }
      
      override protected function setupPopupManager() : void
      {
         §%"H§ = new MovieClip();
         §1!e§.stage.addChild(§%"H§);
         §?"Q§ = new §4#%§(§%"H§,§1!L§,this);
         §?"Q§.addEventListener(§>"H§.OPEN,§@a§);
         §?"Q§.addEventListener(§>"H§.CLOSE,§4"F§);
         §?"Q§.addEventListener(§5k§.§3!&§,§@a§);
         §?"Q§.addEventListener(§5k§.§7"v§,§4"F§);
         §?!s§ = new §!"i§(§?"Q§,§?!$§,§^!S§.§'"c§,new §]R§(),new §7?§(),new §3#&§());
      }
      
      override public function resumeEngine() : void
      {
         var _loc1_:Boolean = §4#%§(§?"Q§).§#"E§();
         var _loc2_:Boolean = §`"!§.isExternallyPaused();
         var _loc3_:Boolean = §4#%§(§?"Q§).§-$§();
         if(!_loc1_ && !_loc2_ && !§ "#§ && !_loc3_)
         {
            §<!J§.resume();
         }
      }
      
      protected function §,"q§() : void
      {
         this.§<p§ = new §7"u§(new §02§());
      }
      
      override protected function initializeLevelManager() : §5#§
      {
         return new §1"o§();
      }
      
      public function §8"8§() : §02§
      {
         return this.§<p§.§=!3§;
      }
      
      protected function §7!m§(param1:Event) : void
      {
         §&q§.§6! §(false);
      }
      
      protected function §39§(param1:Event) : void
      {
         §&q§.§6! §(true);
      }
      
      override protected function initializeDataModel() : void
      {
         §?!$§ = new §7"1§();
      }
      
      protected function §=,§() : void
      {
         var _loc1_:§1H§ = new §1H§(§4"#§.SERVER_ROOT);
         §7"1§(§?!$§).§,!6§ = new §;"[§(_loc1_);
      }
      
      protected function § "r§() : void
      {
         var _loc2_:Object = null;
         var _loc1_:§[!b§ = §7"1§(§?!$§).§@!K§ = new §[!b§();
         for each(_loc2_ in this.§@"1§.data.items)
         {
            _loc1_.§2"q§(_loc2_.i,_loc2_.q);
         }
         _loc1_.§9"7§ = true;
      }
      
      protected function §]"o§() : void
      {
         var _loc1_:§5"T§ = §7"1§(§?!$§).§6!I§ = new §5"T§("BlackFacebookSettings-" + this.§@"1§.data.userId);
         _loc1_.§&""§(this.§@"1§.data.excludedUserIds);
         _loc1_.§ !N§(this.§@"1§.data.deauthorizedUserIds);
      }
      
      protected function §?!i§() : void
      {
         §7"1§(§?!$§).§0S§ = new §6e§(this.accessToken);
      }
      
      protected function §&!%§() : void
      {
         var _loc1_:§2J§ = §7"1§(§?!$§).§#"_§ = new §2J§();
         _loc1_.name = this.§@"1§.data.user.name;
         _loc1_.lastName = this.§@"1§.data.user.lastName;
         _loc1_.id = this.§@"1§.data.user.userId;
         _loc1_.accessToken = this.accessToken;
      }
      
      protected function §2!3§() : void
      {
         var _loc1_:§##4§ = §7"1§(§?!$§).birdLevels = new §##4§();
         _loc1_.update(new §2!g§(this.§@"1§.data.birdLevels));
      }
      
      protected function §##$§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:int = 0;
         var _loc2_:§2!g§ = §7"1§(§?!$§).§;""§ = new §2!g§();
         for each(_loc3_ in this.§@"1§.data.friends.items)
         {
            if(!_loc3_.i)
            {
               _loc2_[_loc3_.u] = _loc3_.n + " " + _loc3_.l;
               _loc1_++;
            }
         }
         if(_loc1_ >= 1)
         {
            §]!s§.§[!f§(_loc1_ - 1);
         }
      }
      
      protected function §`+§() : void
      {
         var _loc2_:String = null;
         var _loc1_:§2!g§ = §7"1§(§?!$§).abfFriends = new §2!g§();
         for each(_loc2_ in this.§@"1§.data.friends.abfFriends)
         {
            _loc1_[_loc2_] = _loc2_;
         }
      }
      
      protected function §<!y§() : void
      {
         §7"1§(§?!$§).§&!w§ = new §0!2§(this.§@"1§.data.starCoins);
      }
      
      protected function §7"I§() : void
      {
         var _loc1_:§7"1§ = §7"1§(§?!$§);
         _loc1_.§9"$§ = new §,!c§(this.§@"1§.data.energy.q,this.§@"1§.data.energy.p,this.§@"1§.data.energy.t,this.§@"1§.data.energy.m,_loc1_);
      }
      
      protected function §5Y§() : void
      {
         §7"1§(§?!$§).§4"-§ = new §!!K§();
         §7"1§(§?!$§).§4"-§.§9"h§(this.§@"1§.data);
      }
      
      protected function §=#!§() : void
      {
         §7"1§(§?!$§).§=#1§ = new §,N§(§7"1§(§?!$§).§#"_§.accessToken,§7"1§(§?!$§).§#"_§.id);
      }
      
      protected function §-!1§() : void
      {
         var _loc1_:Object = null;
         §7"1§(§?!$§).§1z§ = new §[!s§(this.§@"1§.data.tournament,§7"1§(§?!$§).§#"_§.id,§7"1§(§?!$§).§#"_§.name);
         if(this.§@"1§.data.tournament.lastResult)
         {
            for each(_loc1_ in this.§@"1§.data.tournament.lastResult.prizes)
            {
               if(_loc1_.itemId == "StarCoin")
               {
                  §7"1§(§?!$§).§&!w§.§?c§(§7"1§(§?!$§).§&!w§.starCoins - _loc1_.quantity);
               }
            }
         }
      }
      
      protected function §4#7§() : void
      {
         §7"1§(§?!$§).§ "_§ = new §>!Y§(this.§@"1§.data.requests.gifts,this.§@"1§.data.requests.inviteGifts,this.§@"1§.data.requests.brags,this.§@"1§.data.requests.challenges,this.§@"1§.data.requests.requestsForHelp,this.§@"1§.data.requests.dailyRewards);
      }
      
      protected function §6"_§() : void
      {
         this.§;!U§();
         this.§&!%§();
         this.§]"o§();
         this.§?!i§();
         this.§ "r§();
         this.§2!3§();
         this.§##$§();
         this.§`+§();
         this.§<!y§();
         this.§7"I§();
         this.§5Y§();
         this.§=#!§();
         this.§7"y§();
         this.§=,§();
         this.§-!1§();
         this.§4#7§();
         this.§'";§();
         §7"1§(§?!$§).§!"H§ = new §;9§();
         this.§!Z§();
      }
      
      protected function §'";§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§@"1§.data.infoText)
         {
            _loc1_ = this.§@"1§.data.infoText.id;
            _loc2_ = this.§@"1§.data.infoText.title;
            _loc3_ = this.§@"1§.data.infoText.message;
            §7"1§(§?!$§).§@J§ = new §!!7§(_loc1_,_loc2_,_loc3_);
         }
      }
      
      override protected function initializeGame() : void
      {
         if(this.§@"1§.data.error)
         {
            throw new Error("Server error of type \'" + this.§@"1§.data.type + "\': \'" + this.§@"1§.data.message + "\'");
         }
         if(this.§@"1§.data.st == undefined)
         {
            throw new Error("Server\'s init function did not return a session token.");
         }
         if(this.§@"1§.data.user.userId != (§[t§("userId") || this.§2O§))
         {
            throw new Error("User IDs don\'t match.",§8#&§.§?"g§);
         }
         super.initializeGame();
         this.§6"_§();
         this.§#"n§();
         resize(true);
         canvas.stage.setChildIndex(§%"H§,canvas.stage.numChildren - 1);
      }
      
      override protected function initializeUserProgress() : void
      {
      }
      
      protected function §;!U§() : void
      {
         §?!$§.userProgress = new §""r§(SERVER_ROOT,§'""§,this.§@"1§.data.state,this.§@"1§.data.st,this.§@"1§.data.user);
      }
      
      override protected function initializeStates() : void
      {
         §^!%§(new §;?§(§'""§,§>"-§(§7W§),§1!L§,false));
         §^!%§(new §8"s§(§'""§,§1!L§,false));
         §^!%§(new §8?§(§'""§,§1!L§,false));
         §^!%§(new §-"B§(§'""§,§1!L§,false));
         §^!%§(new §#V§(§'""§,§1!L§,false));
         §^!%§(new §?!W§(§'""§,§1!L§,false));
         §^!%§(new §=!h§(§'""§,§1!L§,false));
         §^!%§(new §0!F§(§'""§,§1!L§,false));
         §^!%§(new §#"L§(§'""§,§1!L§,false));
         §^!%§(new §>"l§(§'""§,§1!L§,false));
         §^!%§(new §["?§(§'""§,§1!L§,false));
         §^!%§(new §4!T§(§'""§,§1!L§,false));
         §^!%§(new §`k§(§'""§,§1!L§,false));
         §^!%§(new §6!W§(§'""§,§1!L§,false));
         §^!%§(new §0h§(§'""§,§1!L§,false));
         §^!%§(new §#!0§(§'""§,§1!L§,false));
         §^!%§(new §-0§(§'""§,§>"-§(§7W§),§1!L§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §?<§(null);
         }
      }
      
      override protected function initStateLoad() : §3!?§
      {
         if(!§<C§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §]!s§.§%"§("assetsUrl");
            }
         }
         return new §>#!§(§1!L§,this.§@"1§,true,§3!?§.§-!U§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §!>§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §7"V§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §%L§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      private function §7"y§() : void
      {
         §7"1§(§?!$§).§;a§ = new §@!D§(SERVER_ROOT,this.§@"1§.data.user.userId,this.§@"1§.data.user.name,this.§@"1§.data.friends);
      }
      
      private function §#"n§() : void
      {
         this.§ ",§ = new §5"y§(stage.stageHeight,§7"1§(§?!$§).§;a§,this.§@"1§.data.user.userId,§7"1§(§?!$§),§ #$§(§'""§));
         this.§ ",§.showTotalScores();
         this.§ ",§.x = stage.stageWidth - 180;
         canvas.stage.addChild(this.§ ",§);
         this.§ ",§.addEventListener(§%-§.FULL_SCREEN,this.§%!"§);
         this.§ ",§.addEventListener(§%-§.§9!l§,this.§3!v§);
         this.§ ",§.addEventListener(§%-§.§5#&§,this.§?##§);
         this.§ ",§.addEventListener(§%-§.§-7§,this.§?##§);
         this.§ ",§.addEventListener(§%-§.§>!Z§,this.§-#'§);
         this.§ ",§.addEventListener(§%-§.INBOX,this.§9A§);
         this.§ ",§.addEventListener(§%-§.SHOP,this.§`"Z§);
         this.§ ",§.addEventListener(§%-§.§7"c§,this.§0-§);
         this.§ ",§.addEventListener(§%-§.§!"k§,this.§]"N§);
         this.§ ",§.addEventListener(§%-§.§""n§,this.§9!?§);
         §?<§(null);
      }
      
      public function get §?"T§() : §5"y§
      {
         return this.§ ",§;
      }
      
      override protected function initializeLevelMain() : §;!E§
      {
         return new §0F§(stage,§7W§,§+!X§,§'""§);
      }
      
      override protected function getAssetMap() : XML
      {
         return §]"9§.§#§(§;#-§);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §]!s§.§+#$§(§`!<§.§?z§,_loc1_.toString(),_loc1_);
         super.setFirstGameState();
         §`0§(§=q§.§-!U§);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         super.onGraphicsInitialized(param1);
         §`0§(§["?§.§-!U§);
      }
      
      public function §+"#§() : void
      {
         §`0§(§'!V§.§-!U§);
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:int = param1;
         if(this.§ ",§)
         {
            param1 -= 180;
            this.§ ",§.x = param1;
            this.§ ",§.height = param2;
         }
         super.resizeViews(param1,param2);
         §?"Q§.setViewSize(_loc3_,param2);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §]"9§.§#§(§0#$§);
         §@h§.§%#2§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getPopupData() : XML
      {
         var _loc1_:XML = super.getPopupData();
         var _loc2_:XML = §]"9§.§#§(§"@§);
         §@h§.§%#2§(_loc2_,_loc1_,["Popups"],true);
         return _loc1_;
      }
      
      override protected function loadBackgrounds() : void
      {
         super.loadBackgrounds();
         §44§.loadBackgroundsLua(this.§ !D§());
      }
      
      protected function § !D§() : String
      {
         return §<e§.§#§(§0#5§);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §7"V§.replace("{svn_version}","local dev build") + " BETA, " + "Server: " + §%L§;
      }
      
      private function §1"m§(param1:ErrorEvent) : void
      {
         throw new Error(param1.toString());
      }
      
      private function §%!"§(param1:§%-§) : void
      {
         §^L§();
      }
      
      private function §3!v§(param1:§%-§) : void
      {
         var mySO:SharedObject = null;
         var e:§%-§ = param1;
         §"W§(!§-!;§());
         if(§-!;§())
         {
            if(§?!D§() == StatePlay.§-!U§)
            {
               §<!J§.§=!%§.background.playAmbientSound();
            }
            else if(§?!D§() == §'!V§.§-!U§ || §?!D§() == §!K§.§-!U§ || §?!D§() == §>"+§.§-!U§)
            {
               §4"#§.singleton.playThemeMusic();
            }
         }
         this.§ ",§.§"" §();
         try
         {
            mySO = SharedObject.getLocal(§2"T§,§8z§);
            mySO.data.useSounds = §1#!§;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §4!O§(param1:String) : void
      {
         param1 = §'""§.getValidLevelId(param1);
         §'""§.loadLevel(param1);
         if(param1.indexOf("2000-") > -1)
         {
            §`0§(§#!0§.§-!U§);
         }
         else
         {
            §`0§(StateCutScene.§-!U§);
         }
      }
      
      public function §9F§(param1:String, param2:Boolean) : void
      {
         var _loc3_:int = §?!$§.userProgress.getScoreForLevel(param1);
         var _loc4_:int = §?!$§.userProgress.getStarsForLevel(param1);
         var _loc5_:int = §?!$§.userProgress.getEagleScoreForLevel(param1);
         var _loc6_:int = this.§3!4§(param1,_loc3_,_loc4_,_loc5_,param2);
         if(param2)
         {
            §7"1§(§?!$§).§1z§.§0!;§(param1,_loc6_,_loc3_);
            §7"1§(§?!$§).§1z§.§9"K§ = true;
         }
         else if(_loc6_)
         {
            §""r§(§?!$§.userProgress).§ "C§(param1,_loc6_);
         }
      }
      
      override public function playThemeMusic() : void
      {
         var _loc1_:§02§ = §throw§(§4"#§.singleton).§8"8§();
         _loc1_.§]"-§(§7"u§.§3!V§,false);
      }
      
      override public function stopThemeMusic() : void
      {
         var _loc1_:§02§ = §throw§(§4"#§.singleton).§8"8§();
         _loc1_.§0!7§();
         _loc1_.§5"]§();
      }
      
      private function §3!4§(param1:String, param2:int, param3:int, param4:int = 0, param5:Boolean = false) : int
      {
         var _loc8_:§-"[§ = null;
         var _loc9_:int = 0;
         var _loc6_:Array = [];
         var _loc7_:int = this.§?"T§.§%!0§(param1,param2,param3,param4,_loc6_,param5);
         for each(_loc8_ in _loc6_)
         {
            _loc9_ = _loc8_.§5!b§ - 1;
            §]!s§.§2"d§(_loc9_.toString());
         }
         return _loc7_;
      }
      
      private function §?##§(param1:§%-§) : void
      {
         var _loc2_:§[l§ = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:§[!b§ = null;
         var _loc5_:§!#2§ = null;
         if(param1.type == §%-§.§-7§)
         {
            _loc2_ = §4"#§.singleton.tutorialPopupManager;
            _loc3_ = _loc2_.§9"Y§.getTutorialNamesForMapping(§7?§.§%%§);
            _loc4_ = §7"1§(§4"#§.singleton.dataModel).§@!K§;
            for each(_loc5_ in _loc4_.§<!h§.§2d§)
            {
               if(!(_loc5_.§,!8§ == §3"x§.§<!j§ && §'""§.getCurrentEpisodeModel().name == "2000"))
               {
                  if(_loc4_.§6"0§(_loc5_.§1!b§) > 0)
                  {
                     _loc3_.unshift(_loc5_.§1!b§);
                  }
               }
            }
            §?!s§.openMultipleTutorialPopups(_loc3_,true,true,true,true);
         }
         else
         {
            if(§?!D§() != §>"+§.§-!U§)
            {
               §`0§(§>"+§.§-!U§);
            }
            §?"Q§.closePopup(-1,true,false,true);
         }
      }
      
      private function §-#'§(param1:§%-§) : void
      {
         var _loc2_:§3!§ = new §^"z§(§^!S§.§'"c§,§2!s§.TOP,§^"z§.§&E§);
         §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true);
         §]!s§.§1"Z§();
      }
      
      private function §9A§(param1:§%-§) : void
      {
         var _loc2_:§3!§ = new §6!M§(§1"o§(§'""§),§^!S§.§'"c§,§2!s§.TOP);
         §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      private function §`"Z§(param1:§%-§) : void
      {
         §4#%§(§4"#§.singleton.popupManager).§6"Z§();
      }
      
      private function §0-§(param1:§%-§) : void
      {
         var _loc2_:§3!§ = new §^"z§(§^!S§.§'"c§,§2!s§.TOP,§^"z§.§?!1§);
         §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      private function §]"N§(param1:§%-§) : void
      {
         var _loc2_:§3!§ = §^!Q§.§>"[§(§^!S§.§'"c§,§2!s§.TOP,§^!Q§.§+! §);
         §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      private function §9!?§(param1:§%-§) : void
      {
         §4#%§(§4"#§.singleton.popupManager).§6"Z§(§["W§.§%!m§);
      }
      
      private function §"a§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §7"1§(dataModel).§6!I§.§2!P§(_loc2_);
         }
      }
      
      private function getSessionToken() : String
      {
         return §`?§.§+!B§;
      }
      
      override public function externalPause() : void
      {
         super.externalPause();
         §]!s§.§@"P§();
      }
      
      override public function externalResume() : void
      {
         super.externalResume();
         §]!s§.§4"i§();
      }
      
      private function §!Z§() : void
      {
         var _loc1_:§7"1§ = §7"1§(§?!$§);
         if(_loc1_.§ "_§.§#!N§)
         {
            §]!s§.§>X§(§]!s§.§#"l§,_loc1_.§&!w§.starCoins);
            if(!_loc1_.§9"$§.§&!3§)
            {
               §]!s§.§>X§(§]!s§.§ $§,_loc1_.§9"$§.energy);
               §]!s§.§>X§(§]!s§.§""3§,_loc1_.§@!K§.§6"0§(§[!b§.§9!m§));
            }
            §]!s§.§>X§(§]!s§.§,w§,_loc1_.§@!K§.§6"0§(§[!b§.§]!F§));
            §]!s§.§>X§(§]!s§.§6"H§,_loc1_.§@!K§.§6"0§(§[!b§.§5n§));
            §]!s§.§>X§(§]!s§.§?_§,_loc1_.§@!K§.§6"0§(§[!b§.§+!y§));
            §]!s§.§>X§(§]!s§.§`!b§,_loc1_.§@!K§.§6"0§(§[!b§.§]!&§));
         }
      }
      
      private function §&W§(param1:String) : void
      {
         throw new Error("Error from external interface:\n\'" + param1 + "\'");
      }
   }
}
