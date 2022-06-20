package
{
   import § #j§.§#"H§;
   import § $0§.§5"y§;
   import § $0§.§<4§;
   import § $0§.§=!C§;
   import §"#k§.Starling;
   import §#"4§.§6!L§;
   import §##y§.§#$"§;
   import §##y§.§<Y§;
   import §#g§.§8§;
   import §&?§.§5"f§;
   import §,#,§.§3#J§;
   import §,#,§.§7Y§;
   import §3"V§.§ b§;
   import §4"Y§.§-!`§;
   import §4S§.§<#j§;
   import §6"p§.§1$"§;
   import §6"p§.§8"M§;
   import §6"p§.§^"t§;
   import §7#$§.§]#q§;
   import §8#K§.§2§;
   import §8#K§.§8$-§;
   import §;"5§.§6"W§;
   import §;#>§.§7!^§;
   import §?#z§.§?"X§;
   import §?#z§.§]$?§;
   import §[c§.§ #a§;
   import §]§.§!#l§;
   import §]§.§#!$§;
   import §]§.§+!F§;
   import §]§.§1#p§;
   import §]§.§8$C§;
   import §]§.§9#Q§;
   import §]§.§;#D§;
   import §]§.§>"d§;
   import §]§.StateCutScene;
   import §]§.StatePlay;
   import §]§.§[#t§;
   import §`#c§.§8#B§;
   import §`§.§^"c§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§;!6§;
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
   
   public class AngryBirdsBase extends §#$"§
   {
      
      protected static var §;!"§:Class = §=u§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §7#K§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §!!x§:int = 1024;
      
      public static const §@!=§:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = false;
      
      public static const §6j§:int = 2000;
      
      private static const §3#!§:int = 750;
      
      private static const §=!4§:int = 3;
      
      private static const §3"H§:int = 15;
      
      public static const §6#f§:String = "Channel_Theme";
      
      public static const §,d§:String = "CHANNEL_AMBIENT";
      
      public static const §>"D§:String = "friends_title_theme";
      
      protected static var §4"?§:Class = §1!E§;
      
      protected static var §0!C§:Class = §+#5§;
      
      protected static var §?">§:Class = §?!$§;
      
      protected static var §7!c§:Class = §8,§;
      
      protected static var §`"c§:Class = §"m§;
      
      public static var §%"v§:Boolean = true;
      
      private static var § !D§:AngryBirdsBase = null;
      
      public static var §7!;§:Sprite = null;
      
      public static var § "W§:§?"X§;
      
      public static var §]I§:Boolean = false;
      
      protected static var §+##§:int = 0;
      
      protected static var §%-§:int = 0;
       
      
      protected var §<B§:§7Y§;
      
      protected var §7"Z§:§2#3§;
      
      protected var §%!,§:§-!`§;
      
      protected var mLevelManager:§]#q§;
      
      protected var §]!A§:MovieClip;
      
      protected var §6"F§:§=!C§;
      
      protected var §[#K§:§#"H§;
      
      private var §-5§:int;
      
      private var §,!^§:Boolean;
      
      private var §6!p§:int;
      
      private var §4"K§:int;
      
      protected var §`"7§:Boolean;
      
      protected var §,B§:Boolean;
      
      protected var §#!h§:§3#J§;
      
      protected var §,#^§:Boolean;
      
      protected var §1"O§:Boolean = true;
      
      private var §55§:Boolean = false;
      
      public function AngryBirdsBase(param1:§<Y§, param2:String, param3:String)
      {
         this.§4$'§();
         §7#K§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         §6!L§.§-@§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §+##§;
      }
      
      public static function get stageHeight() : int
      {
         return §%-§;
      }
      
      public static function §"#R§(param1:Boolean) : void
      {
         §%"v§ = param1;
         § b§.§7$E§(§%"v§);
      }
      
      public static function §;!Q§() : Boolean
      {
         return §%"v§;
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
         return § !D§;
      }
      
      public function get popupManager() : §=!C§
      {
         return this.§6"F§;
      }
      
      public function get §,!W§() : §#"H§
      {
         return this.§[#K§;
      }
      
      public function get dataModel() : §3#J§
      {
         return this.§#!h§;
      }
      
      public function get §4! §() : Boolean
      {
         return this.§,B§;
      }
      
      public function set §4! §(param1:Boolean) : void
      {
         this.§,B§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §1$"§.§%Z§(§?">§);
      }
      
      protected function getUIData() : XML
      {
         return §1$"§.§%Z§(§4"?§);
      }
      
      protected function getPopupData() : XML
      {
         return §1$"§.§%Z§(§0!C§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§#!h§ = new §3#J§();
      }
      
      protected function initialize() : void
      {
         § !D§ = this;
         this.§,B§ = false;
         §]$?§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§0#K§();
         this.initializeUserProgress();
         §5"f§.§+!,§.init(§<#j§.§<!b§(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.§<B§,this.§]0§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §'z§ = screenWidth;
         §&!W§ = screenHeight;
         §]$?§.§@7§.visible = DEBUG_MODE_ENABLED;
         §^"t§.§&"4§(§]#s§);
         §^"t§.§+"<§(true);
         var _loc1_:XMLList = §1$"§.§%Z§(§;!"§).children();
         §;!6§.init(_loc1_);
         § b§.§%#C§(§6#f§,1,0.6);
         § b§.§%#C§(§,d§,1,0.8);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§;A§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<k§);
         stage.addEventListener(Event.RESIZE,this.§+"y§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§9#?§);
         stage.addEventListener(Event.ACTIVATE,this.§,!g§);
         stage.addEventListener(Event.DEACTIVATE,this.§7§);
         stage.tabChildren = false;
         § "W§ = new §?"X§(stage);
         § "W§.addEventListener(§^"c§.§#"-§,this.§8!§);
         § "W§.addEventListener(§^"c§.§'!0§,this.§-!t§);
         §6"W§.§+!,§.§!o§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §7§(param1:Event) : void
      {
         this.§<!,§();
      }
      
      private function §<!,§() : void
      {
         if(!this.§1"O§)
         {
            return;
         }
         this.§1"O§ = false;
         this.§,#^§ = § b§.§[$+§;
         if(!this.§,#^§)
         {
         }
      }
      
      private function §,!g§(param1:Event) : void
      {
         this.§@"+§();
      }
      
      private function §@"+§() : void
      {
         if(this.§1"O§)
         {
            return;
         }
         this.§1"O§ = true;
         if(!this.§,#^§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§]!A§ = new MovieClip();
         §]#s§.stage.addChild(this.§]!A§);
         this.§6"F§ = new §<4§(this.§]!A§,§,%§,this);
         this.§6"F§.addEventListener(§7!^§.OPEN,this.§8!§);
         this.§6"F§.addEventListener(§7!^§.CLOSE,this.§-!t§);
         this.§[#K§ = new §#"H§(this.§6"F§,this.§#!h§,§5"y§.§3m§);
         this.§6"F§.addLayer(§5"y§.§+"&§,true,new Rectangle(0,0,-180,0));
         this.§6"F§.addLayer(§5"y§.§3m§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §8!§(param1:Event) : void
      {
         this.native();
      }
      
      protected function §-!t§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§6"F§.§[#a§();
         var _loc2_:Boolean = § "W§.§3q§();
         if(!_loc1_ && !_loc2_ && !this.§4! §)
         {
            §]$?§.resume();
         }
      }
      
      public function native() : void
      {
         §]$?§.pause();
      }
      
      protected function §0#K§() : void
      {
         this.§7"Z§ = this.initializeLevelItemManager();
         this.§%!,§ = this.initializeLevelThemeManager();
         this.mLevelManager = this.initializeLevelManager();
         this.§<B§ = this.initializePackageManager();
         §]$?§.§2#§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §8#3§
      {
         return new §8#3§(stage,this.§7"Z§,this.§%!,§,this.mLevelManager);
      }
      
      protected function initializeLevelItemManager() : §2#3§
      {
         return new §2#3§();
      }
      
      protected function initializeLevelThemeManager() : §-!`§
      {
         return new §-!`§();
      }
      
      protected function initializeLevelManager() : §]#q§
      {
         return new §]#q§();
      }
      
      protected function initializePackageManager() : §7Y§
      {
         return new §7Y§(this.mLevelManager);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§#!h§.userProgress = new §8#B§(SERVER_ROOT,this.mLevelManager);
      }
      
      protected function initializeStates() : void
      {
         §!#G§(new §8$C§(this.mLevelManager,§,%§,false));
         §!#G§(new §;#D§(this.mLevelManager,§,%§,false));
         §!#G§(new §9#Q§(this.mLevelManager,§,%§,false));
         §!#G§(new §#!$§(this.mLevelManager,§,%§,false));
         §!#G§(new StatePlay(this.mLevelManager,§,%§,false));
         §!#G§(new §1#p§(this.mLevelManager,§,%§,false));
         §!#G§(new §+!F§(this.mLevelManager,§,%§,false));
         §!#G§(new §!#l§(this.mLevelManager,§,%§,false));
         §!#G§(new §>"d§(this.mLevelManager,§,%§,false));
         §!#G§(new StateCutScene(this.mLevelManager,§,%§,false));
         §!#G§(new §[#t§(this.mLevelManager,§,%§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§+"y§(null);
         }
      }
      
      protected function §]0§(param1:ByteArray) : void
      {
      }
      
      protected function §;A§(param1:Event) : void
      {
         §8"M§.§3"p§();
      }
      
      protected function §<k§(param1:MouseEvent) : void
      {
         §8"M§.§]!z§();
         if(this.§,!^§)
         {
            ++this.§4"K§;
            if(this.§4"K§ > §3"H§)
            {
               this.§,!^§ = false;
               if(this.§6!p§ < §=!4§)
               {
                  this.§?!W§(this.§-5§);
               }
            }
         }
      }
      
      public function §[$,§() : void
      {
         this.§+"y§(null);
      }
      
      protected function §+"y§(param1:Event) : void
      {
         this.§`"7§ = true;
      }
      
      protected function §9#?§(param1:Event) : void
      {
         this.§@"+§();
      }
      
      public function §`<§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§-5§ > §3#!§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
            {
               this.§?!W§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§5#Z§(_loc1_);
            }
         }
      }
      
      public function exitFullScreen() : void
      {
         this.§?!W§(0);
      }
      
      public function § >§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         return false;
      }
      
      private function §?!W§(param1:int) : void
      {
         this.§`"7§ = true;
         this.§-5§ = param1;
         this.§,!^§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §5#Z§(param1:int) : void
      {
         var time:int = param1;
         this.§`"7§ = true;
         this.§-5§ = time;
         this.§6!p§ = 0;
         this.§4"K§ = 0;
         this.§,!^§ = true;
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
      
      public function get §^$4§() : Boolean
      {
         return this.§55§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§55§ = true;
         this.initializeGame();
         §5"f§.§+!,§.§+"m§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§]$?§.§@7§ != null)
         {
            §]$?§.§@7§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§9"n§().isGenericState())
         {
            if(_loc2_ == § #a§.§2#1§)
            {
               §3#§(§9"n§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §!!x§;
      }
      
      override public function getAppHeight() : Number
      {
         return §@!=§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §6j§;
      }
      
      protected function getThemeMusicName() : String
      {
         return §>"D§;
      }
      
      public function playThemeMusic() : void
      {
         if(§ b§.§]!L§(§6#f§) == null || !§ b§.§]!L§(§6#f§).isPlaying())
         {
            § b§.playSound(this.getThemeMusicName(),§6#f§,999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         § b§.§8!7§(§6#f§);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §7#K§;
      }
      
      protected function loadItems() : void
      {
         this.§7"Z§.loadItems(this.getItemDataXML());
      }
      
      protected function §]M§() : void
      {
         this.§%!,§.§>"+§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§]M§();
         §]$?§.§?"f§(this.§<B§.§-#<§,this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §1$"§.§%Z§(§`"c§);
      }
      
      protected function getItemDataXML() : XML
      {
         return §1$"§.§%Z§(§7!c§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §]I§ = true;
         §3#§(§;#D§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§,!^§)
         {
            ++this.§6!p§;
         }
         if(!Starling.§'8§())
         {
            return;
         }
         if(this.§`"7§)
         {
            this.resize();
            this.§`"7§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §+##§;
            _loc3_ = §%-§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §+##§ == _loc2_ && §%-§ == _loc3_)
         {
            return false;
         }
         §+##§ = _loc2_;
         §%-§ = _loc3_;
         this.resizeViews(§+##§,§%-§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int, param3:Boolean = false) : void
      {
         §]$?§.§3!<§(0,0,param1,param2,param3);
         setViewSize(param1,param2);
         this.§6"F§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §4$'§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
      
      public function getSoundResource(param1:String) : §8$-§
      {
         return this.§7"Z§.getSoundResource(param1);
      }
   }
}
