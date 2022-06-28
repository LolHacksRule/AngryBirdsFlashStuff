package
{
   import § D§.§]!B§;
   import §![§.FacebookLeveLMain;
   import §"L§.LevelManager;
   import §%!4§.§]!e§;
   import §'b§.ExternalInterfaceHandler;
   import §+p§.§&!>§;
   import §,!O§.§3![§;
   import §3w§.AvatarRenderer;
   import §4H§.StateLoad;
   import §5!'§.§ !Q§;
   import §5!'§.§>Y§;
   import §6b§.§^9§;
   import §7p§.§#s§;
   import §7p§.§+!N§;
   import §7p§.GoogleAnalyticsTracker;
   import §9R§.CachedFacebookFriends;
   import §9R§.HighScoreListManager;
   import §9r§.FacebookLevelManager;
   import §<!S§.StateChapterSelection;
   import §<!S§.StateCreditsNew;
   import §<!S§.StateCutScene;
   import §<!S§.StateLevelSelection;
   import §<!S§.StatePlay;
   import §?j§.FacebookUserProgress;
   import §@!`§.InitDataLoader;
   import §@!`§.UserLevelScoreVO;
   import §@z§.§,Y§;
   import §@z§.§5n§;
   import §@z§.§<?§;
   import §@z§.StateFacebookCredits;
   import §@z§.StateFacebookEpisodeSelection;
   import §@z§.StateFacebookLevelEnd;
   import §@z§.StateFacebookLevelSelection;
   import §@z§.StateFacebookLoad;
   import §@z§.StateFacebookPause;
   import §@z§.StateFacebookPlay;
   import §@z§.§`!`§;
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
      
      public static const AB_FACEBOOK_VERSION:String = "0.0.0.11 r97068)";
      
      private static const LOCAL_STORAGE:String = "AngryBirdsFacebookSettings";
      
      protected static var mFacebookAssetMapBin:Class = §7q§;
      
      protected static var mFacebookViewLibraryBin:Class = §?!2§;
      
      protected static var mFacebookLevelBackgroundsBin:Class = §5!b§;
      
      protected static var mFacebookItemDataTableBin:Class = §8!4§;
      
      public static var sHighScoreListManager:HighScoreListManager;
      
      public static var sSingleton:AngryBirdsUltraBook;
       
      
      protected var §=!>§:FriendsBar;
      
      private var § !H§:String = null;
      
      private var §#"§:String = "";
      
      private var §]`§:§#s§;
      
      private var §,!A§:Sprite;
      
      private var §4!L§:Boolean = false;
      
      public function AngryBirdsUltraBook(canvas:§3![§)
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
            §+!N§.§-U§("no-stage3d");
         }
         SERVER_VERSION = canvas.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         SERVER_ROOT = canvas.stage.loaderInfo.parameters.serverRoot || (!!DEBUG_MODE_ENABLED ? "http://head-dot-angrybirds-ultrabook.appspot.com" : "http://head-dot-angrybirds-ultrabook.appspot.com");
         super(canvas);
         sSingleton = this;
         §+!N§.§1`§(GoogleAnalyticsTracker.§5W§);
         var contextMenu:ContextMenu = new ContextMenu();
         contextMenu.hideBuiltInItems();
         canvas.contextMenu = contextMenu;
         canvas.stage.addChild(this.§,!A§ = new Sprite());
         §]!e§.initialize(canvas.stage);
         this.§]`§ = new §#s§("");
         this.§]`§.start();
      }
      
      public static function §9!N§() : String
      {
         if((sUserProgress as FacebookUserProgress).userID)
         {
            return LOCAL_STORAGE + "-" + (sUserProgress as FacebookUserProgress).userID;
         }
         return null;
      }
      
      public static function §7r§(dataObject:Object) : void
      {
         sHighScoreListManager = new HighScoreListManager(SERVER_ROOT,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName);
         sHighScoreListManager.§2!$§(dataObject);
         var count:int = sHighScoreListManager.§"!J§;
         if(count >= 0)
         {
            §+!N§.§]w§(count);
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §import§(users:Array) : void
      {
         var user:String = null;
         for each(user in users)
         {
         }
      }
      
      private function §"!j§(path:String) : void
      {
         if(!this.§4!L§)
         {
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §^9§.§1<§(mFacebookAssetMapBin);
      }
      
      override protected function getUIData() : XML
      {
         var vanillaUIData:XML = super.getUIData();
         var facebookUIData:XML = §^9§.§1<§(mFacebookViewLibraryBin);
         this.§6^§(facebookUIData,vanillaUIData,["Views","Components"],true);
         return vanillaUIData;
      }
      
      override protected function getItemData() : XML
      {
         var vanillaItemData:XML = super.getItemData();
         var facebookItemData:XML = §^9§.§1<§(mFacebookItemDataTableBin);
         var treesToCopy:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§6^§(facebookItemData,vanillaItemData,treesToCopy);
         return vanillaItemData;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var vanillaLevelBackgrounds:XML = super.getLevelBackgrounds();
         var facebookLevelBackgrounds:XML = §^9§.§1<§(mFacebookLevelBackgroundsBin);
         this.§6^§(facebookLevelBackgrounds,vanillaLevelBackgrounds,["Backgrounds"]);
         return vanillaLevelBackgrounds;
      }
      
      protected function §%!+§() : void
      {
         if(!DEBUG_MODE_ENABLED)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §+!N§.§>"§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §+!N§.§>"§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §+!N§.§>"§("tokenExpiresIn");
            }
         }
         InitDataLoader.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var mySO:SharedObject = null;
         super.initialize();
         this.§ !H§ = stage.loaderInfo.parameters.levelId;
         sPauseManager.addEventListener(Event.INIT,this.§8R§);
         sPauseManager.addEventListener(Event.COMPLETE,this.§<!]§);
         this.§%!+§();
         var soundsEnabled:Boolean = true;
         try
         {
            mySO = SharedObject.getLocal(LOCAL_STORAGE);
            if(mySO.data.useSounds != undefined)
            {
               trace("Sound data found locally");
               trace("Setting sounds: " + mySO.data.useSounds);
            }
            else
            {
               trace("Sound settings not found");
               mySO.data.useSounds = true;
            }
            soundsEnabled = mySO.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §72§(soundsEnabled);
         ExternalInterfaceHandler.addCallback("giftsSentToUsers",this.§import§);
         ExternalInterfaceHandler.addCallback("onUrl",this.§"!j§);
      }
      
      protected function §`Y§() : void
      {
         this.§=!>§ = new FriendsBar(sHighScoreListManager,SERVER_ROOT,(sUserProgress as FacebookUserProgress).userID);
         this.§,!A§.addChild(this.§=!>§);
         this.§=!>§.height = stage.stageHeight;
         this.§=!>§.x = stage.stageWidth - 180;
         this.§=!>§.addEventListener(§&!>§.INVITE_FRIENDS_REQUESTED,this.§!!h§);
         this.§=!>§.addEventListener(§&!>§.FULLSCREEN_TOGGLE_REQUESTED,this.§1!O§);
         this.§=!>§.addEventListener(§&!>§.INFO_REQUESTED,this.§=M§);
         this.§=!>§.addEventListener(§&!>§.TUTORIAL_REQUESTED,this.§+A§);
         this.§=!>§.addEventListener(§&!>§.MUTE_TOGGLE_REQUESTED,this.§2!F§);
         this.§=!>§.addEventListener(§&!>§.BRAG,this.§`!R§);
         this.§=!>§.addEventListener(§&!>§.PLAY_LEVEL,this.§,!V§);
         this.§=!>§.§>!E§();
      }
      
      protected function §8R§(e:Event) : void
      {
         §>Y§.§1e§(false);
      }
      
      protected function §<!]§(e:Event) : void
      {
         §>Y§.§1e§(true);
      }
      
      public function §81§(level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         this.§=!>§.§]! §(Boolean(level) ? LevelManager.§;<§(level).name : "",level,scores,isTournament);
      }
      
      public function §8$§(buttonState:String) : void
      {
         this.§=!>§.§+x§(buttonState);
      }
      
      override protected function initLevelMain() : void
      {
         §]!B§.§>F§ = new FacebookLeveLMain(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new FacebookUserProgress(SERVER_ROOT);
      }
      
      override protected function initStates() : void
      {
         §<!g§(new §,Y§(false));
         §<!g§(new §`!`§(false));
         §<!g§(new StateFacebookEpisodeSelection(false));
         §<!g§(new StateFacebookLevelSelection(false));
         §<!g§(new StateFacebookPlay(false));
         §<!g§(new StateFacebookPause(false));
         §<!g§(new StateFacebookLevelEnd(false));
         §<!g§(new §<?§(false));
         §<!g§(new §5n§(false));
         §<!g§(new StateFacebookCredits(false));
      }
      
      override protected function initStateLoad() : StateLoad
      {
         if(!DEBUG_MODE_ENABLED)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §+!N§.§>"§("assetsUrl");
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
         if(this.§ !H§)
         {
            levelId = LevelManager.§"%§(this.§ !H§);
            if(levelId != this.§ !H§)
            {
               §+!N§.§!m§(this.§ !H§);
            }
            this.§ !H§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
            {
               this.§;!6§(levelId);
               return;
            }
         }
         §,!&§(StateChapterSelection.STATE_NAME);
      }
      
      public function §;!6§(levelId:String) : void
      {
         levelId = LevelManager.§"%§(levelId);
         LevelManager.§]!R§(levelId);
         §,!&§(StateCutScene.STATE_NAME);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         § !Q§.sAvatarRenderer = new AvatarRenderer();
         § !Q§.sAvatarRenderer.§'I§();
         this.§`Y§();
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
         §]!B§.§%e§(0,0,resulWidth,height);
         setViewSize(resulWidth,height);
         this.§7d§(width,height);
         if(this.§=!>§)
         {
            this.§=!>§.x = width - 180;
            this.§=!>§.height = height;
         }
         sStageWidth = resulWidth;
         sStageHeight = height;
      }
      
      public function §7d§(width:Number, height:Number) : void
      {
         §]!e§.setViewSize(width,height);
      }
      
      protected function §6^§(sourceXML:XML, destinationXML:XML, treesToCopy:Array, deleteSameName:Boolean = false) : void
      {
         var treeName:String = null;
         var childNode:XML = null;
         for each(var _loc9_ in treesToCopy)
         {
            treeName = _loc9_;
            _loc9_;
            for each(var _loc11_ in sourceXML[treeName].*)
            {
               childNode = _loc11_;
               _loc11_;
               if(deleteSameName)
               {
                  delete destinationXML[treeName][childNode.name()];
               }
               destinationXML[treeName].appendChild(childNode);
            }
         }
      }
      
      protected function §!!h§(e:§&!>§) : void
      {
         §"§();
         if(e.data != null)
         {
            §+!N§.§3!0§();
         }
         else
         {
            §+!N§.§?!W§();
         }
         ExternalInterfaceHandler.§>!2§("flashInviteFriendsHandler",Boolean(e.data) ? e.data.userId : null);
      }
      
      protected function §1!O§(e:Event) : void
      {
         §>J§();
      }
      
      protected function §=M§(e:§&!>§) : void
      {
         trace("Should go to credits screen.");
         §-v§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §+A§(e:§&!>§) : void
      {
         §-v§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §`!R§(e:§&!>§) : void
      {
         §"§();
         var position:int = (e.data as UserLevelScoreVO).rank - 1;
         §+!N§.§6q§(position.toString());
         ExternalInterfaceHandler.§>!2§("flashBrag",e.data.userId,LevelManager.§var§,LevelManager.§&!e§().writtenName + "-" + FacebookLevelManager.§%!P§(LevelManager.§var§));
      }
      
      protected function §,!V§(e:§&!>§) : void
      {
         var targetLevelId:String = e.target.data.lvl;
         var levelId:String = LevelManager.§"%§(targetLevelId);
         if(levelId != targetLevelId)
         {
            §+!N§.§!m§(targetLevelId);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
         {
            LevelManager.§]!R§(levelId);
            §,!&§(StateCutScene.STATE_NAME);
            return;
         }
      }
      
      protected function §2!F§(e:§&!>§) : void
      {
         var mySO:SharedObject = null;
         §72§(!§+i§());
         if(§+i§())
         {
            if(§!!e§() == StatePlay.STATE_NAME)
            {
               §]!B§.§>F§.background.§5T§();
            }
            else if(§!!e§() == StateFacebookEpisodeSelection.STATE_NAME || §!!e§() == StateLevelSelection.STATE_NAME || §!!e§() == StateCreditsNew.STATE_NAME)
            {
               AngryBirdsFP11.playThemeMusic();
            }
         }
         try
         {
            mySO = SharedObject.getLocal(LOCAL_STORAGE);
            mySO.data.useSounds = sSoundsEnabled;
            mySO.flush();
            trace("Storing sound settings: " + sSoundsEnabled);
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
         var rankAfterUpdate:int = this.§?,§(score,stars,mEagle);
         if(rankAfterUpdate)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§5Q§(level,rankAfterUpdate);
         }
      }
      
      private function §?,§(score:int, stars:int, mEagle:int = 0, isTournament:Boolean = false) : int
      {
         var beatenUser:UserLevelScoreVO = null;
         var position:int = 0;
         var beatenUsers:Array = [];
         var rankAfterUpdate:int = this.§8^§.§-!E§(LevelManager.§var§,score,stars,mEagle,beatenUsers,isTournament);
         for each(var _loc11_ in beatenUsers)
         {
            beatenUser = _loc11_;
            _loc11_;
            position = beatenUser.rank - 1;
            §+!N§.§^!j§(position.toString());
         }
         return rankAfterUpdate;
      }
      
      public function get §8^§() : FriendsBar
      {
         return this.§=!>§;
      }
      
      public function get §56§() : §#s§
      {
         return this.§]`§;
      }
      
      public function §+k§() : void
      {
         if(this.§]`§)
         {
            this.§]`§.§,x§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + AB_FACEBOOK_VERSION.replace("{svn_version}","local dev build") + "Server: " + SERVER_VERSION;
      }
      
      override protected function initializeGame() : void
      {
         var time:int = Math.round(getTimer() / 1000);
         §+!N§.§1`§(GoogleAnalyticsTracker.§`!B§,time.toString(),time);
         this.§4!L§ = true;
         true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(event:KeyboardEvent) : void
      {
         super.onKeyDown(event);
         if(!this.§#"§)
         {
            this.§#"§ = String.fromCharCode(event.keyCode);
         }
         else
         {
            this.§#"§ = this.§#"§ + String.fromCharCode(event.keyCode);
         }
         this.§#"§ = this.§#"§.toLowerCase();
         if(this.§#"§.length > 15)
         {
            this.§#"§ = this.§#"§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
         §+!N§.§[!A§();
      }
      
      override public function externalResume() : void
      {
         §+!N§.§@!%§();
      }
   }
}
