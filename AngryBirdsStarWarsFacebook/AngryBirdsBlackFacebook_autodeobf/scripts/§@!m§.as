package
{
   import § "4§.§4!?§;
   import § "4§.§7q§;
   import § §.§3Q§;
   import § §.§<!`§;
   import §!"e§.§9#B§;
   import §!"e§.§`"W§;
   import §"k§.§5"2§;
   import §"k§.§[!7§;
   import §#!'§.§&G§;
   import §#!'§.§+!D§;
   import §#!'§.§6"]§;
   import §#!'§.§>"A§;
   import §+!!§.§9"i§;
   import §,"N§.§""t§;
   import §,"N§.§%"[§;
   import §,"N§.§1t§;
   import §,"N§.§6"w§;
   import §,"N§.§8"3§;
   import §,"N§.§<!9§;
   import §,"N§.§=!1§;
   import §,"N§.§=o§;
   import §,"N§.§?v§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §,"N§.§^"o§;
   import §,"N§.§`#&§;
   import §0!=§.§'"]§;
   import §1!i§.§,#_§;
   import §1!i§.§1"9§;
   import §1!i§.§8"x§;
   import §1!i§.§>!%§;
   import §1#R§.§+#[§;
   import §1f§.§#!8§;
   import §2!f§.§]!J§;
   import §2"§.§"u§;
   import §2"Y§.§>"X§;
   import §2d§.§3"_§;
   import §4#!§.§ t§;
   import §5§.§,!l§;
   import §5§.§0"d§;
   import §5§.§0§;
   import §5§.§8"`§;
   import §5§.§`L§;
   import §5t§.§>"p§;
   import §5t§.§]"Y§;
   import §6!H§.§&"f§;
   import §6!H§.§,#E§;
   import §6!H§.§8!r§;
   import §7"a§.§@4§;
   import §7#W§.§'!O§;
   import §7#W§.§2&§;
   import §7#W§.§2O§;
   import §7#W§.§6!W§;
   import §7#W§.§8!]§;
   import §7#W§.§9!b§;
   import §8#I§.§ q§;
   import §9"M§.§+"T§;
   import §<"c§.§ !l§;
   import §<"c§.§"C§;
   import §<"c§.§'!'§;
   import §<"c§.§+#?§;
   import §<"c§.§,"A§;
   import §<"c§.§-"=§;
   import §<"c§.§0!A§;
   import §<"c§.§4!7§;
   import §<"c§.§6"k§;
   import §<"c§.§>#Y§;
   import §<"c§.§?!W§;
   import §<"c§.§?#N§;
   import §<"c§.StateCutScene;
   import §<"c§.StatePlay;
   import §<"c§.§^#_§;
   import §<"c§.§`!O§;
   import §="2§.§@!a§;
   import §="V§.§""v§;
   import §?"9§.§5!G§;
   import §?m§.§+"2§;
   import §?m§.§,"X§;
   import §?m§.§[#;§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §[#+§.§<k§;
   import §[k§.§ "l§;
   import §]Q§.§&#P§;
   import §^#>§.§#_§;
   import §^#>§.§8"f§;
   import §`!o§.§+"k§;
   import com.angrybirds.§,!q§;
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
   
   public class §@!m§ extends § C§
   {
      
      public static const §`"$§:String = "r644";
      
      public static const §-t§:String = "AngryBirdsStarWarsFacebookSettings";
      
      public static const §5"b§:String = "/";
      
      protected static var §2"M§:Class = §[#]§;
      
      protected static var §;G§:Class = §`x§;
      
      protected static var §'1§:Class = §9#D§;
      
      protected static var §"#T§:Class = §"#3§;
      
      protected static var §%!z§:Class = §2"k§;
       
      
      private var §9#§:§>"A§;
      
      private var §[#>§:§<k§;
      
      private var §<#?§:§+"k§;
      
      private var §[X§:§#!8§;
      
      private var §9"Z§:§+!D§;
      
      private var §6![§:String;
      
      private var §3"4§:String;
      
      public function §@!m§(param1:§'"]§, param2:String, param3:String)
      {
         var _loc4_:Array = null;
         this.§9#§ = new §>"A§(param1.loaderInfo.uncaughtErrorEvents,§`"$§);
         this.§-C§();
         _loc4_ = String(new §"#T§()).split("-");
         this.§6![§ = _loc4_[0];
         this.§3"4§ = _loc4_[1];
         §3"_§.§2#9§ = true;
         §>!%§.enabled = true;
         §6"]§.§2!L§(§>!%§.§-#+§);
         super(param1,param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]",param1.stage.loaderInfo.parameters.serverRoot || "http://head-dot-angrybirds-black-dev.appspot.com");
         §""v§.addCallback("getSessionToken",this.getSessionToken);
         §""v§.addCallback("invitationBatchSent",this.§`!Y§);
         §""v§.addCallback("error",this.§?"A§);
         this.§9#§.§;y§(§+!b§);
         this.§9#§.§@#Z§();
         §&G§.accessToken = this.accessToken;
      }
      
      public function get § "g§() : §+!D§
      {
         return this.§9"Z§;
      }
      
      private function §-C§() : void
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
      }
      
      private function get accessToken() : String
      {
         return §&"4§("accessToken") || this.§3"4§;
      }
      
      private function §switch§() : void
      {
         var _loc1_:String = §&"4§("userId") || this.§6![§;
         if(!§<N§)
         {
            if(!_loc1_)
            {
               §6"]§.§9"=§("userId");
            }
            if(!this.accessToken)
            {
               §6"]§.§9"=§("accessToken");
            }
            if(!§&"4§("tokenExpiresIn"))
            {
               §6"]§.§9"=§("tokenExpiresIn");
            }
         }
         if(!_loc1_)
         {
            throw new Error("No facebook user ID",§8"x§.§=!W§);
         }
         this.§<#?§ = new §+"k§(new URLRequest(SERVER_ROOT + "/init/" + _loc1_ + "/" + this.accessToken + "/" + (§&"4§("tokenExpiresIn") || "7012") + "/" + (new Date().timezoneOffset / 60).toString() + "/" + §&"4§("acquisitionChannel")));
      }
      
      override protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§switch§();
         super.init(param1,param2,param3);
      }
      
      override protected function initialize() : void
      {
         var mySO:SharedObject = null;
         super.initialize();
         this.§'"9§();
         §7!A§.addEventListener(Event.INIT,this.§#"Q§);
         §7!A§.addEventListener(Event.COMPLETE,this.§"##§);
         §4#,§.localizationMapping = new §+"T§("en");
         this.§%#R§();
         var serverVersion:String = canvas.stage.loaderInfo.parameters.serverVersion || "";
         this.§9"Z§ = new §+!D§(serverVersion);
         this.§9"Z§.start();
         var soundsEnabled:Boolean = true;
         try
         {
            mySO = SharedObject.getLocal(§-t§,§5"b§);
            if(mySO.data.useSounds == undefined)
            {
               mySO.data.useSounds = soundsEnabled;
            }
            soundsEnabled = mySO.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §2!>§(soundsEnabled);
      }
      
      override protected function setupPopupManager() : void
      {
         §`7§ = new MovieClip();
         §["A§.stage.addChild(§`7§);
         §5M§ = new §9#B§(§`7§,§4#,§,this);
         §5M§.addEventListener(§+#[§.OPEN,§'#K§);
         §5M§.addEventListener(§+#[§.CLOSE,§3!I§);
         §5M§.addEventListener(§ t§.§]"]§,§'#K§);
         §5M§.addEventListener(§ t§.END,§3!I§);
         §8z§ = new §`L§(§5M§,§4#J§,§`"W§.§+v§,new §8"`§(),new §0"d§(),new §,!l§());
      }
      
      override public function resumeEngine() : void
      {
         var _loc1_:Boolean = §9#B§(§5M§).§""n§();
         var _loc2_:Boolean = §7!A§.isExternallyPaused();
         var _loc3_:Boolean = §9#B§(§5M§).§2"r§();
         if(!_loc1_ && !_loc2_ && !§-2§ && !_loc3_)
         {
            §,!q§.resume();
         }
      }
      
      protected function §%#R§() : void
      {
         this.§[#>§ = new §<k§(new §@!a§());
      }
      
      override protected function initializeLevelManager() : §+"2§
      {
         return new §[#;§();
      }
      
      public function final() : §@!a§
      {
         return this.§[#>§.§`#I§;
      }
      
      protected function §#"Q§(param1:Event) : void
      {
         §@4§.§6"s§(false);
      }
      
      protected function §"##§(param1:Event) : void
      {
         §@4§.§6"s§(true);
      }
      
      override protected function initializeDataModel() : void
      {
         §4#J§ = new §@#B§();
      }
      
      protected function §0"+§() : void
      {
         var _loc1_:§5!G§ = new §5!G§(§4#;§.SERVER_ROOT);
         §@#B§(§4#J§).§1!f§ = new §""t§(_loc1_);
      }
      
      protected function §+a§() : void
      {
         var _loc2_:Object = null;
         var _loc1_:§6"w§ = §@#B§(§4#J§).§]"<§ = new §6"w§();
         for each(_loc2_ in this.§<#?§.data.items)
         {
            _loc1_.§#!+§(_loc2_.i,_loc2_.q);
         }
         _loc1_.§4x§ = true;
      }
      
      protected function §"d§() : void
      {
         var _loc1_:§=!1§ = §@#B§(§4#J§).§;!A§ = new §=!1§("BlackFacebookSettings-" + this.§<#?§.data.userId);
         _loc1_.§2"x§(this.§<#?§.data.excludedUserIds);
         _loc1_.§>E§(this.§<#?§.data.deauthorizedUserIds);
      }
      
      protected function §;!V§() : void
      {
         §@#B§(§4#J§).§`"N§ = new §`#&§(this.accessToken);
      }
      
      protected function §&!e§() : void
      {
         var _loc1_:§4!?§ = §@#B§(§4#J§).§9!N§ = new §4!?§();
         _loc1_.name = this.§<#?§.data.user.name;
         _loc1_.lastName = this.§<#?§.data.user.lastName;
         _loc1_.id = this.§<#?§.data.user.userId;
         _loc1_.accessToken = this.accessToken;
      }
      
      protected function §@"O§() : void
      {
         var _loc1_:§&"f§ = §@#B§(§4#J§).birdLevels = new §&"f§();
         _loc1_.update(new §,#_§(this.§<#?§.data.birdLevels));
      }
      
      protected function §&"<§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:int = 0;
         var _loc2_:§,#_§ = §@#B§(§4#J§).§ #W§ = new §,#_§();
         for each(_loc3_ in this.§<#?§.data.friends.items)
         {
            if(!_loc3_.i)
            {
               _loc2_[_loc3_.u] = _loc3_.n + " " + _loc3_.l;
               _loc1_++;
            }
         }
         if(_loc1_ >= 1)
         {
            §6"]§.§1w§(_loc1_ - 1);
         }
      }
      
      protected function §7!W§() : void
      {
         var _loc2_:String = null;
         var _loc1_:§,#_§ = §@#B§(§4#J§).abfFriends = new §,#_§();
         for each(_loc2_ in this.§<#?§.data.friends.abfFriends)
         {
            _loc1_[_loc2_] = _loc2_;
         }
      }
      
      protected function §!4§() : void
      {
         §@#B§(§4#J§).§`!W§ = new §=o§(this.§<#?§.data.starCoins);
      }
      
      protected function §#!R§() : void
      {
         var _loc1_:§@#B§ = §@#B§(§4#J§);
         _loc1_.§^"J§ = new §?v§(this.§<#?§.data.energy.q,this.§<#?§.data.energy.p,this.§<#?§.data.energy.t,this.§<#?§.data.energy.m,_loc1_);
      }
      
      protected function §!";§() : void
      {
         §@#B§(§4#J§).§4"Z§ = new §<!9§();
         §@#B§(§4#J§).§4"Z§.§7"R§(this.§<#?§.data);
      }
      
      protected function §["e§() : void
      {
         §@#B§(§4#J§).§&"9§ = new §%"[§(§@#B§(§4#J§).§9!N§.accessToken,§@#B§(§4#J§).§9!N§.id);
      }
      
      protected function §?L§() : void
      {
         var _loc1_:Object = null;
         §@#B§(§4#J§).§!!C§ = new §@"b§(this.§<#?§.data.tournament,§@#B§(§4#J§).§9!N§.id,§@#B§(§4#J§).§9!N§.name);
         if(this.§<#?§.data.tournament.lastResult)
         {
            for each(_loc1_ in this.§<#?§.data.tournament.lastResult.prizes)
            {
               if(_loc1_.itemId == "StarCoin")
               {
                  §@#B§(§4#J§).§`!W§.§@w§(§@#B§(§4#J§).§`!W§.starCoins - _loc1_.quantity);
               }
            }
         }
      }
      
      protected function §'!@§() : void
      {
         §@#B§(§4#J§).§6!G§ = new §^"o§(this.§<#?§.data.requests.gifts,this.§<#?§.data.requests.inviteGifts,this.§<#?§.data.requests.brags,this.§<#?§.data.requests.challenges,this.§<#?§.data.requests.requestsForHelp,this.§<#?§.data.requests.dailyRewards);
      }
      
      protected function §7^§() : void
      {
         this.§'!y§();
         this.§&!e§();
         this.§"d§();
         this.§;!V§();
         this.§+a§();
         this.§@"O§();
         this.§&"<§();
         this.§7!W§();
         this.§!4§();
         this.§#!R§();
         this.§!";§();
         this.§["e§();
         this.§1!E§();
         this.§0"+§();
         this.§?L§();
         this.§'!@§();
         this.§62§();
         §@#B§(§4#J§).§%!?§ = new §8"3§();
         this.§=!P§();
      }
      
      protected function §62§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§<#?§.data.infoText)
         {
            _loc1_ = this.§<#?§.data.infoText.id;
            _loc2_ = this.§<#?§.data.infoText.title;
            _loc3_ = this.§<#?§.data.infoText.message;
            §@#B§(§4#J§).§'R§ = new §1t§(_loc1_,_loc2_,_loc3_);
         }
      }
      
      override protected function initializeGame() : void
      {
         if(this.§<#?§.data.error)
         {
            throw new Error("Server error of type \'" + this.§<#?§.data.type + "\': \'" + this.§<#?§.data.message + "\'");
         }
         if(this.§<#?§.data.st == undefined)
         {
            throw new Error("Server\'s init function did not return a session token.");
         }
         if(this.§<#?§.data.user.userId != (§&"4§("userId") || this.§6![§))
         {
            throw new Error("User IDs don\'t match.",§8"x§.§20§);
         }
         super.initializeGame();
         this.§7^§();
         this.§84§();
         resize(true);
         canvas.stage.setChildIndex(§`7§,canvas.stage.numChildren - 1);
      }
      
      override protected function initializeUserProgress() : void
      {
      }
      
      protected function §'!y§() : void
      {
         §4#J§.userProgress = new §7q§(SERVER_ROOT,§+!b§,this.§<#?§.data.state,this.§<#?§.data.st,this.§<#?§.data.user);
      }
      
      override protected function initializeStates() : void
      {
         §7![§(new §6"k§(§+!b§,§>"X§(§?4§),§4#,§,false));
         §7![§(new §-"=§(§+!b§,§4#,§,false));
         §7![§(new §^#_§(§+!b§,§4#,§,false));
         §7![§(new §?#N§(§+!b§,§4#,§,false));
         §7![§(new §,"A§(§+!b§,§4#,§,false));
         §7![§(new §?!W§(§+!b§,§4#,§,false));
         §7![§(new §>#Y§(§+!b§,§4#,§,false));
         §7![§(new §'!'§(§+!b§,§4#,§,false));
         §7![§(new § !l§(§+!b§,§4#,§,false));
         §7![§(new §0!A§(§+!b§,§4#,§,false));
         §7![§(new §4!7§(§+!b§,§4#,§,false));
         §7![§(new §6!W§(§+!b§,§4#,§,false));
         §7![§(new §'!O§(§+!b§,§4#,§,false));
         §7![§(new §9!b§(§+!b§,§4#,§,false));
         §7![§(new §2&§(§+!b§,§4#,§,false));
         §7![§(new §8!]§(§+!b§,§4#,§,false));
         §7![§(new §2O§(§+!b§,§>"X§(§?4§),§4#,§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §=_§(null);
         }
      }
      
      override protected function initStateLoad() : §3Q§
      {
         if(!§<N§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §6"]§.§9"=§("assetsUrl");
            }
         }
         return new § "l§(§4#,§,this.§<#?§,true,§3Q§.§^!7§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §'"9§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §`"$§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §<!&§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      private function §1!E§() : void
      {
         §@#B§(§4#J§).§0s§ = new §[!7§(SERVER_ROOT,this.§<#?§.data.user.userId,this.§<#?§.data.user.name,this.§<#?§.data.friends);
      }
      
      private function §84§() : void
      {
         this.§[X§ = new §#!8§(stage.stageHeight,§@#B§(§4#J§).§0s§,this.§<#?§.data.user.userId,§@#B§(§4#J§),§,"X§(§+!b§));
         this.§[X§.showTotalScores();
         this.§[X§.x = stage.stageWidth - 180;
         canvas.stage.addChild(this.§[X§);
         this.§[X§.addEventListener(§&#P§.FULL_SCREEN,this.§0!c§);
         this.§[X§.addEventListener(§&#P§.§#!a§,this.§]##§);
         this.§[X§.addEventListener(§&#P§.INFO,this.§]![§);
         this.§[X§.addEventListener(§&#P§.§;!n§,this.§]![§);
         this.§[X§.addEventListener(§&#P§.§<B§,this.§[#Q§);
         this.§[X§.addEventListener(§&#P§.INBOX,this.§&C§);
         this.§[X§.addEventListener(§&#P§.SHOP,this.§>!D§);
         this.§[X§.addEventListener(§&#P§.§?#+§,this.§[,§);
         this.§[X§.addEventListener(§&#P§.§>"n§,this.§9#P§);
         this.§[X§.addEventListener(§&#P§.§;o§,this.§3!m§);
         §=_§(null);
      }
      
      public function get §""s§() : §#!8§
      {
         return this.§[X§;
      }
      
      override protected function initializeLevelMain() : §#_§
      {
         return new §8"f§(stage,§?4§,§?"1§,§+!b§);
      }
      
      override protected function getAssetMap() : XML
      {
         return §>"p§.§ !Q§(§2"M§);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §6"]§.§2!L§(§>!%§.§,F§,_loc1_.toString(),_loc1_);
         super.setFirstGameState();
         § g§(§<!`§.§^!7§);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         super.onGraphicsInitialized(param1);
         § g§(§4!7§.§^!7§);
      }
      
      public function §!g§() : void
      {
         § g§(§"C§.§^!7§);
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:int = param1;
         if(this.§[X§)
         {
            param1 -= 180;
            this.§[X§.x = param1;
            this.§[X§.height = param2;
         }
         super.resizeViews(param1,param2);
         §5M§.setViewSize(_loc3_,param2);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §>"p§.§ !Q§(§;G§);
         §1"9§.§;!P§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getPopupData() : XML
      {
         var _loc1_:XML = super.getPopupData();
         var _loc2_:XML = §>"p§.§ !Q§(§'1§);
         §1"9§.§;!P§(_loc2_,_loc1_,["Popups"],true);
         return _loc1_;
      }
      
      override protected function loadBackgrounds() : void
      {
         super.loadBackgrounds();
         §"!j§.loadBackgroundsLua(this.§2!]§());
      }
      
      protected function §2!]§() : String
      {
         return §]"Y§.§ !Q§(§%!z§);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §`"$§.replace("{svn_version}","local dev build") + " BETA, " + "Server: " + §<!&§;
      }
      
      private function §"_§(param1:ErrorEvent) : void
      {
         throw new Error(param1.toString());
      }
      
      private function §0!c§(param1:§&#P§) : void
      {
         §5"q§();
      }
      
      private function §]##§(param1:§&#P§) : void
      {
         var mySO:SharedObject = null;
         var e:§&#P§ = param1;
         §2!>§(!§]q§());
         if(§]q§())
         {
            if(§]?§() == StatePlay.§^!7§)
            {
               §,!q§.§9!,§.background.playAmbientSound();
            }
            else if(§]?§() == §"C§.§^!7§ || §]?§() == §+#?§.§^!7§ || §]?§() == §`!O§.§^!7§)
            {
               §4#;§.singleton.playThemeMusic();
            }
         }
         this.§[X§.§&_§();
         try
         {
            mySO = SharedObject.getLocal(§-t§,§5"b§);
            mySO.data.useSounds = §3"G§;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §%"#§(param1:String) : void
      {
         param1 = §+!b§.getValidLevelId(param1);
         §+!b§.loadLevel(param1);
         if(param1.indexOf("2000-") > -1)
         {
            § g§(§8!]§.§^!7§);
         }
         else
         {
            § g§(StateCutScene.§^!7§);
         }
      }
      
      public function §1g§(param1:String, param2:Boolean) : void
      {
         var _loc3_:int = §4#J§.userProgress.getScoreForLevel(param1);
         var _loc4_:int = §4#J§.userProgress.getStarsForLevel(param1);
         var _loc5_:int = §4#J§.userProgress.getEagleScoreForLevel(param1);
         var _loc6_:int = this.§6"'§(param1,_loc3_,_loc4_,_loc5_,param2);
         if(param2)
         {
            §@#B§(§4#J§).§!!C§.§3!n§(param1,_loc6_,_loc3_);
            §@#B§(§4#J§).§!!C§.§!!e§ = true;
         }
         else if(_loc6_)
         {
            §7q§(§4#J§.userProgress).§+!W§(param1,_loc6_);
         }
      }
      
      override public function playThemeMusic() : void
      {
         var _loc1_:§@!a§ = §@!m§(§4#;§.singleton).final();
         _loc1_.§ c§(§<k§.§<#a§,false);
      }
      
      override public function stopThemeMusic() : void
      {
         var _loc1_:§@!a§ = §@!m§(§4#;§.singleton).final();
         _loc1_.§2!Z§();
         _loc1_.§!!?§();
      }
      
      private function §6"'§(param1:String, param2:int, param3:int, param4:int = 0, param5:Boolean = false) : int
      {
         var _loc8_:§5"2§ = null;
         var _loc9_:int = 0;
         var _loc6_:Array = [];
         var _loc7_:int = this.§""s§.§="_§(param1,param2,param3,param4,_loc6_,param5);
         for each(_loc8_ in _loc6_)
         {
            _loc9_ = _loc8_.§9!<§ - 1;
            §6"]§.§'";§(_loc9_.toString());
         }
         return _loc7_;
      }
      
      private function §]![§(param1:§&#P§) : void
      {
         var _loc2_:§0#2§ = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:§6"w§ = null;
         var _loc5_:§8!r§ = null;
         if(param1.type == §&#P§.§;!n§)
         {
            _loc2_ = §4#;§.singleton.tutorialPopupManager;
            _loc3_ = _loc2_.§>?§.getTutorialNamesForMapping(§0"d§.§=!7§);
            _loc4_ = §@#B§(§4#;§.singleton.dataModel).§]"<§;
            for each(_loc5_ in _loc4_.§;#?§.§^"'§)
            {
               if(!(_loc5_.§7!%§ == §,#E§.§'"d§ && §+!b§.getCurrentEpisodeModel().name == "2000"))
               {
                  if(_loc4_.§8#K§(_loc5_.§="A§) > 0)
                  {
                     _loc3_.unshift(_loc5_.§="A§);
                  }
               }
            }
            §8z§.openMultipleTutorialPopups(_loc3_,true,true,true,true);
         }
         else
         {
            if(§]?§() != §`!O§.§^!7§)
            {
               § g§(§`!O§.§^!7§);
            }
            §5M§.closePopup(-1,true,false,true);
         }
      }
      
      private function §[#Q§(param1:§&#P§) : void
      {
         var _loc2_:§[!j§ = new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§<s§);
         §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
         §6"]§.§&"e§();
      }
      
      private function §&C§(param1:§&#P§) : void
      {
         var _loc2_:§[!j§ = new §"u§(§[#;§(§+!b§),§`"W§.§+v§,§+5§.TOP);
         §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      private function §>!D§(param1:§&#P§) : void
      {
         §9#B§(§4#;§.singleton.popupManager).§@"3§();
      }
      
      private function §[,§(param1:§&#P§) : void
      {
         var _loc2_:§[!j§ = new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§%?§);
         §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      private function §9#P§(param1:§&#P§) : void
      {
         var _loc2_:§[!j§ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§8Z§);
         §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      private function §3!m§(param1:§&#P§) : void
      {
         §9#B§(§4#;§.singleton.popupManager).§@"3§(§ q§.§0#"§);
      }
      
      private function §`!Y§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §@#B§(dataModel).§;!A§.§^#K§(_loc2_);
         }
      }
      
      private function getSessionToken() : String
      {
         return §+"k§.§!x§;
      }
      
      override public function externalPause() : void
      {
         super.externalPause();
         §6"]§.§]!y§();
      }
      
      override public function externalResume() : void
      {
         super.externalResume();
         §6"]§.§<!;§();
      }
      
      private function §=!P§() : void
      {
         var _loc1_:§@#B§ = §@#B§(§4#J§);
         if(_loc1_.§6!G§.§7#X§)
         {
            §6"]§.§'5§(§6"]§.§4!2§,_loc1_.§`!W§.starCoins);
            if(!_loc1_.§^"J§.§3!@§)
            {
               §6"]§.§'5§(§6"]§.§6"W§,_loc1_.§^"J§.energy);
               §6"]§.§'5§(§6"]§.§5"^§,_loc1_.§]"<§.§8#K§(§6"w§.§+!G§));
            }
            §6"]§.§'5§(§6"]§.§8##§,_loc1_.§]"<§.§8#K§(§6"w§.§1!m§));
            §6"]§.§'5§(§6"]§.§;b§,_loc1_.§]"<§.§8#K§(§6"w§.§,!4§));
            §6"]§.§'5§(§6"]§.§-#E§,_loc1_.§]"<§.§8#K§(§6"w§.§3"F§));
            §6"]§.§'5§(§6"]§.§#"z§,_loc1_.§]"<§.§8#K§(§6"w§.§ !p§));
         }
      }
      
      private function §?"A§(param1:String) : void
      {
         throw new Error("Error from external interface:\n\'" + param1 + "\'");
      }
   }
}
