package
{
   import § !k§.§%N§;
   import § !k§.§%]§;
   import § !k§.§'!4§;
   import § !k§.§,h§;
   import § !k§.§0!e§;
   import § !k§.§4A§;
   import § !k§.§6!5§;
   import § !k§.§6!U§;
   import § !k§.§;!H§;
   import § !k§.§=!#§;
   import § !k§.§?U§;
   import § !k§.StateCutScene;
   import § !k§.StatePlay;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §"i§.§5V§;
   import §+&§.§-!7§;
   import §1!T§.§6!H§;
   import §4!C§.§,!l§;
   import §5i§.§4!]§;
   import §5i§.§7!l§;
   import §6z§.§+!D§;
   import §6z§.§[g§;
   import §6z§.§`!<§;
   import §8!Z§.§ !D§;
   import §8,§.§+_§;
   import §<i§.§#!%§;
   import §<i§.§9!M§;
   import §>o§.§+!4§;
   import §@4§.§,!]§;
   import §[a§.§2!T§;
   import com.rovio.assets.§11§;
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
   
   public class AngryBirdsFP11 extends §9!M§
   {
      
      protected static var §]!9§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §9n§:String;
      
      public static var §6S§:String;
      
      public static const §]m§:int = 1024;
      
      public static const §0N§:int = 768;
      
      public static const §2!y§:Boolean = false;
      
      public static const §93§:int = 2000;
      
      public static const §0!f§:Boolean = false;
      
      private static const §=O§:int = 750;
      
      private static const §4!§:int = 3;
      
      private static const §`!4§:int = 15;
      
      protected static var §"^§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §2t§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §7!`§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §]!]§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§2!T§ = null;
      
      public static var §>!e§:Boolean = true;
      
      private static var §1H§:AngryBirdsFP11 = null;
      
      public static var §9p§:Sprite = null;
      
      public static var §@!C§:§7!l§;
      
      public static var §@!&§:Boolean = false;
      
      protected static var §6!]§:int = 0;
      
      protected static var §#o§:int = 0;
       
      
      private var §+!'§:§ !D§;
      
      private var §`7§:int;
      
      private var §@w§:Boolean;
      
      private var §?!`§:int;
      
      private var §<1§:int;
      
      protected var §[H§:Boolean;
      
      public function AngryBirdsFP11(param1:§#!%§)
      {
         this.§+!'§ = new § !D§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §;!Z§ || stage.stageHeight != §7P§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §6!]§;
      }
      
      public static function get stageHeight() : int
      {
         return §#o§;
      }
      
      public static function §0S§(param1:Boolean) : void
      {
         §>!e§ = param1;
         §6!H§.§1^§(§>!e§);
      }
      
      public static function §`;§() : Boolean
      {
         return §>!e§;
      }
      
      public static function get §;!Z§() : int
      {
         return §`!c§.getAppWidth();
      }
      
      public static function get §7P§() : int
      {
         return §`!c§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(§6!H§.§-^§("Channel_Theme") == null || !§6!H§.§-^§("Channel_Theme").§<!P§())
         {
            §6!H§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §`!P§() : void
      {
         §6!H§.§1x§("Channel_Theme");
      }
      
      public static function get §`!c§() : AngryBirdsFP11
      {
         return §1H§;
      }
      
      protected function getAssetMap() : XML
      {
         return §`!<§.§ !0§(§2t§);
      }
      
      protected function getUIData() : XML
      {
         return §`!<§.§ !0§(§"^§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §5V§.§^Z§.init(§,!l§.§"!D§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§+!'§,this.§"A§);
         §1H§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §`!B§ = §;!Z§;
         § !]§ = §7P§;
         §4!]§.init(this,§;!Z§,§7P§);
         this.initLevelMain();
         §4!]§.§3!V§.visible = false;
         §[g§.§-J§(§>!+§);
         §[g§.§3s§(true);
         var _loc1_:XMLList = §`!<§.§ !0§(§]!9§).children();
         §11§.init(_loc1_);
         §6!H§.§^!s§("CHANNEL_THEME",1,1);
         §6!H§.§^!s§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§[!§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§0!r§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §@!C§ = new §7!l§(stage);
         §5+§.§^Z§.§[!j§ = !§2!y§;
      }
      
      protected function initLevelMain() : void
      {
         §4!]§.§8C§ = new §-!7§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §2!T§(§6S§);
      }
      
      protected function initStates() : void
      {
         §?!-§(new §,h§(false));
         §?!-§(new §%]§(false));
         §?!-§(new §4A§(false));
         §?!-§(new §?U§(false));
         §?!-§(new §6!U§(false));
         §?!-§(new StatePlay(false));
         §?!-§(new §=!#§(false));
         §?!-§(new §%N§(false));
         §?!-§(new §'!4§(false));
         §?!-§(new §0!e§(false));
         §?!-§(new §;!H§(false));
         §?!-§(new StateCutScene(false));
         §?!-§(new §6!5§(false));
         if(stage.stageWidth != §;!Z§ || stage.stageHeight != §7P§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §"A§(param1:ByteArray) : void
      {
      }
      
      protected function §[!§(param1:Event) : void
      {
         §+!D§.§&!^§();
      }
      
      protected function §0!r§(param1:MouseEvent) : void
      {
         §+!D§.§-A§();
         if(this.§@w§)
         {
            ++this.§<1§;
            if(this.§<1§ > §`!4§)
            {
               this.§@w§ = false;
               if(this.§?!`§ < §4!§)
               {
                  this.§&!,§(this.§`7§);
               }
            }
         }
      }
      
      public function §+#§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§[H§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §;!Z§;
         var _loc3_:Number = stage.stageHeight / §7P§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§7P§ / §;!Z§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§;!Z§ / §7P§);
            _loc5_ = stage.stageHeight;
         }
         §4!]§.§,!0§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §6!]§ = stage.stageWidth;
         §#o§ = stage.stageHeight;
      }
      
      public function §catch§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§`7§ > §=O§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§&!,§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§=!n§(_loc1_);
            }
         }
      }
      
      public function §2!3§() : void
      {
         this.§&!,§(0);
      }
      
      public function §[k§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §&!,§(param1:int) : void
      {
         this.§[H§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§`7§ = param1;
         this.§@w§ = false;
      }
      
      private function §=!n§(param1:int) : void
      {
         this.§[H§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§`7§ = param1;
         this.§?!`§ = 0;
         this.§<1§ = 0;
         this.§@w§ = true;
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
         §5V§.§^Z§.§9[§();
         LevelManager.§,v§(JSON.parse(this.§+!'§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§4!]§.§3!V§ != null)
         {
            §4!]§.§3!V§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§-#§().isGenericState())
         {
            if(_loc2_ == §+_§.STATE_STATUS_COMPLETED)
            {
               §[g§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §-#§().mName + " New State = " + §-#§().mNextState);
               § !,§(§-#§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §]m§;
      }
      
      override public function getAppHeight() : Number
      {
         return §0N§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §93§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §9n§;
      }
      
      protected function initializeGame() : void
      {
         §4!]§.§`!5§(this.getItemData(),this.getLevelBackgrounds());
         §4!]§.§%'§(this.§+!'§.§package§,§+!4§.§,!o§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §`!<§.§ !0§(§]!]§);
      }
      
      protected function getItemData() : XML
      {
         return §`!<§.§ !0§(§7!`§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §@!&§ = true;
         if(§0!f§)
         {
            § !,§(§,h§.§3F§);
         }
         else
         {
            § !,§(§4A§.§3F§);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§@w§)
         {
            ++this.§?!`§;
         }
         if(!§,!]§.§1!8§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§[H§)
         {
            this.§[H§ = false;
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
