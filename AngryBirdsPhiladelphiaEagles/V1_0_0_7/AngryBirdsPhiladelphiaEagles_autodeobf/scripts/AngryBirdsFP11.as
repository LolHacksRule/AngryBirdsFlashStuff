package
{
   import §!6§.§3!5§;
   import §!6§.§>D§;
   import §!6§.§[!<§;
   import §"^§.§15§;
   import §"^§.§9=§;
   import §#!9§.§2$§;
   import §#!9§.§?Z§;
   import §&[§.§6M§;
   import §'d§.§,_§;
   import §,!F§.§#§;
   import §3!%§.§-k§;
   import §9[§.§7$§;
   import §<!4§.§25§;
   import §>Y§.§ u§;
   import §>Y§.§!!1§;
   import §>Y§.§4l§;
   import §>Y§.§6!+§;
   import §>Y§.§6[§;
   import §>Y§.§8!F§;
   import §>Y§.§;O§;
   import §>Y§.§<&§;
   import §>Y§.§=!F§;
   import §>Y§.§>8§;
   import §>Y§.StateCutScene;
   import §>Y§.StatePlay;
   import §>Y§.§`4§;
   import §>w§.;
   import §?!=§.§<!>§;
   import §?!C§.§[!-§;
   import §]8§.§6v§;
   import §`5§.§`!,§;
   import com.rovio.assets.§@!=§;
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
   
   public class AngryBirdsFP11 extends §2$§
   {
      
      protected static var §^!I§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §4!B§:String;
      
      public static var §91§:String;
      
      public static const §^&§:int = 1024;
      
      public static const §"#§:int = 768;
      
      public static const §<y§:Boolean = false;
      
      public static const §@x§:int = 2000;
      
      public static const §"!"§:Boolean = false;
      
      private static const §?!I§:int = 750;
      
      private static const §,!#§:int = 3;
      
      private static const §>!9§:int = 15;
      
      protected static var §79§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §%!B§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §,!§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var § !A§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §3!?§:§`!,§ = null;
      
      public static var §'q§:Boolean = true;
      
      private static var §20§:AngryBirdsFP11 = null;
      
      public static var §31§:Sprite = null;
      
      public static var §,R§:§15§;
      
      public static var §7[§:Boolean = false;
      
      protected static var §1H§:int = 0;
      
      protected static var §%h§:int = 0;
       
      
      private var §#T§:§6M§;
      
      private var § h§:int;
      
      private var §7`§:Boolean;
      
      private var §<d§:int;
      
      private var §+o§:int;
      
      protected var §<_§:Boolean;
      
      public function AngryBirdsFP11(param1:§?Z§)
      {
         this.§#T§ = new §6M§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §4!D§ || stage.stageHeight != §,§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §1H§;
      }
      
      public static function get stageHeight() : int
      {
         return §%h§;
      }
      
      public static function §'_§(param1:Boolean) : void
      {
         §'q§ = param1;
         §25§.§[5§(§'q§);
      }
      
      public static function §8!M§() : Boolean
      {
         return §'q§;
      }
      
      public static function get §4!D§() : int
      {
         return § j§.getAppWidth();
      }
      
      public static function get §,§() : int
      {
         return § j§.getAppHeight();
      }
      
      public static function §if §() : void
      {
         if(§25§.§'!1§("Channel_Theme") == null || !§25§.§'!1§("Channel_Theme").§#!"§())
         {
            §25§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §!;§() : void
      {
         §25§.§0!5§("Channel_Theme");
      }
      
      public static function get § j§() : AngryBirdsFP11
      {
         return §20§;
      }
      
      protected function getAssetMap() : XML
      {
         return §>D§.§0M§(§%!B§);
      }
      
      protected function getUIData() : XML
      {
         return §>D§.§0M§(§79§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §7$§.§ set§.init(§6v§.§`!-§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§#T§,this.§3C§);
         §20§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §'Q§ = §4!D§;
         §"l§ = §,§;
         §9=§.init(this,§4!D§,§,§);
         this.initLevelMain();
         §9=§.§1u§.visible = false;
         §3!5§.§8l§(§3s§);
         §3!5§.§-!1§(true);
         var _loc1_:XMLList = §>D§.§0M§(§^!I§).children();
         §@!=§.init(_loc1_);
         §25§.§5!G§("CHANNEL_THEME",1,1);
         §25§.§5!G§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§[#§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!E§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §,R§ = new §15§(stage);
         §[!-§.§ set§.§4!"§ = !§<y§;
      }
      
      protected function initLevelMain() : void
      {
         §9=§.§<!@§ = new §#§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §3!?§ = new §`!,§(§91§);
      }
      
      protected function initStates() : void
      {
         §]!E§(new §<&§(false));
         §]!E§(new §;O§(false));
         §]!E§(new §>8§(false));
         §]!E§(new §=!F§(false));
         §]!E§(new §8!F§(false));
         §]!E§(new StatePlay(false));
         §]!E§(new §6!+§(false));
         §]!E§(new §!!1§(false));
         §]!E§(new § u§(false));
         §]!E§(new §4l§(false));
         §]!E§(new §`4§(false));
         §]!E§(new StateCutScene(false));
         §]!E§(new §6[§(false));
         if(stage.stageWidth != §4!D§ || stage.stageHeight != §,§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §3C§(param1:ByteArray) : void
      {
      }
      
      protected function §[#§(param1:Event) : void
      {
         §[!<§.§<S§();
      }
      
      protected function §?!E§(param1:MouseEvent) : void
      {
         §[!<§.§"j§();
         if(this.§7`§)
         {
            ++this.§+o§;
            if(this.§+o§ > §>!9§)
            {
               this.§7`§ = false;
               if(this.§<d§ < §,!#§)
               {
                  this.§&!,§(this.§ h§);
               }
            }
         }
      }
      
      public function §6N§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§<_§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §4!D§;
         var _loc3_:Number = stage.stageHeight / §,§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§,§ / §4!D§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§4!D§ / §,§);
            _loc5_ = stage.stageHeight;
         }
         §9=§.§2!+§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §1H§ = stage.stageWidth;
         §%h§ = stage.stageHeight;
      }
      
      public function §@[§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§ h§ > §?!I§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§&!,§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§#!A§(_loc1_);
            }
         }
      }
      
      public function §,O§() : void
      {
         this.§&!,§(0);
      }
      
      public function §3!H§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §&!,§(param1:int) : void
      {
         this.§<_§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§ h§ = param1;
         this.§7`§ = false;
      }
      
      private function §#!A§(param1:int) : void
      {
         this.§<_§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§ h§ = param1;
         this.§<d§ = 0;
         this.§+o§ = 0;
         this.§7`§ = true;
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
         §7$§.§ set§.§,!A§();
         §-k§.§^j§(JSON.parse(this.§#T§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§9=§.§1u§ != null)
         {
            §9=§.§1u§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§%x§().isGenericState())
         {
            if(_loc2_ == §<!>§.STATE_STATUS_COMPLETED)
            {
               §3!5§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §%x§().mName + " New State = " + §%x§().mNextState);
               §%`§(§%x§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §^&§;
      }
      
      override public function getAppHeight() : Number
      {
         return §"#§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §@x§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §4!B§;
      }
      
      protected function initializeGame() : void
      {
         §9=§.§@!;§(this.getItemData(),this.getLevelBackgrounds());
         §9=§.§`W§(this.§#T§.§68§,§,_§.§0T§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §>D§.§0M§(§ !A§);
      }
      
      protected function getItemData() : XML
      {
         return §>D§.§0M§(§,!§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §7[§ = true;
         if(§"!"§)
         {
            §%`§(§<&§.§4!C§);
         }
         else
         {
            §%`§(§>8§.§4!C§);
         }
      }
      
      public function §86§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§7`§)
         {
            ++this.§<d§;
         }
         if(!§#0§.§!!B§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§<_§)
         {
            this.§<_§ = false;
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
