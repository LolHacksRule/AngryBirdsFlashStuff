package
{
   import § !D§.§'"u§;
   import §"$=§.§'![§;
   import §'!O§.§>!Y§;
   import §+#B§.§ #E§;
   import §3=§.§#$@§;
   import §3=§.§0K§;
   import §3=§.§1#V§;
   import §3=§.§1U§;
   import §3=§.§4§;
   import §3=§.§7W§;
   import §3=§.§8$8§;
   import §3=§.§>#r§;
   import §3=§.§?"5§;
   import §3=§.StateCutScene;
   import §3=§.StatePlay;
   import §5"G§.§9!y§;
   import §6§.§'#n§;
   import §6W§.§>"P§;
   import §8#?§.§!!y§;
   import §8#?§.§?#;§;
   import §9#K§.§#D§;
   import §9#K§.§=#f§;
   import §9#K§.§=^§;
   import §9#o§.§,#t§;
   import §;$5§.§-8§;
   import §;$5§.§6"8§;
   import §;$5§.§8"6§;
   import §;w§.§5"_§;
   import §=!2§.§ #d§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>"Q§.§>!d§;
   import §?#h§.§3#=§;
   import §?§.§4I§;
   import §?§.§<"J§;
   import §]"'§.§""K§;
   import §]"'§.§5$$§;
   import §]"P§.Starling;
   import §`D§.§@!7§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§#!t§;
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
   
   public class AngryBirdsBase extends §?#;§
   {
      
      protected static var §!!h§:Class = §^"W§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var § set§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §["?§:int = 1024;
      
      public static const §01§:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = false;
      
      public static const §#!<§:int = 2000;
      
      private static const §'$,§:int = 750;
      
      private static const §[!N§:int = 3;
      
      private static const §2!Z§:int = 15;
      
      public static const §9!2§:String = "Channel_Theme";
      
      public static const §^#-§:String = "CHANNEL_AMBIENT";
      
      public static const §>$8§:String = "friends_title_theme";
      
      protected static var §="T§:Class = §;"E§;
      
      protected static var §!!0§:Class = §!"o§;
      
      protected static var §;-§:Class = § #W§;
      
      protected static var §9#w§:Class = §4!;§;
      
      protected static var §#$&§:Class = §"!x§;
      
      public static var §+#!§:Boolean = true;
      
      private static var §!!8§:AngryBirdsBase = null;
      
      public static var §3"o§:Sprite = null;
      
      public static var §7!r§:§ #d§;
      
      public static var §%9§:Boolean = false;
      
      protected static var §'$'§:int = 0;
      
      protected static var §&"a§:int = 0;
       
      
      protected var §6#J§:§5$$§;
      
      protected var §`!2§:§<"J§;
      
      protected var §&"%§:§>!Y§;
      
      protected var mLevelManager:§'![§;
      
      protected var §4x§:MovieClip;
      
      protected var §7$%§:§8"6§;
      
      protected var §&N§:§>"P§;
      
      private var §=x§:int;
      
      private var §&$>§:Boolean;
      
      private var §0"J§:int;
      
      private var §%!J§:int;
      
      protected var §;6§:Boolean;
      
      protected var §+"T§:Boolean;
      
      protected var §]!v§:§""K§;
      
      protected var §6"%§:Boolean;
      
      protected var §-$@§:Boolean = true;
      
      private var §"$7§:Boolean = false;
      
      public function AngryBirdsBase(param1:§!!y§, param2:String, param3:String)
      {
         this.§!!d§();
         § set§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         § #E§.§'$C§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §'$'§;
      }
      
      public static function get stageHeight() : int
      {
         return §&"a§;
      }
      
      public static function §0!o§(param1:Boolean) : void
      {
         §+#!§ = param1;
         §[#%§.§=E§(§+#!§);
      }
      
      public static function §!"4§() : Boolean
      {
         return §+#!§;
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
         return §!!8§;
      }
      
      public function get popupManager() : §8"6§
      {
         return this.§7$%§;
      }
      
      public function get §3"8§() : §>"P§
      {
         return this.§&N§;
      }
      
      public function get dataModel() : §""K§
      {
         return this.§]!v§;
      }
      
      public function get §<#[§() : Boolean
      {
         return this.§+"T§;
      }
      
      public function set §<#[§(param1:Boolean) : void
      {
         this.§+"T§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §#D§.§%"l§(§;-§);
      }
      
      protected function getUIData() : XML
      {
         return §#D§.§%"l§(§="T§);
      }
      
      protected function getPopupData() : XML
      {
         return §#D§.§%"l§(§!!0§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§]!v§ = new §""K§();
      }
      
      protected function initialize() : void
      {
         §!!8§ = this;
         this.§+"T§ = false;
         §%"T§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§ G§();
         this.initializeUserProgress();
         §,#t§.§?q§.init(§>!d§.§5!9§(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.§6#J§,this.§6B§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §'#$§ = screenWidth;
         §!#?§ = screenHeight;
         §%"T§.§`"X§.visible = DEBUG_MODE_ENABLED;
         §=#f§.§-#x§(§ $"§);
         §=#f§.§!H§(true);
         var _loc1_:XMLList = §#D§.§%"l§(§!!h§).children();
         §#!t§.init(_loc1_);
         §[#%§.§8!3§(§9!2§,1,0.6);
         §[#%§.§8!3§(§^#-§,1,0.8);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§#!P§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§''§);
         stage.addEventListener(Event.RESIZE,this.§?a§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§=A§);
         stage.addEventListener(Event.ACTIVATE,this.§[#R§);
         stage.addEventListener(Event.DEACTIVATE,this.§&#V§);
         stage.tabChildren = false;
         §7!r§ = new § #d§(stage);
         §7!r§.addEventListener(§9!y§.§?#y§,this.§%J§);
         §7!r§.addEventListener(§9!y§.§6"W§,this.§5"§);
         §'#n§.§?q§.§8u§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §&#V§(param1:Event) : void
      {
         this.§;!'§();
      }
      
      private function §;!'§() : void
      {
         if(!this.§-$@§)
         {
            return;
         }
         this.§-$@§ = false;
         this.§6"%§ = §[#%§.§6!§;
         if(!this.§6"%§)
         {
         }
      }
      
      private function §[#R§(param1:Event) : void
      {
         this.§0#C§();
      }
      
      private function §0#C§() : void
      {
         if(this.§-$@§)
         {
            return;
         }
         this.§-$@§ = true;
         if(!this.§6"%§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§4x§ = new MovieClip();
         § $"§.stage.addChild(this.§4x§);
         this.§7$%§ = new §6"8§(this.§4x§,§6"-§,this);
         this.§7$%§.addEventListener(§5"_§.OPEN,this.§%J§);
         this.§7$%§.addEventListener(§5"_§.CLOSE,this.§5"§);
         this.§&N§ = new §>"P§(this.§7$%§,this.§]!v§,§-8§.§1!,§);
         this.§7$%§.addLayer(§-8§.§24§,true,new Rectangle(0,0,-180,0));
         this.§7$%§.addLayer(§-8§.§1!,§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §%J§(param1:Event) : void
      {
         this.§^!p§();
      }
      
      protected function §5"§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§7$%§.§`'§();
         var _loc2_:Boolean = §7!r§.§[#^§();
         if(!_loc1_ && !_loc2_ && !this.§<#[§)
         {
            §%"T§.resume();
         }
      }
      
      public function §^!p§() : void
      {
         §%"T§.pause();
      }
      
      protected function § G§() : void
      {
         this.§`!2§ = this.initializeLevelItemManager();
         this.§&"%§ = this.initializeLevelThemeManager();
         this.mLevelManager = this.initializeLevelManager();
         this.§6#J§ = this.initializePackageManager();
         §%"T§.§;`§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §'"u§
      {
         return new §'"u§(stage,this.§`!2§,this.§&"%§,this.mLevelManager);
      }
      
      protected function initializeLevelItemManager() : §<"J§
      {
         return new §<"J§();
      }
      
      protected function initializeLevelThemeManager() : §>!Y§
      {
         return new §>!Y§();
      }
      
      protected function initializeLevelManager() : §'![§
      {
         return new §'![§();
      }
      
      protected function initializePackageManager() : §5$$§
      {
         return new §5$$§(this.mLevelManager);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§]!v§.userProgress = new §@!7§(SERVER_ROOT,this.mLevelManager);
      }
      
      protected function initializeStates() : void
      {
         §7u§(new §#$@§(this.mLevelManager,§6"-§,false));
         §7u§(new §4#3§(this.mLevelManager,§6"-§,false));
         §7u§(new §7W§(this.mLevelManager,§6"-§,false));
         §7u§(new §8$8§(this.mLevelManager,§6"-§,false));
         §7u§(new StatePlay(this.mLevelManager,§6"-§,false));
         §7u§(new §1#V§(this.mLevelManager,§6"-§,false));
         §7u§(new §>#r§(this.mLevelManager,§6"-§,false));
         §7u§(new §?"5§(this.mLevelManager,§6"-§,false));
         §7u§(new §0K§(this.mLevelManager,§6"-§,false));
         §7u§(new StateCutScene(this.mLevelManager,§6"-§,false));
         §7u§(new §1U§(this.mLevelManager,§6"-§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§?a§(null);
         }
      }
      
      protected function §6B§(param1:ByteArray) : void
      {
      }
      
      protected function §#!P§(param1:Event) : void
      {
         §=^§.§5"Q§();
      }
      
      protected function §''§(param1:MouseEvent) : void
      {
         §=^§.§>!B§();
         if(this.§&$>§)
         {
            ++this.§%!J§;
            if(this.§%!J§ > §2!Z§)
            {
               this.§&$>§ = false;
               if(this.§0"J§ < §[!N§)
               {
                  this.§!"S§(this.§=x§);
               }
            }
         }
      }
      
      public function §1![§() : void
      {
         this.§?a§(null);
      }
      
      protected function §?a§(param1:Event) : void
      {
         this.§;6§ = true;
      }
      
      protected function §=A§(param1:Event) : void
      {
         this.§0#C§();
      }
      
      public function §3'§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§=x§ > §'$,§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
            {
               this.§!"S§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§ $#§(_loc1_);
            }
         }
      }
      
      public function exitFullScreen() : void
      {
         this.§!"S§(0);
      }
      
      public function §?$9§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         return false;
      }
      
      private function §!"S§(param1:int) : void
      {
         this.§;6§ = true;
         this.§=x§ = param1;
         this.§&$>§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function § $#§(param1:int) : void
      {
         var time:int = param1;
         this.§;6§ = true;
         this.§=x§ = time;
         this.§0"J§ = 0;
         this.§%!J§ = 0;
         this.§&$>§ = true;
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
      
      public function get §^K§() : Boolean
      {
         return this.§"$7§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§"$7§ = true;
         this.initializeGame();
         §,#t§.§?q§.§7#Q§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§%"T§.§`"X§ != null)
         {
            §%"T§.§`"X§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§1h§().isGenericState())
         {
            if(_loc2_ == §3#=§.§6#z§)
            {
               §%D§(§1h§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §["?§;
      }
      
      override public function getAppHeight() : Number
      {
         return §01§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §#!<§;
      }
      
      protected function getThemeMusicName() : String
      {
         return §>$8§;
      }
      
      public function playThemeMusic() : void
      {
         if(§[#%§.§<"!§(§9!2§) == null || !§[#%§.§<"!§(§9!2§).isPlaying())
         {
            §[#%§.playSound(this.getThemeMusicName(),§9!2§,999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         §[#%§.§3$A§(§9!2§);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + § set§;
      }
      
      protected function loadItems() : void
      {
         this.§`!2§.loadItems(this.getItemDataXML());
      }
      
      protected function § "p§() : void
      {
         this.§&"%§.§[!y§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§ "p§();
         §%"T§.§]]§(this.§6#J§.§9"K§,this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §#D§.§%"l§(§#$&§);
      }
      
      protected function getItemDataXML() : XML
      {
         return §#D§.§%"l§(§9#w§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §%9§ = true;
         §%D§(§4#3§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§&$>§)
         {
            ++this.§0"J§;
         }
         if(!Starling.§]#<§())
         {
            return;
         }
         if(this.§;6§)
         {
            this.resize();
            this.§;6§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §'$'§;
            _loc3_ = §&"a§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §'$'§ == _loc2_ && §&"a§ == _loc3_)
         {
            return false;
         }
         §'$'§ = _loc2_;
         §&"a§ = _loc3_;
         this.resizeViews(§'$'§,§&"a§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int, param3:Boolean = false) : void
      {
         §%"T§.§,!I§(0,0,param1,param2,param3);
         setViewSize(param1,param2);
         this.§7$%§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §!!d§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
      
      public function getSoundResource(param1:String) : §4I§
      {
         return this.§`!2§.getSoundResource(param1);
      }
   }
}
