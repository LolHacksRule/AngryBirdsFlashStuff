package
{
   import §#h§.§ !H§;
   import §+!%§.§1!E§;
   import §+!?§.§"h§;
   import §+!?§.§6N§;
   import §+!@§.§!T§;
   import §,!C§.§0v§;
   import §3G§.§!E§;
   import §5m§.§2!&§;
   import §6H§.§>3§;
   import §8c§.§ p§;
   import §8c§.§1N§;
   import §9!2§.§0!>§;
   import §;m§.§ !F§;
   import §;m§.§ j§;
   import §;m§.§1!§;
   import §;m§.§2i§;
   import §;m§.§3'§;
   import §;m§.§6Z§;
   import §;m§.§6e§;
   import §;m§.§8R§;
   import §;m§.§>!B§;
   import §;m§.§>!G§;
   import §;m§.StateCutScene;
   import §;m§.StatePlay;
   import §;m§.§`!%§;
   import §=!B§.§59§;
   import §>K§.§7R§;
   import §>K§.§9X§;
   import §>K§.§=!I§;
   import §?!+§.§,!G§;
   import §catch§.§4@§;
   import com.rovio.assets.§3O§;
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
   
   public class AngryBirdsFP11 extends §1N§
   {
      
      protected static var §+!F§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §4!?§:String;
      
      public static var §]!,§:String;
      
      public static const §4T§:int = 1024;
      
      public static const §0!$§:int = 768;
      
      public static const §0b§:Boolean = false;
      
      public static const §%$§:int = 2000;
      
      public static const §-!7§:Boolean = false;
      
      private static const §7!§:int = 750;
      
      private static const §`S§:int = 3;
      
      private static const §%S§:int = 15;
      
      protected static var §<g§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §5!B§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §[!?§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §=<§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§0!>§ = null;
      
      public static var §%!4§:Boolean = true;
      
      private static var §2[§:AngryBirdsFP11 = null;
      
      public static var §>l§:Sprite = null;
      
      public static var §;M§:§6N§;
      
      public static var §<!>§:Boolean = false;
      
      protected static var §&]§:int = 0;
      
      protected static var §-g§:int = 0;
       
      
      private var §0!E§:§1!E§;
      
      private var §<!!§:int;
      
      private var §3<§:Boolean;
      
      private var §1c§:int;
      
      private var §5!?§:int;
      
      protected var §'!,§:Boolean;
      
      public function AngryBirdsFP11(param1:§ p§)
      {
         this.§0!E§ = new §1!E§();
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
         return §&]§;
      }
      
      public static function get stageHeight() : int
      {
         return §-g§;
      }
      
      public static function §0R§(param1:Boolean) : void
      {
         §%!4§ = param1;
         § !H§.§0G§(§%!4§);
      }
      
      public static function §@6§() : Boolean
      {
         return §%!4§;
      }
      
      public static function get screenWidth() : int
      {
         return §0P§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §0P§.getAppHeight();
      }
      
      public static function §'!!§() : void
      {
         if(§ !H§.§%A§("Channel_Theme") == null || !§ !H§.§%A§("Channel_Theme").§'I§())
         {
            § !H§.§ !%§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §-+§() : void
      {
         § !H§.§]%§("Channel_Theme");
      }
      
      public static function get §0P§() : AngryBirdsFP11
      {
         return §2[§;
      }
      
      protected function getAssetMap() : XML
      {
         return §=!I§.§]g§(§5!B§);
      }
      
      protected function getUIData() : XML
      {
         return §=!I§.§]g§(§<g§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §!T§.§@j§.init(§2!&§.§5O§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§0!E§,this.§7%§);
         §2[§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §1§ = screenWidth;
         §2Q§ = screenHeight;
         §"h§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §"h§.§73§.visible = false;
         §9X§.§'!&§(§6#§);
         §9X§.§7#§(true);
         var _loc1_:XMLList = §=!I§.§]g§(§+!F§).children();
         §3O§.init(_loc1_);
         § !H§.§+z§("CHANNEL_THEME",1,1);
         § !H§.§+z§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§5t§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §;M§ = new §6N§(stage);
         §,!G§.§@j§.§,!@§ = !§0b§;
      }
      
      protected function initLevelMain() : void
      {
         §"h§.§1C§ = new §!E§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §0!>§(§]!,§);
      }
      
      protected function initStates() : void
      {
         §5!%§(new §6Z§(false));
         §5!%§(new §3'§(false));
         §5!%§(new §1!§(false));
         §5!%§(new §8R§(false));
         §5!%§(new §>!B§(false));
         §5!%§(new StatePlay(false));
         §5!%§(new §6e§(false));
         §5!%§(new § !F§(false));
         §5!%§(new §`!%§(false));
         §5!%§(new §2i§(false));
         §5!%§(new § j§(false));
         §5!%§(new StateCutScene(false));
         §5!%§(new §>!G§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §7%§(param1:ByteArray) : void
      {
      }
      
      protected function §5t§(param1:Event) : void
      {
         §7R§.§=y§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §7R§.§>y§();
         if(this.§3<§)
         {
            ++this.§5!?§;
            if(this.§5!?§ > §%S§)
            {
               this.§3<§ = false;
               if(this.§1c§ < §`S§)
               {
                  this.§'!'§(this.§<!!§);
               }
            }
         }
      }
      
      public function §]!'§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§'!,§)
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
         §"h§.§19§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §&]§ = stage.stageWidth;
         §-g§ = stage.stageHeight;
      }
      
      public function §<h§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§<!!§ > §7!§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§'!'§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§%N§(_loc1_);
            }
         }
      }
      
      public function §#2§() : void
      {
         this.§'!'§(0);
      }
      
      public function §4!E§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §'!'§(param1:int) : void
      {
         this.§'!,§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§<!!§ = param1;
         this.§3<§ = false;
      }
      
      private function §%N§(param1:int) : void
      {
         this.§'!,§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§<!!§ = param1;
         this.§1c§ = 0;
         this.§5!?§ = 0;
         this.§3<§ = true;
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
         §!T§.§@j§.§5@§();
         §59§.§"2§(JSON.parse(this.§0!E§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§"h§.§73§ != null)
         {
            §"h§.§73§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§>A§().isGenericState())
         {
            if(_loc2_ == §>3§.STATE_STATUS_COMPLETED)
            {
               §9X§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §>A§().mName + " New State = " + §>A§().mNextState);
               each(§>A§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §4T§;
      }
      
      override public function getAppHeight() : Number
      {
         return §0!$§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §%$§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §4!?§;
      }
      
      protected function initializeGame() : void
      {
         §"h§.§&M§(this.getItemData(),this.getLevelBackgrounds());
         §"h§.§#y§(this.§0!E§.§;Y§,§0v§.§0!+§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §=!I§.§]g§(§=<§);
      }
      
      protected function getItemData() : XML
      {
         return §=!I§.§]g§(§[!?§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §<!>§ = true;
         if(§-!7§)
         {
            each(§6Z§.§-!A§);
         }
         else
         {
            each(§1!§.§-!A§);
         }
      }
      
      public function §?,§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§3<§)
         {
            ++this.§1c§;
         }
         if(!§4@§.§!!7§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§'!,§)
         {
            this.§'!,§ = false;
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
