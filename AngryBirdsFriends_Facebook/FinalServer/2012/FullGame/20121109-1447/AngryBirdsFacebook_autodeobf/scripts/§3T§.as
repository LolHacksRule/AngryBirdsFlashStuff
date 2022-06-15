package
{
   import § " §.§+!p§;
   import § " §.§3P§;
   import § " §.§9c§;
   import §!!C§.§1"=§;
   import §!!C§.§]!;§;
   import §!§.§&"§;
   import §!§.§'7§;
   import §#!e§.§ <§;
   import §#!e§.LevelManager;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §'K§.§"!=§;
   import §+N§.§@!]§;
   import §,"2§.§;6§;
   import §-!q§.§ a§;
   import §-!q§.§&O§;
   import §-!q§.§7!m§;
   import §-!q§.§<!f§;
   import §-!q§.§<R§;
   import §-!q§.§=p§;
   import §-"6§.§5E§;
   import §0!G§.§#`§;
   import §1p§.§,O§;
   import §3!7§.§?!F§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import §6!B§.§33§;
   import §6!B§.§>!E§;
   import §6!B§.§`!p§;
   import §6c§.§use§;
   import §6o§.§5!C§;
   import §7"@§.§ "%§;
   import §7"@§.§,!D§;
   import §7"@§.§-!I§;
   import §7"@§.§-"$§;
   import §7"@§.§-"2§;
   import §7"@§.§1!J§;
   import §7"@§.§1G§;
   import §7"@§.§2!e§;
   import §7"@§.§2@§;
   import §7"@§.§4!K§;
   import §7"@§.§5!v§;
   import §7"@§.§8"D§;
   import §7"@§.§9!X§;
   import §7"@§.§9<§;
   import §7"@§.§?!3§;
   import §7"@§.§?'§;
   import §7"@§.§@"D§;
   import §7"@§.StateCutScene;
   import §7"@§.StatePlay;
   import §7"@§.§]!K§;
   import §7-§.§,!C§;
   import §8w§.§ !-§;
   import §9"!§.§2K§;
   import §<a§.§+!B§;
   import §<a§.§>f§;
   import §<a§.§?q§;
   import §[!K§.§"`§;
   import §[!K§.§'!W§;
   import §[!K§.§-!@§;
   import §[!K§.§-k§;
   import §[!K§.§4#§;
   import §[!K§.§;+§;
   import §[!K§.§="#§;
   import §[!K§.StateLastWeeksTournamentResults;
   import §]!>§.§"!w§;
   import §]!>§.§0!!§;
   import §]!>§.§2!W§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §3T§ extends AngryBirdsFP11
   {
      
      public static const §'P§:String = "r101181";
      
      private static const §`"$§:String = "AngryBirdsFacebookSettings";
      
      public static const §;b§:String = "/";
      
      protected static var §6!I§:Class = § v§;
      
      protected static var §2#§:Class = §=!0§;
      
      protected static var §9!N§:Class = §[L§;
      
      protected static var §,"=§:Class = §]z§;
      
      protected static var §@,§:Class = §3F§;
      
      public static var §if §:§1"=§;
      
      public static var §67§:§3T§;
      
      private static var §"D§:String = "STANDARD";
       
      
      protected var §%![§:§ K§;
      
      public var §7!>§:§&"§;
      
      private var §,j§:§'7§;
      
      private var §"0§:String = null;
      
      private var §9]§:String = "";
      
      private var §!!,§:§?q§;
      
      private var §["4§:§&!7§;
      
      private var §-!i§:Sprite;
      
      private var §<E§:Boolean = false;
      
      public function §3T§(param1:§5E§)
      {
         §&"D§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §76§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§4x§ ? "http://head-dot-angrybirds-facebook-dev.appspot.com" : "http://angrybirds-facebook-dev.appspot.com");
         super(param1);
         this.§]"%§();
      }
      
      public static function §"3§() : String
      {
         if((sUserProgress as §[<§).§4v§)
         {
            return §`"$§ + "-" + (sUserProgress as §[<§).§4v§;
         }
         return null;
      }
      
      public static function §[!W§() : Boolean
      {
         var _loc1_:String = String(§,!C§.§;"§.§0!&§).toUpperCase();
         if(§"D§ != _loc1_)
         {
            §&O§.§3!w§ = false;
            if(_loc1_ == §,!C§.§1!G§)
            {
               §#6§.§ q§.§-![§(§-k§.STATE_NAME,new §&O§(false));
               §#6§.§ q§.§-![§(StateLastWeeksTournamentResults.STATE_NAME,new §<R§(false));
               §#6§.§ q§.§-![§(§="#§.STATE_NAME,new §<!f§(false));
               §#6§.§ q§.§-![§(§-!@§.STATE_NAME,new § a§(false));
               §#6§.§ q§.§-![§(§4#§.STATE_NAME,new §7!m§(false));
               §#6§.§ q§.§-![§(§'!W§.STATE_NAME,new §=p§(false));
               §"D§ = _loc1_;
               return true;
            }
            if(§"D§ != "STANDARD")
            {
               §#6§.§ q§.§-![§(§-k§.STATE_NAME,new §-k§(false));
               §#6§.§ q§.§-![§(StateLastWeeksTournamentResults.STATE_NAME,new StateLastWeeksTournamentResults(false));
               §#6§.§ q§.§-![§(§="#§.STATE_NAME,new §="#§(false));
               §#6§.§ q§.§-![§(§-!@§.STATE_NAME,new §-!@§(false));
               §#6§.§ q§.§-![§(§4#§.STATE_NAME,new §4#§(false));
               §#6§.§ q§.§-![§(§'!W§.STATE_NAME,new §'!W§(false));
               §"D§ = "STANDARD";
               return true;
            }
         }
         return false;
      }
      
      public static function §3!-§(param1:Object) : void
      {
         §if § = new §1"=§(§76§,(AngryBirdsFP11.sUserProgress as §[<§).§4v§,(AngryBirdsFP11.sUserProgress as §[<§).userName);
         §if §.injectData(param1);
         var _loc2_:int = §if §.§%!=§;
         if(_loc2_ >= 0)
         {
            §+!B§.§3!W§(_loc2_);
         }
      }
      
      protected function §]"%§() : void
      {
         var _loc4_:Stage3D = null;
         §>f§.enabled = true;
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
            §+!B§.§;"-§("no-stage3d");
         }
         §67§ = this;
         §+!B§.§""1§(§>f§.§^a§);
         var _loc2_:ContextMenu = new ContextMenu();
         _loc2_.hideBuiltInItems();
         canvas.contextMenu = _loc2_;
         canvas.stage.addChild(this.§-!i§ = new Sprite());
         §%?§.initialize(canvas.stage);
         §%?§.§1>§.addEventListener(§;6§.§;"E§,this.§break§);
         this.§!!,§ = new §?q§("");
         this.§!!,§.start();
         §>!E§.addEventListener(§`!p§.§5!Q§,this.§8!Y§);
         §>!E§.addEventListener(§33§.§>D§,this.§>F§);
         §>!E§.addEventListener(§33§.§%!F§,this.§'!-§);
      }
      
      private function §8!Y§(param1:§`!p§) : void
      {
         §+!B§.§``§(param1.§"4§,param1.errorID);
      }
      
      private function §>F§(param1:§33§) : void
      {
         §+!B§.§4"D§(param1.§"4§);
      }
      
      private function §'!-§(param1:§33§) : void
      {
         §+!B§.§8V§(param1.§"4§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §<!_§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §0!!§.§;"§.§[!i§(_loc2_);
         }
      }
      
      private function §2!n§(param1:String) : void
      {
         if(this.§<E§)
         {
            §%?§.§?@§(true);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §5!C§.§9G§(§6!I§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §5!C§.§9G§(§2#§);
         var _loc3_:XML = §5!C§.§9G§(§9!N§);
         this.§,b§(_loc2_,_loc1_,["Views","Components"],true);
         this.§,b§(_loc3_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §5!C§.§9G§(§@,§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§,b§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §5!C§.§9G§(§,"=§);
         this.§,b§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      protected function §9"§() : void
      {
         if(!§4x§)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §+!B§.§=>§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §+!B§.§=>§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §+!B§.§=>§("tokenExpiresIn");
            }
         }
         this.§7!>§ = new §&"§(stage.loaderInfo.parameters.accessToken);
         §"!w§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var _loc2_:SharedObject = null;
         super.initialize();
         this.§"0§ = stage.loaderInfo.parameters.levelId;
         §9!_§.addEventListener(Event.INIT,this.§+!+§);
         §9!_§.addEventListener(Event.COMPLETE,this.§0!X§);
         this.§9"§();
         this.§+$§();
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§`"$§,§;b§);
            if(_loc2_.data.useSounds == undefined)
            {
               _loc2_.data.useSounds = true;
            }
            _loc1_ = _loc2_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §@i§(_loc1_);
         §@!]§.addCallback("purchaseComplete",§?!F§.§;"§.§-Y§);
         §@!]§.addCallback("giftsSentToUsers",this.§<!_§);
         §@!]§.addCallback("onUrl",this.§2!n§);
      }
      
      protected function §+$§() : void
      {
         this.§["4§ = new §&!7§(new § do§());
      }
      
      public function §2!c§() : § do§
      {
         return this.§["4§.§?a§;
      }
      
      protected function §<!0§() : void
      {
         this.§%![§ = new § K§(§if §,§76§,(sUserProgress as §[<§).§4v§);
         this.§-!i§.addChild(this.§%![§);
         this.§%![§.height = stage.stageHeight;
         this.§%![§.x = stage.stageWidth - 180;
         this.§%![§.addEventListener(§;6§.§;"E§,this.§break§);
         this.§%![§.addEventListener(§;6§.§-!&§,this.§@"9§);
         this.§%![§.addEventListener(§;6§.§>!B§,this.§8+§);
         this.§%![§.addEventListener(§;6§.§%!>§,this.§%!2§);
         this.§%![§.addEventListener(§;6§.§+u§,this.§5"5§);
         this.§%![§.addEventListener(§;6§.§;c§,this.§>!<§);
         this.§%![§.addEventListener(§;6§.§!C§,this.§-!G§);
         this.§%![§.addEventListener(§;6§.§ !H§,this.§5"!§);
         this.§%![§.addEventListener(§;6§.§4! §,this.§8-§);
         this.§%![§.addEventListener(§;6§.PLAY_LEVEL,this.§`"-§);
         this.§%![§.§-!d§();
      }
      
      protected function §+!+§(param1:Event) : void
      {
         §+!p§.§]"0§(false);
      }
      
      protected function §0!X§(param1:Event) : void
      {
         §+!p§.§]"0§(true);
      }
      
      public function §?D§(param1:String, param2:§]!;§ = null, param3:Boolean = false) : void
      {
         this.§%![§.§0"=§(!!param1 ? LevelManager.§^_§(param1).name : "",param1,param2,param3);
      }
      
      public function §`!P§(param1:String) : void
      {
         this.§%![§.§&!t§(param1);
      }
      
      override protected function initLevelMain() : void
      {
         §#6§.§6!z§ = new §2K§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §[<§(§76§);
      }
      
      override protected function initStates() : void
      {
         §[3§(new §;+§(false));
         §[3§(new §-!@§(false));
         §[3§(new §4#§(false));
         §[3§(new §="#§(false));
         §[3§(new §'!W§(false));
         §[3§(new §"`§(false));
         §[3§(new §?!3§(false));
         §[3§(new §-!I§(false));
         §[3§(new §@"D§(false));
         §[3§(new §]!K§(false));
         §[3§(new §2!e§(false));
         §[3§(new §-"$§(false));
         §[3§(new §4!K§(false));
         §[3§(new §2@§(false));
         §[3§(new §1G§(false));
         §[3§(new §5!v§(false));
         §[3§(new §-"2§(false));
         §[3§(new § "%§(false));
         §[3§(new §9!X§(false));
         §[3§(new §1!J§(false));
         §[3§(new §-k§(false));
         §[3§(new StateLastWeeksTournamentResults(false));
      }
      
      override protected function initStateLoad() : §#`§
      {
         if(!§4x§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §+!B§.§=>§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         return new §,!D§(true,§#`§.STATE_NAME,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §4!8§ = true;
         if(this.§"0§)
         {
            if(this.§"0§.indexOf("2000-") > -1)
            {
               §=!w§(§-k§.STATE_NAME);
               return;
            }
            _loc2_ = LevelManager.§;!f§(this.§"0§);
            if(_loc2_ != this.§"0§)
            {
               §+!B§.§1"4§(this.§"0§);
            }
            this.§"0§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               this.§5O§(_loc2_);
               return;
            }
            if(_loc2_.indexOf("2000-") > -1)
            {
               §=!w§(§-k§.STATE_NAME);
               return;
            }
         }
         §=!w§(§?'§.STATE_NAME);
      }
      
      public function §5O§(param1:String) : void
      {
         param1 = LevelManager.§;!f§(param1);
         LevelManager.§-!4§(param1);
         if(param1.indexOf("2000-") > -1)
         {
            §=!w§(§;+§.STATE_NAME);
         }
         else
         {
            §=!w§(StateCutScene.STATE_NAME);
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§'!#§();
      }
      
      protected function §'!#§() : void
      {
         §3P§.§'"=§ = new §9c§();
         §3P§.§'"=§.§5!?§();
         this.§<!0§();
         if(§"!=§.§`J§)
         {
            §%?§.§!,§();
         }
         if(String(§,!C§.§;"§.§0!&§).toUpperCase() == §,!C§.§1!G§)
         {
            if((sUserProgress as §[<§).hasTutorialBeenSeen(§[<§.§8l§) == false)
            {
               §%?§.§case §();
            }
         }
         else if((sUserProgress as §[<§).hasTutorialBeenSeen(§[<§.§-!W§) == false)
         {
            §%?§.§&S§();
            (sUserProgress as §[<§).saveTutorialSeen(§[<§.§-!W§);
         }
         if(§use§.§[!_§)
         {
            §%?§.§5!M§();
         }
         if(§,O§.§0"6§)
         {
            §%?§.§?@§();
         }
         if(§ !-§.§-n§)
         {
            §%?§.§`B§(§ !-§.§-n§);
         }
         this.§,j§ = new §'7§();
         this.§,j§.§#!h§();
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §1M§;
            _loc3_ = §5K§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         §#6§.§^9§(0,0,_loc2_ - 180,_loc3_);
         setViewSize(_loc2_ - 180,_loc3_);
         this.§"!"§(_loc2_,_loc3_);
         if(this.§%![§)
         {
            this.§%![§.x = _loc2_ - 180;
            this.§%![§.height = _loc3_;
         }
         §1M§ = _loc2_;
         §5K§ = _loc3_;
      }
      
      public function §"!"§(param1:Number, param2:Number) : void
      {
         §%?§.setViewSize(param1,param2);
      }
      
      protected function §,b§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      protected function §break§(param1:§;6§) : void
      {
         if(param1.data != null)
         {
            §#m§();
            §+!B§.§6!3§();
            §@!]§.§9"'§("flashInviteFriendsHandler",param1.data.userId);
         }
         else
         {
            §+!B§.§&!x§();
            §%?§.§=#§();
         }
      }
      
      protected function §@"9§(param1:§;6§) : void
      {
         §%?§.§#"9§();
      }
      
      protected function §8+§(param1:§;6§) : void
      {
         §%?§.§9$§();
      }
      
      protected function §%!2§(param1:Event) : void
      {
         §'!+§();
      }
      
      protected function §5"5§(param1:§;6§) : void
      {
         §8%§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §>!<§(param1:§;6§) : void
      {
         §8%§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §5"!§(param1:§;6§) : void
      {
         §%?§.§?@§(true);
      }
      
      protected function §8-§(param1:§;6§) : void
      {
         §#m§();
         var _loc2_:int = (param1.data as §2!W§).§9!Y§ - 1;
         §+!B§.§]!I§(_loc2_.toString());
         §@!]§.§9"'§("flashBrag",param1.data.userId,LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§));
      }
      
      protected function §`"-§(param1:§;6§) : void
      {
         var _loc2_:String = param1.target.data.lvl;
         var _loc3_:String = LevelManager.§;!f§(_loc2_);
         if(_loc3_ != _loc2_)
         {
            §+!B§.§1"4§(_loc2_);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
         {
            LevelManager.§-!4§(_loc3_);
            §=!w§(StateCutScene.STATE_NAME);
            return;
         }
      }
      
      protected function §-!G§(param1:§;6§) : void
      {
         var musicManager:§ do§ = null;
         var mySO:SharedObject = null;
         var e:§;6§ = param1;
         §@i§(!§3>§());
         if(§3>§())
         {
            if(§<!W§() == StatePlay.STATE_NAME)
            {
               §#6§.§6!z§.background.§7!a§();
            }
            else if(§<!W§() == §@"D§.STATE_NAME || §<!W§() == §8"D§.STATE_NAME || §<!W§() == §9<§.STATE_NAME)
            {
               musicManager = §3T§.§67§.§2!c§();
               musicManager.§5b§(§&!7§.§3V§);
            }
         }
         try
         {
            mySO = SharedObject.getLocal(§`"$§,§;b§);
            mySO.data.useSounds = §9q§;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function § k§(param1:String, param2:int) : void
      {
         var _loc3_:int = (AngryBirdsFP11.sUserProgress as §[<§).getStarsForLevel(param1,param2);
         var _loc4_:int;
         if(_loc4_ = this.§,a§(param2,_loc3_,0,true))
         {
            (AngryBirdsFP11.sUserProgress as §[<§).§+"&§(param1,_loc4_);
         }
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         var _loc5_:int;
         if(_loc5_ = this.§,a§(_loc2_,_loc3_,_loc4_))
         {
            (AngryBirdsFP11.sUserProgress as §[<§).§%"2§(param1,_loc5_);
         }
      }
      
      private function §,a§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc7_:§2!W§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:int = this.§0#§.§&]§(LevelManager.§'!O§,param1,param2,param3,_loc5_,param4);
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§9!Y§ - 1;
            §+!B§.§%!+§(_loc8_.toString());
         }
         return _loc6_;
      }
      
      public function get §0#§() : § K§
      {
         return this.§%![§;
      }
      
      public function get §9!Q§() : §?q§
      {
         return this.§!!,§;
      }
      
      public function §'w§() : void
      {
         if(this.§!!,§)
         {
            this.§!!,§.§""§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Version: " + §&"D§ + " " + §'P§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §+!B§.§""1§(§>f§.§]!Q§,_loc1_.toString(),_loc1_);
         this.§<E§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§9]§)
         {
            this.§9]§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§9]§ += String.fromCharCode(param1.keyCode);
         }
         this.§9]§ = this.§9]§.toLowerCase();
         if(this.§9]§.length > 15)
         {
            this.§9]§ = this.§9]§.substr(1);
         }
      }
      
      public function get §0+§() : §'7§
      {
         return this.§,j§;
      }
      
      public function §6!l§(param1:String) : void
      {
         this.§%![§.§[!e§(param1);
      }
      
      override public function externalPause() : void
      {
         §+!B§.§3!o§();
      }
      
      override public function externalResume() : void
      {
         §+!B§.§;W§();
      }
   }
}
