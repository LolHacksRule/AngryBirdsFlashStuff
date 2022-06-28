package
{
   import § !k§.§6!5§;
   import § !k§.§6!U§;
   import § !k§.§?U§;
   import § !k§.StateCutScene;
   import § !k§.StatePlay;
   import §!!§.LevelManager;
   import §&!h§.§"[§;
   import §&!h§.§0!"§;
   import §&!h§.§]V§;
   import §&9§.§1?§;
   import §'H§.§9!f§;
   import §+k§.§>t§;
   import §+k§.§^x§;
   import §0o§.§ !1§;
   import §0o§.§ L§;
   import §0o§.§#!H§;
   import §0o§.§#D§;
   import §0o§.§,4§;
   import §0o§.§5!S§;
   import §0o§.§;%§;
   import §0o§.§<2§;
   import §0o§.§=x§;
   import §0o§.§>Z§;
   import §0o§.§^!p§;
   import §4[§.§-w§;
   import §4[§.§3q§;
   import §5!t§.§+!g§;
   import §5i§.§4!]§;
   import §6z§.§`!<§;
   import §8!G§.§"D§;
   import §8,§.§5T§;
   import §9!Q§.§7o§;
   import §;!q§.§%!l§;
   import §;!q§.§%t§;
   import §<i§.§#!%§;
   import §>§.§[0§;
   import §^c§.§=o§;
   import com.angrybirds.friendsbar.§&E§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §[!m§ extends AngryBirdsFP11
   {
      
      public static const §+[§:String = "0.0.0.14 r97247)";
      
      private static const §#<§:String = "AngryBirdsFacebookSettings";
      
      protected static var §1!`§:Class = §%!-§;
      
      protected static var §<7§:Class = §,i§;
      
      protected static var §&3§:Class = §;I§;
      
      protected static var §+§:Class = §&!w§;
      
      public static var §8!C§:§^x§;
      
      public static var §1H§:§[!m§;
       
      
      protected var §-!F§:§&E§;
      
      private var §@!f§:String = null;
      
      private var §`!3§:String = "";
      
      private var §0!+§:§0!"§;
      
      private var §#!U§:Sprite;
      
      private var §5§:Boolean = false;
      
      public function §[!m§(param1:§#!%§)
      {
         var _loc5_:Stage3D = null;
         §"[§.enabled = true;
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
            §]V§.§&$§("no-stage3d");
         }
         §9n§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §6S§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§2!y§ ? "http://head-dot-angrybirds-ultrabook.appspot.com" : "http://head-dot-angrybirds-ultrabook.appspot.com");
         super(param1);
         §1H§ = this;
         §]V§.§8![§(§"[§.§"@§);
         var _loc3_:ContextMenu = new ContextMenu();
         _loc3_.hideBuiltInItems();
         param1.contextMenu = _loc3_;
         param1.stage.addChild(this.§#!U§ = new Sprite());
         §7o§.initialize(param1.stage);
         this.§0!+§ = new §0!"§("");
         this.§0!+§.start();
      }
      
      public static function §;@§() : String
      {
         if((sUserProgress as §9!f§).§0!V§)
         {
            return §#<§ + "-" + (sUserProgress as §9!f§).§0!V§;
         }
         return null;
      }
      
      public static function §2!]§(param1:Object) : void
      {
         §8!C§ = new §^x§(§6S§,(AngryBirdsFP11.sUserProgress as §9!f§).§0!V§,(AngryBirdsFP11.sUserProgress as §9!f§).userName);
         §8!C§.§&?§(param1);
         var _loc2_:int = §8!C§.§&1§;
         if(_loc2_ >= 0)
         {
            §]V§.§"!W§(_loc2_);
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §[]§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
         }
      }
      
      private function §&!1§(param1:String) : void
      {
         if(!this.§5§)
         {
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §`!<§.§ !0§(§1!`§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §`!<§.§ !0§(§<7§);
         this.§&0§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §`!<§.§ !0§(§+§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§&0§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §`!<§.§ !0§(§&3§);
         this.§&0§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      protected function §<j§() : void
      {
         if(!§2!y§)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §]V§.§31§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §]V§.§31§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §]V§.§31§("tokenExpiresIn");
            }
         }
         §3q§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var _loc2_:SharedObject = null;
         super.initialize();
         this.§@!f§ = stage.loaderInfo.parameters.levelId;
         §@!C§.addEventListener(Event.INIT,this.§=N§);
         §@!C§.addEventListener(Event.COMPLETE,this.§]u§);
         this.§<j§();
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§#<§);
            if(_loc2_.data.useSounds != undefined)
            {
               §§pop();
               §§pop();
            }
            else
            {
               §§pop();
               _loc2_.data.useSounds = true;
            }
            _loc1_ = _loc2_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §0S§(_loc1_);
         §1?§.addCallback("giftsSentToUsers",this.§[]§);
         §1?§.addCallback("onUrl",this.§&!1§);
      }
      
      protected function §@!9§() : void
      {
         this.§-!F§ = new §&E§(§8!C§,§6S§,(sUserProgress as §9!f§).§0!V§);
         this.§#!U§.addChild(this.§-!F§);
         this.§-!F§.height = stage.stageHeight;
         this.§-!F§.x = stage.stageWidth - 180;
         this.§-!F§.addEventListener(§[0§.§3n§,this.§>!r§);
         this.§-!F§.addEventListener(§[0§.§1!e§,this.§!,§);
         this.§-!F§.addEventListener(§[0§.§&d§,this.§#!f§);
         this.§-!F§.addEventListener(§[0§.§@=§,this.§?!q§);
         this.§-!F§.addEventListener(§[0§.§0&§,this.§]!q§);
         this.§-!F§.addEventListener(§[0§.§1!=§,this.§-N§);
         this.§-!F§.addEventListener(§[0§.PLAY_LEVEL,this.§2A§);
         this.§-!F§.§'=§();
      }
      
      protected function §=N§(param1:Event) : void
      {
         §%t§.§!!T§(false);
      }
      
      protected function §]u§(param1:Event) : void
      {
         §%t§.§!!T§(true);
      }
      
      public function § _§(param1:String, param2:§>t§ = null, param3:Boolean = false) : void
      {
         this.§-!F§.§5Q§(!!param1 ? LevelManager.§,m§(param1).name : "",param1,param2,param3);
      }
      
      public function § P§(param1:String) : void
      {
         this.§-!F§.§,W§(param1);
      }
      
      override protected function initLevelMain() : void
      {
         §4!]§.§8C§ = new §"D§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §9!f§(§6S§);
      }
      
      override protected function initStates() : void
      {
         §?!-§(new § L§(false));
         §?!-§(new §#D§(false));
         §?!-§(new §;%§(false));
         §?!-§(new §,4§(false));
         §?!-§(new §>Z§(false));
         §?!-§(new §<2§(false));
         §?!-§(new §^!p§(false));
         §?!-§(new §5!S§(false));
         §?!-§(new §#!H§(false));
         §?!-§(new § !1§(false));
      }
      
      override protected function initStateLoad() : §5T§
      {
         if(!§2!y§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §]V§.§31§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         return new §=x§(true,§5T§.§3F§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §@!&§ = true;
         if(this.§@!f§)
         {
            _loc2_ = LevelManager.§%e§(this.§@!f§);
            if(_loc2_ != this.§@!f§)
            {
               §]V§.§3^§(this.§@!f§);
            }
            this.§@!f§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               this.§,!b§(_loc2_);
               return;
            }
         }
         § !,§(§?U§.§3F§);
      }
      
      public function §,!b§(param1:String) : void
      {
         param1 = LevelManager.§%e§(param1);
         LevelManager.§9!d§(param1);
         § !,§(StateCutScene.§3F§);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §%!l§.§9!o§ = new §=o§();
         §%!l§.§9!o§.§<r§();
         this.§@!9§();
         if((sUserProgress as §9!f§).hasTutorialBeenSeen(§9!f§.§!=§) == false)
         {
            (sUserProgress as §9!f§).saveTutorialSeen(§9!f§.§!=§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §6!]§;
            _loc3_ = §#o§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         var _loc6_:int = _loc2_ - (180 - 62);
         §4!]§.§,!0§(0,0,_loc6_,_loc3_);
         setViewSize(_loc6_,_loc3_);
         this.§6!y§(_loc2_,_loc3_);
         if(this.§-!F§)
         {
            this.§-!F§.x = _loc2_ - 180;
            this.§-!F§.height = _loc3_;
         }
         §6!]§ = _loc6_;
         §#o§ = _loc3_;
      }
      
      public function §6!y§(param1:Number, param2:Number) : void
      {
         §7o§.setViewSize(param1,param2);
      }
      
      protected function §&0§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(var _loc9_ in param3)
         {
            _loc5_ = _loc9_;
            _loc9_;
            for each(var _loc11_ in param1[_loc5_].§*§)
            {
               _loc6_ = _loc11_;
               _loc11_;
               if(param4)
               {
                  delete param2[_loc5_][_loc6_.name()];
               }
               param2[_loc5_].appendChild(_loc6_);
            }
         }
      }
      
      protected function §>!r§(param1:§[0§) : void
      {
         §2!3§();
         if(param1.data != null)
         {
            §]V§.§6!r§();
         }
         else
         {
            §]V§.§;Q§();
         }
         §1?§.§>!X§("flashInviteFriendsHandler",!!param1.data ? param1.data.userId : null);
      }
      
      protected function §!,§(param1:Event) : void
      {
         §catch§();
      }
      
      protected function §#!f§(param1:§[0§) : void
      {
         §§pop();
         §"!5§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §?!q§(param1:§[0§) : void
      {
         §"!5§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §-N§(param1:§[0§) : void
      {
         §2!3§();
         var _loc2_:int = (param1.data as §-w§).§0v§ - 1;
         §]V§.§?!L§(_loc2_.toString());
         §1?§.§>!X§("flashBrag",param1.data.userId,LevelManager.§^!F§,LevelManager.§5!K§().writtenName + "-" + §+!g§.§,!X§(LevelManager.§^!F§));
      }
      
      protected function §2A§(param1:§[0§) : void
      {
         var _loc2_:String = param1.target.data.lvl;
         var _loc3_:String = LevelManager.§%e§(_loc2_);
         if(_loc3_ != _loc2_)
         {
            §]V§.§3^§(_loc2_);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
         {
            LevelManager.§9!d§(_loc3_);
            § !,§(StateCutScene.§3F§);
            return;
         }
      }
      
      protected function §]!q§(param1:§[0§) : void
      {
         var mySO:SharedObject = null;
         var e:§[0§ = param1;
         §0S§(!§`;§());
         if(§`;§())
         {
            if(§+!0§() == StatePlay.§3F§)
            {
               §4!]§.§8C§.background.§4!w§();
            }
            else if(§+!0§() == §;%§.§3F§ || §+!0§() == §6!U§.§3F§ || §+!0§() == §6!5§.§3F§)
            {
               AngryBirdsFP11.playThemeMusic();
            }
         }
         try
         {
            mySO = SharedObject.getLocal(§#<§);
            mySO.data.useSounds = §>!e§;
            mySO.flush();
            §§pop();
         }
         catch(e:Error)
         {
            §§pop();
         }
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         var _loc5_:int;
         if(_loc5_ = this.§"#§(_loc2_,_loc3_,_loc4_))
         {
            (AngryBirdsFP11.sUserProgress as §9!f§).§%!§(param1,_loc5_);
         }
      }
      
      private function §"#§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc7_:§-w§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:int = this.§9!T§.§3!U§(LevelManager.§^!F§,param1,param2,param3,_loc5_,param4);
         for each(var _loc11_ in _loc5_)
         {
            _loc7_ = _loc11_;
            _loc11_;
            _loc8_ = _loc7_.§0v§ - 1;
            §]V§.§`N§(_loc8_.toString());
         }
         return _loc6_;
      }
      
      public function get §9!T§() : §&E§
      {
         return this.§-!F§;
      }
      
      public function get §7!6§() : §0!"§
      {
         return this.§0!+§;
      }
      
      public function §`!w§() : void
      {
         if(this.§0!+§)
         {
            this.§0!+§.§0!X§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §+[§.replace("{svn_version}","local dev build") + "Server: " + §9n§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §]V§.§8![§(§"[§.§4j§,_loc1_.toString(),_loc1_);
         this.§5§ = true;
         true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§`!3§)
         {
            this.§`!3§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§`!3§ = this.§`!3§ + String.fromCharCode(param1.keyCode);
         }
         this.§`!3§ = this.§`!3§.toLowerCase();
         if(this.§`!3§.length > 15)
         {
            this.§`!3§ = this.§`!3§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
         §]V§.§;!a§();
      }
      
      override public function externalResume() : void
      {
         §]V§.§2'§();
      }
   }
}
