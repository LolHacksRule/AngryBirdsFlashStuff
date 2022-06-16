package
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.ExternalPauseManager;
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.PackageManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundManager;
   import com.angrybirds.data.user.UserProgress;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.angrybirds.popup.tutorial.TutorialPopupManager;
   import com.angrybirds.states.StateCredits;
   import com.angrybirds.states.StateCutScene;
   import com.angrybirds.states.StateEpisodeSelection;
   import com.angrybirds.states.StateLevelEnd;
   import com.angrybirds.states.StateLevelEndEagle;
   import com.angrybirds.states.StateLevelEndFail;
   import com.angrybirds.states.StateLevelLoadClassic;
   import com.angrybirds.states.StateLevelSelection;
   import com.angrybirds.states.StatePause;
   import com.angrybirds.states.StatePlay;
   import com.angrybirds.states.StateStart;
   import com.rovio.ApplicationCanvas;
   import com.rovio.BasicGame;
   import com.rovio.assets.TextManager;
   import com.rovio.events.EnginePauseEvent;
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.factory.XMLFactory;
   import com.rovio.loader.LoadManager;
   import com.rovio.server.Server;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.popup.IPopupManager;
   import com.rovio.ui.popup.PopupLayerIndex;
   import com.rovio.ui.popup.PopupManager;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.utils.XMLUtils;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import starling.core.Starling;
   
   public class AngryBirdsBase extends BasicGame
   {
      
      protected static var mTextBinary:Class = AngryBirdsBase_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var SERVER_VERSION:String;
      
      public static var SERVER_ROOT:String;
      
      public static const SCREEN_WIDTH:int = 1024;
      
      public static const SCREEN_HEIGHT:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = false;
      
      public static const LOADING_SCEEN_MINIMUM_TIME:int = 2000;
      
      private static const FULL_SCREEN_TOGGLE_INTERVAL:int = 750;
      
      private static const FULL_SCREEN_FRAME_UPDATE_LIMIT:int = 3;
      
      private static const FULL_SCREEN_MOUSE_UPDATE_LIMIT:int = 15;
      
      public static const ANGRYBIRDS_THEME_MUSIC_CHANNEL:String = "Channel_Theme";
      
      public static const ANGRYBIRDS_AMBIENT_MUSIC_CHANNEL:String = "CHANNEL_AMBIENT";
      
      public static const ANGRYBIRDS_THEME_MUSIC_ID:String = "friends_title_theme";
      
      protected static var mViewLibraryBin:Class = AngryBirdsBase_mViewLibraryBin;
      
      protected static var mPopupLibraryBin:Class = AngryBirdsBase_mPopupLibraryBin;
      
      protected static var mAssetMapBin:Class = AngryBirdsBase_mAssetMapBin;
      
      protected static var mItemDataTableBin:Class = AngryBirdsBase_mItemDataTableBin;
      
      protected static var mLevelBackgroundsTableBin:Class = AngryBirdsBase_mLevelBackgroundsTableBin;
      
      public static var sSoundsEnabled:Boolean = true;
      
      private static var sSingleton:AngryBirdsBase = null;
      
      public static var mAppMask:Sprite = null;
      
      public static var sPauseManager:ExternalPauseManager;
      
      public static var sInitComplete:Boolean = false;
      
      protected static var sStageWidth:int = 0;
      
      protected static var sStageHeight:int = 0;
       
      
      protected var mPackageManager:PackageManager;
      
      protected var mLevelItemManager:LevelItemManager;
      
      protected var mLevelThemeManager:LevelThemeBackgroundManager;
      
      protected var mLevelManager:LevelManager;
      
      protected var mPopupContainer:MovieClip;
      
      protected var mPopupManager:IPopupManager;
      
      protected var mTutorialPopupManager:TutorialPopupManager;
      
      private var mFullScreenToggleTime:int;
      
      private var mFullScreenErrorTracking:Boolean;
      
      private var mFullScreenUpdateCount:int;
      
      private var mFullScreenMouseMoveCounter:int;
      
      protected var mIsResizing:Boolean;
      
      protected var mIsInPauseState:Boolean;
      
      protected var mDataModel:DataModel;
      
      protected var sSoundsWhenActive:Boolean;
      
      protected var sFlashActive:Boolean = true;
      
      private var mFirstStateHasBeenSet:Boolean = false;
      
      public function AngryBirdsBase(canvas:ApplicationCanvas, serverVersion:String, serverRoot:String)
      {
         this.initFonts();
         SERVER_VERSION = serverVersion;
         SERVER_ROOT = serverRoot;
         var out_UIData:XML = this.getUIData();
         var popupData:XML = this.getPopupData();
         XMLUtils.copyNodesBetweenTrees(popupData,out_UIData,["Views","Components","Popups"],true);
         super(canvas,this.getLoadingScreen(),out_UIData,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return sStageWidth;
      }
      
      public static function get stageHeight() : int
      {
         return sStageHeight;
      }
      
      public static function setSoundsEnabled(value:Boolean) : void
      {
         sSoundsEnabled = value;
         SoundEngine.setSounds(sSoundsEnabled);
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return sSoundsEnabled;
      }
      
      public static function get screenWidth() : int
      {
         return singleton.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return singleton.getAppHeight();
      }
      
      public static function get singleton() : AngryBirdsBase
      {
         return sSingleton;
      }
      
      public function get popupManager() : IPopupManager
      {
         return this.mPopupManager;
      }
      
      public function get tutorialPopupManager() : TutorialPopupManager
      {
         return this.mTutorialPopupManager;
      }
      
      public function get dataModel() : DataModel
      {
         return this.mDataModel;
      }
      
      public function get isInPauseState() : Boolean
      {
         return this.mIsInPauseState;
      }
      
      public function set isInPauseState(value:Boolean) : void
      {
         this.mIsInPauseState = value;
      }
      
      protected function getAssetMap() : XML
      {
         return XMLFactory.fromOctetStreamClass(mAssetMapBin);
      }
      
      protected function getUIData() : XML
      {
         return XMLFactory.fromOctetStreamClass(mViewLibraryBin);
      }
      
      protected function getPopupData() : XML
      {
         return XMLFactory.fromOctetStreamClass(mPopupLibraryBin);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.mDataModel = new DataModel();
      }
      
      protected function initialize() : void
      {
         sSingleton = this;
         this.mIsInPauseState = false;
         AngryBirdsEngine.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.initializeManagers();
         this.initializeUserProgress();
         LoadManager.instance.init(Server.getExternalAssetDirectoryPaths(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.mPackageManager,this.onInitPackage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         smScreenWidth = screenWidth;
         smScreenHeight = screenHeight;
         AngryBirdsEngine.smFpsMeter.visible = DEBUG_MODE_ENABLED;
         Log.setDisplayContainer(mCanvas);
         Log.setInputEnabled(true);
         var textData:XMLList = XMLFactory.fromOctetStreamClass(mTextBinary).children();
         TextManager.init(textData);
         SoundEngine.addNewChannelControl(ANGRYBIRDS_THEME_MUSIC_CHANNEL,1,0.6);
         SoundEngine.addNewChannelControl(ANGRYBIRDS_AMBIENT_MUSIC_CHANNEL,1,0.8);
         stage.addEventListener(Event.MOUSE_LEAVE,this.onMouseLeave);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.onFullScreenChange);
         stage.addEventListener(Event.ACTIVATE,this.onActivate);
         stage.addEventListener(Event.DEACTIVATE,this.onDeactivate);
         stage.tabChildren = false;
         sPauseManager = new ExternalPauseManager(stage);
         sPauseManager.addEventListener(EnginePauseEvent.ENGINE_PAUSE,this.onEnginePauseRequest);
         sPauseManager.addEventListener(EnginePauseEvent.ENGINE_RESUME,this.onEngineResumeRequest);
         TweenManager.instance.catchErrors = !DEBUG_MODE_ENABLED;
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function onDeactivate(event:Event) : void
      {
         this.flashDeactivated();
      }
      
      private function flashDeactivated() : void
      {
         if(!this.sFlashActive)
         {
            return;
         }
         this.sFlashActive = false;
         this.sSoundsWhenActive = SoundEngine.soundsOn;
         if(!this.sSoundsWhenActive)
         {
         }
      }
      
      private function onActivate(event:Event) : void
      {
         this.flashActivated();
      }
      
      private function flashActivated() : void
      {
         if(this.sFlashActive)
         {
            return;
         }
         this.sFlashActive = true;
         if(!this.sSoundsWhenActive)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.mPopupContainer = new MovieClip();
         mCanvas.stage.addChild(this.mPopupContainer);
         this.mPopupManager = new PopupManager(this.mPopupContainer,localizationManager,this);
         this.mPopupManager.addEventListener(PopupEvent.OPEN,this.onEnginePauseRequest);
         this.mPopupManager.addEventListener(PopupEvent.CLOSE,this.onEngineResumeRequest);
         this.mTutorialPopupManager = new TutorialPopupManager(this.mPopupManager,this.mDataModel,PopupLayerIndex.LAYER_INDEX_SCREEN);
         this.mPopupManager.addLayer(PopupLayerIndex.LAYER_INDEX_VIEW_PORT,true,new Rectangle(0,0,-180,0));
         this.mPopupManager.addLayer(PopupLayerIndex.LAYER_INDEX_SCREEN,true,new Rectangle(0,0,0,0));
      }
      
      protected function onEnginePauseRequest(event:Event) : void
      {
         this.pauseEngine();
      }
      
      protected function onEngineResumeRequest(event:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var isPopupOpen:Boolean = this.mPopupManager.isPopupOpen();
         var isExternallyPaused:Boolean = sPauseManager.isExternallyPaused();
         if(!isPopupOpen && !isExternallyPaused && !this.isInPauseState)
         {
            AngryBirdsEngine.resume();
         }
      }
      
      public function pauseEngine() : void
      {
         AngryBirdsEngine.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.mLevelItemManager = this.initializeLevelItemManager();
         this.mLevelThemeManager = this.initializeLevelThemeManager();
         this.mLevelManager = this.initializeLevelManager();
         this.mPackageManager = this.initializePackageManager();
         AngryBirdsEngine.smLevelMain = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : LevelMain
      {
         return new LevelMain(stage,this.mLevelItemManager,this.mLevelThemeManager,this.mLevelManager);
      }
      
      protected function initializeLevelItemManager() : LevelItemManager
      {
         return new LevelItemManager();
      }
      
      protected function initializeLevelThemeManager() : LevelThemeBackgroundManager
      {
         return new LevelThemeBackgroundManager();
      }
      
      protected function initializeLevelManager() : LevelManager
      {
         return new LevelManager();
      }
      
      protected function initializePackageManager() : PackageManager
      {
         return new PackageManager(this.mLevelManager);
      }
      
      protected function initializeUserProgress() : void
      {
         this.mDataModel.userProgress = new UserProgress(SERVER_ROOT,this.mLevelManager);
      }
      
      protected function initializeStates() : void
      {
         addState(new StateLevelLoadClassic(this.mLevelManager,localizationManager,false));
         addState(new StateStart(this.mLevelManager,localizationManager,false));
         addState(new StateEpisodeSelection(this.mLevelManager,localizationManager,false));
         addState(new StateLevelSelection(this.mLevelManager,localizationManager,false));
         addState(new StatePlay(this.mLevelManager,localizationManager,false));
         addState(new StatePause(this.mLevelManager,localizationManager,false));
         addState(new StateLevelEnd(this.mLevelManager,localizationManager,false));
         addState(new StateLevelEndEagle(this.mLevelManager,localizationManager,false));
         addState(new StateLevelEndFail(this.mLevelManager,localizationManager,false));
         addState(new StateCutScene(this.mLevelManager,localizationManager,false));
         addState(new StateCredits(this.mLevelManager,localizationManager,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function onInitPackage(data:ByteArray) : void
      {
      }
      
      protected function onMouseLeave(e:Event) : void
      {
         MouseCursorController.cursorHide();
      }
      
      protected function onMouseMove(e:MouseEvent) : void
      {
         MouseCursorController.cursorShow();
         if(this.mFullScreenErrorTracking)
         {
            ++this.mFullScreenMouseMoveCounter;
            if(this.mFullScreenMouseMoveCounter > FULL_SCREEN_MOUSE_UPDATE_LIMIT)
            {
               this.mFullScreenErrorTracking = false;
               if(this.mFullScreenUpdateCount < FULL_SCREEN_FRAME_UPDATE_LIMIT)
               {
                  this.normalScreenMode(this.mFullScreenToggleTime);
               }
            }
         }
      }
      
      public function forceResize() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(e:Event) : void
      {
         this.mIsResizing = true;
      }
      
      protected function onFullScreenChange(e:Event) : void
      {
         this.flashActivated();
      }
      
      public function toggleFullScreen() : void
      {
         var time:int = getTimer();
         if(time - this.mFullScreenToggleTime > FULL_SCREEN_TOGGLE_INTERVAL)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
            {
               this.normalScreenMode(time);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.fullScreenMode(time);
            }
         }
      }
      
      public function exitFullScreen() : void
      {
         this.normalScreenMode(0);
      }
      
      public function isFullScreenMode() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         return false;
      }
      
      private function normalScreenMode(time:int) : void
      {
         this.mIsResizing = true;
         this.mFullScreenToggleTime = time;
         this.mFullScreenErrorTracking = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function fullScreenMode(time:int) : void
      {
         this.mIsResizing = true;
         this.mFullScreenToggleTime = time;
         this.mFullScreenUpdateCount = 0;
         this.mFullScreenMouseMoveCounter = 0;
         this.mFullScreenErrorTracking = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         catch(e:Error)
         {
            try
            {
               stage.displayState = StageDisplayState.FULL_SCREEN;
            }
            catch(e:Error)
            {
            }
         }
      }
      
      protected function onKeyDown(event:KeyboardEvent) : void
      {
         switch(event.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get firstStateHasBeenSet() : Boolean
      {
         return this.mFirstStateHasBeenSet;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.mFirstStateHasBeenSet = true;
         this.initializeGame();
         LoadManager.instance.clearPackages();
      }
      
      override public function updateState(deltaTime:Number) : int
      {
         if(AngryBirdsEngine.smFpsMeter != null)
         {
            AngryBirdsEngine.smFpsMeter.update(deltaTime);
         }
         var returnValue:int = super.updateState(deltaTime);
         if(!getCurrentStateObject().isGenericState())
         {
            if(returnValue == StateBase.STATE_STATUS_COMPLETED)
            {
               setNextState(getCurrentStateObject().nextState);
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
      
      protected function getThemeMusicName() : String
      {
         return ANGRYBIRDS_THEME_MUSIC_ID;
      }
      
      public function playThemeMusic() : void
      {
         if(SoundEngine.getChannelController(ANGRYBIRDS_THEME_MUSIC_CHANNEL) == null || !SoundEngine.getChannelController(ANGRYBIRDS_THEME_MUSIC_CHANNEL).isPlaying())
         {
            SoundEngine.playSound(this.getThemeMusicName(),ANGRYBIRDS_THEME_MUSIC_CHANNEL,999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         SoundEngine.stopChannel(ANGRYBIRDS_THEME_MUSIC_CHANNEL);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + SERVER_VERSION;
      }
      
      protected function loadItems() : void
      {
         this.mLevelItemManager.loadItems(this.getItemDataXML());
      }
      
      protected function loadBackgrounds() : void
      {
         this.mLevelThemeManager.loadBackgroundsXML(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.loadBackgrounds();
         AngryBirdsEngine.initializeGraphics(this.mPackageManager.spriteSheetContainer,this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return XMLFactory.fromOctetStreamClass(mLevelBackgroundsTableBin);
      }
      
      protected function getItemDataXML() : XML
      {
         return XMLFactory.fromOctetStreamClass(mItemDataTableBin);
      }
      
      protected function onGraphicsInitialized(e:Event) : void
      {
         sInitComplete = true;
         setNextState(StateStart.STATE_NAME);
      }
      
      override public function onEnterFrame(e:Event) : void
      {
         if(this.mFullScreenErrorTracking)
         {
            ++this.mFullScreenUpdateCount;
         }
         if(!Starling.contextAvailable())
         {
            return;
         }
         if(this.mIsResizing)
         {
            this.resize();
            this.mIsResizing = false;
         }
         super.onEnterFrame(e);
      }
      
      protected final function resize(forceUpdate:Boolean = false) : Boolean
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
            return false;
         }
         if(width / height > 25 / 12)
         {
            width = Math.round(height * (25 / 12));
         }
         if(!forceUpdate && sStageWidth == width && sStageHeight == height)
         {
            return false;
         }
         sStageWidth = width;
         sStageHeight = height;
         this.resizeViews(sStageWidth,sStageHeight);
         return true;
      }
      
      protected function resizeViews(width:int, height:int, disableScaling:Boolean = false) : void
      {
         AngryBirdsEngine.setEngineViewArea(0,0,width,height,disableScaling);
         setViewSize(width,height);
         this.mPopupManager.setViewSize(width,height);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function initFonts() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
      
      public function getSoundResource(soundResourceName:String) : LevelItemSoundResource
      {
         return this.mLevelItemManager.getSoundResource(soundResourceName);
      }
   }
}
