package
{
   import § 3§.FacebookUserProgress;
   import §"!i§.InitDataLoader;
   import §"!i§.UserLevelScoreVO;
   import §#_§.CachedFacebookFriends;
   import §#_§.HighScoreListManager;
   import §&"§.ExternalInterfaceHandler;
   import §'8§.FacebookLevelManager;
   import §1N§.StateLoad;
   import §5=§.§#m§;
   import §5=§.§9F§;
   import §5=§.GoogleAnalyticsTracker;
   import §6v§.§,!f§;
   import §6v§.§5!D§;
   import §7t§.StateChapterSelection;
   import §7t§.StateCreditsNew;
   import §7t§.StateCutScene;
   import §7t§.StateLevelSelection;
   import §7t§.StatePlay;
   import §;!1§.§9u§;
   import §;+§.FacebookLeveLMain;
   import §<_§.AvatarRenderer;
   import §<u§.§<y§;
   import §=!i§.§>Z§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import §[!$§.§5!E§;
   import §[!$§.§7I§;
   import §[!$§.§<E§;
   import §[!$§.StateFacebookCredits;
   import §[!$§.StateFacebookEpisodeSelection;
   import §[!$§.StateFacebookLevelEnd;
   import §[!$§.StateFacebookLevelEndFail;
   import §[!$§.StateFacebookLevelSelection;
   import §[!$§.StateFacebookLoad;
   import §[!$§.StateFacebookPause;
   import §[!$§.StateFacebookPlay;
   import §`y§.§4!g§;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class AngryBirdsUltraBook extends AngryBirdsFP11
   {
      
      public static const AB_FACEBOOK_VERSION:String = "1.0.0.4 r97391)";
      
      private static const LOCAL_STORAGE:String = "AngryBirdsIntelUltrabookSettings";
      
      protected static var mFacebookAssetMapBin:Class = §0O§;
      
      protected static var mFacebookViewLibraryBin:Class = §1!H§;
      
      protected static var mFacebookLevelBackgroundsBin:Class = §%D§;
      
      protected static var mFacebookItemDataTableBin:Class = §66§;
      
      public static var sHighScoreListManager:HighScoreListManager;
      
      public static var sSingleton:AngryBirdsUltraBook;
       
      
      protected var §@r§:FriendsBar;
      
      private var §!>§:String = null;
      
      private var §@7§:String = "";
      
      private var §'p§:§#m§;
      
      private var §5"§:Sprite;
      
      private var §^m§:Boolean = false;
      
      public function AngryBirdsUltraBook(canvas:§4!g§)
      {
         var stage3D:Stage3D = null;
         GoogleAnalyticsTracker.enabled = true;
         var stage3Dcount:int = 0;
         try
         {
            stage3D = canvas.stage.stage3Ds[0];
            if(stage3D)
            {
               stage3Dcount = 1;
            }
         }
         catch(e:Error)
         {
         }
         if(stage3Dcount == 0)
         {
            §9F§.§while§("no-stage3d");
         }
         SERVER_VERSION = canvas.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         SERVER_ROOT = canvas.stage.loaderInfo.parameters.serverRoot || (!!DEBUG_MODE_ENABLED ? "http://head-dot-ab-in-adventure.appspot.com" : "http://head-dot-ab-in-adventure.appspot.com");
         super(canvas);
         sSingleton = this;
         §9F§.§&k§(GoogleAnalyticsTracker.§+!B§);
         var contextMenu:ContextMenu = new ContextMenu();
         contextMenu.hideBuiltInItems();
         canvas.contextMenu = contextMenu;
         canvas.stage.addChild(this.§5"§ = new Sprite());
         §9u§.initialize(canvas.stage);
         this.§'p§ = new §#m§("");
         this.§'p§.start();
      }
      
      public static function §]!h§() : String
      {
         if((sUserProgress as FacebookUserProgress).userID)
         {
            return LOCAL_STORAGE + "-" + (sUserProgress as FacebookUserProgress).userID;
         }
         return null;
      }
      
      public static function §=[§(dataObject:Object) : void
      {
         sHighScoreListManager = new HighScoreListManager(SERVER_ROOT,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName);
         sHighScoreListManager.§"!9§(dataObject);
         var count:int = sHighScoreListManager.§2!g§;
         if(count >= 0)
         {
            §9F§.§7u§(count);
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §62§(users:Array) : void
      {
      }
      
      private function § each§(path:String) : void
      {
         if(!this.§^m§)
         {
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §<y§.§1P§(mFacebookAssetMapBin);
      }
      
      override protected function getUIData() : XML
      {
         var vanillaUIData:XML = super.getUIData();
         var facebookUIData:XML = §<y§.§1P§(mFacebookViewLibraryBin);
         this.§5Z§(facebookUIData,vanillaUIData,["Views","Components"],true);
         return vanillaUIData;
      }
      
      override protected function getItemData() : XML
      {
         var vanillaItemData:XML = super.getItemData();
         var facebookItemData:XML = §<y§.§1P§(mFacebookItemDataTableBin);
         var treesToCopy:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§5Z§(facebookItemData,vanillaItemData,treesToCopy);
         return vanillaItemData;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var vanillaLevelBackgrounds:XML = super.getLevelBackgrounds();
         var facebookLevelBackgrounds:XML = §<y§.§1P§(mFacebookLevelBackgroundsBin);
         this.§5Z§(facebookLevelBackgrounds,vanillaLevelBackgrounds,["Backgrounds"]);
         return vanillaLevelBackgrounds;
      }
      
      protected function §"!F§() : void
      {
         if(!DEBUG_MODE_ENABLED)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §9F§.§<0§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §9F§.§<0§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §9F§.§<0§("tokenExpiresIn");
            }
         }
         InitDataLoader.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var mySO:SharedObject = null;
         super.initialize();
         this.§!>§ = stage.loaderInfo.parameters.levelId;
         sPauseManager.addEventListener(Event.INIT,this.§2&§);
         sPauseManager.addEventListener(Event.COMPLETE,this.§9!g§);
         this.§"!F§();
         var soundsEnabled:Boolean = true;
         try
         {
            mySO = SharedObject.getLocal(LOCAL_STORAGE,"/ab_in_adventure");
            if(mySO.data.useSounds == undefined)
            {
               mySO.data.useSounds = true;
            }
            soundsEnabled = mySO.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §0!§(soundsEnabled);
         ExternalInterfaceHandler.addCallback("giftsSentToUsers",this.§62§);
         ExternalInterfaceHandler.addCallback("onUrl",this.§ each§);
      }
      
      protected function get() : void
      {
         this.§@r§ = new FriendsBar(sHighScoreListManager,SERVER_ROOT,(sUserProgress as FacebookUserProgress).userID);
         this.§5"§.addChild(this.§@r§);
         this.§@r§.height = stage.stageHeight;
         this.§@r§.x = stage.stageWidth - 180;
         this.§@r§.addEventListener(§>Z§.INVITE_FRIENDS_REQUESTED,this.set);
         this.§@r§.addEventListener(§>Z§.FULLSCREEN_TOGGLE_REQUESTED,this.§6n§);
         this.§@r§.addEventListener(§>Z§.INFO_REQUESTED,this.§,!i§);
         this.§@r§.addEventListener(§>Z§.TUTORIAL_REQUESTED,this.§^0§);
         this.§@r§.addEventListener(§>Z§.MUTE_TOGGLE_REQUESTED,this.§,G§);
         this.§@r§.addEventListener(§>Z§.BRAG,this.§&!6§);
         this.§@r§.addEventListener(§>Z§.PLAY_LEVEL,this.§>!V§);
         this.§@r§.§8w§();
      }
      
      protected function §2&§(e:Event) : void
      {
         §5!D§.§6h§(false);
      }
      
      protected function §9!g§(e:Event) : void
      {
         §5!D§.§6h§(true);
      }
      
      public function §,!@§(level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         this.§@r§.§^!;§(Boolean(level) ? LevelManager.§6X§(level).name : "",level,scores,isTournament);
      }
      
      public function §`<§(buttonState:String) : void
      {
         this.§@r§.§5!;§(buttonState);
      }
      
      override protected function initLevelMain() : void
      {
         §`S§.§[o§ = new FacebookLeveLMain(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new FacebookUserProgress(SERVER_ROOT);
      }
      
      override protected function initStates() : void
      {
         §,u§(new §7I§(false));
         §,u§(new §<E§(false));
         §,u§(new StateFacebookEpisodeSelection(false));
         §,u§(new StateFacebookLevelSelection(false));
         §,u§(new StateFacebookPlay(false));
         §,u§(new StateFacebookPause(false));
         §,u§(new StateFacebookLevelEnd(false));
         §,u§(new StateFacebookLevelEndFail(false));
         §,u§(new §5!E§(false));
         §,u§(new StateFacebookCredits(false));
      }
      
      override protected function initStateLoad() : StateLoad
      {
         if(!DEBUG_MODE_ENABLED)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §9F§.§<0§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         return new StateFacebookLoad(true,StateLoad.STATE_NAME,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(e:Event) : void
      {
         var levelId:String = null;
         sInitComplete = true;
         if(this.§!>§)
         {
            levelId = LevelManager.§'!^§(this.§!>§);
            if(levelId != this.§!>§)
            {
               §9F§.§+!d§(this.§!>§);
            }
            this.§!>§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
            {
               this.§;!"§(levelId);
               return;
            }
         }
         §&!<§(StateChapterSelection.STATE_NAME);
      }
      
      public function §;!"§(levelId:String) : void
      {
         levelId = LevelManager.§'!^§(levelId);
         LevelManager.§?h§(levelId);
         §&!<§(StateCutScene.STATE_NAME);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §,!f§.sAvatarRenderer = new AvatarRenderer();
         §,!f§.sAvatarRenderer.§!Q§();
         this.get();
         if((sUserProgress as FacebookUserProgress).hasTutorialBeenSeen(FacebookUserProgress.TOURNAMENT_TUTORIAL) == false)
         {
            (sUserProgress as FacebookUserProgress).saveTutorialSeen(FacebookUserProgress.TOURNAMENT_TUTORIAL);
         }
      }
      
      override protected function onStageResize(e:Event) : void
      {
         var width:int = Math.round(stage.stageWidth);
         var height:int = Math.round(stage.stageHeight);
         if(width < 20 || height < 20)
         {
            width = sStageWidth;
            height = sStageHeight;
         }
         if(width < 2 || height < 2)
         {
            return;
         }
         if(width / height > 25 / 12)
         {
            width = Math.round(height * (25 / 12));
         }
         var resulWidth:int = width - (180 - 62);
         §`S§.§!+§(0,0,resulWidth,height);
         setViewSize(resulWidth,height);
         this.§8!=§(width,height);
         if(this.§@r§)
         {
            this.§@r§.x = width - 180;
            this.§@r§.height = height;
         }
         sStageWidth = resulWidth;
         sStageHeight = height;
      }
      
      public function §8!=§(width:Number, height:Number) : void
      {
         §9u§.setViewSize(width,height);
      }
      
      protected function §5Z§(sourceXML:XML, destinationXML:XML, treesToCopy:Array, deleteSameName:Boolean = false) : void
      {
         var treeName:String = null;
         var childNode:XML = null;
         for each(treeName in treesToCopy)
         {
            for each(childNode in sourceXML[treeName].*)
            {
               if(deleteSameName)
               {
                  delete destinationXML[treeName][childNode.name()];
               }
               destinationXML[treeName].appendChild(childNode);
            }
         }
      }
      
      protected function set(e:§>Z§) : void
      {
         §?]§();
         if(e.data != null)
         {
            §9F§.§#!T§();
         }
         else
         {
            §9F§.§?1§();
         }
         ExternalInterfaceHandler.§`F§("flashInviteFriendsHandler",Boolean(e.data) ? e.data.userId : null);
      }
      
      protected function §6n§(e:Event) : void
      {
         §0-§();
      }
      
      protected function §,!i§(e:§>Z§) : void
      {
         trace("Should go to credits screen.");
         §+!%§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §^0§(e:§>Z§) : void
      {
         §+!%§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §&!6§(e:§>Z§) : void
      {
         §?]§();
         var position:int = (e.data as UserLevelScoreVO).rank - 1;
         §9F§.§"N§(position.toString());
         ExternalInterfaceHandler.§`F§("flashBrag",e.data.userId,LevelManager.§1m§,LevelManager.§!]§().writtenName + "-" + FacebookLevelManager.§5j§(LevelManager.§1m§));
      }
      
      protected function §>!V§(e:§>Z§) : void
      {
         var targetLevelId:String = e.target.data.lvl;
         var levelId:String = LevelManager.§'!^§(targetLevelId);
         if(levelId != targetLevelId)
         {
            §9F§.§+!d§(targetLevelId);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
         {
            LevelManager.§?h§(levelId);
            §&!<§(StateCutScene.STATE_NAME);
            return;
         }
      }
      
      protected function §,G§(e:§>Z§) : void
      {
         var mySO:SharedObject = null;
         §0!§(!§4!M§());
         if(§4!M§())
         {
            if(§+'§() == StatePlay.STATE_NAME)
            {
               §`S§.§[o§.background.§8a§();
            }
            else if(§+'§() == StateFacebookEpisodeSelection.STATE_NAME || §+'§() == StateLevelSelection.STATE_NAME || §+'§() == StateCreditsNew.STATE_NAME)
            {
               AngryBirdsFP11.playThemeMusic();
            }
         }
         try
         {
            mySO = SharedObject.getLocal(LOCAL_STORAGE,"/ab_in_adventure");
            mySO.data.useSounds = sSoundsEnabled;
            mySO.flush();
         }
         catch(e:Error)
         {
            trace("Unable to get local storage aborting");
         }
      }
      
      override public function newUserScore(level:String) : void
      {
         var score:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(level);
         var stars:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(level);
         var mEagle:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(level);
         var rankAfterUpdate:int = this.§9#§(score,stars,mEagle);
         if(rankAfterUpdate)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§!!F§(level,rankAfterUpdate);
         }
      }
      
      private function §9#§(score:int, stars:int, mEagle:int = 0, isTournament:Boolean = false) : int
      {
         var beatenUser:UserLevelScoreVO = null;
         var position:int = 0;
         var beatenUsers:Array = [];
         var rankAfterUpdate:int = this.§7X§.§[!Y§(LevelManager.§1m§,score,stars,mEagle,beatenUsers,isTournament);
         for each(beatenUser in beatenUsers)
         {
            position = beatenUser.rank - 1;
            §9F§.§6!I§(position.toString());
         }
         return rankAfterUpdate;
      }
      
      public function get §7X§() : FriendsBar
      {
         return this.§@r§;
      }
      
      public function get §^!c§() : §#m§
      {
         return this.§'p§;
      }
      
      public function §1!$§() : void
      {
         if(this.§'p§)
         {
            this.§'p§.§&J§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + AB_FACEBOOK_VERSION.replace("{svn_version}","local dev build") + "Server: " + SERVER_VERSION;
      }
      
      override protected function initializeGame() : void
      {
         var time:int = Math.round(getTimer() / 1000);
         §9F§.§&k§(GoogleAnalyticsTracker.§4Q§,time.toString(),time);
         this.§^m§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(event:KeyboardEvent) : void
      {
         super.onKeyDown(event);
         if(!this.§@7§)
         {
            this.§@7§ = String.fromCharCode(event.keyCode);
         }
         else
         {
            this.§@7§ += String.fromCharCode(event.keyCode);
         }
         this.§@7§ = this.§@7§.toLowerCase();
         if(this.§@7§.length > 15)
         {
            this.§@7§ = this.§@7§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
         §9F§.§25§();
      }
      
      override public function externalResume() : void
      {
         §9F§.§3!N§();
      }
   }
}
