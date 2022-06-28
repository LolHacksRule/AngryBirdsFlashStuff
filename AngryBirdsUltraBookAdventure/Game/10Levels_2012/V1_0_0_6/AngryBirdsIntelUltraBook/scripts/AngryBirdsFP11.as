package
{
   import §!!K§.§else§;
   import §"x§.§-8§;
   import §"x§.§3!v§;
   import §"x§.§?8§;
   import §+0§.§,!E§;
   import §+K§.§7$§;
   import §-d§.§%d§;
   import §2!H§.§-!,§;
   import §2_§.§'u§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §7X§.§^"§;
   import §;H§.§!y§;
   import §;H§.§#!G§;
   import §;H§.§%!D§;
   import §;H§.§%!R§;
   import §;H§.§,!]§;
   import §;H§.§-!X§;
   import §;H§.§5!D§;
   import §;H§.§6M§;
   import §;H§.§9!3§;
   import §;H§.§;W§;
   import §;H§.StateCutScene;
   import §;H§.StatePlay;
   import §;H§.§[!4§;
   import §>! §.§^!c§;
   import §>! §.§`o§;
   import §[!]§.§ !#§;
   import §]2§.§-9§;
   import §]2§.§[!O§;
   import §^!W§.§'Q§;
   import com.rovio.assets.§%!T§;
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
   
   public class AngryBirdsFP11 extends §[!O§
   {
      
      protected static var §"!W§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §+!V§:String;
      
      public static var §;!1§:String;
      
      public static const §"!c§:int = 1024;
      
      public static const §%g§:int = 768;
      
      public static const §@a§:Boolean = false;
      
      public static const §;!N§:int = 2000;
      
      public static const §@!F§:Boolean = false;
      
      private static const §"!!§:int = 750;
      
      private static const §=[§:int = 3;
      
      private static const §+!X§:int = 15;
      
      protected static var §"!+§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §=!b§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §"!P§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §1n§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§'Q§ = null;
      
      public static var §5`§:Boolean = true;
      
      private static var §;!K§:AngryBirdsFP11 = null;
      
      public static var §;[§:Sprite = null;
      
      public static var §<!h§:§`o§;
      
      public static var §6!c§:Boolean = false;
      
      protected static var §-!P§:int = 0;
      
      protected static var §6!l§:int = 0;
       
      
      private var §#I§:§7$§;
      
      private var §="§:int;
      
      private var §=u§:Boolean;
      
      private var §#!f§:int;
      
      private var §8!4§:int;
      
      protected var § '§:Boolean;
      
      public function AngryBirdsFP11(param1:§-9§)
      {
         this.§#I§ = new §7$§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §3!5§ || stage.stageHeight != §]!m§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §-!P§;
      }
      
      public static function get stageHeight() : int
      {
         return §6!l§;
      }
      
      public static function §5!C§(param1:Boolean) : void
      {
         §5`§ = param1;
         §9'§.§[!f§(§5`§);
      }
      
      public static function §0!b§() : Boolean
      {
         return §5`§;
      }
      
      public static function get §3!5§() : int
      {
         return §3l§.getAppWidth();
      }
      
      public static function get §]!m§() : int
      {
         return §3l§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(§9'§.§<!5§("Channel_Theme") == null || !§9'§.§<!5§("Channel_Theme").§;,§())
         {
            §9'§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §8#§() : void
      {
         §9'§.§7!,§("Channel_Theme");
      }
      
      public static function get §3l§() : AngryBirdsFP11
      {
         return §;!K§;
      }
      
      protected function getAssetMap() : XML
      {
         return §3!v§.§;!-§(§=!b§);
      }
      
      protected function getUIData() : XML
      {
         return §3!v§.§;!-§(§"!+§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         § !#§.§7!j§.init(§^"§.§07§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§#I§,this.§>!Q§);
         §;!K§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §]!<§ = §3!5§;
         §4!j§ = §]!m§;
         §^!c§.init(this,§3!5§,§]!m§);
         this.initLevelMain();
         §^!c§.§"!k§.visible = false;
         §-8§.§4!2§(§ !j§);
         §-8§.§76§(true);
         var _loc1_:XMLList = §3!v§.§;!-§(§"!W§).children();
         §%!T§.init(_loc1_);
         §9'§.§+!S§("CHANNEL_THEME",1,1);
         §9'§.§+!S§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§1!r§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<k§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §<!h§ = new §`o§(stage);
         §-!,§.§7!j§.§8!u§ = !§@a§;
      }
      
      protected function initLevelMain() : void
      {
         §^!c§.§5!Y§ = new §'u§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §'Q§(§;!1§);
      }
      
      protected function initStates() : void
      {
         §!]§(new §5!D§(false));
         §!]§(new §;W§(false));
         §!]§(new §%!R§(false));
         §!]§(new §,!]§(false));
         §!]§(new §!y§(false));
         §!]§(new StatePlay(false));
         §!]§(new §-!X§(false));
         §!]§(new §%!D§(false));
         §!]§(new §#!G§(false));
         §!]§(new §6M§(false));
         §!]§(new §[!4§(false));
         §!]§(new StateCutScene(false));
         §!]§(new §9!3§(false));
         if(stage.stageWidth != §3!5§ || stage.stageHeight != §]!m§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §>!Q§(param1:ByteArray) : void
      {
      }
      
      protected function §1!r§(param1:Event) : void
      {
         §?8§.§`!H§();
      }
      
      protected function §<k§(param1:MouseEvent) : void
      {
         §?8§.§#!$§();
         if(this.§=u§)
         {
            ++this.§8!4§;
            if(this.§8!4§ > §+!X§)
            {
               this.§=u§ = false;
               if(this.§#!f§ < §=[§)
               {
                  this.§[!5§(this.§="§);
               }
            }
         }
      }
      
      public function §&!d§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§ '§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §3!5§;
         var _loc3_:Number = stage.stageHeight / §]!m§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§]!m§ / §3!5§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§3!5§ / §]!m§);
            _loc5_ = stage.stageHeight;
         }
         §^!c§.§<!B§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §-!P§ = stage.stageWidth;
         §6!l§ = stage.stageHeight;
      }
      
      public function §1T§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§="§ > §"!!§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§[!5§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§"B§(_loc1_);
            }
         }
      }
      
      public function §&2§() : void
      {
         this.§[!5§(0);
      }
      
      public function §`m§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §[!5§(param1:int) : void
      {
         this.§ '§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§="§ = param1;
         this.§=u§ = false;
      }
      
      private function §"B§(param1:int) : void
      {
         this.§ '§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§="§ = param1;
         this.§#!f§ = 0;
         this.§8!4§ = 0;
         this.§=u§ = true;
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
         § !#§.§7!j§.§5!p§();
         LevelManager.§0U§(JSON.parse(this.§#I§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§^!c§.§"!k§ != null)
         {
            §^!c§.§"!k§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§0@§().isGenericState())
         {
            if(_loc2_ == §,!E§.STATE_STATUS_COMPLETED)
            {
               §-8§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §0@§().mName + " New State = " + §0@§().mNextState);
               §@!n§(§0@§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §"!c§;
      }
      
      override public function getAppHeight() : Number
      {
         return §%g§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §;!N§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §+!V§;
      }
      
      protected function initializeGame() : void
      {
         §^!c§.§-#§(this.getItemData(),this.getLevelBackgrounds());
         §^!c§.§-f§(this.§#I§.§,!U§,§%d§.§,!#§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §3!v§.§;!-§(§1n§);
      }
      
      protected function getItemData() : XML
      {
         return §3!v§.§;!-§(§"!P§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §6!c§ = true;
         if(§@!F§)
         {
            §@!n§(§5!D§.§"!s§);
         }
         else
         {
            §@!n§(§%!R§.§"!s§);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§=u§)
         {
            ++this.§#!f§;
         }
         if(!§else§.§9!i§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§ '§)
         {
            this.§ '§ = false;
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
