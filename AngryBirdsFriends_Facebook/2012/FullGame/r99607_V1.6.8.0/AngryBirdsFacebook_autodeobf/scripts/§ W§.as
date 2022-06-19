package
{
   import § !§.§?N§;
   import §!!t§.§[!A§;
   import §"!m§.§,!<§;
   import §"p§.§7!5§;
   import §"p§.§9!'§;
   import §"p§.§;!b§;
   import §"p§.§`!p§;
   import §&C§.§6!;§;
   import §+"§.§'!0§;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §0!?§.§1!%§;
   import §0M§.§`!9§;
   import §0t§.§9c§;
   import §0t§.§`!E§;
   import §1k§.§%4§;
   import §1k§.§7" §;
   import §1k§.§;W§;
   import §1k§.§]"!§;
   import §1k§.§`!d§;
   import §1o§.§%"%§;
   import §1o§.§'8§;
   import §1o§.§;c§;
   import §2!,§.§ in§;
   import §2!,§.§!"§;
   import §2!,§.§9"$§;
   import §3,§.§>M§;
   import §4!m§.§#",§;
   import §4!m§.§>x§;
   import §7N§.§43§;
   import §9&§.§7!O§;
   import §<!<§.§%!#§;
   import §<!<§.§2!^§;
   import §<!<§.§7c§;
   import §<!e§.§[!t§;
   import §<"1§.§,U§;
   import §<G§.§"y§;
   import §<G§.§,!Y§;
   import §<G§.§0o§;
   import §<G§.§5w§;
   import §<G§.§<i§;
   import §<G§.§>T§;
   import §<G§.StateLastWeeksTournamentResults;
   import §<G§.§`"§;
   import §>y§.§`"2§;
   import §[!K§.§ !n§;
   import §[!K§.§%!_§;
   import §[!K§.§&"7§;
   import §[!K§.§&j§;
   import §[!K§.§-!^§;
   import §[!K§.§0!f§;
   import §[!K§.§2">§;
   import §[!K§.§2&§;
   import §[!K§.§3I§;
   import §[!K§.§4E§;
   import §[!K§.§4T§;
   import §[!K§.§6!%§;
   import §[!K§.§6!y§;
   import §[!K§.§7!e§;
   import §[!K§.§=!e§;
   import §[!K§.§=B§;
   import §[!K§.§?"-§;
   import §[!K§.StateCutScene;
   import §[!K§.StatePlay;
   import §[!K§.§["A§;
   import §[!z§.§"5§;
   import §[!z§.LevelManager;
   import com.AngryBirds.friendsbar.§2!h§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class § W§ extends AngryBirdsFP11
   {
      
      public static const §2>§:String = "1.6.8.0 (r99607)";
      
      private static const §6?§:String = "AngryBirdsFacebookSettings";
      
      public static const §;q§:String = "/";
      
      protected static var §-n§:Class = §,%§;
      
      protected static var §=F§:Class = §&!S§;
      
      protected static var §;6§:Class = §>+§;
      
      protected static var §-"?§:Class = §2!A§;
      
      public static var §,2§:§`!E§;
      
      public static var §%!y§:§ W§;
      
      private static var §5C§:String = "STANDARD";
       
      
      protected var §&"#§:§2!h§;
      
      public var §4!c§:§>x§;
      
      private var §&q§:§#",§;
      
      private var §?!,§:String = null;
      
      private var §>!9§:String = "";
      
      private var §5"&§:§2!^§;
      
      private var §<![§:§`!d§;
      
      private var §="4§:Sprite;
      
      private var §1K§:Boolean = false;
      
      public function § W§(param1:§`!9§)
      {
         §5!9§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §7!!§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§+1§ ? "http://head-dot-angrybirds-facebook-dev.appspot.com" : "http://angrybirds-facebook-dev.appspot.com");
         super(param1);
         this.§59§();
      }
      
      public static function §"!u§() : String
      {
         if((sUserProgress as §2!P§).§!!'§)
         {
            return §6?§ + "-" + (sUserProgress as §2!P§).§!!'§;
         }
         return null;
      }
      
      public static function §]T§() : Boolean
      {
         var _loc1_:String = String(§[!t§.§8c§.§&!>§).toUpperCase();
         if(§5C§ != _loc1_)
         {
            §;!b§.§,!b§ = false;
            if(_loc1_ == "LOTUS")
            {
               §9!%§.§ !W§.§%,§(§5w§.STATE_NAME,new §;!b§(false));
               §9!%§.§ !W§.§%,§(StateLastWeeksTournamentResults.STATE_NAME,new §9!'§(false));
               §9!%§.§ !W§.§%,§(§0o§.STATE_NAME,new §7!5§(false));
               §9!%§.§ !W§.§%,§(§`"§.STATE_NAME,new §`!p§(false));
               §5C§ = _loc1_;
               return true;
            }
            if(§5C§ != "STANDARD")
            {
               §9!%§.§ !W§.§%,§(§5w§.STATE_NAME,new §5w§(false));
               §9!%§.§ !W§.§%,§(StateLastWeeksTournamentResults.STATE_NAME,new StateLastWeeksTournamentResults(false));
               §9!%§.§ !W§.§%,§(§0o§.STATE_NAME,new §0o§(false));
               §9!%§.§ !W§.§%,§(§`"§.STATE_NAME,new §`"§(false));
               §5C§ = "STANDARD";
               return true;
            }
         }
         return false;
      }
      
      public static function §8!j§(param1:Object) : void
      {
         §,2§ = new §`!E§(§7!!§,(AngryBirdsFP11.sUserProgress as §2!P§).§!!'§,(AngryBirdsFP11.sUserProgress as §2!P§).userName);
         §,2§.injectData(param1);
         var _loc2_:int = §,2§.§^f§;
         if(_loc2_ >= 0)
         {
            §%!#§.§@l§(_loc2_);
         }
      }
      
      protected function §59§() : void
      {
         var _loc4_:Stage3D = null;
         §7c§.enabled = true;
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
            §%!#§.§"!1§("no-stage3d");
         }
         §%!y§ = this;
         §%!#§.§'"-§(§7c§.§<"B§);
         var _loc2_:ContextMenu = new ContextMenu();
         _loc2_.hideBuiltInItems();
         canvas.contextMenu = _loc2_;
         canvas.stage.addChild(this.§="4§ = new Sprite());
         §43§.initialize(canvas.stage);
         §43§.§,!l§.addEventListener(§?N§.§,7§,this.§1"!§);
         this.§5"&§ = new §2!^§("");
         this.§5"&§.start();
         §%4§.addEventListener(§]"!§.§+!B§,this.§4!?§);
         §%4§.addEventListener(§7" §.§=!!§,this.§,!?§);
         §%4§.addEventListener(§7" §.§?!6§,this.§7i§);
      }
      
      private function §4!?§(param1:§]"!§) : void
      {
         §%!#§.§'3§(param1.§?!i§,param1.errorID);
      }
      
      private function §,!?§(param1:§7" §) : void
      {
         §%!#§.§+!r§(param1.§?!i§);
      }
      
      private function §7i§(param1:§7" §) : void
      {
         §%!#§.§'j§(param1.§?!i§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §!!2§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §!"§.§8c§.§1!0§(_loc2_);
         }
      }
      
      private function §?!O§(param1:String) : void
      {
         if(this.§1K§)
         {
            §43§.§;§(true);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §1!%§.§8!?§(§-n§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §1!%§.§8!?§(§=F§);
         this.§9!v§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §1!%§.§8!?§(§-"?§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§9!v§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §1!%§.§8!?§(§;6§);
         this.§9!v§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      protected function §&;§() : void
      {
         if(!§+1§)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §%!#§.§-!X§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §%!#§.§-!X§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §%!#§.§-!X§("tokenExpiresIn");
            }
         }
         this.§4!c§ = new §>x§(stage.loaderInfo.parameters.accessToken);
         § in§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var _loc2_:SharedObject = null;
         super.initialize();
         this.§?!,§ = stage.loaderInfo.parameters.levelId;
         §+!?§.addEventListener(Event.INIT,this.§["?§);
         §+!?§.addEventListener(Event.COMPLETE,this.§;!T§);
         this.§&;§();
         this.§?!"§();
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§6?§,§;q§);
            if(_loc2_.data.useSounds == undefined)
            {
               _loc2_.data.useSounds = true;
            }
            _loc1_ = _loc2_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §#u§(_loc1_);
         §,U§.addCallback("purchaseComplete",§'!0§.§8c§.§]!f§);
         §,U§.addCallback("giftsSentToUsers",this.§!!2§);
         §,U§.addCallback("onUrl",this.§?!O§);
      }
      
      protected function §?!"§() : void
      {
         this.§<![§ = new §`!d§(new §;W§());
      }
      
      public function §1`§() : §;W§
      {
         return this.§<![§.§+",§;
      }
      
      protected function §'!e§() : void
      {
         this.§&"#§ = new §2!h§(§,2§,§7!!§,(sUserProgress as §2!P§).§!!'§);
         this.§="4§.addChild(this.§&"#§);
         this.§&"#§.height = stage.stageHeight;
         this.§&"#§.x = stage.stageWidth - 180;
         this.§&"#§.addEventListener(§?N§.§,7§,this.§1"!§);
         this.§&"#§.addEventListener(§?N§.§%!M§,this.§=!s§);
         this.§&"#§.addEventListener(§?N§.§@!=§,this.§[9§);
         this.§&"#§.addEventListener(§?N§.§[!y§,this.§6">§);
         this.§&"#§.addEventListener(§?N§.§-"5§,this.§;I§);
         this.§&"#§.addEventListener(§?N§.§3!i§,this.§0h§);
         this.§&"#§.addEventListener(§?N§.§="7§,this.§>s§);
         this.§&"#§.addEventListener(§?N§.§9o§,this.§9>§);
         this.§&"#§.addEventListener(§?N§.§2!c§,this.§0"-§);
         this.§&"#§.addEventListener(§?N§.PLAY_LEVEL,this.§?!E§);
         this.§&"#§.§#!-§();
      }
      
      protected function §["?§(param1:Event) : void
      {
         §'8§.§,Y§(false);
      }
      
      protected function §;!T§(param1:Event) : void
      {
         §'8§.§,Y§(true);
      }
      
      public function §+!9§(param1:String, param2:§9c§ = null, param3:Boolean = false) : void
      {
         this.§&"#§.§6&§(!!param1 ? LevelManager.§"!r§(param1).name : "",param1,param2,param3);
      }
      
      public function §+"#§(param1:String) : void
      {
         this.§&"#§.§-![§(param1);
      }
      
      override protected function initLevelMain() : void
      {
         §9!%§.§!!M§ = new §>M§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §2!P§(§7!!§);
      }
      
      override protected function initStates() : void
      {
         §?F§(new §<i§(false));
         §?F§(new §`"§(false));
         §?F§(new §>T§(false));
         §?F§(new §0o§(false));
         §?F§(new §"y§(false));
         §?F§(new §,!Y§(false));
         §?F§(new §["A§(false));
         §?F§(new §2">§(false));
         §?F§(new §0!f§(false));
         §?F§(new §%!_§(false));
         §?F§(new §&j§(false));
         §?F§(new § !n§(false));
         §?F§(new §&"7§(false));
         §?F§(new §-!^§(false));
         §?F§(new §6!y§(false));
         §?F§(new §?"-§(false));
         §?F§(new §4T§(false));
         §?F§(new §3I§(false));
         §?F§(new §6!%§(false));
         §?F§(new §4E§(false));
         §?F§(new §5w§(false));
         §?F§(new StateLastWeeksTournamentResults(false));
      }
      
      override protected function initStateLoad() : §[!A§
      {
         if(!§+1§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §%!#§.§-!X§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         return new §7!e§(true,§[!A§.STATE_NAME,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §4-§ = true;
         if(this.§?!,§)
         {
            if(this.§?!,§.indexOf("2000-") > -1)
            {
               § !`§(§5w§.STATE_NAME);
               return;
            }
            _loc2_ = LevelManager.§?">§(this.§?!,§);
            if(_loc2_ != this.§?!,§)
            {
               §%!#§.§34§(this.§?!,§);
            }
            this.§?!,§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               this.§!!Z§(_loc2_);
               return;
            }
            if(_loc2_.indexOf("2000-") > -1)
            {
               § !`§(§5w§.STATE_NAME);
               return;
            }
         }
         § !`§(§=!e§.STATE_NAME);
      }
      
      public function §!!Z§(param1:String) : void
      {
         param1 = LevelManager.§?">§(param1);
         LevelManager.§'!"§(param1);
         if(param1.indexOf("2000-") > -1)
         {
            § !`§(§<i§.STATE_NAME);
         }
         else
         {
            § !`§(StateCutScene.STATE_NAME);
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§@!g§();
      }
      
      protected function §@!g§() : void
      {
         §%"%§.§#!D§ = new §;c§();
         §%"%§.§#!D§.§^!q§();
         this.§'!e§();
         if(§`"2§.§%o§)
         {
            §43§.§4V§();
         }
         if(String(§[!t§.§8c§.§&!>§).toUpperCase() == "LOTUS")
         {
            §43§.§`!2§();
         }
         if(§6!;§.§4@§)
         {
            §43§.§]O§();
         }
         if(§7!O§.§@<§)
         {
            §43§.§;§();
         }
         if(§,!<§.§=P§)
         {
            §43§.§%>§(§,!<§.§=P§);
         }
         this.§&q§ = new §#",§();
         this.§&q§.§1!#§();
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §,!§;
            _loc3_ = §9#§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         §9!%§.§5c§(0,0,_loc2_ - 180,_loc3_);
         setViewSize(_loc2_ - 180,_loc3_);
         this.§<A§(_loc2_,_loc3_);
         if(this.§&"#§)
         {
            this.§&"#§.x = _loc2_ - 180;
            this.§&"#§.height = _loc3_;
         }
         §,!§ = _loc2_;
         §9#§ = _loc3_;
      }
      
      public function §<A§(param1:Number, param2:Number) : void
      {
         §43§.setViewSize(param1,param2);
      }
      
      protected function §9!v§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      protected function §1"!§(param1:§?N§) : void
      {
         if(param1.data != null)
         {
            §'H§();
            §%!#§.§0G§();
            §,U§.§53§("flashInviteFriendsHandler",param1.data.userId);
         }
         else
         {
            §%!#§.§'#§();
            §43§.§"" §();
         }
      }
      
      protected function §=!s§(param1:§?N§) : void
      {
         §43§.§9C§();
      }
      
      protected function §[9§(param1:§?N§) : void
      {
         §43§.§;!9§();
      }
      
      protected function §6">§(param1:Event) : void
      {
         §>!-§();
      }
      
      protected function §;I§(param1:§?N§) : void
      {
         §+!U§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §0h§(param1:§?N§) : void
      {
         §+!U§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §9>§(param1:§?N§) : void
      {
         §43§.§;§(true);
      }
      
      protected function §0"-§(param1:§?N§) : void
      {
         §'H§();
         var _loc2_:int = (param1.data as §9"$§).§]!S§ - 1;
         §%!#§.§-!a§(_loc2_.toString());
         §,U§.§53§("flashBrag",param1.data.userId,LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§));
      }
      
      protected function §?!E§(param1:§?N§) : void
      {
         var _loc2_:String = param1.target.data.lvl;
         var _loc3_:String = LevelManager.§?">§(_loc2_);
         if(_loc3_ != _loc2_)
         {
            §%!#§.§34§(_loc2_);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
         {
            LevelManager.§'!"§(_loc3_);
            § !`§(StateCutScene.STATE_NAME);
            return;
         }
      }
      
      protected function §>s§(param1:§?N§) : void
      {
         var musicManager:§;W§ = null;
         var mySO:SharedObject = null;
         var e:§?N§ = param1;
         §#u§(!§0!+§());
         if(§0!+§())
         {
            if(§="'§() == StatePlay.STATE_NAME)
            {
               §9!%§.§!!M§.background.§&"B§();
            }
            else if(§="'§() == §0!f§.STATE_NAME || §="'§() == §=B§.STATE_NAME || §="'§() == §2&§.STATE_NAME)
            {
               musicManager = § W§.§%!y§.§1`§();
               musicManager.§2T§(§`!d§.§90§);
            }
         }
         try
         {
            mySO = SharedObject.getLocal(§6?§,§;q§);
            mySO.data.useSounds = §3!U§;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §"! §(param1:String, param2:int) : void
      {
         var _loc3_:int = (AngryBirdsFP11.sUserProgress as §2!P§).getStarsForLevel(param1,param2);
         var _loc4_:int;
         if(_loc4_ = this.§]E§(param2,_loc3_,0,true))
         {
            (AngryBirdsFP11.sUserProgress as §2!P§).§%'§(param1,_loc4_);
         }
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         var _loc5_:int;
         if(_loc5_ = this.§]E§(_loc2_,_loc3_,_loc4_))
         {
            (AngryBirdsFP11.sUserProgress as §2!P§).§ 7§(param1,_loc5_);
         }
      }
      
      private function §]E§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc7_:§9"$§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:int = this.§[!E§.§-V§(LevelManager.§[!<§,param1,param2,param3,_loc5_,param4);
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§]!S§ - 1;
            §%!#§.§"!X§(_loc8_.toString());
         }
         return _loc6_;
      }
      
      public function get §[!E§() : §2!h§
      {
         return this.§&"#§;
      }
      
      public function get §""B§() : §2!^§
      {
         return this.§5"&§;
      }
      
      public function §%q§() : void
      {
         if(this.§5"&§)
         {
            this.§5"&§.§,!6§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §2>§.replace("{svn_version}","local dev build") + "Server: " + §5!9§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §%!#§.§'"-§(§7c§.§5""§,_loc1_.toString(),_loc1_);
         this.§1K§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§>!9§)
         {
            this.§>!9§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§>!9§ += String.fromCharCode(param1.keyCode);
         }
         this.§>!9§ = this.§>!9§.toLowerCase();
         if(this.§>!9§.length > 15)
         {
            this.§>!9§ = this.§>!9§.substr(1);
         }
      }
      
      public function get §2Q§() : §#",§
      {
         return this.§&q§;
      }
      
      public function §1!z§(param1:String) : void
      {
         this.§&"#§.§]!R§(param1);
      }
      
      override public function externalPause() : void
      {
         §%!#§.§ E§();
      }
      
      override public function externalResume() : void
      {
         §%!#§.§[!x§();
      }
   }
}
