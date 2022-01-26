package
{
   import § C§.§#y§;
   import § C§.§%H§;
   import § C§.§+!"§;
   import § C§.§+!A§;
   import § C§.§,§;
   import § C§.§,!?§;
   import § C§.§4t§;
   import § C§.§7!6§;
   import § C§.§9,§;
   import § C§.StateCutScene;
   import § C§.StatePlay;
   import § C§.§]!'§;
   import § C§.§]O§;
   import §!%§.§=0§;
   import §!Y§.§==§;
   import §!Y§.§[o§;
   import §&N§.§[-§;
   import §'V§.§>!8§;
   import §-Z§.§?h§;
   import §2!5§.§";§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §4N§.§&!@§;
   import §;8§.§!$§;
   import §;8§.§3f§;
   import §;8§.§]'§;
   import §;_§.;
   import §@!,§.§8!6§;
   import §@!,§.§`!,§;
   import §[x§.§2^§;
   import §]4§.§-§;
   import com.rovio.assets.§8!=§;
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
   
   public class AngryBirdsFP11 extends §`!,§
   {
      
      protected static var §@N§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §>d§:String;
      
      public static var §]J§:String;
      
      public static const static:int = 1024;
      
      public static const §for§:int = 768;
      
      public static const §'Q§:Boolean = false;
      
      public static const §`]§:int = 2000;
      
      public static const §4K§:Boolean = false;
      
      private static const §&k§:int = 750;
      
      private static const §1F§:int = 3;
      
      private static const §2p§:int = 15;
      
      protected static var §&!,§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §+N§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var § W§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §,a§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §64§:§#1§ = null;
      
      public static var §6!<§:Boolean = true;
      
      private static var get:AngryBirdsFP11 = null;
      
      public static var §1?§:Sprite = null;
      
      public static var §0-§:§==§;
      
      public static var §[h§:Boolean = false;
      
      protected static var §%! §:int = 0;
      
      protected static var §=j§:int = 0;
       
      
      private var §0!9§:§=0§;
      
      private var §6s§:int;
      
      private var §"I§:Boolean;
      
      private var §4l§:int;
      
      private var §1`§:int;
      
      protected var §@C§:Boolean;
      
      public function AngryBirdsFP11(param1:§8!6§)
      {
         this.§0!9§ = new §=0§();
         §>d§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §]J§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§'Q§ ? "http://head-dot-angrybirds-facebook-dev.appspot.com" : "http://angrybirds-facebook-dev.appspot.com");
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §%! §;
      }
      
      public static function get stageHeight() : int
      {
         return §=j§;
      }
      
      public static function §-!9§(param1:Boolean) : void
      {
         §6!<§ = param1;
         §@6§.§`n§(§6!<§);
      }
      
      public static function §;9§() : Boolean
      {
         return §6!<§;
      }
      
      public static function get screenWidth() : int
      {
         return §?L§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §?L§.getAppHeight();
      }
      
      public static function §]!"§() : void
      {
         if(§@6§.§"7§("Channel_Theme") == null || !§@6§.§"7§("Channel_Theme").§%!'§())
         {
            §@6§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §^!<§() : void
      {
         §@6§.§!>§("Channel_Theme");
      }
      
      public static function get §?L§() : AngryBirdsFP11
      {
         return get;
      }
      
      protected function getAssetMap() : XML
      {
         return §]'§.§5P§(§+N§);
      }
      
      protected function getUIData() : XML
      {
         return §]'§.§5P§(§&!,§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §>!8§.§[8§.init(§[-§.§]B§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§0!9§,this.§^!+§);
         get = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §'F§ = screenWidth;
         §=b§ = screenHeight;
         §[o§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §[o§.§#[§.visible = false;
         §3f§.§=a§(§5A§);
         §3f§.§@T§(true);
         var _loc1_:XMLList = §]'§.§5P§(§@N§).children();
         §8!=§.init(_loc1_);
         §@6§.§'!&§("CHANNEL_THEME",1,1);
         §@6§.§'!&§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§6!G§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §0-§ = new §==§(stage);
         §";§.§[8§.§1!+§ = !§'Q§;
      }
      
      protected function initLevelMain() : void
      {
         §[o§.§='§ = new §2^§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §64§ = new §#1§(§]J§);
      }
      
      protected function initStates() : void
      {
         §9!2§(new §]!'§(false));
         §9!2§(new §7!6§(false));
         §9!2§(new §,!?§(false));
         §9!2§(new §9,§(false));
         §9!2§(new §4t§(false));
         §9!2§(new StatePlay(false));
         §9!2§(new §,§(false));
         §9!2§(new §]O§(false));
         §9!2§(new §#y§(false));
         §9!2§(new §+!"§(false));
         §9!2§(new §+!A§(false));
         §9!2§(new StateCutScene(false));
         §9!2§(new §%H§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §^!+§(param1:ByteArray) : void
      {
      }
      
      protected function §6!G§(param1:Event) : void
      {
         §!$§.§31§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §!$§.§8,§();
         if(this.§"I§)
         {
            ++this.§1`§;
            if(this.§1`§ > §2p§)
            {
               this.§"I§ = false;
               if(this.§4l§ < §1F§)
               {
                  this.§,!C§(this.§6s§);
               }
            }
         }
      }
      
      public function §30§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§@C§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / screenWidth;
         var _loc3_:Number = stage.stageHeight / screenHeight;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (screenHeight / screenWidth);
         }
         else
         {
            _loc4_ = stage.stageHeight * (screenWidth / screenHeight);
            _loc5_ = stage.stageHeight;
         }
         §[o§.§6g§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §%! § = stage.stageWidth;
         §=j§ = stage.stageHeight;
      }
      
      public function §,!!§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§6s§ > §&k§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§,!C§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§0;§(_loc1_);
            }
         }
      }
      
      public function §&x§() : void
      {
         this.§,!C§(0);
      }
      
      public function § 3§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §,!C§(param1:int) : void
      {
         this.§@C§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§6s§ = param1;
         this.§"I§ = false;
      }
      
      private function §0;§(param1:int) : void
      {
         this.§@C§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§6s§ = param1;
         this.§4l§ = 0;
         this.§1`§ = 0;
         this.§"I§ = true;
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §>!8§.§[8§.§=#§();
         §0$§.§#;§(JSON.parse(this.§0!9§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§[o§.§#[§ != null)
         {
            §[o§.§#[§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§"! §().isGenericState())
         {
            if(_loc2_ == §-§.STATE_STATUS_COMPLETED)
            {
               §3f§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §"! §().mName + " New State = " + §"! §().mNextState);
               §&K§(§"! §().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return static;
      }
      
      override public function getAppHeight() : Number
      {
         return §for§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §`]§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §>d§;
      }
      
      protected function initializeGame() : void
      {
         §[o§.§'7§(this.getItemData(),this.getLevelBackgrounds());
         §[o§.§>&§(this.§0!9§.§->§,§&!@§.§]r§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §]'§.§5P§(§,a§);
      }
      
      protected function getItemData() : XML
      {
         return §]'§.§5P§(§ W§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §[h§ = true;
         if(§4K§)
         {
            §&K§(§]!'§.§?B§);
         }
         else
         {
            §&K§(§,!?§.§?B§);
         }
      }
      
      public function §8M§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§"I§)
         {
            ++this.§4l§;
         }
         if(!§?h§.§6t§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§@C§)
         {
            this.§@C§ = false;
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
