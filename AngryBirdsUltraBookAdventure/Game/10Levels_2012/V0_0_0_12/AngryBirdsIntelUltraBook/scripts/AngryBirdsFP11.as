package
{
   import § D§.§[!O§;
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §%!T§.LoadManager;
   import §,!O§.§3![§;
   import §,!O§.BasicGame;
   import §0P§.Starling;
   import §2!H§.LevelMain;
   import §2=§.TweenManager;
   import §4H§.StateBase;
   import §6!a§.Server;
   import §6b§.§3r§;
   import §6b§.Log;
   import §6b§.§^9§;
   import §;T§.LevelItemManager;
   import §<!S§.StateChapterSelection;
   import §<!S§.StateCreditsNew;
   import §<!S§.StateCutScene;
   import §<!S§.StateFeed;
   import §<!S§.StateFlashGoes11;
   import §<!S§.StateLevelEndEagle;
   import §<!S§.StateLevelEndFailRio;
   import §<!S§.StateLevelEndRio;
   import §<!S§.StateLevelLoadClassic;
   import §<!S§.StateLevelSelection;
   import §<!S§.StatePause;
   import §<!S§.StatePlay;
   import §<!S§.StateStart;
   import §=?§.SoundEngine;
   import §=]§.PackageManager;
   import §?!O§.UserProgress;
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
      
      public static var sPauseManager:§[!O§;
      
      public static var sInitComplete:Boolean = false;
      
      protected static var sStageWidth:int = 0;
      
      protected static var sStageHeight:int = 0;
       
      
      private var §8!V§:PackageManager;
      
      private var §'!h§:int;
      
      private var §>!§:Boolean;
      
      private var §+h§:int;
      
      private var §&!B§:int;
      
      protected var §>O§:Boolean;
      
      public function AngryBirdsFP11(canvas:§3![§)
      {
         this.§8!V§ = new PackageManager();
         super(canvas,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §8!6§ || stage.stageHeight != §1[§)
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
      
      public static function §72§(value:Boolean) : void
      {
         sSoundsEnabled = value;
         SoundEngine.§?!$§(sSoundsEnabled);
      }
      
      public static function §+i§() : Boolean
      {
         return sSoundsEnabled;
      }
      
      public static function get §8!6§() : int
      {
         return §5V§.getAppWidth();
      }
      
      public static function get §1[§() : int
      {
         return §5V§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(SoundEngine.§!_§("Channel_Theme") == null || !SoundEngine.§!_§("Channel_Theme").§ O§())
         {
            SoundEngine.§9!X§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §2!#§() : void
      {
         SoundEngine.§'!B§("Channel_Theme");
      }
      
      public static function get §5V§() : AngryBirdsFP11
      {
         return sSingleton;
      }
      
      protected function getAssetMap() : XML
      {
         return §^9§.§1<§(mAssetMapBin);
      }
      
      protected function getUIData() : XML
      {
         return §^9§.§1<§(mViewLibraryBin);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         LoadManager.§8!X§.init(Server.§&7§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§8!V§,this.§@h§);
         sSingleton = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §=!6§ = §8!6§;
         §#C§ = §1[§;
         §]!B§.init(this,§8!6§,§1[§);
         this.initLevelMain();
         §]!B§.§6_§.visible = false;
         Log.§0!=§(§=,§);
         Log.§0!H§(true);
         var textData:XMLList = §^9§.§1<§(mTextBinary).children();
         TextManager.init(textData);
         SoundEngine.§#!`§("CHANNEL_THEME",1,1);
         SoundEngine.§#!`§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§"X§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§&!§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         sPauseManager = new §[!O§(stage);
         TweenManager.§8!X§.§8!,§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function initLevelMain() : void
      {
         §]!B§.§>F§ = new LevelMain(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new UserProgress(SERVER_ROOT);
      }
      
      protected function initStates() : void
      {
         §<!g§(new StateFlashGoes11(false));
         §<!g§(new StateLevelLoadClassic(false));
         §<!g§(new StateStart(false));
         §<!g§(new StateChapterSelection(false));
         §<!g§(new StateLevelSelection(false));
         §<!g§(new StatePlay(false));
         §<!g§(new StatePause(false));
         §<!g§(new StateLevelEndRio(false));
         §<!g§(new StateLevelEndEagle(false));
         §<!g§(new StateLevelEndFailRio(false));
         §<!g§(new StateFeed(false));
         §<!g§(new StateCutScene(false));
         §<!g§(new StateCreditsNew(false));
         if(stage.stageWidth != §8!6§ || stage.stageHeight != §1[§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §@h§(data:ByteArray) : void
      {
      }
      
      protected function §"X§(e:Event) : void
      {
         §3r§.§;!b§();
      }
      
      protected function §&!§(e:MouseEvent) : void
      {
         §3r§.§;!1§();
         if(this.§>!§)
         {
            ++this.§&!B§;
            if(this.§&!B§ > FULL_SCREEN_MOUSE_UPDATE_LIMIT)
            {
               this.§>!§ = false;
               if(this.§+h§ < FULL_SCREEN_FRAME_UPDATE_LIMIT)
               {
                  this.§[#§(this.§'!h§);
               }
            }
         }
      }
      
      public function §6![§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(e:Event) : void
      {
         var width:Number = NaN;
         var height:Number = NaN;
         if(this.§>O§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var widthScale:Number = stage.stageWidth / §8!6§;
         var heightScale:Number = stage.stageHeight / §1[§;
         if(widthScale < heightScale)
         {
            width = stage.stageWidth;
            height = stage.stageWidth * (§1[§ / §8!6§);
         }
         else
         {
            width = stage.stageHeight * (§8!6§ / §1[§);
            height = stage.stageHeight;
         }
         §]!B§.§%e§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         sStageWidth = stage.stageWidth;
         sStageHeight = stage.stageHeight;
      }
      
      public function §>J§() : void
      {
         var time:int = getTimer();
         if(time - this.§'!h§ > FULL_SCREEN_TOGGLE_INTERVAL)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§[#§(time);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§!!$§(time);
            }
         }
      }
      
      public function §"§() : void
      {
         this.§[#§(0);
      }
      
      public function §`X§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §[#§(time:int) : void
      {
         this.§>O§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§'!h§ = time;
         this.§>!§ = false;
      }
      
      private function §!!$§(time:int) : void
      {
         this.§>O§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§'!h§ = time;
         this.§+h§ = 0;
         this.§&!B§ = 0;
         this.§>!§ = true;
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
         LoadManager.§8!X§.§`[§();
         LevelManager.§2!@§(JSON.parse(this.§8!V§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(deltaTime:Number) : int
      {
         if(§]!B§.§6_§ != null)
         {
            §]!B§.§6_§.update(deltaTime);
         }
         var returnValue:int = super.updateState(deltaTime);
         if(!§@9§().isGenericState())
         {
            if(returnValue == StateBase.STATE_STATUS_COMPLETED)
            {
               Log.log("AngryBirdSocial::run() state change is about to start. Old State = " + §@9§().mName + " New State = " + §@9§().mNextState);
               §,!&§(§@9§().mNextState);
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
         §]!B§.§&N§(this.getItemData(),this.getLevelBackgrounds());
         §]!B§.§8W§(this.§8!V§.§`!_§,LevelItemManager.§<=§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §^9§.§1<§(mLevelBackgroundsTableBin);
      }
      
      protected function getItemData() : XML
      {
         return §^9§.§1<§(mItemDataTableBin);
      }
      
      protected function onGraphicsInitialized(e:Event) : void
      {
         sInitComplete = true;
         if(DISPLAY_FLASH_GOES_11)
         {
            §,!&§(StateFlashGoes11.STATE_NAME);
         }
         else
         {
            §,!&§(StateStart.STATE_NAME);
         }
      }
      
      public function newUserScore(level:String) : void
      {
      }
      
      override public function onEnterFrame(e:Event) : void
      {
         if(this.§>!§)
         {
            ++this.§+h§;
         }
         if(!Starling.§84§())
         {
            return;
         }
         super.onEnterFrame(e);
         if(this.§>O§)
         {
            this.§>O§ = false;
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
