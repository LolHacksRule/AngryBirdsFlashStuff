package
{
   import § !§.LoadManager;
   import §!!0§.SoundEngine;
   import §,!J§.UserProgress;
   import §1N§.StateBase;
   import §7!>§.Starling;
   import §7t§.StateChapterSelection;
   import §7t§.StateCreditsNew;
   import §7t§.StateCutScene;
   import §7t§.StateFeed;
   import §7t§.StateFlashGoes11;
   import §7t§.StateLevelEndEagle;
   import §7t§.StateLevelEndFailRio;
   import §7t§.StateLevelEndRio;
   import §7t§.StateLevelLoadClassic;
   import §7t§.StateLevelSelection;
   import §7t§.StatePause;
   import §7t§.StatePlay;
   import §7t§.StateStart;
   import §<u§.§%c§;
   import §<u§.§<y§;
   import §<u§.Log;
   import §>!_§.LevelManager;
   import §?!O§.TweenManager;
   import §?!Y§.§4!U§;
   import §?!Y§.§`S§;
   import §]!@§.LevelMain;
   import §^!7§.Server;
   import §^F§.PackageManager;
   import §`y§.§4!g§;
   import §`y§.BasicGame;
   import com.rovio.assets.TextManager;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import §package§.LevelItemManager;
   
   public class AngryBirdsFP11 extends BasicGame
   {
      
      protected static var mTextBinary:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var SERVER_VERSION:String;
      
      public static var SERVER_ROOT:String;
      
      public static const SCREEN_WIDTH:int = 1024;
      
      public static const SCREEN_HEIGHT:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = true;
      
      public static const LOADING_SCEEN_MINIMUM_TIME:int = 2000;
      
      public static const DISPLAY_FLASH_GOES_11:Boolean = false;
      
      private static const FULL_SCREEN_TOGGLE_INTERVAL:int = 750;
      
      private static const FULL_SCREEN_FRAME_UPDATE_LIMIT:int = 3;
      
      private static const FULL_SCREEN_MOUSE_UPDATE_LIMIT:int = 15;
      
      protected static var mViewLibraryBin:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var mAssetMapBin:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var mItemDataTableBin:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var mLevelBackgroundsTableBin:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:UserProgress = null;
      
      public static var sSoundsEnabled:Boolean = true;
      
      private static var sSingleton:AngryBirdsFP11 = null;
      
      public static var mAppMask:Sprite = null;
      
      public static var sPauseManager:§4!U§;
      
      public static var sInitComplete:Boolean = false;
      
      protected static var sStageWidth:int = 0;
      
      protected static var sStageHeight:int = 0;
       
      
      private var §^!d§:PackageManager;
      
      private var §'b§:int;
      
      private var §@!,§:Boolean;
      
      private var §?!+§:int;
      
      private var §-!4§:int;
      
      protected var §,-§:Boolean;
      
      public function AngryBirdsFP11(canvas:§4!g§)
      {
         this.§^!d§ = new PackageManager();
         super(canvas,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §@]§ || stage.stageHeight != §!3§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return sStageWidth;
      }
      
      public static function get stageHeight() : int
      {
         return sStageHeight;
      }
      
      public static function §0!§(value:Boolean) : void
      {
         sSoundsEnabled = value;
         SoundEngine.§=!f§(sSoundsEnabled);
      }
      
      public static function §4!M§() : Boolean
      {
         return sSoundsEnabled;
      }
      
      public static function get §@]§() : int
      {
         return §'t§.getAppWidth();
      }
      
      public static function get §!3§() : int
      {
         return §'t§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(SoundEngine.§'!'§("Channel_Theme") == null || !SoundEngine.§'!'§("Channel_Theme").§?§())
         {
            SoundEngine.§-!h§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §5!R§() : void
      {
         SoundEngine.§]!&§("Channel_Theme");
      }
      
      public static function get §'t§() : AngryBirdsFP11
      {
         return sSingleton;
      }
      
      protected function getAssetMap() : XML
      {
         return §<y§.§1P§(mAssetMapBin);
      }
      
      protected function getUIData() : XML
      {
         return §<y§.§1P§(mViewLibraryBin);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         LoadManager.§7!E§.init(Server.§'!%§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§^!d§,this.§5q§);
         sSingleton = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §]o§ = §@]§;
         §4!O§ = §!3§;
         §`S§.init(this,§@]§,§!3§);
         this.initLevelMain();
         §`S§.§5I§.visible = false;
         Log.§>h§(§!!d§);
         Log.§@!?§(true);
         var textData:XMLList = §<y§.§1P§(mTextBinary).children();
         TextManager.init(textData);
         SoundEngine.§ Q§("CHANNEL_THEME",1,1);
         SoundEngine.§ Q§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§0!W§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§#h§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         sPauseManager = new §4!U§(stage);
         TweenManager.§7!E§.§function§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function initLevelMain() : void
      {
         §`S§.§[o§ = new LevelMain(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new UserProgress(SERVER_ROOT);
      }
      
      protected function initStates() : void
      {
         §,u§(new StateFlashGoes11(false));
         §,u§(new StateLevelLoadClassic(false));
         §,u§(new StateStart(false));
         §,u§(new StateChapterSelection(false));
         §,u§(new StateLevelSelection(false));
         §,u§(new StatePlay(false));
         §,u§(new StatePause(false));
         §,u§(new StateLevelEndRio(false));
         §,u§(new StateLevelEndEagle(false));
         §,u§(new StateLevelEndFailRio(false));
         §,u§(new StateFeed(false));
         §,u§(new StateCutScene(false));
         §,u§(new StateCreditsNew(false));
         if(stage.stageWidth != §@]§ || stage.stageHeight != §!3§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §5q§(data:ByteArray) : void
      {
      }
      
      protected function §0!W§(e:Event) : void
      {
         §%c§.§5! §();
      }
      
      protected function §#h§(e:MouseEvent) : void
      {
         §%c§.§4]§();
         if(this.§@!,§)
         {
            ++this.§-!4§;
            if(this.§-!4§ > FULL_SCREEN_MOUSE_UPDATE_LIMIT)
            {
               this.§@!,§ = false;
               if(this.§?!+§ < FULL_SCREEN_FRAME_UPDATE_LIMIT)
               {
                  this.§;!L§(this.§'b§);
               }
            }
         }
      }
      
      public function §"-§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(e:Event) : void
      {
         var width:Number = NaN;
         var height:Number = NaN;
         if(this.§,-§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var widthScale:Number = stage.stageWidth / §@]§;
         var heightScale:Number = stage.stageHeight / §!3§;
         if(widthScale < heightScale)
         {
            width = stage.stageWidth;
            height = stage.stageWidth * (§!3§ / §@]§);
         }
         else
         {
            width = stage.stageHeight * (§@]§ / §!3§);
            height = stage.stageHeight;
         }
         §`S§.§!+§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         sStageWidth = stage.stageWidth;
         sStageHeight = stage.stageHeight;
      }
      
      public function §0-§() : void
      {
         var time:int = getTimer();
         if(time - this.§'b§ > FULL_SCREEN_TOGGLE_INTERVAL)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§;!L§(time);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§;!c§(time);
            }
         }
      }
      
      public function §?]§() : void
      {
         this.§;!L§(0);
      }
      
      public function §;!§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §;!L§(time:int) : void
      {
         this.§,-§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§'b§ = time;
         this.§@!,§ = false;
      }
      
      private function §;!c§(time:int) : void
      {
         this.§,-§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§'b§ = time;
         this.§?!+§ = 0;
         this.§-!4§ = 0;
         this.§@!,§ = true;
      }
      
      protected function onKeyDown(event:KeyboardEvent) : void
      {
         switch(event.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         LoadManager.§7!E§.§%!'§();
         LevelManager.§'!J§(JSON.parse(this.§^!d§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(deltaTime:Number) : int
      {
         if(§`S§.§5I§ != null)
         {
            §`S§.§5I§.update(deltaTime);
         }
         var returnValue:int = super.updateState(deltaTime);
         if(!§`!O§().isGenericState())
         {
            if(returnValue == StateBase.STATE_STATUS_COMPLETED)
            {
               Log.log("AngryBirdSocial::run() state change is about to start. Old State = " + §`!O§().mName + " New State = " + §`!O§().mNextState);
               §&!<§(§`!O§().mNextState);
            }
         }
         return returnValue;
      }
      
      override public function getAppWidth() : Number
      {
         return SCREEN_WIDTH;
      }
      
      override public function getAppHeight() : Number
      {
         return SCREEN_HEIGHT;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return LOADING_SCEEN_MINIMUM_TIME;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + SERVER_VERSION;
      }
      
      protected function initializeGame() : void
      {
         §`S§.§ !i§(this.getItemData(),this.getLevelBackgrounds());
         §`S§.§7!Z§(this.§^!d§.§@l§,LevelItemManager.§2L§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §<y§.§1P§(mLevelBackgroundsTableBin);
      }
      
      protected function getItemData() : XML
      {
         return §<y§.§1P§(mItemDataTableBin);
      }
      
      protected function onGraphicsInitialized(e:Event) : void
      {
         sInitComplete = true;
         if(DISPLAY_FLASH_GOES_11)
         {
            §&!<§(StateFlashGoes11.STATE_NAME);
         }
         else
         {
            §&!<§(StateStart.STATE_NAME);
         }
      }
      
      public function newUserScore(level:String) : void
      {
      }
      
      override public function onEnterFrame(e:Event) : void
      {
         if(this.§@!,§)
         {
            ++this.§?!+§;
         }
         if(!Starling.§!w§())
         {
            return;
         }
         super.onEnterFrame(e);
         if(this.§,-§)
         {
            this.§,-§ = false;
         }
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
