package
{
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §,@§.§ !U§;
   import §,@§.§'!6§;
   import §-!$§.§,w§;
   import §0b§.§"V§;
   import §1!B§.§>!s§;
   import §2!U§.§2!=§;
   import §2!U§.§8"!§;
   import §2!U§.§<&§;
   import §2!U§.StateCutScene;
   import §2!U§.StatePlay;
   import §4H§.§!!5§;
   import §4H§.§9?§;
   import §8!H§.§"_§;
   import §;!y§.§,!s§;
   import §;#§.§&L§;
   import §<-§.§!!K§;
   import §<-§.§-!h§;
   import §<-§.§5Z§;
   import §>L§.§+!i§;
   import §@! §.§[! §;
   import §[;§.§#!6§;
   import §^!m§.§4!i§;
   import §^`§.§14§;
   import §^`§.§>!N§;
   import §`!#§.§!!2§;
   import §`!#§.§#!Q§;
   import §`!#§.§'!1§;
   import §`!#§.§+9§;
   import §`!#§.§,D§;
   import §`!#§.§-r§;
   import §`!#§.§1!D§;
   import §`!#§.§7a§;
   import §`!#§.§>!4§;
   import §`!#§.§>!U§;
   import §`!#§.§?c§;
   import com.angrybirds.friendsbar.§-V§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §<t§ extends AngryBirdsFP11
   {
      
      public static const §`!q§:String = "1.1.0.7 r106972)";
      
      private static const §&'§:String = "AngryBirdsIntelUltrabookSettings";
      
      protected static var §+x§:Class = §>?§;
      
      protected static var §`!^§:Class = §<X§;
      
      protected static var §+!g§:Class = §@p§;
      
      protected static var §=!Z§:Class = §#!q§;
      
      public static var §!V§:§ !U§;
      
      public static var §`n§:§<t§;
       
      
      protected var §5q§:§-V§;
      
      private var §3§:String = null;
      
      private var §]"#§:String = "";
      
      private var §"2§:§-!h§;
      
      private var §3-§:Sprite;
      
      private var §^!G§:Boolean = false;
      
      public function §<t§(param1:§,w§)
      {
         var _loc5_:Stage3D = null;
         §5Z§.enabled = true;
         var _loc2_:int = 0;
         try
         {
            if(_loc5_ = param1.stage.stage3Ds[0])
            {
               _loc2_ = 1;
            }
         }
         catch(e:Error)
         {
         }
         if(_loc2_ == 0)
         {
            §!!K§.§<3§("no-stage3d");
         }
         §^I§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §[!S§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§?C§ ? "http://head-dot-ab-in-adventure.appspot.com" : "http://head-dot-ab-in-adventure.appspot.com");
         super(param1);
         §`n§ = this;
         §!!K§.§&!v§(§5Z§.§+!q§);
         var _loc3_:ContextMenu = new ContextMenu();
         _loc3_.hideBuiltInItems();
         param1.contextMenu = _loc3_;
         param1.stage.addChild(this.§3-§ = new Sprite());
         §4!i§.initialize(param1.stage);
         this.§"2§ = new §-!h§("");
         this.§"2§.start();
      }
      
      public static function §9!y§() : String
      {
         if((sUserProgress as §#!6§).§ z§)
         {
            return §&'§ + "-" + (sUserProgress as §#!6§).§ z§;
         }
         return null;
      }
      
      public static function §6v§(param1:Object) : void
      {
         §!V§ = new § !U§(§[!S§,(AngryBirdsFP11.sUserProgress as §#!6§).§ z§,(AngryBirdsFP11.sUserProgress as §#!6§).userName);
         §!V§.§8m§(param1);
         var _loc2_:int = §!V§.§6!4§;
         if(_loc2_ >= 0)
         {
            §!!K§.§5!%§(_loc2_);
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §#!I§(param1:Array) : void
      {
      }
      
      private function §;!A§(param1:String) : void
      {
         if(!this.§^!G§)
         {
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §>!s§.§;§(§+x§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §>!s§.§;§(§`!^§);
         this.§[!@§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §>!s§.§;§(§=!Z§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§[!@§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §>!s§.§;§(§+!g§);
         this.§[!@§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      protected function §"!4§() : void
      {
         if(!§?C§)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §!!K§.§1,§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §!!K§.§1,§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §!!K§.§1,§("tokenExpiresIn");
            }
         }
         §!!5§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var _loc2_:SharedObject = null;
         super.initialize();
         this.§3§ = stage.loaderInfo.parameters.levelId;
         §>s§.addEventListener(Event.INIT,this.§9"#§);
         §>s§.addEventListener(Event.COMPLETE,this.§+c§);
         this.§"!4§();
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§&'§,"/ab_in_adventure");
            if(_loc2_.data.useSounds == undefined)
            {
               _loc2_.data.useSounds = true;
            }
            _loc1_ = _loc2_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §]!G§(_loc1_);
         §+!i§.addCallback("giftsSentToUsers",this.§#!I§);
         §+!i§.addCallback("onUrl",this.§;!A§);
      }
      
      protected function §0R§() : void
      {
         this.§5q§ = new §-V§(§!V§,§[!S§,(sUserProgress as §#!6§).§ z§);
         this.§3-§.addChild(this.§5q§);
         this.§5q§.height = stage.stageHeight;
         this.§5q§.x = stage.stageWidth - 180;
         this.§5q§.addEventListener(§[! §.§4!&§,this.§]!$§);
         this.§5q§.addEventListener(§[! §.§6!f§,this.§7!%§);
         this.§5q§.addEventListener(§[! §.§^!;§,this.§+!N§);
         this.§5q§.addEventListener(§[! §.§2R§,this.§[6§);
         this.§5q§.addEventListener(§[! §.§@Q§,this.§9z§);
         this.§5q§.addEventListener(§[! §.§6y§,this.§"!u§);
         this.§5q§.addEventListener(§[! §.PLAY_LEVEL,this.§[!&§);
         this.§5q§.§68§();
      }
      
      protected function §9"#§(param1:Event) : void
      {
         §14§.§["#§(false);
      }
      
      protected function §+c§(param1:Event) : void
      {
         §14§.§["#§(true);
      }
      
      public function §;!T§(param1:String, param2:§'!6§ = null, param3:Boolean = false) : void
      {
         this.§5q§.§"I§(!!param1 ? LevelManager.§`r§(param1).name : "",param1,param2,param3);
      }
      
      public function §'!0§(param1:String) : void
      {
         this.§5q§.§<!i§(param1);
      }
      
      override protected function initLevelMain() : void
      {
         §,!s§.§=!I§ = new §"V§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §#!6§(§[!S§);
      }
      
      override protected function initStates() : void
      {
         §9X§(new §+9§(false));
         §9X§(new §#!Q§(false));
         §9X§(new §!!2§(false));
         §9X§(new §,D§(false));
         §9X§(new §>!4§(false));
         §9X§(new §>!U§(false));
         §9X§(new §?c§(false));
         §9X§(new §7a§(false));
         §9X§(new §1!D§(false));
         §9X§(new §'!1§(false));
      }
      
      override protected function initStateLoad() : §"_§
      {
         if(!§?C§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §!!K§.§1,§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         return new §-r§(true,§"_§.§'!q§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §^T§ = true;
         if(this.§3§)
         {
            _loc2_ = LevelManager.§5l§(this.§3§);
            if(_loc2_ != this.§3§)
            {
               §!!K§.§4R§(this.§3§);
            }
            this.§3§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               this.§^!#§(_loc2_);
               return;
            }
         }
         §9!m§(§8"!§.§'!q§);
      }
      
      public function §^!#§(param1:String) : void
      {
         param1 = LevelManager.§5l§(param1);
         LevelManager.§`!O§(param1);
         §9!m§(StateCutScene.§'!q§);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §>!N§.§!!e§ = new §&L§();
         §>!N§.§!!e§.§2§();
         this.§0R§();
         if((sUserProgress as §#!6§).hasTutorialBeenSeen(§#!6§.§,!G§) == false)
         {
            (sUserProgress as §#!6§).saveTutorialSeen(§#!6§.§,!G§);
         }
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         param1 = Math.round(stage.stageWidth);
         param2 = Math.round(stage.stageHeight);
         if(param1 < 20 || param2 < 20)
         {
            param1 = §3!!§;
            param2 = §>u§;
         }
         if(param1 < 2 || param2 < 2)
         {
            return;
         }
         if(param1 / param2 > 25 / 12)
         {
            param1 = Math.round(param2 * (25 / 12));
         }
         var _loc3_:int = 180;
         var _loc5_:int = param1 - (_loc3_ - 62);
         §,!s§.§4J§(0,0,_loc5_,param2);
         setViewSize(_loc5_,param2);
         this.§'!B§(param1,param2);
         if(this.§5q§)
         {
            this.§5q§.x = param1 - _loc3_;
            this.§5q§.height = param2;
         }
         §3!!§ = _loc5_;
         §>u§ = param2;
      }
      
      public function §'!B§(param1:Number, param2:Number) : void
      {
         §4!i§.setViewSize(param1,param2);
      }
      
      protected function §[!@§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      protected function §]!$§(param1:§[! §) : void
      {
         §5!M§();
         if(param1.data != null)
         {
            §!!K§.§8'§();
         }
         else
         {
            §!!K§.§0!'§();
         }
         §+!i§.§>!y§("flashInviteFriendsHandler",!!param1.data ? param1.data.userId : null);
      }
      
      protected function §7!%§(param1:Event) : void
      {
         §]8§();
      }
      
      protected function §+!N§(param1:§[! §) : void
      {
         §`!<§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §[6§(param1:§[! §) : void
      {
         §`!<§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §"!u§(param1:§[! §) : void
      {
         §5!M§();
         var _loc2_:int = (param1.data as §9?§).§1<§ - 1;
         §!!K§.§-!=§(_loc2_.toString());
         §+!i§.§>!y§("flashBrag",param1.data.userId,LevelManager.§"L§,LevelManager.§+!$§().writtenName + "-" + §@!c§.§<!N§(LevelManager.§"L§));
      }
      
      protected function §[!&§(param1:§[! §) : void
      {
         var _loc2_:String = param1.target.data.lvl;
         var _loc3_:String = LevelManager.§5l§(_loc2_);
         if(_loc3_ != _loc2_)
         {
            §!!K§.§4R§(_loc2_);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
         {
            LevelManager.§`!O§(_loc3_);
            §9!m§(StateCutScene.§'!q§);
            return;
         }
      }
      
      protected function §9z§(param1:§[! §) : void
      {
         var mySO:SharedObject = null;
         var e:§[! § = param1;
         §]!G§(!§"C§());
         if(§"C§())
         {
            if(§,^§() == StatePlay.§'!q§)
            {
               §,!s§.§=!I§.background.§3!c§();
            }
            else if(§,^§() == §!!2§.§'!q§ || §,^§() == §2!=§.§'!q§ || §,^§() == §<&§.§'!q§)
            {
               AngryBirdsFP11.playThemeMusic();
            }
         }
         try
         {
            mySO = SharedObject.getLocal(§&'§,"/ab_in_adventure");
            mySO.data.useSounds = §0!7§;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         var _loc5_:int;
         if(_loc5_ = this.§4!M§(_loc2_,_loc3_,_loc4_))
         {
            (AngryBirdsFP11.sUserProgress as §#!6§).§%N§(param1,_loc5_);
         }
      }
      
      private function §4!M§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc7_:§9?§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:int = this.§3!<§.§`j§(LevelManager.§"L§,param1,param2,param3,_loc5_,param4);
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§1<§ - 1;
            §!!K§.§<]§(_loc8_.toString());
         }
         return _loc6_;
      }
      
      public function get §3!<§() : §-V§
      {
         return this.§5q§;
      }
      
      public function get §`X§() : §-!h§
      {
         return this.§"2§;
      }
      
      public function §6"!§() : void
      {
         if(this.§"2§)
         {
            this.§"2§.§7Q§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §`!q§.replace("{svn_version}","local dev build") + "Server: " + §^I§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §!!K§.§&!v§(§5Z§.§@!<§,_loc1_.toString(),_loc1_);
         this.§^!G§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§]"#§)
         {
            this.§]"#§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§]"#§ += String.fromCharCode(param1.keyCode);
         }
         this.§]"#§ = this.§]"#§.toLowerCase();
         if(this.§]"#§.length > 15)
         {
            this.§]"#§ = this.§]"#§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
         §!!K§.§=E§();
      }
      
      override public function externalResume() : void
      {
         §!!K§.§2!k§();
      }
   }
}
