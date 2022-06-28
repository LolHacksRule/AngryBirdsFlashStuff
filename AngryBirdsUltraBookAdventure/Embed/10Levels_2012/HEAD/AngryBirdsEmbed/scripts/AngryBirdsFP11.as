package
{
   import §!c§.§`K§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §"!5§.§78§;
   import §"X§.§^!;§;
   import §%x§.§#;§;
   import §&p§.§'_§;
   import §,U§.§+u§;
   import §0!§.§0!5§;
   import §1M§.§@!6§;
   import §2!<§.§?!?§;
   import §2§.§0!<§;
   import §2§.§=h§;
   import §2§.§@p§;
   import §8!9§.§2+§;
   import §8!9§.§<!7§;
   import §>!C§.§6M§;
   import §[H§.§7P§;
   import §`@§.§ @§;
   import §`@§.§!,§;
   import §`@§.§#!6§;
   import §`@§.§-7§;
   import §`@§.§4N§;
   import §`@§.§4d§;
   import §`@§.§77§;
   import §`@§.§9!@§;
   import §`@§.§<!+§;
   import §`@§.§=&§;
   import §`@§.StateCutScene;
   import §`@§.StatePlay;
   import §`@§.§`!%§;
   import com.rovio.assets.§4;§;
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
   
   public class AngryBirdsFP11 extends §2+§
   {
      
      protected static var § !9§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §]7§:String;
      
      public static var §+!E§:String;
      
      public static const §;]§:int = 1024;
      
      public static const §3L§:int = 768;
      
      public static const §[!2§:Boolean = false;
      
      public static const §6!?§:int = 2000;
      
      public static const §`!1§:Boolean = false;
      
      private static const §;!=§:int = 750;
      
      private static const §&m§:int = 3;
      
      private static const §&C§:int = 15;
      
      protected static var §?W§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §-^§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §1!9§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §5S§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§@!6§ = null;
      
      public static var §%w§:Boolean = true;
      
      private static var §%P§:AngryBirdsFP11 = null;
      
      public static var §@k§:Sprite = null;
      
      public static var §,i§:§78§;
      
      public static var §with§:Boolean = false;
      
      protected static var §;B§:int = 0;
      
      protected static var §=!#§:int = 0;
       
      
      private var §6!&§:§+u§;
      
      private var §;I§:int;
      
      private var §"R§:Boolean;
      
      private var §"L§:int;
      
      private var §;8§:int;
      
      protected var §3o§:Boolean;
      
      public function AngryBirdsFP11(param1:§<!7§)
      {
         this.§6!&§ = new §+u§();
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
         return §;B§;
      }
      
      public static function get stageHeight() : int
      {
         return §=!#§;
      }
      
      public static function §-E§(param1:Boolean) : void
      {
         §%w§ = param1;
         §?!?§.§8!§(§%w§);
      }
      
      public static function §[l§() : Boolean
      {
         return §%w§;
      }
      
      public static function get screenWidth() : int
      {
         return §@t§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §@t§.getAppHeight();
      }
      
      public static function §'!F§() : void
      {
         if(§?!?§.§5!%§("Channel_Theme") == null || !§?!?§.§5!%§("Channel_Theme").§!q§())
         {
            §?!?§.§#'§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §-!?§() : void
      {
         §?!?§.§<!,§("Channel_Theme");
      }
      
      public static function get §@t§() : AngryBirdsFP11
      {
         return §%P§;
      }
      
      protected function getAssetMap() : XML
      {
         return §@p§.§]o§(§-^§);
      }
      
      protected function getUIData() : XML
      {
         return §@p§.§]o§(§?W§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §^!;§.§-]§.init(§7P§.§#§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§6!&§,this.§@!#§);
         §%P§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §6D§ = screenWidth;
         §,B§ = screenHeight;
         §,!!§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §,!!§.§;!;§.visible = false;
         §0!<§.§2!&§(§<P§);
         §0!<§.§-A§(true);
         var _loc1_:XMLList = §@p§.§]o§(§ !9§).children();
         §4;§.init(_loc1_);
         §?!?§.§&P§("CHANNEL_THEME",1,1);
         §?!?§.§&P§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§?2§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §,i§ = new §78§(stage);
         §%!>§.§-]§.§9V§ = !§[!2§;
      }
      
      protected function initLevelMain() : void
      {
         §,!!§.§;4§ = new §#;§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §@!6§(§+!E§);
      }
      
      protected function initStates() : void
      {
         §7!&§(new §=&§(false));
         §7!&§(new § @§(false));
         §7!&§(new §9!@§(false));
         §7!&§(new §-7§(false));
         §7!&§(new §!,§(false));
         §7!&§(new StatePlay(false));
         §7!&§(new §77§(false));
         §7!&§(new §#!6§(false));
         §7!&§(new §4d§(false));
         §7!&§(new §`!%§(false));
         §7!&§(new §<!+§(false));
         §7!&§(new StateCutScene(false));
         §7!&§(new §4N§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §@!#§(param1:ByteArray) : void
      {
      }
      
      protected function §?2§(param1:Event) : void
      {
         §=h§.§06§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §=h§.§@!A§();
         if(this.§"R§)
         {
            ++this.§;8§;
            if(this.§;8§ > §&C§)
            {
               this.§"R§ = false;
               if(this.§"L§ < §&m§)
               {
                  this.§8-§(this.§;I§);
               }
            }
         }
      }
      
      public function §=w§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§3o§)
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
         §,!!§.§1%§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §;B§ = stage.stageWidth;
         §=!#§ = stage.stageHeight;
      }
      
      public function §"&§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§;I§ > §;!=§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§8-§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§"!'§(_loc1_);
            }
         }
      }
      
      public function §>!1§() : void
      {
         this.§8-§(0);
      }
      
      public function §3l§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §8-§(param1:int) : void
      {
         this.§3o§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§;I§ = param1;
         this.§"R§ = false;
      }
      
      private function §"!'§(param1:int) : void
      {
         this.§3o§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§;I§ = param1;
         this.§"L§ = 0;
         this.§;8§ = 0;
         this.§"R§ = true;
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
         §^!;§.§-]§.§8!$§();
         §6M§.§>7§(JSON.parse(this.§6!&§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§,!!§.§;!;§ != null)
         {
            §,!!§.§;!;§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§@!;§().isGenericState())
         {
            if(_loc2_ == §0!5§.STATE_STATUS_COMPLETED)
            {
               §0!<§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §@!;§().mName + " New State = " + §@!;§().mNextState);
               §3S§(§@!;§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §;]§;
      }
      
      override public function getAppHeight() : Number
      {
         return §3L§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §6!?§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §]7§;
      }
      
      protected function initializeGame() : void
      {
         §,!!§.§>!%§(this.getItemData(),this.getLevelBackgrounds());
         §,!!§.§^!2§(this.§6!&§.§'a§,§`K§.§]B§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §@p§.§]o§(§5S§);
      }
      
      protected function getItemData() : XML
      {
         return §@p§.§]o§(§1!9§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §with§ = true;
         if(§`!1§)
         {
            §3S§(§=&§.§0!7§);
         }
         else
         {
            §3S§(§9!@§.§0!7§);
         }
      }
      
      public function §=§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§"R§)
         {
            ++this.§"L§;
         }
         if(!§'_§.§+! §())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§3o§)
         {
            this.§3o§ = false;
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
