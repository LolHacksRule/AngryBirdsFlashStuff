package
{
   import §"a§.§!"J§;
   import §#"A§.§'"U§;
   import §%"J§.§!`§;
   import §%"J§.§3!O§;
   import §+!c§.§&!0§;
   import §+!c§.§9"H§;
   import §+!c§.§;!=§;
   import §,l§.§0z§;
   import §-f§.§8!<§;
   import §2"'§.§0W§;
   import §2<§.§8M§;
   import §4!<§.§'!S§;
   import §4D§.§"H§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §;u§.§ if§;
   import §;u§.§%Z§;
   import §;u§.§&"[§;
   import §;u§.§-!v§;
   import §;u§.§4!Q§;
   import §;u§.§5!+§;
   import §;u§.§9!V§;
   import §;u§.§9"@§;
   import §;u§.§>!w§;
   import §;u§.StateCutScene;
   import §;u§.StatePlay;
   import §;u§.§]S§;
   import §;u§.§`!7§;
   import §@!"§.§!!C§;
   import §@!"§.§?l§;
   import com.rovio.assets.§3!?§;
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
   
   public class AngryBirdsFP11 extends §3!O§
   {
      
      protected static var §'"X§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §@!x§:String;
      
      public static var §?8§:String;
      
      public static const §7!H§:int = 1024;
      
      public static const §<"P§:int = 768;
      
      public static const §#V§:Boolean = false;
      
      public static const §-%§:int = 2000;
      
      public static const §!">§:Boolean = false;
      
      private static const §!!y§:int = 750;
      
      private static const §?!]§:int = 3;
      
      private static const §,!u§:int = 15;
      
      protected static var §9!0§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §>!?§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §8!>§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §]!#§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§"H§ = null;
      
      public static var §["J§:Boolean = true;
      
      private static var §!C§:AngryBirdsFP11 = null;
      
      public static var §`!J§:Sprite = null;
      
      public static var §8!v§:§!!C§;
      
      public static var §`!5§:Boolean = false;
      
      protected static var §7E§:int = 0;
      
      protected static var §^"J§:int = 0;
       
      
      private var §0?§:§0z§;
      
      private var §7$§:int;
      
      private var §+!N§:Boolean;
      
      private var §'"§:int;
      
      private var §2§:int;
      
      protected var §@!4§:Boolean;
      
      public function AngryBirdsFP11(param1:§!`§)
      {
         this.§0?§ = new §0z§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §'!m§ || stage.stageHeight != §?s§)
         {
            this.§?!O§(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §7E§;
      }
      
      public static function get stageHeight() : int
      {
         return §^"J§;
      }
      
      public static function §]"H§(param1:Boolean) : void
      {
         §["J§ = param1;
         §@"M§.§'!v§(§["J§);
      }
      
      public static function §6!,§() : Boolean
      {
         return §["J§;
      }
      
      public static function get §'!m§() : int
      {
         return §>m§.getAppWidth();
      }
      
      public static function get §?s§() : int
      {
         return §>m§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(§@"M§.§^!5§("Channel_Theme") == null || !§@"M§.§^!5§("Channel_Theme").§6",§())
         {
            §@"M§.§3"C§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §4!8§() : void
      {
         §@"M§.§]!n§("Channel_Theme");
      }
      
      public static function get §>m§() : AngryBirdsFP11
      {
         return §!C§;
      }
      
      protected function getAssetMap() : XML
      {
         return §9"H§.§5!h§(§>!?§);
      }
      
      protected function getUIData() : XML
      {
         return §9"H§.§5!h§(§9!0§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §'"U§.§&"5§.init(§8M§.§+!y§(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.§0?§,this.§3&§);
         §!C§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §7!i§ = §'!m§;
         §9A§ = §?s§;
         §?l§.init(this,§'!m§,§?s§);
         this.initLevelMain();
         §?l§.§#"$§.visible = false;
         §;!=§.§"y§(§%3§);
         §;!=§.§>!C§(true);
         var _loc1_:XMLList = §9"H§.§5!h§(§'"X§).children();
         §3!?§.init(_loc1_);
         §@"M§.§set §("CHANNEL_THEME",1,1);
         §@"M§.§set §("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§[!&§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6!`§);
         stage.addEventListener(Event.RESIZE,this.§?!O§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §8!v§ = new §!!C§(stage);
         §0W§.§&"5§.§3!S§ = !§#V§;
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         §?l§.§'h§ = new §'!S§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §"H§(§?8§);
      }
      
      protected function initStates() : void
      {
         §%1§(new §`!7§(false));
         §%1§(new §-!v§(false));
         §%1§(new §5!+§(false));
         §%1§(new §9!V§(false));
         §%1§(new §9"@§(false));
         §%1§(new StatePlay(false));
         §%1§(new §4!Q§(false));
         §%1§(new § if§(false));
         §%1§(new §>!w§(false));
         §%1§(new §]S§(false));
         §%1§(new §%Z§(false));
         §%1§(new StateCutScene(false));
         §%1§(new §&"[§(false));
         if(stage.stageWidth != §'!m§ || stage.stageHeight != §?s§)
         {
            this.§?!O§(null);
         }
      }
      
      protected function §3&§(param1:ByteArray) : void
      {
      }
      
      protected function §[!&§(param1:Event) : void
      {
         §&!0§.§!%§();
      }
      
      protected function §6!`§(param1:MouseEvent) : void
      {
         §&!0§.§@!R§();
         if(this.§+!N§)
         {
            ++this.§2§;
            if(this.§2§ > §,!u§)
            {
               this.§+!N§ = false;
               if(this.§'"§ < §?!]§)
               {
                  this.§1Z§(this.§7$§);
               }
            }
         }
      }
      
      public function §9!_§() : void
      {
         this.§?!O§(null);
      }
      
      protected function §?!O§(param1:Event) : void
      {
         this.§@!4§ = true;
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §7E§;
            _loc3_ = §^"J§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §7E§ == _loc2_ && §^"J§ == _loc3_)
         {
            return false;
         }
         §7E§ = _loc2_;
         §^"J§ = _loc3_;
         this.resizeViews(§7E§,§^"J§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §?l§.§4!c§(0,0,param1,param2);
         setViewSize(param1,param2);
      }
      
      public function §=-§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§7$§ > §!!y§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§1Z§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§;!§(_loc1_);
            }
         }
      }
      
      public function §^X§() : void
      {
         this.§1Z§(0);
      }
      
      public function §4!'§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §1Z§(param1:int) : void
      {
         this.§@!4§ = true;
         this.§7$§ = param1;
         this.§+!N§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §;!§(param1:int) : void
      {
         this.§@!4§ = true;
         this.§7$§ = param1;
         this.§'"§ = 0;
         this.§2§ = 0;
         this.§+!N§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
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
         §'"U§.§&"5§.§2"?§();
         LevelManager.§@@§(JSON.parse(this.§0?§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§?l§.§#"$§ != null)
         {
            §?l§.§#"$§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§2!d§().isGenericState())
         {
            if(_loc2_ == §+d§.STATE_STATUS_COMPLETED)
            {
               §;!=§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §2!d§().mName + " New State = " + §2!d§().mNextState);
               §`H§(§2!d§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §7!H§;
      }
      
      override public function getAppHeight() : Number
      {
         return §<"P§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §-%§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §@!x§;
      }
      
      protected function initializeGame() : void
      {
         §?l§.§`!I§(this.getItemData(),this.getLevelBackgrounds());
         §?l§.§&!_§(this.§0?§.§#!y§,§8!<§.§-!Z§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §9"H§.§5!h§(§]!#§);
      }
      
      protected function getItemData() : XML
      {
         return §9"H§.§5!h§(§8!>§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §`!5§ = true;
         if(§!">§)
         {
            §`H§(§`!7§.STATE_NAME);
         }
         else
         {
            §`H§(§5!+§.STATE_NAME);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§+!N§)
         {
            ++this.§'"§;
         }
         if(!§!"J§.§+",§())
         {
            return;
         }
         if(this.§@!4§)
         {
            this.resize();
            this.§@!4§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
