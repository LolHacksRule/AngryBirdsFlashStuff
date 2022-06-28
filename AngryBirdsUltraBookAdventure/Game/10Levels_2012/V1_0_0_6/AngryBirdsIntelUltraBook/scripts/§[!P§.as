package
{
   import §"x§.§3!v§;
   import §#!O§.§9-§;
   import §#&§.§1A§;
   import §#&§.§9!o§;
   import §%t§.§1§;
   import §%t§.§?!a§;
   import §'!J§.§"!t§;
   import §'!J§.§"&§;
   import §'!J§.§#!D§;
   import §'!J§.§+!;§;
   import §'!J§.§-!d§;
   import §'!J§.§8!J§;
   import §'!J§.§<m§;
   import §'!J§.§=4§;
   import §'!J§.§=I§;
   import §'!J§.§[§;
   import §'!J§.§]d§;
   import §'!Q§.§ §;
   import §+0§.§;!>§;
   import §,!§.§![§;
   import §3!G§.LevelManager;
   import §4;§.§3M§;
   import §6!Y§.§"F§;
   import §6!Y§.§0!x§;
   import §7@§.§4C§;
   import §;!o§.§>!l§;
   import §;H§.§!y§;
   import §;H§.§,!]§;
   import §;H§.§9!3§;
   import §;H§.StateCutScene;
   import §;H§.StatePlay;
   import §>! §.§^!c§;
   import §?N§.§]!e§;
   import §]+§.§#@§;
   import §]+§.§%!M§;
   import §]+§.§@!J§;
   import §]2§.§-9§;
   import com.angrybirds.friendsbar.§1!R§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §[!P§ extends AngryBirdsFP11
   {
      
      public static const §@W§:String = "1.0.0.6 r97703)";
      
      private static const §@$§:String = "AngryBirdsIntelUltrabookSettings";
      
      protected static var §?!$§:Class = §1!A§;
      
      protected static var §@F§:Class = §&!7§;
      
      protected static var §`!>§:Class = §'!f§;
      
      protected static var §@![§:Class = §+!D§;
      
      public static var §>#§:§"F§;
      
      public static var §;!K§:§[!P§;
       
      
      protected var §;!i§:§1!R§;
      
      private var §23§:String = null;
      
      private var §8!1§:String = "";
      
      private var §!O§:§#@§;
      
      private var §#t§:Sprite;
      
      private var §<!%§:Boolean = false;
      
      public function §[!P§(param1:§-9§)
      {
         var _loc5_:Stage3D = null;
         §%!M§.enabled = true;
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
            §@!J§.§#D§("no-stage3d");
         }
         §+!V§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §;!1§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§@a§ ? "http://head-dot-ab-in-adventure.appspot.com" : "http://head-dot-ab-in-adventure.appspot.com");
         super(param1);
         §;!K§ = this;
         §@!J§.§[!G§(§%!M§.§%!?§);
         var _loc3_:ContextMenu = new ContextMenu();
         _loc3_.hideBuiltInItems();
         param1.contextMenu = _loc3_;
         param1.stage.addChild(this.§#t§ = new Sprite());
         §]!e§.initialize(param1.stage);
         this.§!O§ = new §#@§("");
         this.§!O§.start();
      }
      
      public static function §'!r§() : String
      {
         if((sUserProgress as §![§).§-H§)
         {
            return §@$§ + "-" + (sUserProgress as §![§).§-H§;
         }
         return null;
      }
      
      public static function §'!F§(param1:Object) : void
      {
         §>#§ = new §"F§(§;!1§,(AngryBirdsFP11.sUserProgress as §![§).§-H§,(AngryBirdsFP11.sUserProgress as §![§).userName);
         §>#§.§??§(param1);
         var _loc2_:int = §>#§.§-b§;
         if(_loc2_ >= 0)
         {
            §@!J§.§<!=§(_loc2_);
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §#U§(param1:Array) : void
      {
      }
      
      private function §1!Z§(param1:String) : void
      {
         if(!this.§<!%§)
         {
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §3!v§.§;!-§(§?!$§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §3!v§.§;!-§(§@F§);
         this.§&v§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §3!v§.§;!-§(§@![§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§&v§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §3!v§.§;!-§(§`!>§);
         this.§&v§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      protected function §^!4§() : void
      {
         if(!§@a§)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §@!J§.§&B§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §@!J§.§&B§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §@!J§.§&B§("tokenExpiresIn");
            }
         }
         §1A§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var _loc2_:SharedObject = null;
         super.initialize();
         this.§23§ = stage.loaderInfo.parameters.levelId;
         §<!h§.addEventListener(Event.INIT,this.§7F§);
         §<!h§.addEventListener(Event.COMPLETE,this.§>E§);
         this.§^!4§();
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§@$§,"/ab_in_adventure");
            if(_loc2_.data.useSounds == undefined)
            {
               _loc2_.data.useSounds = true;
            }
            _loc1_ = _loc2_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §5!C§(_loc1_);
         §>!l§.addCallback("giftsSentToUsers",this.§#U§);
         §>!l§.addCallback("onUrl",this.§1!Z§);
      }
      
      protected function §`b§() : void
      {
         this.§;!i§ = new §1!R§(§>#§,§;!1§,(sUserProgress as §![§).§-H§);
         this.§#t§.addChild(this.§;!i§);
         this.§;!i§.height = stage.stageHeight;
         this.§;!i§.x = stage.stageWidth - 180;
         this.§;!i§.addEventListener(§4C§.§,>§,this.§-!a§);
         this.§;!i§.addEventListener(§4C§.§=!L§,this.§;7§);
         this.§;!i§.addEventListener(§4C§.§1j§,this.§>j§);
         this.§;!i§.addEventListener(§4C§.§9P§,this.§3-§);
         this.§;!i§.addEventListener(§4C§.§`!c§,this.§,Z§);
         this.§;!i§.addEventListener(§4C§.§5!h§,this.§=L§);
         this.§;!i§.addEventListener(§4C§.PLAY_LEVEL,this.§;!#§);
         this.§;!i§.§#!w§();
      }
      
      protected function §7F§(param1:Event) : void
      {
         §?!a§.§2q§(false);
      }
      
      protected function §>E§(param1:Event) : void
      {
         §?!a§.§2q§(true);
      }
      
      public function §;! §(param1:String, param2:§0!x§ = null, param3:Boolean = false) : void
      {
         this.§;!i§.§5_§(!!param1 ? LevelManager.§1H§(param1).name : "",param1,param2,param3);
      }
      
      public function §;e§(param1:String) : void
      {
         this.§;!i§.§=!Q§(param1);
      }
      
      override protected function initLevelMain() : void
      {
         §^!c§.§5!Y§ = new §9-§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §![§(§;!1§);
      }
      
      override protected function initStates() : void
      {
         §!]§(new §=4§(false));
         §!]§(new §=I§(false));
         §!]§(new §#!D§(false));
         §!]§(new §[§(false));
         §!]§(new §-!d§(false));
         §!]§(new §<m§(false));
         §!]§(new §8!J§(false));
         §!]§(new §+!;§(false));
         §!]§(new §]d§(false));
         §!]§(new §"!t§(false));
      }
      
      override protected function initStateLoad() : §;!>§
      {
         if(!§@a§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §@!J§.§&B§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         return new §"&§(true,§;!>§.§"!s§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §6!c§ = true;
         if(this.§23§)
         {
            _loc2_ = LevelManager.§ o§(this.§23§);
            if(_loc2_ != this.§23§)
            {
               §@!J§.§@8§(this.§23§);
            }
            this.§23§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               this.§]7§(_loc2_);
               return;
            }
         }
         §@!n§(§,!]§.§"!s§);
      }
      
      public function §]7§(param1:String) : void
      {
         param1 = LevelManager.§ o§(param1);
         LevelManager.§@3§(param1);
         §@!n§(StateCutScene.§"!s§);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §1§.§-X§ = new §3M§();
         §1§.§-X§.§1p§();
         this.§`b§();
         if((sUserProgress as §![§).hasTutorialBeenSeen(§![§.§&!4§) == false)
         {
            (sUserProgress as §![§).saveTutorialSeen(§![§.§&!4§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §-!P§;
            _loc3_ = §6!l§;
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
         §^!c§.§<!B§(0,0,_loc6_,_loc3_);
         setViewSize(_loc6_,_loc3_);
         this.§;!T§(_loc2_,_loc3_);
         if(this.§;!i§)
         {
            this.§;!i§.x = _loc2_ - _loc4_;
            this.§;!i§.height = _loc3_;
         }
         §-!P§ = _loc6_;
         §6!l§ = _loc3_;
      }
      
      public function §;!T§(param1:Number, param2:Number) : void
      {
         §]!e§.setViewSize(param1,param2);
      }
      
      protected function §&v§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      protected function §-!a§(param1:§4C§) : void
      {
         §&2§();
         if(param1.data != null)
         {
            §@!J§.§+!F§();
         }
         else
         {
            §@!J§.§3n§();
         }
         §>!l§.§ a§("flashInviteFriendsHandler",!!param1.data ? param1.data.userId : null);
      }
      
      protected function §;7§(param1:Event) : void
      {
         §1T§();
      }
      
      protected function §>j§(param1:§4C§) : void
      {
         §00§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §3-§(param1:§4C§) : void
      {
         §00§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §=L§(param1:§4C§) : void
      {
         §&2§();
         var _loc2_:int = (param1.data as §9!o§).§&d§ - 1;
         §@!J§.§6>§(_loc2_.toString());
         §>!l§.§ a§("flashBrag",param1.data.userId,LevelManager.§%n§,LevelManager.§];§().writtenName + "-" + § §.§'!X§(LevelManager.§%n§));
      }
      
      protected function §;!#§(param1:§4C§) : void
      {
         var _loc2_:String = param1.target.data.lvl;
         var _loc3_:String = LevelManager.§ o§(_loc2_);
         if(_loc3_ != _loc2_)
         {
            §@!J§.§@8§(_loc2_);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
         {
            LevelManager.§@3§(_loc3_);
            §@!n§(StateCutScene.§"!s§);
            return;
         }
      }
      
      protected function §,Z§(param1:§4C§) : void
      {
         var mySO:SharedObject = null;
         var e:§4C§ = param1;
         §5!C§(!§0!b§());
         if(§0!b§())
         {
            if(§6!O§() == StatePlay.§"!s§)
            {
               §^!c§.§5!Y§.background.§0!j§();
            }
            else if(§6!O§() == §#!D§.§"!s§ || §6!O§() == §!y§.§"!s§ || §6!O§() == §9!3§.§"!s§)
            {
               AngryBirdsFP11.playThemeMusic();
            }
         }
         try
         {
            mySO = SharedObject.getLocal(§@$§,"/ab_in_adventure");
            mySO.data.useSounds = §5`§;
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
         if(_loc5_ = this.§@-§(_loc2_,_loc3_,_loc4_))
         {
            (AngryBirdsFP11.sUserProgress as §![§).§=!9§(param1,_loc5_);
         }
      }
      
      private function §@-§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc7_:§9!o§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:int = this.§<!z§.§@&§(LevelManager.§%n§,param1,param2,param3,_loc5_,param4);
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§&d§ - 1;
            §@!J§.§ K§(_loc8_.toString());
         }
         return _loc6_;
      }
      
      public function get §<!z§() : §1!R§
      {
         return this.§;!i§;
      }
      
      public function get §99§() : §#@§
      {
         return this.§!O§;
      }
      
      public function §=!g§() : void
      {
         if(this.§!O§)
         {
            this.§!O§.§7!O§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §@W§.replace("{svn_version}","local dev build") + "Server: " + §+!V§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §@!J§.§[!G§(§%!M§.§%6§,_loc1_.toString(),_loc1_);
         this.§<!%§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§8!1§)
         {
            this.§8!1§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§8!1§ += String.fromCharCode(param1.keyCode);
         }
         this.§8!1§ = this.§8!1§.toLowerCase();
         if(this.§8!1§.length > 15)
         {
            this.§8!1§ = this.§8!1§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
         §@!J§.§9]§();
      }
      
      override public function externalResume() : void
      {
         §@!J§.§3!q§();
      }
   }
}
