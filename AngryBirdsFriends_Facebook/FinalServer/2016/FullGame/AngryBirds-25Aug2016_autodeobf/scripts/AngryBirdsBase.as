package
{
   import §!!B§.§7#<§;
   import §!x§.§4"I§;
   import §!x§.§4"d§;
   import §!x§.§?!Q§;
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §%$!§.§2#§;
   import §&#S§.§""Z§;
   import §&#k§.§="`§;
   import §,!=§.§ N§;
   import §,!=§.§"$6§;
   import §,!=§.§3"%§;
   import §,!=§.§6!'§;
   import §,!=§.§;P§;
   import §,!=§.§<!B§;
   import §,!=§.§@#j§;
   import §,!=§.StateCutScene;
   import §,!=§.StatePlay;
   import §,!=§.§]4§;
   import §,!=§.§`$ §;
   import §-#z§.§0"R§;
   import §1"0§.§4$#§;
   import §3!T§.§!">§;
   import §52§.§#!,§;
   import §8§.§#$+§;
   import §9"#§.§4$5§;
   import §<!'§.§ "6§;
   import §<!'§.§-"$§;
   import §>!#§.§%P§;
   import §?§.§8!>§;
   import §?§.§>"$§;
   import §]$9§.§-!5§;
   import §^!,§.§ #M§;
   import §^!,§.;
   import §^!,§.§'!T§;
   import §^§.§1!9§;
   import §^a§.Starling;
   import §`#C§.§9#s§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§1R§;
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
   
   public class AngryBirdsBase extends § "6§
   {
      
      protected static var §5!9§:Class = §]#6§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §>"J§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const § "+§:int = 1024;
      
      public static const §&#-§:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = false;
      
      public static const §="d§:int = 2000;
      
      private static const §<O§:int = 750;
      
      private static const § !%§:int = 3;
      
      private static const §"B§:int = 15;
      
      protected static var §=$+§:Class = §"!q§;
      
      protected static var §-5§:Class = §,!u§;
      
      protected static var §3$'§:Class = §>X§;
      
      protected static var § "a§:Class = §<!_§;
      
      protected static var §>!L§:Class = §#"u§;
      
      public static var §^@§:Boolean = true;
      
      private static var §%#S§:AngryBirdsBase = null;
      
      public static var §'#>§:Sprite = null;
      
      public static var §%U§:§8!>§;
      
      public static var §@U§:Boolean = false;
      
      protected static var §=!,§:int = 0;
      
      protected static var §-"c§:int = 0;
       
      
      protected var §&";§:§2#§;
      
      protected var §#o§:§9#s§;
      
      protected var §]$ §:§1!9§;
      
      protected var mLevelManager:§#!?§;
      
      protected var §32§:MovieClip;
      
      protected var §8!e§:§#9§;
      
      protected var §="f§:§="`§;
      
      private var §&#m§:int;
      
      private var §!'§:Boolean;
      
      private var §2"8§:int;
      
      private var §`#o§:int;
      
      protected var §]"_§:Boolean;
      
      protected var §>B§:Boolean;
      
      protected var §'7§:§,"n§;
      
      protected var §-#§:Boolean;
      
      protected var §-!v§:Boolean = true;
      
      private var §##4§:Boolean = false;
      
      public function AngryBirdsBase(param1:§-"$§, param2:String, param3:String)
      {
         this.§>!^§();
         §>"J§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         §%P§.§9#;§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §=!,§;
      }
      
      public static function get stageHeight() : int
      {
         return §-"c§;
      }
      
      public static function §<#K§(param1:Boolean) : void
      {
         §^@§ = param1;
         §#$+§.§-"Q§(§^@§);
      }
      
      public static function §-"W§() : Boolean
      {
         return §^@§;
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
         return §%#S§;
      }
      
      public function get popupManager() : §#9§
      {
         return this.§8!e§;
      }
      
      public function get §<w§() : §="`§
      {
         return this.§="f§;
      }
      
      public function get dataModel() : §,"n§
      {
         return this.§'7§;
      }
      
      public function get §2a§() : Boolean
      {
         return this.§>B§;
      }
      
      public function set §2a§(param1:Boolean) : void
      {
         this.§>B§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §?!Q§.§<1§(§3$'§);
      }
      
      protected function getUIData() : XML
      {
         return §?!Q§.§<1§(§=$+§);
      }
      
      protected function getPopupData() : XML
      {
         return §?!Q§.§<1§(§-5§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§'7§ = new §,"n§();
      }
      
      protected function initialize() : void
      {
         §%#S§ = this;
         this.§>B§ = false;
         §>"$§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§,!-§();
         this.initializeUserProgress();
         §0"R§.§3!]§.init(§-!5§.§1# §(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.§&";§,this.§8!0§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §!"Q§ = screenWidth;
         §7,§ = screenHeight;
         §>"$§.§]#J§.visible = DEBUG_MODE_ENABLED;
         §4"d§.§["X§(§]!i§);
         §4"d§.§]"b§(true);
         var _loc1_:XMLList = §?!Q§.§<1§(§5!9§).children();
         §1R§.init(_loc1_);
         §#$+§.§9"]§("CHANNEL_THEME",1,0.2);
         §#$+§.§9"]§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§&!a§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;"B§);
         stage.addEventListener(Event.RESIZE,this.§["^§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§@!8§);
         stage.addEventListener(Event.ACTIVATE,this.§^$ §);
         stage.addEventListener(Event.DEACTIVATE,this.§5"&§);
         stage.tabChildren = false;
         §%U§ = new §8!>§(stage);
         §%U§.addEventListener(§!">§.§]$5§,this.§+!U§);
         §%U§.addEventListener(§!">§.§7N§,this.§&s§);
         §""Z§.§3!]§.§>$&§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §5"&§(param1:Event) : void
      {
         this.§7"U§();
      }
      
      private function §7"U§() : void
      {
         if(!this.§-!v§)
         {
            return;
         }
         this.§-!v§ = false;
         this.§-#§ = §#$+§.§=#T§;
         if(!this.§-#§)
         {
         }
      }
      
      private function §^$ §(param1:Event) : void
      {
         this.§?$§();
      }
      
      private function §?$§() : void
      {
         if(this.§-!v§)
         {
            return;
         }
         this.§-!v§ = true;
         if(!this.§-#§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§32§ = new MovieClip();
         §]!i§.stage.addChild(this.§32§);
         this.§8!e§ = new §'!T§(this.§32§,§1#%§,this);
         this.§8!e§.addEventListener(§4$#§.OPEN,this.§+!U§);
         this.§8!e§.addEventListener(§4$#§.CLOSE,this.§&s§);
         this.§="f§ = new §="`§(this.§8!e§,this.§'7§,§ #M§.§'#Y§);
         this.§8!e§.addLayer(§ #M§.§4$+§,true,new Rectangle(0,0,-180,0));
         this.§8!e§.addLayer(§ #M§.§'#Y§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §+!U§(param1:Event) : void
      {
         this.§6!a§();
      }
      
      protected function §&s§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§8!e§.§5"'§();
         var _loc2_:Boolean = §%U§.§9$%§();
         if(!_loc1_ && !_loc2_ && !this.§2a§)
         {
            §>"$§.resume();
         }
      }
      
      public function §6!a§() : void
      {
         §>"$§.pause();
      }
      
      protected function §,!-§() : void
      {
         this.§#o§ = this.initializeLevelItemManager();
         this.§]$ § = this.§;"&§();
         this.mLevelManager = this.initializeLevelManager();
         this.§&";§ = this.initializePackageManager();
         §>"$§.§3#'§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §#!,§
      {
         return new §#!,§(stage,this.§#o§,this.§]$ §,this.mLevelManager);
      }
      
      protected function initializeLevelItemManager() : §9#s§
      {
         return new §9#s§();
      }
      
      protected function §;"&§() : §1!9§
      {
         return new §1!9§();
      }
      
      protected function initializeLevelManager() : §#!?§
      {
         return new §#!?§();
      }
      
      protected function initializePackageManager() : §2#§
      {
         return new §2#§(this.mLevelManager);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§'7§.userProgress = new §7#<§(SERVER_ROOT,this.mLevelManager);
      }
      
      protected function initializeStates() : void
      {
         §4!§(new §@#j§(this.mLevelManager,§1#%§,false));
         §4!§(new §;P§(this.mLevelManager,§1#%§,false));
         §4!§(new §]4§(this.mLevelManager,§1#%§,false));
         §4!§(new §<!B§(this.mLevelManager,§1#%§,false));
         §4!§(new StatePlay(this.mLevelManager,§1#%§,false));
         §4!§(new § N§(this.mLevelManager,§1#%§,false));
         §4!§(new §3"%§(this.mLevelManager,§1#%§,false));
         §4!§(new §`$ §(this.mLevelManager,§1#%§,false));
         §4!§(new §6!'§(this.mLevelManager,§1#%§,false));
         §4!§(new StateCutScene(this.mLevelManager,§1#%§,false));
         §4!§(new §"$6§(this.mLevelManager,§1#%§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§["^§(null);
         }
      }
      
      protected function §8!0§(param1:ByteArray) : void
      {
      }
      
      protected function §&!a§(param1:Event) : void
      {
         §4"I§.§2!j§();
      }
      
      protected function §;"B§(param1:MouseEvent) : void
      {
         §4"I§.§#A§();
         if(this.§!'§)
         {
            ++this.§`#o§;
            if(this.§`#o§ > §"B§)
            {
               this.§!'§ = false;
               if(this.§2"8§ < § !%§)
               {
                  this.§;X§(this.§&#m§);
               }
            }
         }
      }
      
      public function §<"X§() : void
      {
         this.§["^§(null);
      }
      
      protected function §["^§(param1:Event) : void
      {
         this.§]"_§ = true;
      }
      
      protected function §@!8§(param1:Event) : void
      {
         this.§?$§();
      }
      
      public function §&f§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§&#m§ > §<O§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
            {
               this.§;X§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§>!1§(_loc1_);
            }
         }
      }
      
      public function exitFullScreen() : void
      {
         this.§;X§(0);
      }
      
      public function §5#N§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         return false;
      }
      
      private function §;X§(param1:int) : void
      {
         this.§]"_§ = true;
         this.§&#m§ = param1;
         this.§!'§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §>!1§(param1:int) : void
      {
         var time:int = param1;
         this.§]"_§ = true;
         this.§&#m§ = time;
         this.§2"8§ = 0;
         this.§`#o§ = 0;
         this.§!'§ = true;
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
      
      public function get §#4§() : Boolean
      {
         return this.§##4§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§##4§ = true;
         this.initializeGame();
         §0"R§.§3!]§.§@"K§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§>"$§.§]#J§ != null)
         {
            §>"$§.§]#J§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§ "-§().isGenericState())
         {
            if(_loc2_ == §4$5§.§'!]§)
            {
               §7P§(§ "-§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return § "+§;
      }
      
      override public function getAppHeight() : Number
      {
         return §&#-§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §="d§;
      }
      
      protected function getThemeMusicName() : String
      {
         return "ThemeMusic";
      }
      
      public function playThemeMusic() : void
      {
         if(§#$+§.§#!C§("Channel_Theme") == null || !§#$+§.§#!C§("Channel_Theme").isPlaying())
         {
            §#$+§.playSound(this.getThemeMusicName(),"Channel_Theme",999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         §#$+§.§%!!§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §>"J§;
      }
      
      protected function loadItems() : void
      {
         this.§#o§.loadItems(this.getItemDataXML());
      }
      
      protected function §7]§() : void
      {
         this.§]$ §.§1"]§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§7]§();
         §>"$§.§;#3§(this.§&";§.§]!!§,this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §?!Q§.§<1§(§>!L§);
      }
      
      protected function getItemDataXML() : XML
      {
         return §?!Q§.§<1§(§ "a§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §@U§ = true;
         §7P§(§;P§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§!'§)
         {
            ++this.§2"8§;
         }
         if(!Starling.§]">§())
         {
            return;
         }
         if(this.§]"_§)
         {
            this.resize();
            this.§]"_§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §=!,§;
            _loc3_ = §-"c§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §=!,§ == _loc2_ && §-"c§ == _loc3_)
         {
            return false;
         }
         §=!,§ = _loc2_;
         §-"c§ = _loc3_;
         this.resizeViews(§=!,§,§-"c§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §>"$§.§76§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§8!e§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §>!^§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
