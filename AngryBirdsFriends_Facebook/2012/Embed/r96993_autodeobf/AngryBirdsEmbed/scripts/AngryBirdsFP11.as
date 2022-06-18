package
{
   import §!$§.§ &§;
   import §!$§.§ W§;
   import §!$§.§ X§;
   import §!$§.§#u§;
   import §!$§.§%!$§;
   import §!$§.§&!5§;
   import §!$§.§,J§;
   import §!$§.§,z§;
   import §!$§.§5!?§;
   import §!$§.§=F§;
   import §!$§.StateCutScene;
   import §!$§.StatePlay;
   import §!$§.§[q§;
   import §#=§.§<!C§;
   import §'N§.§^]§;
   import §-!C§.§#!G§;
   import §3!2§.§[;§;
   import §3v§.§1a§;
   import §3v§.§5G§;
   import §3v§.§`!H§;
   import §4c§.§,!§;
   import §4c§.§]!%§;
   import §5V§.§=5§;
   import §6[§.§;q§;
   import §8!#§.§<n§;
   import §<!<§.§6t§;
   import §>%§.§,!5§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^;§.§6!>§;
   import §`i§.§2W§;
   import com.rovio.assets.§][§;
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
   
   public class AngryBirdsFP11 extends §]!%§
   {
      
      protected static var §7_§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §%Q§:String;
      
      public static var §#"§:String;
      
      public static const §1!D§:int = 1024;
      
      public static const §#A§:int = 768;
      
      public static const §;!9§:Boolean = false;
      
      public static const §0!!§:int = 2000;
      
      public static const §7,§:Boolean = false;
      
      private static const §%t§:int = 750;
      
      private static const §>0§:int = 3;
      
      private static const §9p§:int = 15;
      
      protected static var §4r§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §]r§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §3!3§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §5o§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§6!>§ = null;
      
      public static var §13§:Boolean = true;
      
      private static var §7y§:AngryBirdsFP11 = null;
      
      public static var §!r§:Sprite = null;
      
      public static var §'`§:§,!5§;
      
      public static var §&L§:Boolean = false;
      
      protected static var §'!1§:int = 0;
      
      protected static var §!!'§:int = 0;
       
      
      private var §=!6§:§=5§;
      
      private var §&!,§:int;
      
      private var §"!D§:Boolean;
      
      private var §^G§:int;
      
      private var §56§:int;
      
      protected var override:Boolean;
      
      public function AngryBirdsFP11(param1:§,!§)
      {
         this.§=!6§ = new §=5§();
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
         return §'!1§;
      }
      
      public static function get stageHeight() : int
      {
         return §!!'§;
      }
      
      public static function §[7§(param1:Boolean) : void
      {
         §13§ = param1;
         §^]§.§9a§(§13§);
      }
      
      public static function §1!9§() : Boolean
      {
         return §13§;
      }
      
      public static function get screenWidth() : int
      {
         return §"h§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §"h§.getAppHeight();
      }
      
      public static function §[! §() : void
      {
         if(§^]§.§?V§("Channel_Theme") == null || !§^]§.§?V§("Channel_Theme").§[!F§())
         {
            §^]§.§1g§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §"!4§() : void
      {
         §^]§.§ _§("Channel_Theme");
      }
      
      public static function get §"h§() : AngryBirdsFP11
      {
         return §7y§;
      }
      
      protected function getAssetMap() : XML
      {
         return §`!H§.§3U§(§]r§);
      }
      
      protected function getUIData() : XML
      {
         return §`!H§.§3U§(§4r§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §[;§.§9r§.init(§<!C§.§8!=§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§=!6§,this.§'!9§);
         §7y§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §=z§ = screenWidth;
         §`s§ = screenHeight;
         §]3§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §]3§.§^!,§.visible = false;
         §1a§.§'C§(§'!5§);
         §1a§.§6J§(true);
         var _loc1_:XMLList = §`!H§.§3U§(§7_§).children();
         §][§.init(_loc1_);
         §^]§.§#r§("CHANNEL_THEME",1,1);
         §^]§.§#r§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§]!H§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §'`§ = new §,!5§(stage);
         §;q§.§9r§.§%h§ = !§;!9§;
      }
      
      protected function initLevelMain() : void
      {
         §]3§.§;v§ = new §2W§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §6!>§(§#"§);
      }
      
      protected function initStates() : void
      {
         §&n§(new §,z§(false));
         §&n§(new § W§(false));
         §&n§(new § &§(false));
         §&n§(new §5!?§(false));
         §&n§(new §#u§(false));
         §&n§(new StatePlay(false));
         §&n§(new §[q§(false));
         §&n§(new §&!5§(false));
         §&n§(new §,J§(false));
         §&n§(new §%!$§(false));
         §&n§(new §=F§(false));
         §&n§(new StateCutScene(false));
         §&n§(new § X§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §'!9§(param1:ByteArray) : void
      {
      }
      
      protected function §]!H§(param1:Event) : void
      {
         §5G§.§"q§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §5G§.§,%§();
         if(this.§"!D§)
         {
            ++this.§56§;
            if(this.§56§ > §9p§)
            {
               this.§"!D§ = false;
               if(this.§^G§ < §>0§)
               {
                  this.§5!2§(this.§&!,§);
               }
            }
         }
      }
      
      public function §2i§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.override)
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
         §]3§.§,!2§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §'!1§ = stage.stageWidth;
         §!!'§ = stage.stageHeight;
      }
      
      public function §>B§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§&!,§ > §%t§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§5!2§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§%p§(_loc1_);
            }
         }
      }
      
      public function §8! §() : void
      {
         this.§5!2§(0);
      }
      
      public function §6X§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §5!2§(param1:int) : void
      {
         this.override = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§&!,§ = param1;
         this.§"!D§ = false;
      }
      
      private function §%p§(param1:int) : void
      {
         this.override = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§&!,§ = param1;
         this.§^G§ = 0;
         this.§56§ = 0;
         this.§"!D§ = true;
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
         §[;§.§9r§.§9!D§();
         §#!G§.§7m§(JSON.parse(this.§=!6§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§]3§.§^!,§ != null)
         {
            §]3§.§^!,§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§%5§().isGenericState())
         {
            if(_loc2_ == §3!'§.STATE_STATUS_COMPLETED)
            {
               §1a§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §%5§().mName + " New State = " + §%5§().mNextState);
               §2O§(§%5§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §1!D§;
      }
      
      override public function getAppHeight() : Number
      {
         return §#A§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §0!!§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §%Q§;
      }
      
      protected function initializeGame() : void
      {
         §]3§.§0t§(this.getItemData(),this.getLevelBackgrounds());
         §]3§.§5!$§(this.§=!6§.§+§,§6t§.§-y§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §`!H§.§3U§(§5o§);
      }
      
      protected function getItemData() : XML
      {
         return §`!H§.§3U§(§3!3§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §&L§ = true;
         if(§7,§)
         {
            §2O§(§,z§.§9"§);
         }
         else
         {
            §2O§(§ &§.§9"§);
         }
      }
      
      public function §7^§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§"!D§)
         {
            ++this.§^G§;
         }
         if(!§<n§.§+0§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.override)
         {
            this.override = false;
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
