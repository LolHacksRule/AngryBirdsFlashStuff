package
{
   import §%!'§.§"!e§;
   import §%!'§.§&x§;
   import §%!'§.§>A§;
   import §&!"§.§`B§;
   import §-!d§.§3";§;
   import §-!d§.§^"I§;
   import §-n§.§!h§;
   import §0!2§.§9!F§;
   import §2!6§.§`"J§;
   import §2L§.§4G§;
   import §2L§.§`W§;
   import §5!G§.§&2§;
   import §5!g§.§<"A§;
   import §6! §.§9!t§;
   import §6! §.§@!k§;
   import §6! §.§@"3§;
   import §6k§.§&A§;
   import §6k§.§,C§;
   import §6k§.§-#§;
   import §6k§.§0§;
   import §6k§.§;!e§;
   import §6k§.§?1§;
   import §6k§.StateLastWeeksTournamentResults;
   import §6k§.§["K§;
   import §8!k§.§4"0§;
   import §<";§.§'y§;
   import §<<§.§=!L§;
   import §=#§.§`!@§;
   import §>s§.§+m§;
   import §>s§.§1I§;
   import §>s§.§34§;
   import §>s§.§;"&§;
   import §>s§.§@c§;
   import §?"§.§'T§;
   import §@",§.§ #§;
   import §@",§.§ J§;
   import §@",§.§!!C§;
   import §@",§.§"]§;
   import §@",§.§&"2§;
   import §@",§.§,!z§;
   import §@",§.§-!V§;
   import §@",§.§0!1§;
   import §@",§.§0"'§;
   import §@",§.§6!B§;
   import §@",§.§6G§;
   import §@",§.§9" §;
   import §@",§.§="3§;
   import §@",§.§@W§;
   import §@",§.StateCutScene;
   import §@",§.StatePlay;
   import §@",§.§[2§;
   import §@",§.§^!f§;
   import §@",§.§`f§;
   import §[">§.§4!j§;
   import §[x§.§?-§;
   import §^!U§.§0! §;
   import §^!U§.§7@§;
   import §^!U§.§8!a§;
   import §^!U§.§default§;
   import §^!o§.§=1§;
   import §`!n§.§-[§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   import com.rovio.assets.LoadingScreen;
   import §each §.§@x§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §,"I§ extends AngryBirdsFP11
   {
      
      public static const §9"!§:String = "r104249";
      
      private static const §=k§:String = "AngryBirdsFacebookSettings";
      
      public static const §<"'§:String = "/";
      
      protected static var §]"J§:Class = §1![§;
      
      protected static var §3!=§:Class = §9"#§;
      
      protected static var §0j§:Class = §^"3§;
      
      protected static var §&!V§:Class = §>";§;
      
      protected static var §>L§:Class = §'Z§;
      
      public static var §?!v§:§4G§;
      
      public static var §&q§:§,"I§;
       
      
      protected var §2!N§:§=!7§;
      
      public var §"4§:§^"I§;
      
      private var §0!H§:§3";§;
      
      private var §&!p§:String = null;
      
      private var §[B§:String = "";
      
      private var §&y§:§0! §;
      
      private var §5!X§:§&x§;
      
      private var §'P§:§@c§;
      
      private var §'!Q§:Sprite;
      
      private var § try§:Boolean = false;
      
      private var §<!D§:Boolean = false;
      
      public function §,"I§(param1:§4"0§)
      {
         this.§&y§ = new §0! §();
         §-!H§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §#"@§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§&!M§ ? "http://head-dot-angrybirds-facebook-dev.appspot.com" : "http://angrybirds-facebook-dev.appspot.com");
         super(param1);
         this.§?!V§();
      }
      
      public static function §%A§() : String
      {
         if((sUserProgress as §'y§).§;#§)
         {
            return §=k§ + "-" + (sUserProgress as §'y§).§;#§;
         }
         return null;
      }
      
      public static function §`"D§(param1:Object) : void
      {
         §?!v§ = new §4G§(§#"@§,(AngryBirdsFP11.sUserProgress as §'y§).§;#§,(AngryBirdsFP11.sUserProgress as §'y§).userName);
         §?!v§.injectData(param1);
         var _loc2_:int = §?!v§.§^M§;
         if(_loc2_ >= 0)
         {
            §"!e§.§^B§(_loc2_);
         }
      }
      
      protected function §?!V§() : void
      {
         var _loc4_:Stage3D = null;
         §>A§.enabled = true;
         var _loc1_:int = 0;
         try
         {
            if(_loc4_ = canvas.stage.stage3Ds[0])
            {
               _loc1_ = 1;
            }
         }
         catch(e:Error)
         {
         }
         if(_loc1_ == 0)
         {
            §"!e§.§[!V§("no-stage3d");
         }
         §&q§ = this;
         §"!e§.§7"9§(§>A§.§[l§);
         var _loc2_:ContextMenu = new ContextMenu();
         _loc2_.hideBuiltInItems();
         canvas.contextMenu = _loc2_;
         canvas.stage.addChild(this.§'!Q§ = new Sprite());
         §`B§.initialize(canvas.stage);
         §`B§.§%4§.addEventListener(§!h§.§>!0§,this.§ B§);
         this.§5!X§ = new §&x§("");
         this.§5!X§.start();
         §+m§.addEventListener(§1I§.§0"4§,this.§>!F§);
         §+m§.addEventListener(§34§.§;!$§,this.§-!J§);
         §+m§.addEventListener(§34§.§='§,this.§5"0§);
      }
      
      public function get §+g§() : §0! §
      {
         return this.§&y§;
      }
      
      private function §>!F§(param1:§1I§) : void
      {
         §"!e§.§5";§(param1.§-S§,param1.errorID);
      }
      
      private function §-!J§(param1:§34§) : void
      {
         §"!e§.§^!x§(param1.§-S§);
      }
      
      private function §5"0§(param1:§34§) : void
      {
         §"!e§.§?!u§(param1.§-S§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §-A§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §7@§.§1[§.§^!-§(_loc2_);
         }
      }
      
      private function §7o§(param1:String) : void
      {
         if(this.§ try§)
         {
            §`B§.§>v§(true);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §?-§.§9E§(§]"J§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §?-§.§9E§(§3!=§);
         var _loc3_:XML = §?-§.§9E§(§0j§);
         this.§1!N§(_loc2_,_loc1_,["Views","Components"],true);
         this.§1!N§(_loc3_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §?-§.§9E§(§>L§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§1!N§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §?-§.§9E§(§&!V§);
         this.§1!N§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      protected function §4@§() : void
      {
         if(!§&!M§)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §"!e§.§2D§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §"!e§.§2D§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §"!e§.§2D§("tokenExpiresIn");
            }
         }
         this.§"4§ = new §^"I§(stage.loaderInfo.parameters.accessToken);
         §8!a§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var _loc2_:SharedObject = null;
         super.initialize();
         this.§&!p§ = stage.loaderInfo.parameters.levelId;
         §,u§.addEventListener(Event.INIT,this.§1"C§);
         §,u§.addEventListener(Event.COMPLETE,this.§80§);
         this.§4@§();
         this.§,!D§();
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§=k§,§<"'§);
            if(_loc2_.data.useSounds == undefined)
            {
               _loc2_.data.useSounds = true;
            }
            _loc1_ = _loc2_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §=",§(_loc1_);
         §=!L§.addCallback("purchaseComplete",§`"J§.§1[§.§'!p§);
         §=!L§.addCallback("giftsSentToUsers",this.§-A§);
         §=!L§.addCallback("onUrl",this.§7o§);
      }
      
      protected function §,!D§() : void
      {
         this.§'P§ = new §@c§(new §;"&§());
      }
      
      public function §1H§() : §;"&§
      {
         return this.§'P§.§=!G§;
      }
      
      protected function §4!$§() : void
      {
         this.§2!N§ = new §=!7§(§?!v§,§#"@§,(sUserProgress as §'y§).§;#§);
         this.§'!Q§.addChild(this.§2!N§);
         this.§2!N§.height = stage.stageHeight;
         this.§2!N§.x = stage.stageWidth - 180;
         this.§2!N§.addEventListener(§!h§.§>!0§,this.§ B§);
         this.§2!N§.addEventListener(§!h§.§3!g§,this.§>"A§);
         this.§2!N§.addEventListener(§!h§.§15§,this.§^"&§);
         this.§2!N§.addEventListener(§!h§.§"![§,this.§@!t§);
         this.§2!N§.addEventListener(§!h§.§;"8§,this.§&!m§);
         this.§2!N§.addEventListener(§!h§.§59§,this.§&b§);
         this.§2!N§.addEventListener(§!h§.§,"§,this.§;C§);
         this.§2!N§.addEventListener(§!h§.§3!q§,this.§'=§);
         this.§2!N§.addEventListener(§!h§.§>e§,this.§4"2§);
         this.§2!N§.addEventListener(§!h§.PLAY_LEVEL,this.§&7§);
         this.§2!N§.§`x§();
      }
      
      protected function §1"C§(param1:Event) : void
      {
         §@!k§.§9"<§(false);
      }
      
      protected function §80§(param1:Event) : void
      {
         §@!k§.§9"<§(true);
      }
      
      public function §'"'§(param1:String, param2:§`W§ = null, param3:Boolean = false) : void
      {
         this.§2!N§.§7O§(!!param1 ? LevelManager.§0"§(param1).name : "",param1,param2,param3);
      }
      
      public function §'!e§(param1:String) : void
      {
         this.§2!N§.§;!2§(param1);
      }
      
      override protected function initLevelMain() : void
      {
         §&2§.§],§ = new §9!F§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §'y§(§#"@§);
      }
      
      override protected function initStates() : void
      {
         §2"7§(new §0§(false));
         §2"7§(new §["K§(false));
         §2"7§(new §;!e§(false));
         §2"7§(new §?1§(false));
         §2"7§(new §,C§(false));
         §2"7§(new §&A§(false));
         §2"7§(new §="3§(false));
         §2"7§(new §!!C§(false));
         §2"7§(new §&"2§(false));
         §2"7§(new §,!z§(false));
         §2"7§(new §-!V§(false));
         §2"7§(new §6G§(false));
         §2"7§(new §^!f§(false));
         §2"7§(new §"]§(false));
         §2"7§(new §9" §(false));
         §2"7§(new § #§(false));
         §2"7§(new §0!1§(false));
         §2"7§(new §0"'§(false));
         §2"7§(new §@W§(false));
         §2"7§(new §-#§(false));
         §2"7§(new StateLastWeeksTournamentResults(false));
      }
      
      override protected function initStateLoad() : §`!@§
      {
         if(!§&!M§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §"!e§.§2D§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         return new § J§(true,§`!@§.STATE_NAME,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §<"§ = true;
         if(this.§&!p§)
         {
            if(this.§&!p§.indexOf("2000-") > -1)
            {
               §>"I§(§-#§.STATE_NAME);
               return;
            }
            _loc2_ = LevelManager.§&!1§(this.§&!p§);
            if(_loc2_ != this.§&!p§)
            {
               §"!e§.§;j§(this.§&!p§);
            }
            this.§&!p§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               this.§7-§(_loc2_);
               return;
            }
            if(_loc2_.indexOf("2000-") > -1)
            {
               §>"I§(§-#§.STATE_NAME);
               return;
            }
         }
         §>"I§(§6!B§.STATE_NAME);
      }
      
      public function §7-§(param1:String) : void
      {
         param1 = LevelManager.§&!1§(param1);
         LevelManager.§^p§(param1);
         if(param1.indexOf("2000-") > -1)
         {
            §>"I§(§0§.STATE_NAME);
         }
         else
         {
            §>"I§(StateCutScene.STATE_NAME);
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§,"A§();
      }
      
      public function get §@!]§() : Boolean
      {
         return this.§<!D§;
      }
      
      protected function §,"A§() : void
      {
         §9!t§.§4I§ = new §@"3§();
         §9!t§.§4I§.§"!q§();
         this.§4!$§();
         this.§<!D§ = true;
         if(§'T§.§8@§)
         {
            §`B§.§'"5§();
         }
         if(§=1§.§1[§.§,!X§ && §=1§.§1[§.§,!X§.§`'§)
         {
            §`B§.§`]§(§=1§.§1[§.§,!X§.§`'§);
         }
         else if((sUserProgress as §'y§).hasTutorialBeenSeen(§'y§.§8!+§) == false)
         {
            §`B§.§<6§();
            (sUserProgress as §'y§).saveTutorialSeen(§'y§.§8!+§);
         }
         if(§<"A§.§]!u§)
         {
            §`B§.§1"0§();
         }
         if(§4!j§.§'B§)
         {
            §`B§.§>v§();
         }
         if(§@x§.§`e§)
         {
            §`B§.§3"5§();
         }
         this.§0!H§ = new §3";§();
         this.§0!H§.§=!§();
         resize(true);
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:int = param1;
         param1 -= 180;
         if(this.§2!N§)
         {
            this.§2!N§.x = param1;
            this.§2!N§.height = param2;
         }
         this.§1d§(_loc3_,param2);
         super.resizeViews(param1,param2);
      }
      
      public function §1d§(param1:Number, param2:Number) : void
      {
         §`B§.setViewSize(param1,param2);
      }
      
      protected function §1!N§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            for each(_loc6_ in param1[_loc5_].§*§)
            {
               if(param4)
               {
                  delete param2[_loc5_][_loc6_.name()];
               }
               param2[_loc5_].appendChild(_loc6_);
            }
         }
      }
      
      protected function § B§(param1:§!h§) : void
      {
         if(param1.data != null)
         {
            §1z§();
            §"!e§.§7!"§();
            §=!L§.§+">§("flashInviteFriendsHandler",param1.data.userId);
         }
         else
         {
            §"!e§.§9!]§();
            §`B§.§3m§();
         }
      }
      
      protected function §>"A§(param1:§!h§) : void
      {
         §`B§.§8m§();
      }
      
      protected function §^"&§(param1:§!h§) : void
      {
         §`B§.§5C§();
      }
      
      protected function §@!t§(param1:Event) : void
      {
         §-"F§();
      }
      
      protected function §&!m§(param1:§!h§) : void
      {
         §55§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §&b§(param1:§!h§) : void
      {
         §55§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §'=§(param1:§!h§) : void
      {
         §`B§.§>v§(true);
      }
      
      protected function §4"2§(param1:§!h§) : void
      {
         §1z§();
         var _loc2_:int = (param1.data as §default§).§+!r§ - 1;
         §"!e§.§8! §(_loc2_.toString());
         §=!L§.§+">§("flashBrag",param1.data.userId,LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§));
      }
      
      protected function §&7§(param1:§!h§) : void
      {
         var _loc2_:String = param1.target.data.lvl;
         var _loc3_:String = LevelManager.§&!1§(_loc2_);
         if(_loc3_ != _loc2_)
         {
            §"!e§.§;j§(_loc2_);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
         {
            LevelManager.§^p§(_loc3_);
            §>"I§(StateCutScene.STATE_NAME);
            return;
         }
      }
      
      protected function §;C§(param1:§!h§) : void
      {
         var musicManager:§;"&§ = null;
         var mySO:SharedObject = null;
         var e:§!h§ = param1;
         §=",§(!§""4§());
         if(§""4§())
         {
            if(§;!b§() == StatePlay.STATE_NAME)
            {
               §&2§.§],§.background.§#"I§();
            }
            else if(§;!b§() == §&"2§.STATE_NAME || §;!b§() == §[2§.STATE_NAME || §;!b§() == §`f§.STATE_NAME)
            {
               musicManager = §,"I§.§&q§.§1H§();
               musicManager.§%_§(§@c§.§?!M§);
            }
         }
         try
         {
            mySO = SharedObject.getLocal(§=k§,§<"'§);
            mySO.data.useSounds = §]!?§;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §3!C§(param1:String, param2:int) : void
      {
         var _loc3_:int = (AngryBirdsFP11.sUserProgress as §'y§).getStarsForLevel(param1,param2);
         var _loc4_:int;
         if(_loc4_ = this.§+!7§(param2,_loc3_,0,true))
         {
            (AngryBirdsFP11.sUserProgress as §'y§).§8!Y§(param1,_loc4_);
         }
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         var _loc5_:int;
         if(_loc5_ = this.§+!7§(_loc2_,_loc3_,_loc4_))
         {
            (AngryBirdsFP11.sUserProgress as §'y§).§ set§(param1,_loc5_);
         }
      }
      
      private function §+!7§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc7_:§default§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:int = this.§6!b§.§ !&§(LevelManager.§`-§,param1,param2,param3,_loc5_,param4);
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§+!r§ - 1;
            §"!e§.§9k§(_loc8_.toString());
         }
         return _loc6_;
      }
      
      public function get §6!b§() : §=!7§
      {
         return this.§2!N§;
      }
      
      public function get §=_§() : §&x§
      {
         return this.§5!X§;
      }
      
      public function § "@§() : void
      {
         if(this.§5!X§)
         {
            this.§5!X§.§"E§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Version: " + §-!H§ + " " + §9"!§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §"!e§.§7"9§(§>A§.§'!4§,_loc1_.toString(),_loc1_);
         this.§ try§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§[B§)
         {
            this.§[B§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§[B§ += String.fromCharCode(param1.keyCode);
         }
         this.§[B§ = this.§[B§.toLowerCase();
         if(this.§[B§.length > 15)
         {
            this.§[B§ = this.§[B§.substr(1);
         }
      }
      
      public function get §[y§() : §3";§
      {
         return this.§0!H§;
      }
      
      public function § h§(param1:String) : void
      {
         this.§2!N§.§@y§(param1);
      }
      
      override public function externalPause() : void
      {
         §"!e§.§'X§();
      }
      
      override public function externalResume() : void
      {
         §"!e§.§8H§();
      }
   }
}
