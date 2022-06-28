package
{
   import §"R§.§ !Q§;
   import §%e§.§[P§;
   import §&A§.§ !f§;
   import §&A§.§,6§;
   import §,!5§.§^g§;
   import §0!N§.LevelManager;
   import §57§.§,!b§;
   import §9!5§.§ B§;
   import §9!5§.§!1§;
   import §9!5§.§!i§;
   import §9!5§.§"Y§;
   import §9!5§.§#!c§;
   import §9!5§.§%@§;
   import §9!5§.§'!>§;
   import §9!5§.§-!-§;
   import §9!5§.§0!`§;
   import §9!5§.§17§;
   import §9!5§.§>!0§;
   import §9!5§.StateCutScene;
   import §9!5§.StatePlay;
   import §;!5§.§5>§;
   import §<!1§.§<F§;
   import §<!>§.§?Y§;
   import §<&§.§^b§;
   import §]!§.§4!s§;
   import §^;§.§6!S§;
   import §^_§.§!>§;
   import §^_§.§,>§;
   import §^_§.§=H§;
   import com.rovio.assets.§,c§;
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
   import §true§.§ _§;
   import §true§.§#!&§;
   
   public class AngryBirdsFP11 extends § !f§
   {
      
      protected static var §!"§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §#!x§:String;
      
      public static var §8!`§:String;
      
      public static const §[o§:int = 1024;
      
      public static const §-S§:int = 768;
      
      public static const §[!d§:Boolean = false;
      
      public static const §,P§:int = 2000;
      
      public static const §2!f§:Boolean = false;
      
      private static const §,!m§:int = 750;
      
      private static const §+!§:int = 3;
      
      private static const §&!r§:int = 15;
      
      protected static var §1!W§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §`!1§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var § $§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var § h§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§4!s§ = null;
      
      public static var §-!W§:Boolean = true;
      
      private static var §6!f§:AngryBirdsFP11 = null;
      
      public static var §%!r§:Sprite = null;
      
      public static var §!L§:§#!&§;
      
      public static var §`-§:Boolean = false;
      
      protected static var §<<§:int = 0;
      
      protected static var §5!X§:int = 0;
       
      
      private var §2z§:§[P§;
      
      private var §`§:int;
      
      private var §4o§:Boolean;
      
      private var §?!!§:int;
      
      private var §8! §:int;
      
      protected var §8!Q§:Boolean;
      
      public function AngryBirdsFP11(param1:§,6§)
      {
         this.§2z§ = new §[P§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §>!2§ || stage.stageHeight != §@U§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §<<§;
      }
      
      public static function get stageHeight() : int
      {
         return §5!X§;
      }
      
      public static function §-#§(param1:Boolean) : void
      {
         §-!W§ = param1;
         § !Q§.§each §(§-!W§);
      }
      
      public static function §"!u§() : Boolean
      {
         return §-!W§;
      }
      
      public static function get §>!2§() : int
      {
         return §3!a§.getAppWidth();
      }
      
      public static function get §@U§() : int
      {
         return §3!a§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(§ !Q§.§5s§("Channel_Theme") == null || !§ !Q§.§5s§("Channel_Theme").§;J§())
         {
            § !Q§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §,!p§() : void
      {
         § !Q§.§9!t§("Channel_Theme");
      }
      
      public static function get §3!a§() : AngryBirdsFP11
      {
         return §6!f§;
      }
      
      protected function getAssetMap() : XML
      {
         return §,>§.§%2§(§`!1§);
      }
      
      protected function getUIData() : XML
      {
         return §,>§.§%2§(§1!W§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §6!S§.§<d§.init(§5>§.§?T§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§2z§,this.§;B§);
         §6!f§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §%#§ = §>!2§;
         §="§ = §@U§;
         § _§.init(this,§>!2§,§@U§);
         this.initLevelMain();
         § _§.§2u§.visible = false;
         §!>§.§?!S§(§8!0§);
         §!>§.§#!X§(true);
         var _loc1_:XMLList = §,>§.§%2§(§!"§).children();
         §,c§.init(_loc1_);
         § !Q§.§]!h§("CHANNEL_THEME",1,1);
         § !Q§.§]!h§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§64§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§&b§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §!L§ = new §#!&§(stage);
         §,!b§.§<d§.§^!K§ = !§[!d§;
      }
      
      protected function initLevelMain() : void
      {
         § _§.§!6§ = new §^g§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §4!s§(§8!`§);
      }
      
      protected function initStates() : void
      {
         §9!`§(new §>!0§(false));
         §9!`§(new §#!c§(false));
         §9!`§(new §!i§(false));
         §9!`§(new §0!`§(false));
         §9!`§(new § B§(false));
         §9!`§(new StatePlay(false));
         §9!`§(new §%@§(false));
         §9!`§(new §'!>§(false));
         §9!`§(new §17§(false));
         §9!`§(new §"Y§(false));
         §9!`§(new §-!-§(false));
         §9!`§(new StateCutScene(false));
         §9!`§(new §!1§(false));
         if(stage.stageWidth != §>!2§ || stage.stageHeight != §@U§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §;B§(param1:ByteArray) : void
      {
      }
      
      protected function §64§(param1:Event) : void
      {
         §=H§.§'!V§();
      }
      
      protected function §&b§(param1:MouseEvent) : void
      {
         §=H§.§"u§();
         if(this.§4o§)
         {
            ++this.§8! §;
            if(this.§8! § > §&!r§)
            {
               this.§4o§ = false;
               if(this.§?!!§ < §+!§)
               {
                  this.§0!X§(this.§`§);
               }
            }
         }
      }
      
      public function §+!R§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§8!Q§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §>!2§;
         var _loc3_:Number = stage.stageHeight / §@U§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§@U§ / §>!2§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§>!2§ / §@U§);
            _loc5_ = stage.stageHeight;
         }
         § _§.§%L§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §<<§ = stage.stageWidth;
         §5!X§ = stage.stageHeight;
      }
      
      public function §8!d§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§`§ > §,!m§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§0!X§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§7<§(_loc1_);
            }
         }
      }
      
      public function §5C§() : void
      {
         this.§0!X§(0);
      }
      
      public function §6<§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §0!X§(param1:int) : void
      {
         this.§8!Q§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§`§ = param1;
         this.§4o§ = false;
      }
      
      private function §7<§(param1:int) : void
      {
         this.§8!Q§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§`§ = param1;
         this.§?!!§ = 0;
         this.§8! § = 0;
         this.§4o§ = true;
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
         §6!S§.§<d§.§1[§();
         LevelManager.§4!#§(JSON.parse(this.§2z§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§ _§.§2u§ != null)
         {
            § _§.§2u§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§4C§().isGenericState())
         {
            if(_loc2_ == §?Y§.STATE_STATUS_COMPLETED)
            {
               §!>§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §4C§().mName + " New State = " + §4C§().mNextState);
               §,!6§(§4C§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §[o§;
      }
      
      override public function getAppHeight() : Number
      {
         return §-S§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §,P§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §#!x§;
      }
      
      protected function initializeGame() : void
      {
         § _§.§'!w§(this.getItemData(),this.getLevelBackgrounds());
         § _§.§#!"§(this.§2z§.§`Q§,§<F§.§@!u§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §,>§.§%2§(§ h§);
      }
      
      protected function getItemData() : XML
      {
         return §,>§.§%2§(§ $§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §`-§ = true;
         if(§2!f§)
         {
            §,!6§(§>!0§.§?h§);
         }
         else
         {
            §,!6§(§!i§.§?h§);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§4o§)
         {
            ++this.§?!!§;
         }
         if(!§^b§.§@@§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§8!Q§)
         {
            this.§8!Q§ = false;
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
