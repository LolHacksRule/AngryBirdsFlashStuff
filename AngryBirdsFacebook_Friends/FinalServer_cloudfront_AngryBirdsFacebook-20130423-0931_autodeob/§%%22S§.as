package
{
   import § "!§.§!"O§;
   import § "!§.§""X§;
   import § "!§.§2w§;
   import § 7§.§ else§;
   import §%!I§.§5S§;
   import §%!I§.§6"&§;
   import §%!I§.§6"'§;
   import §%!I§.§7!6§;
   import §%!I§.§7"1§;
   import §%!I§.StateLastWeeksTournamentResults;
   import §%!I§.§]!M§;
   import §%!I§.§]"=§;
   import §%"J§.§!`§;
   import §&r§.§'"L§;
   import §+!c§.§9"H§;
   import §,l§.§#!,§;
   import §,l§.§+I§;
   import §,l§.§4"7§;
   import §,l§.§;!O§;
   import §,l§.§<"W§;
   import §0!C§.§ 3§;
   import §0!C§.§9!"§;
   import §0D§.§3!R§;
   import §30§.§'"+§;
   import §4!<§.§%6§;
   import §5!Y§.§9"6§;
   import §8";§.§?4§;
   import §8m§.§!2§;
   import §8m§.§&!e§;
   import §8m§.§6!n§;
   import §8m§.§;!e§;
   import §8m§.§@"M§;
   import §9!n§.§!J§;
   import §9!n§.LevelManager;
   import §9@§.§+"[§;
   import §9@§.§3w§;
   import §9@§.§4d§;
   import §9@§.§5c§;
   import §9@§.§@q§;
   import §;!d§.§6"L§;
   import §;u§.§ "F§;
   import §;u§.§%Z§;
   import §;u§.§&"[§;
   import §;u§.§+"9§;
   import §;u§.§+n§;
   import §;u§.§,!<§;
   import §;u§.§4"Y§;
   import §;u§.§5<§;
   import §;u§.§7!w§;
   import §;u§.§7D§;
   import §;u§.§9!V§;
   import §;u§.§9"@§;
   import §;u§.§;"P§;
   import §;u§.§;`§;
   import §;u§.§=c§;
   import §;u§.§>!o§;
   import §;u§.§@!P§;
   import §;u§.StateCutScene;
   import §;u§.StatePlay;
   import §;u§.§^"2§;
   import §<"F§.§["M§;
   import §<w§.§8p§;
   import §<w§.§[!N§;
   import §=!>§.§2!Z§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §["6§.§ var§;
   import §^!o§.§1! §;
   import §^"F§.§9H§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.system.Security;
   import flash.utils.getTimer;
   
   public class §%"S§ extends AngryBirdsFP11 implements §4d§
   {
      
      public static const §2&§:String = "r106667";
      
      private static const §3H§:String = "AngryBirdsFacebookSettings";
      
      public static const override:String = "/";
      
      protected static var §`"A§:Class = §&!R§;
      
      protected static var §%2§:Class = §32§;
      
      protected static var §9!b§:Class = §9""§;
      
      protected static var §2"S§:Class = §@E§;
      
      protected static var §%!r§:Class = §7n§;
      
      protected static var §!Y§:Class = §>>§;
      
      public static var §%P§:§[!N§;
      
      public static var §!C§:§%"S§;
       
      
      protected var §^%§:§]a§;
      
      public var §`"§:§ 3§;
      
      private var §0";§:§9!"§;
      
      private var §8"6§:String = null;
      
      private var §-!^§:String = "";
      
      private var §[z§:§+I§;
      
      private var §@"6§:§5c§;
      
      private var §&!S§:§;!e§;
      
      private var § a§:Sprite;
      
      private var §9!#§:Boolean = false;
      
      private var §@!B§:Boolean = false;
      
      private var §+!S§:String;
      
      private var § "Z§:String;
      
      public function §%"S§(param1:§!`§)
      {
         this.§[z§ = new §+I§();
         §@!x§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §?8§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§#V§ ? "http://dev-dot-angrybirds-facebook-dev.appspot.com/" : "http://angrybirds-facebook-dev.appspot.com");
         super(param1);
         this.§@r§();
      }
      
      public static function §@!I§() : String
      {
         if((sUserProgress as §#!$§).§5!0§)
         {
            return §3H§ + "-" + (sUserProgress as §#!$§).§5!0§;
         }
         return null;
      }
      
      public static function §2`§(param1:Object) : void
      {
         §%P§ = new §[!N§(§?8§,(AngryBirdsFP11.sUserProgress as §#!$§).§5!0§,(AngryBirdsFP11.sUserProgress as §#!$§).userName);
         §%P§.injectData(param1);
         var _loc2_:int = §%P§.§&"U§;
         if(_loc2_ >= 0)
         {
            §@q§.§9!F§(_loc2_);
         }
      }
      
      protected function §@r§() : void
      {
         var _loc3_:Stage3D = null;
         §3w§.enabled = true;
         §@q§.§4!,§ = true;
         var _loc1_:int = 0;
         try
         {
            _loc3_ = canvas.stage.stage3Ds[0];
            if(_loc3_)
            {
               _loc1_ = 1;
            }
         }
         catch(e:Error)
         {
         }
         if(_loc1_ == 0)
         {
            §@q§.§1[§("no-stage3d");
         }
         §!C§ = this;
         §@q§.§#!0§(§3w§.§1"=§);
         this.§1"$§();
         §9"6§.initialize(canvas.stage);
         §9"6§.§!6§.addEventListener(§6"L§.§ !1§,this.§<m§);
         this.§@"6§ = new §5c§("");
         this.§@"6§.start();
         §@"M§.addEventListener(§!2§.§,3§,this.§;!^§);
         §@"M§.addEventListener(§&!e§.§%!<§,this.§3!9§);
         §@"M§.addEventListener(§&!e§.§2-§,this.§'"H§);
      }
      
      private function get accessToken() : String
      {
         return §5!l§("accessToken") || this.§ "Z§;
      }
      
      public function get §9"%§() : §+I§
      {
         return this.§[z§;
      }
      
      private function §;!^§(param1:§!2§) : void
      {
         §@q§.§9!N§(param1.§+h§,param1.errorID);
      }
      
      private function §3!9§(param1:§&!e§) : void
      {
         §@q§.§-!U§(param1.§+h§);
      }
      
      private function §'"H§(param1:§&!e§) : void
      {
         §@q§.§"!5§(param1.§+h§);
      }
      
      protected function §1"$§() : void
      {
         canvas.stage.addChild(this.§ a§ = new Sprite());
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §6z§(param1:Array) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1)
         {
            §4"7§.§&"5§.§0!Q§(_loc2_);
         }
      }
      
      private function §4"G§(param1:String) : void
      {
         if(this.§9!#§)
         {
            §9"6§.§8+§(true);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §9"H§.§5!h§(§`"A§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §9"H§.§5!h§(§%2§);
         var _loc3_:XML = §9"H§.§5!h§(§9!b§);
         this.§>"V§(_loc2_,_loc1_,["Views","Components"],true);
         this.§>"V§(_loc3_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §9"H§.§5!h§(§%!r§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§>"V§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §9"H§.§5!h§(§2"S§);
         this.§>"V§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      protected function §^$§() : void
      {
         if(!§#V§)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §@q§.§=t§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §@q§.§=t§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §@q§.§=t§("tokenExpiresIn");
            }
         }
         §+"[§.accessToken = this.accessToken;
         this.§`"§ = new § 3§(stage.loaderInfo.parameters.accessToken);
         §;!O§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsRoot;
      }
      
      override protected function initialize() : void
      {
         var _loc2_:SharedObject = null;
         super.initialize();
         this.§8"6§ = stage.loaderInfo.parameters.levelId;
         stage.showDefaultContextMenu = false;
         §8!v§.addEventListener(Event.INIT,this.§!"9§);
         §8!v§.addEventListener(Event.COMPLETE,this.§`"W§);
         this.§^$§();
         this.§"E§();
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§3H§,override);
            if(_loc2_.data.useSounds == undefined)
            {
               _loc2_.data.useSounds = true;
            }
            _loc1_ = _loc2_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §]"H§(_loc1_);
         §'"+§.addCallback("purchaseComplete",this.§@M§);
         §'"+§.addCallback("giftsSentToUsers",this.§6z§);
         §'"+§.addCallback("onUrl",this.§4"G§);
      }
      
      private function §@M§(param1:String, param2:Number) : void
      {
         §#!,§.§&"5§.§@J§();
      }
      
      protected function §"E§() : void
      {
         this.§&!S§ = new §;!e§(new §6!n§());
      }
      
      public function §#"C§() : §6!n§
      {
         return this.§&!S§.§-b§;
      }
      
      protected function §5§() : void
      {
         this.§^%§ = new §]a§(§%P§,§?8§,(sUserProgress as §#!$§).§5!0§);
         this.§ a§.addChild(this.§^%§);
         this.§^%§.height = stage.stageHeight;
         this.§^%§.x = stage.stageWidth - 180;
         this.§^%§.addEventListener(§6"L§.§ !1§,this.§<m§);
         this.§^%§.addEventListener(§6"L§.§%!a§,this.§=E§);
         this.§^%§.addEventListener(§6"L§.§?M§,this.§>!7§);
         this.§^%§.addEventListener(§6"L§.§try§,this.§,$§);
         this.§^%§.addEventListener(§6"L§.§3"9§,this.§8!K§);
         this.§^%§.addEventListener(§6"L§.§ !2§,this.§'"S§);
         this.§^%§.addEventListener(§6"L§.§-d§,this.§6>§);
         this.§^%§.addEventListener(§6"L§.§[!<§,this.§,"M§);
         this.§^%§.addEventListener(§6"L§.§"!c§,this.§6"=§);
         this.§^%§.addEventListener(§6"L§.PLAY_LEVEL,this.§`"0§);
         this.§^%§.§7"W§();
      }
      
      protected function §!"9§(param1:Event) : void
      {
         §!"O§.§'Z§(false);
      }
      
      protected function §`"W§(param1:Event) : void
      {
         §!"O§.§'Z§(true);
      }
      
      public function §!n§(param1:String, param2:§8p§ = null, param3:Boolean = false) : void
      {
         this.§^%§.§+x§(!!param1 ? LevelManager.§5!T§(param1).name : "",param1,param2,param3);
      }
      
      public function § b§(param1:String) : void
      {
         this.§^%§.§@8§(param1);
      }
      
      override protected function initLevelMain() : void
      {
         §?l§.§'h§ = new §%6§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §#!$§(§?8§);
      }
      
      override protected function initStates() : void
      {
         §%1§(new §5S§(false));
         §%1§(new §6"&§(false));
         §%1§(new §7!6§(false));
         §%1§(new §6"'§(false));
         §%1§(new §7"1§(false));
         §%1§(new §]"=§(false));
         §%1§(new §;"P§(false));
         §%1§(new §>!o§(false));
         §%1§(new §^"2§(false));
         §%1§(new §7D§(false));
         §%1§(new §5<§(false));
         §%1§(new §+"9§(false));
         §%1§(new §@!P§(false));
         §%1§(new §7!w§(false));
         §%1§(new §,!<§(false));
         §%1§(new §+n§(false));
         §%1§(new §%Z§(false));
         §%1§(new § "F§(false));
         §%1§(new §;`§(false));
         §%1§(new §4"Y§(false));
         §%1§(new §]!M§(false));
         §%1§(new StateLastWeeksTournamentResults(false));
      }
      
      override protected function initStateLoad() : §?4§
      {
         if(!§#V§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §@q§.§=t§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         try
         {
            Security.allowDomain("*");
            Security.allowInsecureDomain("*");
         }
         catch(e:Error)
         {
         }
         return new §=c§(true,§?4§.STATE_NAME,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsRoot || "",stage.loaderInfo.parameters.assetsUrl,stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §`!5§ = true;
         if(this.§8"6§)
         {
            if(this.§8"6§.indexOf("2000-") > -1)
            {
               §`H§(§]!M§.STATE_NAME);
               return;
            }
            _loc2_ = LevelManager.§["S§(this.§8"6§);
            if(_loc2_ != this.§8"6§)
            {
               §@q§.§^j§(this.§8"6§);
            }
            this.§8"6§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               this.§5!N§(_loc2_);
               return;
            }
            if(_loc2_.indexOf("2000-") > -1)
            {
               §`H§(§]!M§.STATE_NAME);
               return;
            }
         }
         §`H§(§9!V§.STATE_NAME);
      }
      
      public function §5!N§(param1:String) : void
      {
         param1 = LevelManager.§["S§(param1);
         LevelManager.§,!m§(param1);
         if(param1.indexOf("2000-") > -1)
         {
            §`H§(§5S§.STATE_NAME);
         }
         else
         {
            §`H§(StateCutScene.STATE_NAME);
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§""<§();
      }
      
      public function get §'!t§() : Boolean
      {
         return this.§@!B§;
      }
      
      protected function §""<§() : void
      {
         var _loc1_:Object = null;
         §2w§.§6!w§ = new §""X§();
         §2w§.§6!w§.§@]§();
         this.§5§();
         this.§@!B§ = true;
         if(§'"L§.§!"§)
         {
            §9"6§.§1!q§();
         }
         if(§ var§.§!Q§)
         {
            §9"6§.§["#§(true);
         }
         if(§3!R§.§&"5§.§%!^§ && §3!R§.§&"5§.§%!^§.§9>§)
         {
            §9"6§.§<"T§(§3!R§.§&"5§.§%!^§.§9>§);
         }
         if(§ else§.§4O§)
         {
            §9"6§.§8+§();
         }
         if(§#!,§.§&"5§.§9!9§.§8k§(§1! §.§2"J§))
         {
            §9"6§.§[?§();
         }
         if(§2!Z§.§25§)
         {
            §9"6§.§'!b§(§2!Z§.§25§);
         }
         if(this.§9"%§.§7"T§.§+!!§() && !AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(§#!$§.§4"P§ + §["M§.§0<§))
         {
            §9"6§.§2!U§();
         }
         if(!this.§9"%§.§7"T§.§+!!§() && !AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(§#!$§.§+%§ + §["M§.§0<§))
         {
            §9"6§.§^!J§();
         }
         if(!this.§9"%§.§7"T§.§+!!§() && !AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(§#!$§.§1!g§ + §["M§.§0<§) && this.§9"%§.§7"T§.§8!+§(new Date()))
         {
            this.§9"%§.§7"T§.§ "A§();
         }
         this.§0";§ = new §9!"§();
         this.§0";§.§">§();
         for each(_loc1_ in §#!,§.§&"5§.§9!9§.claimableBundles)
         {
            if(!§#!,§.§&"5§.§9!9§.§8k§(_loc1_.toString().toUpperCase()))
            {
               continue;
            }
            switch(_loc1_.toString().toUpperCase())
            {
               case §9H§.§-!h§.§[!2§.toUpperCase():
                  §9"6§.§7"!§(§9H§.§-!h§);
                  break;
            }
         }
         resize(true);
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:int = param1;
         param1 -= 180;
         if(this.§^%§)
         {
            this.§^%§.x = param1;
            this.§^%§.height = param2;
         }
         this.§-"M§(_loc3_,param2);
         super.resizeViews(param1,param2);
      }
      
      public function §-"M§(param1:Number, param2:Number) : void
      {
         §9"6§.setViewSize(param1,param2);
      }
      
      protected function §>"V§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      protected function §<m§(param1:§6"L§) : void
      {
         if(param1.data != null)
         {
            §^X§();
            §@q§.§`=§();
            §'"+§.§'!#§("flashInviteFriendsHandler",param1.data.userId);
         }
         else
         {
            §@q§.§%"Z§();
            §9"6§.§?"J§();
         }
      }
      
      protected function §=E§(param1:§6"L§) : void
      {
         §9"6§.§;!w§();
      }
      
      protected function §>!7§(param1:§6"L§) : void
      {
         §9"6§.§<h§();
      }
      
      protected function §,$§(param1:Event) : void
      {
         §=-§();
      }
      
      protected function §8!K§(param1:§6"L§) : void
      {
         §=2§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §'"S§(param1:§6"L§) : void
      {
         §=2§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §,"M§(param1:§6"L§) : void
      {
         §9"6§.§8+§(true);
      }
      
      protected function §6"=§(param1:§6"L§) : void
      {
         §^X§();
         var _loc2_:int = (param1.data as §<"W§).§'Q§ - 1;
         §@q§.§[!Q§(_loc2_.toString());
         var _loc3_:String = LevelManager.§ T§.substr(0,LevelManager.§ T§.indexOf("-"));
         var _loc4_:String = §!J§.§;6§(LevelManager.§ T§);
         var _loc5_:int;
         if((_loc5_ = §3!R§.§&"5§.§8I§.indexOf(LevelManager.§ T§)) > -1)
         {
            _loc4_ = String(§3!R§.§&"5§.§5K§(LevelManager.§ T§));
         }
         §'"+§.§'!#§("flashBrag",param1.data.userId,_loc3_,LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§),_loc4_);
      }
      
      protected function §`"0§(param1:§6"L§) : void
      {
         var _loc2_:String = param1.target.data.lvl;
         var _loc3_:String = LevelManager.§["S§(_loc2_);
         if(_loc3_ != _loc2_)
         {
            §@q§.§^j§(_loc2_);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
         {
            LevelManager.§,!m§(_loc3_);
            §`H§(StateCutScene.STATE_NAME);
            return;
         }
      }
      
      protected function §6>§(param1:§6"L§) : void
      {
         var musicManager:§6!n§ = null;
         var mySO:SharedObject = null;
         var e:§6"L§ = param1;
         §]"H§(!§6!,§());
         if(§6!,§())
         {
            if(§%^§() == StatePlay.STATE_NAME)
            {
               §?l§.§'h§.background.§6"$§();
            }
            else if(§%^§() == §^"2§.STATE_NAME || §%^§() == §9"@§.STATE_NAME || §%^§() == §&"[§.STATE_NAME)
            {
               musicManager = §%"S§.§!C§.§#"C§();
               musicManager.§8!9§(§;!e§.§^a§);
            }
         }
         try
         {
            mySO = SharedObject.getLocal(§3H§,override);
            mySO.data.useSounds = §["J§;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §4!D§(param1:String, param2:int) : void
      {
         var _loc3_:int = (AngryBirdsFP11.sUserProgress as §#!$§).getStarsForLevel(param1,param2);
         var _loc4_:int;
         if(_loc4_ = this.§4!B§(param2,_loc3_,0,true))
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).§1q§(param1,_loc4_);
         }
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         var _loc5_:int;
         if(_loc5_ = this.§4!B§(_loc2_,_loc3_,_loc4_))
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).§'!y§(param1,_loc5_);
         }
      }
      
      private function §4!B§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc7_:§<"W§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:int = this.§'u§.§1"<§(LevelManager.§ T§,param1,param2,param3,_loc5_,param4);
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§'Q§ - 1;
            §@q§.§,!t§(_loc8_.toString());
         }
         return _loc6_;
      }
      
      public function get §'u§() : §]a§
      {
         return this.§^%§;
      }
      
      public function get §96§() : §5c§
      {
         return this.§@"6§;
      }
      
      public function §%A§() : void
      {
         if(this.§@"6§)
         {
            this.§@"6§.§[!k§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Version: " + §@!x§ + " " + §2&§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §@q§.§#!0§(§3w§.§5!'§,_loc1_.toString(),_loc1_);
         §@q§.trackPageView(this,§3w§.§5!'§);
         this.§9!#§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§-!^§)
         {
            this.§-!^§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§-!^§ += String.fromCharCode(param1.keyCode);
         }
         this.§-!^§ = this.§-!^§.toLowerCase();
         if(this.§-!^§.length > 15)
         {
            this.§-!^§ = this.§-!^§.substr(1);
         }
      }
      
      public function get §^!F§() : §9!"§
      {
         return this.§0";§;
      }
      
      public function §]"Y§(param1:String) : void
      {
         this.§^%§.§>"[§(param1);
      }
      
      override public function externalPause() : void
      {
         §@q§.§@!;§();
      }
      
      override public function externalResume() : void
      {
         §@q§.§ !=§();
      }
      
      public function §=,§() : String
      {
         return §@q§.§;"§;
      }
      
      public function §8"3§() : String
      {
         return §3w§.§5!'§;
      }
   }
}
