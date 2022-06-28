package
{
   import §&A§.§,6§;
   import §+!Q§.§<[§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §0X§.§'W§;
   import §0X§.§3S§;
   import §3!8§.§%!5§;
   import §3!8§.§2!_§;
   import §40§.§!Y§;
   import §40§.§'!j§;
   import §40§.§-!,§;
   import §40§.§4V§;
   import §40§.§=d§;
   import §40§.§>!J§;
   import §40§.§?H§;
   import §40§.§@!8§;
   import §40§.§@+§;
   import §40§.§`!?§;
   import §40§.§`L§;
   import §4e§.§=!p§;
   import §6!M§.§-!?§;
   import §6!M§.§;!G§;
   import §8u§.§3g§;
   import §8u§.§9=§;
   import §9!5§.§ B§;
   import §9!5§.§!1§;
   import §9!5§.§0!`§;
   import §9!5§.StateCutScene;
   import §9!5§.StatePlay;
   import §9!y§.§@M§;
   import §<!>§.§,?§;
   import §<e§.§ &§;
   import §@N§.§2w§;
   import §@i§.§=r§;
   import §^_§.§,>§;
   import §`!%§.§2x§;
   import com.angrybirds.friendsbar.§`Y§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   import §true§.§ _§;
   
   public class §@!9§ extends AngryBirdsFP11
   {
      
      public static const §<!a§:String = "1.0.0.2 r97324)";
      
      private static const §=$§:String = "AngryBirdsIntelUltrabookSettings";
      
      protected static var § get§:Class = § !k§;
      
      protected static var §@!2§:Class = §`c§;
      
      protected static var §[X§:Class = §=l§;
      
      protected static var §]X§:Class = §7!'§;
      
      public static var §;0§:§3g§;
      
      public static var §6!f§:§@!9§;
       
      
      protected var §=;§:§`Y§;
      
      private var §8f§:String = null;
      
      private var §4!X§:String = "";
      
      private var §[!T§:§3S§;
      
      private var §4!>§:Sprite;
      
      private var §4A§:Boolean = false;
      
      public function §@!9§(param1:§,6§)
      {
         var _loc5_:Stage3D = null;
         §'W§.enabled = true;
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
            §'N§.§4!u§("no-stage3d");
         }
         §#!x§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §8!`§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§[!d§ ? "http://head-dot-angrybirds-ultrabook.appspot.com" : "http://head-dot-angrybirds-ultrabook.appspot.com");
         super(param1);
         §6!f§ = this;
         §'N§.§var §(§'W§.§[!#§);
         var _loc3_:ContextMenu = new ContextMenu();
         _loc3_.hideBuiltInItems();
         param1.contextMenu = _loc3_;
         param1.stage.addChild(this.§4!>§ = new Sprite());
         §@M§.initialize(param1.stage);
         this.§[!T§ = new §3S§("");
         this.§[!T§.start();
      }
      
      public static function §+!l§() : String
      {
         if((sUserProgress as §<[§).§0u§)
         {
            return §=$§ + "-" + (sUserProgress as §<[§).§0u§;
         }
         return null;
      }
      
      public static function §`3§(param1:Object) : void
      {
         §;0§ = new §3g§(§8!`§,(AngryBirdsFP11.sUserProgress as §<[§).§0u§,(AngryBirdsFP11.sUserProgress as §<[§).userName);
         §;0§.§5!J§(param1);
         var _loc2_:int = §;0§.§5O§;
         if(_loc2_ >= 0)
         {
            §'N§.§,!j§(_loc2_);
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §0=§(param1:Array) : void
      {
      }
      
      private function §=!D§(param1:String) : void
      {
         if(!this.§4A§)
         {
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §,>§.§%2§(§ get§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §,>§.§%2§(§@!2§);
         this.§3z§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §,>§.§%2§(§]X§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§3z§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §,>§.§%2§(§[X§);
         this.§3z§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      protected function §1q§() : void
      {
         if(!§[!d§)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §'N§.§>!1§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §'N§.§>!1§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §'N§.§>!1§("tokenExpiresIn");
            }
         }
         §;!G§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var _loc2_:SharedObject = null;
         super.initialize();
         this.§8f§ = stage.loaderInfo.parameters.levelId;
         §!L§.addEventListener(Event.INIT,this.§@!m§);
         §!L§.addEventListener(Event.COMPLETE,this.§&B§);
         this.§1q§();
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§=$§,"/ultrabook");
            if(_loc2_.data.useSounds == undefined)
            {
               _loc2_.data.useSounds = true;
            }
            _loc1_ = _loc2_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §-#§(_loc1_);
         §=r§.addCallback("giftsSentToUsers",this.§0=§);
         §=r§.addCallback("onUrl",this.§=!D§);
      }
      
      protected function §7`§() : void
      {
         this.§=;§ = new §`Y§(§;0§,§8!`§,(sUserProgress as §<[§).§0u§);
         this.§4!>§.addChild(this.§=;§);
         this.§=;§.height = stage.stageHeight;
         this.§=;§.x = stage.stageWidth - 180;
         this.§=;§.addEventListener(§ &§.§+!j§,this.§`G§);
         this.§=;§.addEventListener(§ &§.§"3§,this.§-,§);
         this.§=;§.addEventListener(§ &§.§]!r§,this.§"a§);
         this.§=;§.addEventListener(§ &§.§4H§,this.§%h§);
         this.§=;§.addEventListener(§ &§.§52§,this.§,!@§);
         this.§=;§.addEventListener(§ &§.§7!n§,this.§;F§);
         this.§=;§.addEventListener(§ &§.PLAY_LEVEL,this.§4!-§);
         this.§=;§.§>9§();
      }
      
      protected function §@!m§(param1:Event) : void
      {
         §%!5§.§]`§(false);
      }
      
      protected function §&B§(param1:Event) : void
      {
         §%!5§.§]`§(true);
      }
      
      public function §>!+§(param1:String, param2:§9=§ = null, param3:Boolean = false) : void
      {
         this.§=;§.§8!w§(!!param1 ? LevelManager.§2!9§(param1).name : "",param1,param2,param3);
      }
      
      public function §>=§(param1:String) : void
      {
         this.§=;§.§,!v§(param1);
      }
      
      override protected function initLevelMain() : void
      {
         § _§.§!6§ = new §2w§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §<[§(§8!`§);
      }
      
      override protected function initStates() : void
      {
         §9!`§(new §?H§(false));
         §9!`§(new §!Y§(false));
         §9!`§(new §'!j§(false));
         §9!`§(new §>!J§(false));
         §9!`§(new §-!,§(false));
         §9!`§(new §@!8§(false));
         §9!`§(new §=d§(false));
         §9!`§(new §@+§(false));
         §9!`§(new §4V§(false));
         §9!`§(new §`L§(false));
      }
      
      override protected function initStateLoad() : §,?§
      {
         if(!§[!d§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §'N§.§>!1§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         return new §`!?§(true,§,?§.§?h§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §`-§ = true;
         if(this.§8f§)
         {
            _loc2_ = LevelManager.§@!L§(this.§8f§);
            if(_loc2_ != this.§8f§)
            {
               §'N§.§-4§(this.§8f§);
            }
            this.§8f§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               this.§5<§(_loc2_);
               return;
            }
         }
         §,!6§(§0!`§.§?h§);
      }
      
      public function §5<§(param1:String) : void
      {
         param1 = LevelManager.§@!L§(param1);
         LevelManager.§1!+§(param1);
         §,!6§(StateCutScene.§?h§);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §2!_§.§9^§ = new §2x§();
         §2!_§.§9^§.§-'§();
         this.§7`§();
         if((sUserProgress as §<[§).hasTutorialBeenSeen(§<[§.§[!]§) == false)
         {
            (sUserProgress as §<[§).saveTutorialSeen(§<[§.§[!]§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §<<§;
            _loc3_ = §5!X§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         var _loc4_:int = 180;
         var _loc6_:int = _loc2_ - (_loc4_ - 62);
         § _§.§%L§(0,0,_loc6_,_loc3_);
         setViewSize(_loc6_,_loc3_);
         this.§ 3§(_loc2_,_loc3_);
         if(this.§=;§)
         {
            this.§=;§.x = _loc2_ - _loc4_;
            this.§=;§.height = _loc3_;
         }
         §<<§ = _loc6_;
         §5!X§ = _loc3_;
      }
      
      public function § 3§(param1:Number, param2:Number) : void
      {
         §@M§.setViewSize(param1,param2);
      }
      
      protected function §3z§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      protected function §`G§(param1:§ &§) : void
      {
         §5C§();
         if(param1.data != null)
         {
            §'N§.§9!a§();
         }
         else
         {
            §'N§.§,z§();
         }
         §=r§.§[!3§("flashInviteFriendsHandler",!!param1.data ? param1.data.userId : null);
      }
      
      protected function §-,§(param1:Event) : void
      {
         §8!d§();
      }
      
      protected function §"a§(param1:§ &§) : void
      {
         §>!P§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §%h§(param1:§ &§) : void
      {
         §>!P§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §;F§(param1:§ &§) : void
      {
         §5C§();
         var _loc2_:int = (param1.data as §-!?§).§ N§ - 1;
         §'N§.§=!k§(_loc2_.toString());
         §=r§.§[!3§("flashBrag",param1.data.userId,LevelManager.§4Y§,LevelManager.§0v§().writtenName + "-" + §=!p§.§1!j§(LevelManager.§4Y§));
      }
      
      protected function §4!-§(param1:§ &§) : void
      {
         var _loc2_:String = param1.target.data.lvl;
         var _loc3_:String = LevelManager.§@!L§(_loc2_);
         if(_loc3_ != _loc2_)
         {
            §'N§.§-4§(_loc2_);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
         {
            LevelManager.§1!+§(_loc3_);
            §,!6§(StateCutScene.§?h§);
            return;
         }
      }
      
      protected function §,!@§(param1:§ &§) : void
      {
         var mySO:SharedObject = null;
         var e:§ &§ = param1;
         §-#§(!§"!u§());
         if(§"!u§())
         {
            if(§6!3§() == StatePlay.§?h§)
            {
               § _§.§!6§.background.§#!C§();
            }
            else if(§6!3§() == §'!j§.§?h§ || §6!3§() == § B§.§?h§ || §6!3§() == §!1§.§?h§)
            {
               AngryBirdsFP11.playThemeMusic();
            }
         }
         try
         {
            mySO = SharedObject.getLocal(§=$§,"/ultrabook");
            mySO.data.useSounds = §-!W§;
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
         if(_loc5_ = this.§2!c§(_loc2_,_loc3_,_loc4_))
         {
            (AngryBirdsFP11.sUserProgress as §<[§).§2!@§(param1,_loc5_);
         }
      }
      
      private function §2!c§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc7_:§-!?§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:int = this.§6x§.§6!B§(LevelManager.§4Y§,param1,param2,param3,_loc5_,param4);
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§ N§ - 1;
            §'N§.§;2§(_loc8_.toString());
         }
         return _loc6_;
      }
      
      public function get §6x§() : §`Y§
      {
         return this.§=;§;
      }
      
      public function get §6!H§() : §3S§
      {
         return this.§[!T§;
      }
      
      public function §@5§() : void
      {
         if(this.§[!T§)
         {
            this.§[!T§.§6,§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §<!a§.replace("{svn_version}","local dev build") + "Server: " + §#!x§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §'N§.§var §(§'W§.§-!f§,_loc1_.toString(),_loc1_);
         this.§4A§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§4!X§)
         {
            this.§4!X§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§4!X§ += String.fromCharCode(param1.keyCode);
         }
         this.§4!X§ = this.§4!X§.toLowerCase();
         if(this.§4!X§.length > 15)
         {
            this.§4!X§ = this.§4!X§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
         §'N§.§-!_§();
      }
      
      override public function externalResume() : void
      {
         §'N§.§3!j§();
      }
   }
}
