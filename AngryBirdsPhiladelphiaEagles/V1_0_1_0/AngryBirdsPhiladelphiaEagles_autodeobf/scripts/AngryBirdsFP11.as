package
{
   import §"!7§.§5§;
   import §##§.§ !E§;
   import §##§.§!S§;
   import §##§.§+A§;
   import §##§.§,r§;
   import §##§.§2!5§;
   import §##§.§5!E§;
   import §##§.§6l§;
   import §##§.§8!A§;
   import §##§.§="§;
   import §##§.§>!$§;
   import §##§.StateCutScene;
   import §##§.StatePlay;
   import §##§.§[R§;
   import §+!N§.§1[§;
   import §+T§.§@!?§;
   import §,!<§.§6!M§;
   import §-!5§.§1`§;
   import §-!5§.§5!O§;
   import §-!5§.§5s§;
   import §1!#§.§<t§;
   import §4!D§.§2H§;
   import §5=§.§^n§;
   import §5J§.§>$§;
   import §<!F§.§,f§;
   import §<!F§.§-q§;
   import §>2§.§4h§;
   import §@w§.§2G§;
   import §@w§.§52§;
   import §[N§.§9k§;
   import §break§.§8!B§;
   import com.rovio.assets.§7M§;
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
   
   public class AngryBirdsFP11 extends §,f§
   {
      
      protected static var §+O§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §5!N§:String;
      
      public static var §!T§:String;
      
      public static const §=!M§:int = 1024;
      
      public static const §"!§:int = 768;
      
      public static const §`T§:Boolean = false;
      
      public static const §']§:int = 2000;
      
      public static const §6W§:Boolean = false;
      
      private static const §`!O§:int = 750;
      
      private static const §&?§:int = 3;
      
      private static const §">§:int = 15;
      
      protected static var §`^§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §7!O§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §-!M§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §7`§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var § ;§:§5§ = null;
      
      public static var §3!1§:Boolean = true;
      
      private static var §^!G§:AngryBirdsFP11 = null;
      
      public static var §]!%§:Sprite = null;
      
      public static var §6!4§:§52§;
      
      public static var §'q§:Boolean = false;
      
      protected static var §1!<§:int = 0;
      
      protected static var §1!O§:int = 0;
       
      
      private var §[B§:§2H§;
      
      private var §<>§:int;
      
      private var §6#§:Boolean;
      
      private var §&!2§:int;
      
      private var §?!-§:int;
      
      protected var §@S§:Boolean;
      
      public function AngryBirdsFP11(param1:§-q§)
      {
         this.§[B§ = new §2H§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §4!F§ || stage.stageHeight != §0!M§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §1!<§;
      }
      
      public static function get stageHeight() : int
      {
         return §1!O§;
      }
      
      public static function §<!H§(param1:Boolean) : void
      {
         §3!1§ = param1;
         §9k§.§<!I§(§3!1§);
      }
      
      public static function §"7§() : Boolean
      {
         return §3!1§;
      }
      
      public static function get §4!F§() : int
      {
         return §<2§.getAppWidth();
      }
      
      public static function get §0!M§() : int
      {
         return §<2§.getAppHeight();
      }
      
      public static function §+Q§() : void
      {
         if(§9k§.§"t§("Channel_Theme") == null || !§9k§.§"t§("Channel_Theme").§]!6§())
         {
            §9k§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §=!<§() : void
      {
         §9k§.§3n§("Channel_Theme");
      }
      
      public static function get §<2§() : AngryBirdsFP11
      {
         return §^!G§;
      }
      
      protected function getAssetMap() : XML
      {
         return §5!O§.§0N§(§7!O§);
      }
      
      protected function getUIData() : XML
      {
         return §5!O§.§0N§(§`^§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §@!?§.§4J§.init(§8!B§.§1Z§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§[B§,this.§#!;§);
         §^!G§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §]!I§ = §4!F§;
         §;H§ = §0!M§;
         §2G§.init(this,§4!F§,§0!M§);
         this.initLevelMain();
         §2G§.§ z§.visible = false;
         §5s§.§ use§(§[a§);
         §5s§.§+a§(true);
         var _loc1_:XMLList = §5!O§.§0N§(§+O§).children();
         §7M§.init(_loc1_);
         §9k§.§?!F§("CHANNEL_THEME",1,1);
         §9k§.§?!F§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§;D§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§11§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §6!4§ = new §52§(stage);
         §<t§.§4J§.native = !§`T§;
      }
      
      protected function initLevelMain() : void
      {
         §2G§.§7!,§ = new §4h§(stage);
      }
      
      protected function initUserProgress() : void
      {
         § ;§ = new §5§(§!T§);
      }
      
      protected function initStates() : void
      {
         §7N§(new §+A§(false));
         §7N§(new §6l§(false));
         §7N§(new §,r§(false));
         §7N§(new §!S§(false));
         §7N§(new §5!E§(false));
         §7N§(new StatePlay(false));
         §7N§(new §[R§(false));
         §7N§(new §8!A§(false));
         §7N§(new § !E§(false));
         §7N§(new §="§(false));
         §7N§(new §>!$§(false));
         §7N§(new StateCutScene(false));
         §7N§(new §2!5§(false));
         if(stage.stageWidth != §4!F§ || stage.stageHeight != §0!M§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §#!;§(param1:ByteArray) : void
      {
      }
      
      protected function §;D§(param1:Event) : void
      {
         §1`§.§[!?§();
      }
      
      protected function §11§(param1:MouseEvent) : void
      {
         §1`§.§^!%§();
         if(this.§6#§)
         {
            ++this.§?!-§;
            if(this.§?!-§ > §">§)
            {
               this.§6#§ = false;
               if(this.§&!2§ < §&?§)
               {
                  this.§<!C§(this.§<>§);
               }
            }
         }
      }
      
      public function §9&§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§@S§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §4!F§;
         var _loc3_:Number = stage.stageHeight / §0!M§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§0!M§ / §4!F§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§4!F§ / §0!M§);
            _loc5_ = stage.stageHeight;
         }
         §2G§.§3i§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §1!<§ = stage.stageWidth;
         §1!O§ = stage.stageHeight;
      }
      
      public function § !J§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§<>§ > §`!O§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§<!C§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§"'§(_loc1_);
            }
         }
      }
      
      public function §8y§() : void
      {
         this.§<!C§(0);
      }
      
      public function §2!D§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §<!C§(param1:int) : void
      {
         this.§@S§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§<>§ = param1;
         this.§6#§ = false;
      }
      
      private function §"'§(param1:int) : void
      {
         this.§@S§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§<>§ = param1;
         this.§&!2§ = 0;
         this.§?!-§ = 0;
         this.§6#§ = true;
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
         §@!?§.§4J§.§0k§();
         §^n§.§4!;§(JSON.parse(this.§[B§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§2G§.§ z§ != null)
         {
            §2G§.§ z§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§-!9§().isGenericState())
         {
            if(_loc2_ == §6!M§.STATE_STATUS_COMPLETED)
            {
               §5s§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §-!9§().mName + " New State = " + §-!9§().mNextState);
               §3!;§(§-!9§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §=!M§;
      }
      
      override public function getAppHeight() : Number
      {
         return §"!§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §']§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §5!N§;
      }
      
      protected function initializeGame() : void
      {
         §2G§.§+;§(this.getItemData(),this.getLevelBackgrounds());
         §2G§.§ n§(this.§[B§.§0n§,§1[§.§'b§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §5!O§.§0N§(§7`§);
      }
      
      protected function getItemData() : XML
      {
         return §5!O§.§0N§(§-!M§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §'q§ = true;
         if(§6W§)
         {
            §3!;§(§+A§.§=,§);
         }
         else
         {
            §3!;§(§,r§.§=,§);
         }
      }
      
      public function §%b§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§6#§)
         {
            ++this.§&!2§;
         }
         if(!§>$§.§[i§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§@S§)
         {
            this.§@S§ = false;
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
