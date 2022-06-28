package
{
   import §"!!§.§&G§;
   import §#!2§.§%!8§;
   import §#!2§.§0!<§;
   import §#!2§.§5s§;
   import §#!2§.StateFacebookCredits;
   import §#!2§.StateFacebookEpisodeSelection;
   import §#!2§.StateFacebookLevelEnd;
   import §#!2§.StateFacebookLevelSelection;
   import §#!2§.StateFacebookLoad;
   import §#!2§.StateFacebookPause;
   import §#!2§.StateFacebookPlay;
   import §#!2§.§^!`§;
   import §#!X§.LevelManager;
   import §'!%§.CachedFacebookFriends;
   import §'!%§.HighScoreListManager;
   import §'N§.§0d§;
   import §+R§.§3!1§;
   import §+R§.§9!S§;
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §2S§.§<!U§;
   import §8T§.FacebookUserProgress;
   import §9!!§.§->§;
   import §9!!§.§85§;
   import §9!!§.GoogleAnalyticsTracker;
   import §9c§.StateChapterSelection;
   import §9c§.StateCreditsNew;
   import §9c§.StateCutScene;
   import §9c§.StateLevelSelection;
   import §9c§.StatePlay;
   import §9v§.§4!c§;
   import §<!=§.InitDataLoader;
   import §<!=§.UserLevelScoreVO;
   import §@Q§.FacebookLeveLMain;
   import §[!>§.StateLoad;
   import §[c§.AvatarRenderer;
   import §[g§.FacebookLevelManager;
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
      
      public static const AB_FACEBOOK_VERSION:String = "1.0.0.2 r97324)";
      
      private static const LOCAL_STORAGE:String = "AngryBirdsIntelUltrabookSettings";
      
      protected static var mFacebookAssetMapBin:Class = §?!6§;
      
      protected static var mFacebookViewLibraryBin:Class = §22§;
      
      protected static var mFacebookLevelBackgroundsBin:Class = §7r§;
      
      protected static var mFacebookItemDataTableBin:Class = §!!M§;
      
      public static var sHighScoreListManager:HighScoreListManager;
      
      public static var sSingleton:AngryBirdsUltraBook;
       
      
      protected var §-!J§:FriendsBar;
      
      private var §']§:String = null;
      
      private var §3R§:String = "";
      
      private var §0-§:§->§;
      
      private var §implements§:Sprite;
      
      private var §[!P§:Boolean = false;
      
      public function AngryBirdsUltraBook(canvas:§&G§)
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
            §85§.§6!U§("no-stage3d");
         }
         SERVER_VERSION = canvas.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         SERVER_ROOT = canvas.stage.loaderInfo.parameters.serverRoot || (!!DEBUG_MODE_ENABLED ? "http://head-dot-angrybirds-ultrabook.appspot.com" : "http://head-dot-angrybirds-ultrabook.appspot.com");
         super(canvas);
         sSingleton = this;
         §85§.§,!=§(GoogleAnalyticsTracker.§%!h§);
         var contextMenu:ContextMenu = new ContextMenu();
         contextMenu.hideBuiltInItems();
         canvas.contextMenu = contextMenu;
         canvas.stage.addChild(this.§implements§ = new Sprite());
         §4!c§.initialize(canvas.stage);
         this.§0-§ = new §->§("");
         this.§0-§.start();
      }
      
      public static function §!!E§() : String
      {
         if((sUserProgress as FacebookUserProgress).userID)
         {
            return LOCAL_STORAGE + "-" + (sUserProgress as FacebookUserProgress).userID;
         }
         return null;
      }
      
      public static function §<8§(dataObject:Object) : void
      {
         sHighScoreListManager = new HighScoreListManager(SERVER_ROOT,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName);
         sHighScoreListManager.§]k§(dataObject);
         var count:int = sHighScoreListManager.§>R§;
         if(count >= 0)
         {
            §85§.§%>§(count);
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §+!`§(users:Array) : void
      {
      }
      
      private function §[!H§(path:String) : void
      {
         if(!this.§[!P§)
         {
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §0d§.§@A§(mFacebookAssetMapBin);
      }
      
      override protected function getUIData() : XML
      {
         var vanillaUIData:XML = super.getUIData();
         var facebookUIData:XML = §0d§.§@A§(mFacebookViewLibraryBin);
         this.§;!O§(facebookUIData,vanillaUIData,["Views","Components"],true);
         return vanillaUIData;
      }
      
      override protected function getItemData() : XML
      {
         var vanillaItemData:XML = super.getItemData();
         var facebookItemData:XML = §0d§.§@A§(mFacebookItemDataTableBin);
         var treesToCopy:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§;!O§(facebookItemData,vanillaItemData,treesToCopy);
         return vanillaItemData;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var vanillaLevelBackgrounds:XML = super.getLevelBackgrounds();
         var facebookLevelBackgrounds:XML = §0d§.§@A§(mFacebookLevelBackgroundsBin);
         this.§;!O§(facebookLevelBackgrounds,vanillaLevelBackgrounds,["Backgrounds"]);
         return vanillaLevelBackgrounds;
      }
      
      protected function §%X§() : void
      {
         if(!DEBUG_MODE_ENABLED)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §85§.§"!V§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §85§.§"!V§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §85§.§"!V§("tokenExpiresIn");
            }
         }
         InitDataLoader.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var mySO:SharedObject = null;
         super.initialize();
         this.§']§ = stage.loaderInfo.parameters.levelId;
         sPauseManager.addEventListener(Event.INIT,this.§1!@§);
         sPauseManager.addEventListener(Event.COMPLETE,this.§&Z§);
         this.§%X§();
         var soundsEnabled:Boolean = true;
         try
         {
            mySO = SharedObject.getLocal(LOCAL_STORAGE,"/ultrabook");
            if(mySO.data.useSounds == undefined)
            {
               mySO.data.useSounds = true;
            }
            soundsEnabled = mySO.data.useSounds;
         }
         catch(e:Error)
         {
         }
         § !@§(soundsEnabled);
         ExternalInterfaceHandler.addCallback("giftsSentToUsers",this.§+!`§);
         ExternalInterfaceHandler.addCallback("onUrl",this.§[!H§);
      }
      
      protected function §9!P§() : void
      {
         this.§-!J§ = new FriendsBar(sHighScoreListManager,SERVER_ROOT,(sUserProgress as FacebookUserProgress).userID);
         this.§implements§.addChild(this.§-!J§);
         this.§-!J§.height = stage.stageHeight;
         this.§-!J§.x = stage.stageWidth - 180;
         this.§-!J§.addEventListener(§<!U§.INVITE_FRIENDS_REQUESTED,this.§null§);
         this.§-!J§.addEventListener(§<!U§.FULLSCREEN_TOGGLE_REQUESTED,this.§6>§);
         this.§-!J§.addEventListener(§<!U§.INFO_REQUESTED,this.§5!D§);
         this.§-!J§.addEventListener(§<!U§.TUTORIAL_REQUESTED,this.§=K§);
         this.§-!J§.addEventListener(§<!U§.MUTE_TOGGLE_REQUESTED,this.§#7§);
         this.§-!J§.addEventListener(§<!U§.BRAG,this.§]F§);
         this.§-!J§.addEventListener(§<!U§.PLAY_LEVEL,this.§8D§);
         this.§-!J§.§7V§();
      }
      
      protected function §1!@§(e:Event) : void
      {
         §3!1§.§<]§(false);
      }
      
      protected function §&Z§(e:Event) : void
      {
         §3!1§.§<]§(true);
      }
      
      public function §1!-§(level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         this.§-!J§.§-!e§(Boolean(level) ? LevelManager.§'!7§(level).name : "",level,scores,isTournament);
      }
      
      public function §"!S§(buttonState:String) : void
      {
         this.§-!J§.§]!§(buttonState);
      }
      
      override protected function initLevelMain() : void
      {
         §4!T§.§1t§ = new FacebookLeveLMain(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new FacebookUserProgress(SERVER_ROOT);
      }
      
      override protected function initStates() : void
      {
         §&=§(new §^!`§(false));
         §&=§(new §0!<§(false));
         §&=§(new StateFacebookEpisodeSelection(false));
         §&=§(new StateFacebookLevelSelection(false));
         §&=§(new StateFacebookPlay(false));
         §&=§(new StateFacebookPause(false));
         §&=§(new StateFacebookLevelEnd(false));
         §&=§(new §5s§(false));
         §&=§(new §%!8§(false));
         §&=§(new StateFacebookCredits(false));
      }
      
      override protected function initStateLoad() : StateLoad
      {
         if(!DEBUG_MODE_ENABLED)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §85§.§"!V§("assetsUrl");
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
         if(this.§']§)
         {
            levelId = LevelManager.§[!U§(this.§']§);
            if(levelId != this.§']§)
            {
               §85§.§<!d§(this.§']§);
            }
            this.§']§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
            {
               this.§<!M§(levelId);
               return;
            }
         }
         §0!f§(StateChapterSelection.STATE_NAME);
      }
      
      public function §<!M§(levelId:String) : void
      {
         levelId = LevelManager.§[!U§(levelId);
         LevelManager.§%<§(levelId);
         §0!f§(StateCutScene.STATE_NAME);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §9!S§.sAvatarRenderer = new AvatarRenderer();
         §9!S§.sAvatarRenderer.§ else§();
         this.§9!P§();
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
         §4!T§.§[Y§(0,0,resulWidth,height);
         setViewSize(resulWidth,height);
         this.§>!%§(width,height);
         if(this.§-!J§)
         {
            this.§-!J§.x = width - 180;
            this.§-!J§.height = height;
         }
         sStageWidth = resulWidth;
         sStageHeight = height;
      }
      
      public function §>!%§(width:Number, height:Number) : void
      {
         §4!c§.setViewSize(width,height);
      }
      
      protected function §;!O§(sourceXML:XML, destinationXML:XML, treesToCopy:Array, deleteSameName:Boolean = false) : void
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
      
      protected function §null§(e:§<!U§) : void
      {
         §!!'§();
         if(e.data != null)
         {
            §85§.§9Q§();
         }
         else
         {
            §85§.§'!&§();
         }
         ExternalInterfaceHandler.§!!@§("flashInviteFriendsHandler",Boolean(e.data) ? e.data.userId : null);
      }
      
      protected function §6>§(e:Event) : void
      {
         §,!f§();
      }
      
      protected function §5!D§(e:§<!U§) : void
      {
         trace("Should go to credits screen.");
         §5?§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §=K§(e:§<!U§) : void
      {
         §5?§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §]F§(e:§<!U§) : void
      {
         §!!'§();
         var position:int = (e.data as UserLevelScoreVO).rank - 1;
         §85§.§&!0§(position.toString());
         ExternalInterfaceHandler.§!!@§("flashBrag",e.data.userId,LevelManager.§!=§,LevelManager.§7+§().writtenName + "-" + FacebookLevelManager.§else§(LevelManager.§!=§));
      }
      
      protected function §8D§(e:§<!U§) : void
      {
         var targetLevelId:String = e.target.data.lvl;
         var levelId:String = LevelManager.§[!U§(targetLevelId);
         if(levelId != targetLevelId)
         {
            §85§.§<!d§(targetLevelId);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
         {
            LevelManager.§%<§(levelId);
            §0!f§(StateCutScene.STATE_NAME);
            return;
         }
      }
      
      protected function §#7§(e:§<!U§) : void
      {
         var mySO:SharedObject = null;
         § !@§(!§%!D§());
         if(§%!D§())
         {
            if(§6!g§() == StatePlay.STATE_NAME)
            {
               §4!T§.§1t§.background.§9J§();
            }
            else if(§6!g§() == StateFacebookEpisodeSelection.STATE_NAME || §6!g§() == StateLevelSelection.STATE_NAME || §6!g§() == StateCreditsNew.STATE_NAME)
            {
               AngryBirdsFP11.playThemeMusic();
            }
         }
         try
         {
            mySO = SharedObject.getLocal(LOCAL_STORAGE,"/ultrabook");
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
         var rankAfterUpdate:int = this.§4!1§(score,stars,mEagle);
         if(rankAfterUpdate)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§38§(level,rankAfterUpdate);
         }
      }
      
      private function §4!1§(score:int, stars:int, mEagle:int = 0, isTournament:Boolean = false) : int
      {
         var beatenUser:UserLevelScoreVO = null;
         var position:int = 0;
         var beatenUsers:Array = [];
         var rankAfterUpdate:int = this.§9=§.§6,§(LevelManager.§!=§,score,stars,mEagle,beatenUsers,isTournament);
         for each(beatenUser in beatenUsers)
         {
            position = beatenUser.rank - 1;
            §85§.§8!0§(position.toString());
         }
         return rankAfterUpdate;
      }
      
      public function get §9=§() : FriendsBar
      {
         return this.§-!J§;
      }
      
      public function get §=s§() : §->§
      {
         return this.§0-§;
      }
      
      public function §+m§() : void
      {
         if(this.§0-§)
         {
            this.§0-§.§<R§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + AB_FACEBOOK_VERSION.replace("{svn_version}","local dev build") + "Server: " + SERVER_VERSION;
      }
      
      override protected function initializeGame() : void
      {
         var time:int = Math.round(getTimer() / 1000);
         §85§.§,!=§(GoogleAnalyticsTracker.§>!A§,time.toString(),time);
         this.§[!P§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(event:KeyboardEvent) : void
      {
         super.onKeyDown(event);
         if(!this.§3R§)
         {
            this.§3R§ = String.fromCharCode(event.keyCode);
         }
         else
         {
            this.§3R§ += String.fromCharCode(event.keyCode);
         }
         this.§3R§ = this.§3R§.toLowerCase();
         if(this.§3R§.length > 15)
         {
            this.§3R§ = this.§3R§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
         §85§.§^!R§();
      }
      
      override public function externalResume() : void
      {
         §85§.§;e§();
      }
   }
}
