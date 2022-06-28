package
{
   import § $§.Server;
   import §"!!§.§&G§;
   import §"!!§.BasicGame;
   import §"$§.Starling;
   import §#!X§.LevelManager;
   import §%L§.PackageManager;
   import §'N§.§'!6§;
   import §'N§.§0d§;
   import §'N§.Log;
   import §-!>§.§4!T§;
   import §-!>§.§7U§;
   import §3!j§.SoundEngine;
   import §9c§.StateChapterSelection;
   import §9c§.StateCreditsNew;
   import §9c§.StateCutScene;
   import §9c§.StateFeed;
   import §9c§.StateFlashGoes11;
   import §9c§.StateLevelEndEagle;
   import §9c§.StateLevelEndFailRio;
   import §9c§.StateLevelEndRio;
   import §9c§.StateLevelLoadClassic;
   import §9c§.StateLevelSelection;
   import §9c§.StatePause;
   import §9c§.StatePlay;
   import §9c§.StateStart;
   import §<!G§.TweenManager;
   import §?A§.LevelMain;
   import §[!>§.StateBase;
   import §^!i§.UserProgress;
   import §^L§.LevelItemManager;
   import §`M§.LoadManager;
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
      
      public static var sPauseManager:§7U§;
      
      public static var sInitComplete:Boolean = false;
      
      protected static var sStageWidth:int = 0;
      
      protected static var sStageHeight:int = 0;
       
      
      private var §!W§:PackageManager;
      
      private var §%w§:int;
      
      private var §<6§:Boolean;
      
      private var §07§:int;
      
      private var §^U§:int;
      
      protected var §7y§:Boolean;
      
      public function AngryBirdsFP11(canvas:§&G§)
      {
         this.§!W§ = new PackageManager();
         super(canvas,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §8!Z§ || stage.stageHeight != include)
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
      
      public static function § !@§(value:Boolean) : void
      {
         sSoundsEnabled = value;
         SoundEngine.§-!'§(sSoundsEnabled);
      }
      
      public static function §%!D§() : Boolean
      {
         return sSoundsEnabled;
      }
      
      public static function get §8!Z§() : int
      {
         return §8R§.getAppWidth();
      }
      
      public static function get include() : int
      {
         return §8R§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(SoundEngine.§while§("Channel_Theme") == null || !SoundEngine.§while§("Channel_Theme").§9X§())
         {
            SoundEngine.§`B§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §@!9§() : void
      {
         SoundEngine.§5v§("Channel_Theme");
      }
      
      public static function get §8R§() : AngryBirdsFP11
      {
         return sSingleton;
      }
      
      protected function getAssetMap() : XML
      {
         return §0d§.§@A§(mAssetMapBin);
      }
      
      protected function getUIData() : XML
      {
         return §0d§.§@A§(mViewLibraryBin);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         LoadManager.§&!'§.init(Server.§ !T§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§!W§,this.§1!A§);
         sSingleton = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §]t§ = §8!Z§;
         §,-§ = include;
         §4!T§.init(this,§8!Z§,include);
         this.initLevelMain();
         §4!T§.§!!]§.visible = false;
         Log.§]!B§(§"B§);
         Log.§6!D§(true);
         var textData:XMLList = §0d§.§@A§(mTextBinary).children();
         TextManager.init(textData);
         SoundEngine.§"!"§("CHANNEL_THEME",1,1);
         SoundEngine.§"!"§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§&!I§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§,!$§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         sPauseManager = new §7U§(stage);
         TweenManager.§&!'§.§+K§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function initLevelMain() : void
      {
         §4!T§.§1t§ = new LevelMain(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new UserProgress(SERVER_ROOT);
      }
      
      protected function initStates() : void
      {
         §&=§(new StateFlashGoes11(false));
         §&=§(new StateLevelLoadClassic(false));
         §&=§(new StateStart(false));
         §&=§(new StateChapterSelection(false));
         §&=§(new StateLevelSelection(false));
         §&=§(new StatePlay(false));
         §&=§(new StatePause(false));
         §&=§(new StateLevelEndRio(false));
         §&=§(new StateLevelEndEagle(false));
         §&=§(new StateLevelEndFailRio(false));
         §&=§(new StateFeed(false));
         §&=§(new StateCutScene(false));
         §&=§(new StateCreditsNew(false));
         if(stage.stageWidth != §8!Z§ || stage.stageHeight != include)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §1!A§(data:ByteArray) : void
      {
      }
      
      protected function §&!I§(e:Event) : void
      {
         §'!6§.§8!F§();
      }
      
      protected function §,!$§(e:MouseEvent) : void
      {
         §'!6§.§^[§();
         if(this.§<6§)
         {
            ++this.§^U§;
            if(this.§^U§ > FULL_SCREEN_MOUSE_UPDATE_LIMIT)
            {
               this.§<6§ = false;
               if(this.§07§ < FULL_SCREEN_FRAME_UPDATE_LIMIT)
               {
                  this.§%![§(this.§%w§);
               }
            }
         }
      }
      
      public function §^!%§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(e:Event) : void
      {
         var width:Number = NaN;
         var height:Number = NaN;
         if(this.§7y§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var widthScale:Number = stage.stageWidth / §8!Z§;
         var heightScale:Number = stage.stageHeight / include;
         if(widthScale < heightScale)
         {
            width = stage.stageWidth;
            height = stage.stageWidth * (include / §8!Z§);
         }
         else
         {
            width = stage.stageHeight * (§8!Z§ / include);
            height = stage.stageHeight;
         }
         §4!T§.§[Y§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         sStageWidth = stage.stageWidth;
         sStageHeight = stage.stageHeight;
      }
      
      public function §,!f§() : void
      {
         var time:int = getTimer();
         if(time - this.§%w§ > FULL_SCREEN_TOGGLE_INTERVAL)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§%![§(time);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§'§(time);
            }
         }
      }
      
      public function §!!'§() : void
      {
         this.§%![§(0);
      }
      
      public function §7g§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §%![§(time:int) : void
      {
         this.§7y§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§%w§ = time;
         this.§<6§ = false;
      }
      
      private function §'§(time:int) : void
      {
         this.§7y§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§%w§ = time;
         this.§07§ = 0;
         this.§^U§ = 0;
         this.§<6§ = true;
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
         LoadManager.§&!'§.§-!h§();
         LevelManager.§9>§(JSON.parse(this.§!W§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(deltaTime:Number) : int
      {
         if(§4!T§.§!!]§ != null)
         {
            §4!T§.§!!]§.update(deltaTime);
         }
         var returnValue:int = super.updateState(deltaTime);
         if(!§;!W§().isGenericState())
         {
            if(returnValue == StateBase.STATE_STATUS_COMPLETED)
            {
               Log.log("AngryBirdSocial::run() state change is about to start. Old State = " + §;!W§().mName + " New State = " + §;!W§().mNextState);
               §0!f§(§;!W§().mNextState);
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
         §4!T§.§&a§(this.getItemData(),this.getLevelBackgrounds());
         §4!T§.§'!>§(this.§!W§.§`F§,LevelItemManager.§#!E§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §0d§.§@A§(mLevelBackgroundsTableBin);
      }
      
      protected function getItemData() : XML
      {
         return §0d§.§@A§(mItemDataTableBin);
      }
      
      protected function onGraphicsInitialized(e:Event) : void
      {
         sInitComplete = true;
         if(DISPLAY_FLASH_GOES_11)
         {
            §0!f§(StateFlashGoes11.STATE_NAME);
         }
         else
         {
            §0!f§(StateStart.STATE_NAME);
         }
      }
      
      public function newUserScore(level:String) : void
      {
      }
      
      override public function onEnterFrame(e:Event) : void
      {
         if(this.§<6§)
         {
            ++this.§07§;
         }
         if(!Starling.§]c§())
         {
            return;
         }
         super.onEnterFrame(e);
         if(this.§7y§)
         {
            this.§7y§ = false;
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
