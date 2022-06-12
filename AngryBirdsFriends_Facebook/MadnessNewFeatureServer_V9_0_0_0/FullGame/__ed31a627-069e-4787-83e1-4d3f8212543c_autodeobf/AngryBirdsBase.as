package
{
   import §!"'§.§;6§;
   import §!#C§.§#H§;
   import §!#C§.§^!z§;
   import §&!_§.§5!o§;
   import §&$3§.§"!&§;
   import §&m§.§#U§;
   import §&m§.§'5§;
   import §'!j§.Starling;
   import §'M§.§"Z§;
   import §,"v§.§;"n§;
   import §-<§.§4[§;
   import §-u§.§&#+§;
   import §0!s§.§6!e§;
   import §0!s§.§]!%§;
   import §0!s§.§^#j§;
   import §1#v§.§4"l§;
   import §1#v§.§6"a§;
   import §1#v§.§;!Y§;
   import §1L§.§;u§;
   import §2";§.§!"m§;
   import §2";§.§'#J§;
   import §2";§.§,!F§;
   import §2";§.§,t§;
   import §2";§.§3#[§;
   import §2";§.§8$0§;
   import §2";§.§9!R§;
   import §2";§.§9§;
   import §2";§.StateCutScene;
   import §2";§.StatePlay;
   import §8#K§.§3Z§;
   import §<#o§.§,#O§;
   import §>"W§.§7Y§;
   import §>2§.§!6§;
   import §?$<§.§2#W§;
   import §?$<§.§9!V§;
   import §^"H§.§]!l§;
   import §`#@§.§',§;
   import §`#@§.§7n§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§1!X§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class AngryBirdsBase extends §#U§
   {
      
      protected static var §?&§:Class = §;"2§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §`#1§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §1!Q§:int = 1024;
      
      public static const §##3§:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = false;
      
      public static const §'"0§:int = 2000;
      
      private static const § !x§:int = 750;
      
      private static const §@f§:int = 3;
      
      private static const §62§:int = 15;
      
      public static const §?#7§:String = "Channel_Theme";
      
      public static const §"!d§:String = "CHANNEL_AMBIENT";
      
      public static const §;#+§:String = "friends_title_theme";
      
      protected static var §0"@§:Class = §4$,§;
      
      protected static var §'h§:Class = §]#E§;
      
      protected static var §1#[§:Class = §]!^§;
      
      protected static var §2"u§:Class = §#!t§;
      
      protected static var §@#G§:Class = §]"U§;
      
      public static var §&I§:Boolean = true;
      
      private static var §1!!§:AngryBirdsBase = null;
      
      public static var §7D§:Sprite = null;
      
      public static var §^"n§:§',§;
      
      public static var § "A§:Boolean = false;
      
      protected static var §="^§:int = 0;
      
      protected static var §@"D§:int = 0;
       
      
      protected var §%!6§:§^!z§;
      
      protected var §!#J§:§2#W§;
      
      protected var §]!9§:§4[§;
      
      protected var mLevelManager:§;"n§;
      
      protected var §,3§:MovieClip;
      
      protected var §8<§:§6!e§;
      
      protected var §["R§:§,#O§;
      
      private var §[!9§:int;
      
      private var §@#K§:Boolean;
      
      private var §2#o§:int;
      
      private var §]#H§:int;
      
      protected var §'$6§:Boolean;
      
      protected var §<!^§:Boolean;
      
      protected var §#!$§:§#H§;
      
      protected var §,$A§:Boolean;
      
      protected var §@#B§:Boolean = true;
      
      private var §3#4§:Boolean = false;
      
      public function AngryBirdsBase(param1:§'5§, param2:String, param3:String)
      {
         this.§;t§();
         §`#1§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         §5!o§.§3;§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §="^§;
      }
      
      public static function get stageHeight() : int
      {
         return §@"D§;
      }
      
      public static function §^"?§(param1:Boolean) : void
      {
         §&I§ = param1;
         §3Z§.§[!§(§&I§);
      }
      
      public static function §"!v§() : Boolean
      {
         return §&I§;
      }
      
      public static function get screenWidth() : int
      {
         return singleton.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return singleton.getAppHeight();
      }
      
      public static function get singleton() : AngryBirdsBase
      {
         return §1!!§;
      }
      
      public function get popupManager() : §6!e§
      {
         return this.§8<§;
      }
      
      public function get §#$D§() : §,#O§
      {
         return this.§["R§;
      }
      
      public function get dataModel() : §#H§
      {
         return this.§#!$§;
      }
      
      public function get §^"6§() : Boolean
      {
         return this.§<!^§;
      }
      
      public function set §^"6§(param1:Boolean) : void
      {
         this.§<!^§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §6"a§.§&!d§(§1#[§);
      }
      
      protected function getUIData() : XML
      {
         return §6"a§.§&!d§(§0"@§);
      }
      
      protected function getPopupData() : XML
      {
         return §6"a§.§&!d§(§'h§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§#!$§ = new §#H§();
      }
      
      protected function initialize() : void
      {
         §1!!§ = this;
         this.§<!^§ = false;
         §7n§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§64§();
         this.initializeUserProgress();
         §&#+§.§`"H§.init(§;u§.§2!,§(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.§%!6§,this.§%"7§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §2!§ = screenWidth;
         §!]§ = screenHeight;
         §7n§.§9";§.visible = DEBUG_MODE_ENABLED;
         §;!Y§.§^K§(§0#W§);
         §;!Y§.§>#H§(true);
         var _loc1_:XMLList = §6"a§.§&!d§(§?&§).children();
         §1!X§.init(_loc1_);
         §3Z§.§'#E§(§?#7§,1,0.6);
         §3Z§.§'#E§(§"!d§,1,0.8);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§[!A§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§^e§);
         stage.addEventListener(Event.RESIZE,this.§&]§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§2b§);
         stage.addEventListener(Event.ACTIVATE,this.§1#J§);
         stage.addEventListener(Event.DEACTIVATE,this.§-#U§);
         stage.tabChildren = false;
         §^"n§ = new §',§(stage);
         §^"n§.addEventListener(§;6§.§7!Y§,this.§;T§);
         §^"n§.addEventListener(§;6§.§+!9§,this.§7#u§);
         §"!&§.§`"H§.§+"3§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §-#U§(param1:Event) : void
      {
         this.§6$%§();
      }
      
      private function §6$%§() : void
      {
         if(!this.§@#B§)
         {
            return;
         }
         this.§@#B§ = false;
         this.§,$A§ = §3Z§.§&"A§;
         if(!this.§,$A§)
         {
         }
      }
      
      private function §1#J§(param1:Event) : void
      {
         this.§5#U§();
      }
      
      private function §5#U§() : void
      {
         if(this.§@#B§)
         {
            return;
         }
         this.§@#B§ = true;
         if(!this.§,$A§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§,3§ = new MovieClip();
         §0#W§.stage.addChild(this.§,3§);
         this.§8<§ = new §]!%§(this.§,3§,§-U§,this);
         this.§8<§.addEventListener(§"Z§.OPEN,this.§;T§);
         this.§8<§.addEventListener(§"Z§.CLOSE,this.§7#u§);
         this.§["R§ = new §,#O§(this.§8<§,this.§#!$§,§^#j§.§&!$§);
         this.§8<§.addLayer(§^#j§.§`#O§,true,new Rectangle(0,0,-180,0));
         this.§8<§.addLayer(§^#j§.§&!$§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §;T§(param1:Event) : void
      {
         this.§!"`§();
      }
      
      protected function §7#u§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§8<§.§?"N§();
         var _loc2_:Boolean = §^"n§.§]!@§();
         if(!_loc1_ && !_loc2_ && !this.§^"6§)
         {
            §7n§.resume();
         }
      }
      
      public function §!"`§() : void
      {
         §7n§.pause();
      }
      
      protected function §64§() : void
      {
         this.§!#J§ = this.initializeLevelItemManager();
         this.§]!9§ = this.initializeLevelThemeManager();
         this.mLevelManager = this.initializeLevelManager();
         this.§%!6§ = this.initializePackageManager();
         §7n§.§6#K§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §!6§
      {
         return new §!6§(stage,this.§!#J§,this.§]!9§,this.mLevelManager);
      }
      
      protected function initializeLevelItemManager() : §2#W§
      {
         return new §2#W§();
      }
      
      protected function initializeLevelThemeManager() : §4[§
      {
         return new §4[§();
      }
      
      protected function initializeLevelManager() : §;"n§
      {
         return new §;"n§();
      }
      
      protected function initializePackageManager() : §^!z§
      {
         return new §^!z§(this.mLevelManager);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§#!$§.userProgress = new §]!l§(SERVER_ROOT,this.mLevelManager);
      }
      
      protected function initializeStates() : void
      {
         §]!s§(new §9!R§(this.mLevelManager,§-U§,false));
         §]!s§(new §,!F§(this.mLevelManager,§-U§,false));
         §]!s§(new §8$0§(this.mLevelManager,§-U§,false));
         §]!s§(new §9#7§(this.mLevelManager,§-U§,false));
         §]!s§(new StatePlay(this.mLevelManager,§-U§,false));
         §]!s§(new §,t§(this.mLevelManager,§-U§,false));
         §]!s§(new §!"m§(this.mLevelManager,§-U§,false));
         §]!s§(new §3#[§(this.mLevelManager,§-U§,false));
         §]!s§(new §9#6§(this.mLevelManager,§-U§,false));
         §]!s§(new StateCutScene(this.mLevelManager,§-U§,false));
         §]!s§(new §'#J§(this.mLevelManager,§-U§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§&]§(null);
         }
      }
      
      protected function §%"7§(param1:ByteArray) : void
      {
      }
      
      protected function §[!A§(param1:Event) : void
      {
         §4"l§.§3"5§();
      }
      
      protected function §^e§(param1:MouseEvent) : void
      {
         §4"l§.§!"V§();
         if(this.§@#K§)
         {
            ++this.§]#H§;
            if(this.§]#H§ > §62§)
            {
               this.§@#K§ = false;
               if(this.§2#o§ < §@f§)
               {
                  this.§%!k§(this.§[!9§);
               }
            }
         }
      }
      
      public function §<"P§() : void
      {
         this.§&]§(null);
      }
      
      protected function §&]§(param1:Event) : void
      {
         this.§'$6§ = true;
      }
      
      protected function §2b§(param1:Event) : void
      {
         this.§5#U§();
      }
      
      public function §1a§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§[!9§ > § !x§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
            {
               this.§%!k§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§0"&§(_loc1_);
            }
         }
      }
      
      public function exitFullScreen() : void
      {
         this.§%!k§(0);
      }
      
      public function §]#p§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         return false;
      }
      
      private function §%!k§(param1:int) : void
      {
         this.§'$6§ = true;
         this.§[!9§ = param1;
         this.§@#K§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §0"&§(param1:int) : void
      {
         var time:int = param1;
         this.§'$6§ = true;
         this.§[!9§ = time;
         this.§2#o§ = 0;
         this.§]#H§ = 0;
         this.§@#K§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         catch(e:Error)
         {
            try
            {
               stage.displayState = StageDisplayState.FULL_SCREEN;
            }
            catch(e:Error)
            {
            }
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §""'§() : Boolean
      {
         return this.§3#4§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§3#4§ = true;
         this.initializeGame();
         §&#+§.§`"H§.§?r§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§7n§.§9";§ != null)
         {
            §7n§.§9";§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§-j§().isGenericState())
         {
            if(_loc2_ == §7Y§.§ try§)
            {
               §1!L§(§-j§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §1!Q§;
      }
      
      override public function getAppHeight() : Number
      {
         return §##3§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §'"0§;
      }
      
      protected function getThemeMusicName() : String
      {
         return §;#+§;
      }
      
      public function playThemeMusic() : void
      {
         if(§3Z§.§["C§(§?#7§) == null || !§3Z§.§["C§(§?#7§).isPlaying())
         {
            §3Z§.playSound(this.getThemeMusicName(),§?#7§,999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         §3Z§.§&$?§(§?#7§);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §`#1§;
      }
      
      protected function loadItems() : void
      {
         this.§!#J§.loadItems(this.getItemDataXML());
      }
      
      protected function §1"?§() : void
      {
         this.§]!9§.§8"d§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§1"?§();
         §7n§.§ "C§(this.§%!6§.§35§,this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §6"a§.§&!d§(§@#G§);
      }
      
      protected function getItemDataXML() : XML
      {
         return §6"a§.§&!d§(§2"u§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         § "A§ = true;
         §1!L§(§,!F§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§@#K§)
         {
            ++this.§2#o§;
         }
         if(!Starling.§?"w§())
         {
            return;
         }
         if(this.§'$6§)
         {
            this.resize();
            this.§'$6§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §="^§;
            _loc3_ = §@"D§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §="^§ == _loc2_ && §@"D§ == _loc3_)
         {
            return false;
         }
         §="^§ = _loc2_;
         §@"D§ = _loc3_;
         this.resizeViews(§="^§,§@"D§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int, param3:Boolean = false) : void
      {
         §7n§.§1"[§(0,0,param1,param2,param3);
         setViewSize(param1,param2);
         this.§8<§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §;t§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
      
      public function getSoundResource(param1:String) : §9!V§
      {
         return this.§!#J§.getSoundResource(param1);
      }
   }
}
