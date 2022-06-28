package
{
   import §"!i§.LevelManager;
   import §-!$§.§,w§;
   import §-!$§.§4P§;
   import §-^§.§?7§;
   import §-o§.§4w§;
   import §0S§.§7!Z§;
   import §1!B§.§7n§;
   import §1!B§.§<m§;
   import §1!B§.§>!s§;
   import §2!U§.§&i§;
   import §2!U§.§0!>§;
   import §2!U§.§2!=§;
   import §2!U§.§3!;§;
   import §2!U§.§5!i§;
   import §2!U§.§8"!§;
   import §2!U§.§;o§;
   import §2!U§.§<&§;
   import §2!U§.§=<§;
   import §2!U§.§>!"§;
   import §2!U§.§@!A§;
   import §2!U§.StateCutScene;
   import §2!U§.StatePlay;
   import §2m§.§<!?§;
   import §40§.§5G§;
   import §8!H§.§9![§;
   import §;!y§.§#X§;
   import §;!y§.§,!s§;
   import §[!1§.§+!6§;
   import §[!b§.§-!Q§;
   import §]!+§.§5!1§;
   import §]F§.§`!G§;
   import com.rovio.assets.§2!B§;
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
   
   public class AngryBirdsFP11 extends §4P§
   {
      
      protected static var §,p§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §^I§:String;
      
      public static var §[!S§:String;
      
      public static const §!"#§:int = 1024;
      
      public static const §8p§:int = 768;
      
      public static const §?C§:Boolean = false;
      
      public static const §#" §:int = 2000;
      
      public static const § 3§:Boolean = false;
      
      private static const §0x§:int = 750;
      
      private static const §5N§:int = 3;
      
      private static const §6!h§:int = 15;
      
      protected static var §+!4§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §0!M§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §0E§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §4!I§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§+!6§ = null;
      
      public static var §0!7§:Boolean = true;
      
      private static var §`n§:AngryBirdsFP11 = null;
      
      public static var §70§:Sprite = null;
      
      public static var §>s§:§#X§;
      
      public static var §^T§:Boolean = false;
      
      protected static var §3!!§:int = 0;
      
      protected static var §>u§:int = 0;
       
      
      private var §=!Q§:§5!1§;
      
      private var §2j§:int;
      
      private var §%!R§:Boolean;
      
      private var §<r§:int;
      
      private var §&<§:int;
      
      protected var §6!`§:Boolean;
      
      public function AngryBirdsFP11(param1:§,w§)
      {
         this.§=!Q§ = new §5!1§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §!Z§ || stage.stageHeight != §2" §)
         {
            this.§0!S§(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §3!!§;
      }
      
      public static function get stageHeight() : int
      {
         return §>u§;
      }
      
      public static function §]!G§(param1:Boolean) : void
      {
         §0!7§ = param1;
         §-!Q§.§,!=§(§0!7§);
      }
      
      public static function §"C§() : Boolean
      {
         return §0!7§;
      }
      
      public static function get §!Z§() : int
      {
         return §'!g§.getAppWidth();
      }
      
      public static function get §2" §() : int
      {
         return §'!g§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(§-!Q§.§]a§("Channel_Theme") == null || !§-!Q§.§]a§("Channel_Theme").§!!#§())
         {
            §-!Q§.§#3§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §?!<§() : void
      {
         §-!Q§.§^B§("Channel_Theme");
      }
      
      public static function get §'!g§() : AngryBirdsFP11
      {
         return §`n§;
      }
      
      protected function getAssetMap() : XML
      {
         return §>!s§.§;§(§0!M§);
      }
      
      protected function getUIData() : XML
      {
         return §>!s§.§;§(§+!4§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §4w§.§[U§.init(§?7§.§7h§(),this.§6!b§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§=!Q§,this.§<!X§);
         §`n§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §#!t§ = §!Z§;
         § !-§ = §2" §;
         §,!s§.init(this,§!Z§,§2" §);
         this.initLevelMain();
         §,!s§.§3!h§.visible = false;
         §<m§.§3! §(§`O§);
         §<m§.§ !J§(true);
         var _loc1_:XMLList = §>!s§.§;§(§,p§).children();
         §2!B§.init(_loc1_);
         §-!Q§.§"3§("CHANNEL_THEME",1,1);
         §-!Q§.§"3§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§!!?§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§>![§);
         stage.addEventListener(Event.RESIZE,this.§0!S§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §>s§ = new §#X§(stage);
         §`!G§.§[U§.§;!W§ = !§?C§;
      }
      
      protected function §6!b§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         §,!s§.§=!I§ = new §5G§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §+!6§(§[!S§);
      }
      
      protected function initStates() : void
      {
         §9X§(new §5!i§(false));
         §9X§(new §3!;§(false));
         §9X§(new §&i§(false));
         §9X§(new §8"!§(false));
         §9X§(new §2!=§(false));
         §9X§(new StatePlay(false));
         §9X§(new §@!A§(false));
         §9X§(new §=<§(false));
         §9X§(new §0!>§(false));
         §9X§(new §>!"§(false));
         §9X§(new §;o§(false));
         §9X§(new StateCutScene(false));
         §9X§(new §<&§(false));
         if(stage.stageWidth != §!Z§ || stage.stageHeight != §2" §)
         {
            this.§0!S§(null);
         }
      }
      
      protected function §<!X§(param1:ByteArray) : void
      {
      }
      
      protected function §!!?§(param1:Event) : void
      {
         §7n§.§@!5§();
      }
      
      protected function §>![§(param1:MouseEvent) : void
      {
         §7n§.§`J§();
         if(this.§%!R§)
         {
            ++this.§&<§;
            if(this.§&<§ > §6!h§)
            {
               this.§%!R§ = false;
               if(this.§<r§ < §5N§)
               {
                  this.§]Y§(this.§2j§);
               }
            }
         }
      }
      
      public function §5;§() : void
      {
         this.§0!S§(null);
      }
      
      protected function §0!S§(param1:Event) : void
      {
         this.§6!`§ = true;
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §3!!§;
            _loc3_ = §>u§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §3!!§ == _loc2_ && §>u§ == _loc3_)
         {
            return false;
         }
         §3!!§ = _loc2_;
         §>u§ = _loc3_;
         this.resizeViews(§3!!§,§>u§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §,!s§.§4J§(0,0,param1,param2);
         setViewSize(param1,param2);
      }
      
      public function §]8§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§2j§ > §0x§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§]Y§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§#!P§(_loc1_);
            }
         }
      }
      
      public function §5!M§() : void
      {
         this.§]Y§(0);
      }
      
      public function §?6§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §]Y§(param1:int) : void
      {
         this.§6!`§ = true;
         this.§2j§ = param1;
         this.§%!R§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §#!P§(param1:int) : void
      {
         this.§6!`§ = true;
         this.§2j§ = param1;
         this.§<r§ = 0;
         this.§&<§ = 0;
         this.§%!R§ = true;
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
         §4w§.§[U§.§74§();
         LevelManager.§?=§(JSON.parse(this.§=!Q§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§,!s§.§3!h§ != null)
         {
            §,!s§.§3!h§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§>j§().isGenericState())
         {
            if(_loc2_ == §9![§.STATE_STATUS_COMPLETED)
            {
               §<m§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §>j§().mName + " New State = " + §>j§().mNextState);
               §9!m§(§>j§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §!"#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §8p§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §#" §;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §^I§;
      }
      
      protected function initializeGame() : void
      {
         §,!s§.§=$§(this.getItemData(),this.getLevelBackgrounds());
         §,!s§.§"!t§(this.§=!Q§.§8!s§,§7!Z§.§="§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §>!s§.§;§(§4!I§);
      }
      
      protected function getItemData() : XML
      {
         return §>!s§.§;§(§0E§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §^T§ = true;
         if(§ 3§)
         {
            §9!m§(§5!i§.§'!q§);
         }
         else
         {
            §9!m§(§&i§.§'!q§);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§%!R§)
         {
            ++this.§<r§;
         }
         if(!§<!?§.§0,§())
         {
            return;
         }
         if(this.§6!`§)
         {
            this.resize();
            this.§6!`§ = false;
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
