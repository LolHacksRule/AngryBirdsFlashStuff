package
{
   import §!#"§.§&"H§;
   import §!$;§.§8#F§;
   import §"!@§.§ !K§;
   import §"!@§.§!w§;
   import §"!@§.§1S§;
   import §"!@§.§8"o§;
   import §"!@§.§;$+§;
   import §"!@§.§@!§;
   import §"!@§.§@,§;
   import §"!@§.StateCutScene;
   import §"!@§.StatePlay;
   import §"!@§.§["F§;
   import §"!@§.§^!§;
   import §1!=§.§4$"§;
   import §1!=§.§>9§;
   import §1!=§.§["+§;
   import §2G§.§2!2§;
   import §2G§.§3W§;
   import §2I§.§7"r§;
   import §3"I§.§?"V§;
   import §6$8§.§'!W§;
   import §7"§.§`#@§;
   import §8"L§.§+"L§;
   import §8"L§.§8W§;
   import §;#D§.§3#U§;
   import §;#D§.§]"o§;
   import §;$3§.§8=§;
   import §<G§.§3§;
   import §>#G§.§-!,§;
   import §?"e§.Starling;
   import §@!M§.§!"p§;
   import §@0§.§%!q§;
   import §@V§.§0X§;
   import §@l§.§6$9§;
   import §@l§.§8"9§;
   import §]!6§.§6Y§;
   import §]!6§.§7Z§;
   import §]!6§.§="p§;
   import §`7§.§0"r§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§4§;
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
   
   public class AngryBirdsBase extends §6$9§
   {
      
      protected static var §5$"§:Class = §@#F§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §8!l§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §,g§:int = 1024;
      
      public static const §2b§:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = false;
      
      public static const §`"M§:int = 2000;
      
      private static const §-#"§:int = 750;
      
      private static const §`"U§:int = 3;
      
      private static const §5$?§:int = 15;
      
      public static const §<!f§:String = "Channel_Theme";
      
      public static const § S§:String = "CHANNEL_AMBIENT";
      
      public static const §-" §:String = "friends_title_theme";
      
      protected static var §9!R§:Class = §,#n§;
      
      protected static var §3"F§:Class = §-n§;
      
      protected static var §@!8§:Class = §"#z§;
      
      protected static var §^"e§:Class = §1#m§;
      
      protected static var §3!#§:Class = §5#c§;
      
      public static var §^#>§:Boolean = true;
      
      private static var §2#O§:AngryBirdsBase = null;
      
      public static var §;o§:Sprite = null;
      
      public static var §5!s§:§]"o§;
      
      public static var §6!&§:Boolean = false;
      
      protected static var §-N§:int = 0;
      
      protected static var §<1§:int = 0;
       
      
      protected var §57§:§2!2§;
      
      protected var §<"a§:§8W§;
      
      protected var §5m§:§'!W§;
      
      protected var mLevelManager:§8=§;
      
      protected var §!@§:MovieClip;
      
      protected var §0"#§:§["+§;
      
      protected var §]!§:§7"r§;
      
      private var §=$§:int;
      
      private var §3_§:Boolean;
      
      private var §7?§:int;
      
      private var §#"l§:int;
      
      protected var §;D§:Boolean;
      
      protected var §+E§:Boolean;
      
      protected var §#A§:§3W§;
      
      protected var §?9§:Boolean;
      
      protected var §"!q§:Boolean = true;
      
      private var §5"n§:Boolean = false;
      
      public function AngryBirdsBase(param1:§8"9§, param2:String, param3:String)
      {
         this.§>#w§();
         §8!l§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         §0"r§.§&"f§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §-N§;
      }
      
      public static function get stageHeight() : int
      {
         return §<1§;
      }
      
      public static function §,7§(param1:Boolean) : void
      {
         §^#>§ = param1;
         §!"p§.§-!9§(§^#>§);
      }
      
      public static function §5!p§() : Boolean
      {
         return §^#>§;
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
         return §2#O§;
      }
      
      public function get popupManager() : §["+§
      {
         return this.§0"#§;
      }
      
      public function get §%#m§() : §7"r§
      {
         return this.§]!§;
      }
      
      public function get dataModel() : §3W§
      {
         return this.§#A§;
      }
      
      public function get §<!_§() : Boolean
      {
         return this.§+E§;
      }
      
      public function set §<!_§(param1:Boolean) : void
      {
         this.§+E§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §="p§.§+@§(§@!8§);
      }
      
      protected function getUIData() : XML
      {
         return §="p§.§+@§(§9!R§);
      }
      
      protected function getPopupData() : XML
      {
         return §="p§.§+@§(§3"F§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§#A§ = new §3W§();
      }
      
      protected function initialize() : void
      {
         §2#O§ = this;
         this.§+E§ = false;
         §3#U§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§&"_§();
         this.initializeUserProgress();
         §-!,§.§6!§.init(§0X§.§+!D§(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.§57§,this.§;"A§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §-I§ = screenWidth;
         §?!X§ = screenHeight;
         §3#U§.§8!_§.visible = DEBUG_MODE_ENABLED;
         §6Y§.§8!7§(§2D§);
         §6Y§.§6%§(true);
         var _loc1_:XMLList = §="p§.§+@§(§5$"§).children();
         §4#2§.init(_loc1_);
         §!"p§.§5#4§(§<!f§,1,0.6);
         §!"p§.§5#4§(§ S§,1,0.8);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§8$'§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§+"Y§);
         stage.addEventListener(Event.RESIZE,this.§>"7§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§'"e§);
         stage.addEventListener(Event.ACTIVATE,this.§#!f§);
         stage.addEventListener(Event.DEACTIVATE,this.§!#f§);
         stage.tabChildren = false;
         §5!s§ = new §]"o§(stage);
         §5!s§.addEventListener(§?"V§.§,x§,this.§?>§);
         §5!s§.addEventListener(§?"V§.§[#&§,this.§!#-§);
         §&"H§.§6!§.§9"D§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §!#f§(param1:Event) : void
      {
         this.§!$=§();
      }
      
      private function §!$=§() : void
      {
         if(!this.§"!q§)
         {
            return;
         }
         this.§"!q§ = false;
         this.§?9§ = §!"p§.§<x§;
         if(!this.§?9§)
         {
         }
      }
      
      private function §#!f§(param1:Event) : void
      {
         this.§@!2§();
      }
      
      private function §@!2§() : void
      {
         if(this.§"!q§)
         {
            return;
         }
         this.§"!q§ = true;
         if(!this.§?9§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§!@§ = new MovieClip();
         §2D§.stage.addChild(this.§!@§);
         this.§0"#§ = new §4$"§(this.§!@§,§+U§,this);
         this.§0"#§.addEventListener(§8#F§.OPEN,this.§?>§);
         this.§0"#§.addEventListener(§8#F§.CLOSE,this.§!#-§);
         this.§]!§ = new §7"r§(this.§0"#§,this.§#A§,§>9§.§1$A§);
         this.§0"#§.addLayer(§>9§.§%#1§,true,new Rectangle(0,0,-180,0));
         this.§0"#§.addLayer(§>9§.§1$A§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §?>§(param1:Event) : void
      {
         this.§?"l§();
      }
      
      protected function §!#-§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§0"#§.§#"q§();
         var _loc2_:Boolean = §5!s§.§##§();
         if(!_loc1_ && !_loc2_ && !this.§<!_§)
         {
            §3#U§.resume();
         }
      }
      
      public function §?"l§() : void
      {
         §3#U§.pause();
      }
      
      protected function §&"_§() : void
      {
         this.§<"a§ = this.initializeLevelItemManager();
         this.§5m§ = this.initializeLevelThemeManager();
         this.mLevelManager = this.initializeLevelManager();
         this.§57§ = this.initializePackageManager();
         §3#U§.§#$4§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §%!q§
      {
         return new §%!q§(stage,this.§<"a§,this.§5m§,this.mLevelManager);
      }
      
      protected function initializeLevelItemManager() : §8W§
      {
         return new §8W§();
      }
      
      protected function initializeLevelThemeManager() : §'!W§
      {
         return new §'!W§();
      }
      
      protected function initializeLevelManager() : §8=§
      {
         return new §8=§();
      }
      
      protected function initializePackageManager() : §2!2§
      {
         return new §2!2§(this.mLevelManager);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§#A§.userProgress = new §3#9§(SERVER_ROOT,this.mLevelManager);
      }
      
      protected function initializeStates() : void
      {
         §,#Z§(new §8"o§(this.mLevelManager,§+U§,false));
         §,#Z§(new §!w§(this.mLevelManager,§+U§,false));
         §,#Z§(new §^!§(this.mLevelManager,§+U§,false));
         §,#Z§(new §1S§(this.mLevelManager,§+U§,false));
         §,#Z§(new StatePlay(this.mLevelManager,§+U§,false));
         §,#Z§(new §@!§(this.mLevelManager,§+U§,false));
         §,#Z§(new §["F§(this.mLevelManager,§+U§,false));
         §,#Z§(new §@,§(this.mLevelManager,§+U§,false));
         §,#Z§(new §;$+§(this.mLevelManager,§+U§,false));
         §,#Z§(new StateCutScene(this.mLevelManager,§+U§,false));
         §,#Z§(new § !K§(this.mLevelManager,§+U§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§>"7§(null);
         }
      }
      
      protected function §;"A§(param1:ByteArray) : void
      {
      }
      
      protected function §8$'§(param1:Event) : void
      {
         §7Z§.§ #m§();
      }
      
      protected function §+"Y§(param1:MouseEvent) : void
      {
         §7Z§.§8!`§();
         if(this.§3_§)
         {
            ++this.§#"l§;
            if(this.§#"l§ > §5$?§)
            {
               this.§3_§ = false;
               if(this.§7?§ < §`"U§)
               {
                  this.§2u§(this.§=$§);
               }
            }
         }
      }
      
      public function §1!S§() : void
      {
         this.§>"7§(null);
      }
      
      protected function §>"7§(param1:Event) : void
      {
         this.§;D§ = true;
      }
      
      protected function §'"e§(param1:Event) : void
      {
         this.§@!2§();
      }
      
      public function §5#p§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§=$§ > §-#"§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
            {
               this.§2u§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§<#'§(_loc1_);
            }
         }
      }
      
      public function exitFullScreen() : void
      {
         this.§2u§(0);
      }
      
      public function §`$<§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         return false;
      }
      
      private function §2u§(param1:int) : void
      {
         this.§;D§ = true;
         this.§=$§ = param1;
         this.§3_§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §<#'§(param1:int) : void
      {
         var time:int = param1;
         this.§;D§ = true;
         this.§=$§ = time;
         this.§7?§ = 0;
         this.§#"l§ = 0;
         this.§3_§ = true;
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
      
      public function get §?#E§() : Boolean
      {
         return this.§5"n§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§5"n§ = true;
         this.initializeGame();
         §-!,§.§6!§.§,#r§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§3#U§.§8!_§ != null)
         {
            §3#U§.§8!_§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§=!&§().isGenericState())
         {
            if(_loc2_ == §`#@§.§]"H§)
            {
               §1"h§(§=!&§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §,g§;
      }
      
      override public function getAppHeight() : Number
      {
         return §2b§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §`"M§;
      }
      
      protected function getThemeMusicName() : String
      {
         return §-" §;
      }
      
      public function playThemeMusic() : void
      {
         if(§!"p§.§;!b§(§<!f§) == null || !§!"p§.§;!b§(§<!f§).isPlaying())
         {
            §!"p§.playSound(this.getThemeMusicName(),§<!f§,999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         §!"p§.§5#u§(§<!f§);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §8!l§;
      }
      
      protected function loadItems() : void
      {
         this.§<"a§.loadItems(this.getItemDataXML());
      }
      
      protected function §[!!§() : void
      {
         this.§5m§.§`#3§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§[!!§();
         §3#U§.§'$-§(this.§57§.§?[§,this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §="p§.§+@§(§3!#§);
      }
      
      protected function getItemDataXML() : XML
      {
         return §="p§.§+@§(§^"e§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §6!&§ = true;
         §1"h§(§!w§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§3_§)
         {
            ++this.§7?§;
         }
         if(!Starling.§1#H§())
         {
            return;
         }
         if(this.§;D§)
         {
            this.resize();
            this.§;D§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §-N§;
            _loc3_ = §<1§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §-N§ == _loc2_ && §<1§ == _loc3_)
         {
            return false;
         }
         §-N§ = _loc2_;
         §<1§ = _loc3_;
         this.resizeViews(§-N§,§<1§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int, param3:Boolean = false) : void
      {
         §3#U§.§!#J§(0,0,param1,param2,param3);
         setViewSize(param1,param2);
         this.§0"#§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §>#w§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
      
      public function getSoundResource(param1:String) : §+"L§
      {
         return this.§<"a§.getSoundResource(param1);
      }
   }
}
