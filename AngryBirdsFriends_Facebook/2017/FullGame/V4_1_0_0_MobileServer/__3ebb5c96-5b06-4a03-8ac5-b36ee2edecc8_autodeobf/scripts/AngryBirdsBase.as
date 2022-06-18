package
{
   import § $%§.§ $7§;
   import §#"H§.§ #P§;
   import §&"J§.§4b§;
   import §&"J§.§<&§;
   import §+!C§.§!!S§;
   import §1#W§.§!#&§;
   import §4$<§.§?§;
   import §6!6§.§[k§;
   import §6"r§.§!#A§;
   import §6"r§.§8"8§;
   import §6V§.§1o§;
   import §7"&§.§&"T§;
   import §8Z§.§6"w§;
   import §9+§.Starling;
   import §94§.§"!u§;
   import §94§.§+$,§;
   import §94§.§4#M§;
   import §94§.§7!c§;
   import §94§.§9#P§;
   import §94§.§@"X§;
   import §94§.StateCutScene;
   import §94§.StatePlay;
   import §94§.§[j§;
   import §94§.§]#e§;
   import §94§.§`"m§;
   import §<"P§.§8#-§;
   import §<"P§.§[#$§;
   import §<"p§.§8N§;
   import §<"p§.§9#D§;
   import §<"p§.§?!T§;
   import §<#m§.§+!&§;
   import §<#m§.§0r§;
   import §<#m§.§8!j§;
   import §<o§.§6§;
   import §>!I§.§@!q§;
   import §>@§.§'!L§;
   import §@#§.§^#Q§;
   import §`M§.§6W§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§3#u§;
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
   
   public class AngryBirdsBase extends §[#$§
   {
      
      protected static var §;"U§:Class = §`"r§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §-#!§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §-Y§:int = 1024;
      
      public static const §<!q§:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = false;
      
      public static const §1!§:int = 2000;
      
      private static const §;"F§:int = 750;
      
      private static const §8#l§:int = 3;
      
      private static const §'#P§:int = 15;
      
      public static const §2#a§:String = "Channel_Theme";
      
      public static const §[^§:String = "CHANNEL_AMBIENT";
      
      public static const § "N§:String = "friends_title_theme";
      
      protected static var §6!z§:Class = §&+§;
      
      protected static var §,"E§:Class = §`J§;
      
      protected static var §[W§:Class = §5!K§;
      
      protected static var §2!L§:Class = §`3§;
      
      protected static var §1!^§:Class = §?#h§;
      
      public static var §7g§:Boolean = true;
      
      private static var §;!$§:AngryBirdsBase = null;
      
      public static var §;"0§:Sprite = null;
      
      public static var §4#b§:§8"8§;
      
      public static var §2!w§:Boolean = false;
      
      protected static var §?;§:int = 0;
      
      protected static var §3"P§:int = 0;
       
      
      protected var §["t§:§4b§;
      
      protected var § "G§:§&"T§;
      
      protected var §7"h§:§[k§;
      
      protected var mLevelManager:§^#Q§;
      
      protected var §6#6§:MovieClip;
      
      protected var §8,§:§0r§;
      
      protected var §=#j§:§ #P§;
      
      private var §]";§:int;
      
      private var §;w§:Boolean;
      
      private var §5!$§:int;
      
      private var §^"g§:int;
      
      protected var §,"K§:Boolean;
      
      protected var §8"e§:Boolean;
      
      protected var §5""§:§<&§;
      
      protected var §!!=§:Boolean;
      
      protected var §,##§:Boolean = true;
      
      private var §2!h§:Boolean = false;
      
      public function AngryBirdsBase(param1:§8#-§, param2:String, param3:String)
      {
         this.§?#x§();
         §-#!§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         §1o§.§%<§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §?;§;
      }
      
      public static function get stageHeight() : int
      {
         return §3"P§;
      }
      
      public static function §;l§(param1:Boolean) : void
      {
         §7g§ = param1;
         §!#&§.§0$4§(§7g§);
      }
      
      public static function §""$§() : Boolean
      {
         return §7g§;
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
         return §;!$§;
      }
      
      public function get popupManager() : §0r§
      {
         return this.§8,§;
      }
      
      public function get §=#v§() : § #P§
      {
         return this.§=#j§;
      }
      
      public function get dataModel() : §<&§
      {
         return this.§5""§;
      }
      
      public function get §#!;§() : Boolean
      {
         return this.§8"e§;
      }
      
      public function set §#!;§(param1:Boolean) : void
      {
         this.§8"e§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §8N§.§1F§(§[W§);
      }
      
      protected function getUIData() : XML
      {
         return §8N§.§1F§(§6!z§);
      }
      
      protected function getPopupData() : XML
      {
         return §8N§.§1F§(§,"E§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§5""§ = new §<&§();
      }
      
      protected function initialize() : void
      {
         §;!$§ = this;
         this.§8"e§ = false;
         §!#A§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§[!3§();
         this.initializeUserProgress();
         §@!q§.§ "D§.init(§ $7§.§<J§(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.§["t§,this.§`"E§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §3e§ = screenWidth;
         §"#M§ = screenHeight;
         §!#A§.§set §.visible = DEBUG_MODE_ENABLED;
         §?!T§.§8#k§(§'!P§);
         §?!T§.§'a§(true);
         var _loc1_:XMLList = §8N§.§1F§(§;"U§).children();
         §3#u§.init(_loc1_);
         §!#&§.§!"k§(§2#a§,1,0.6);
         §!#&§.§!"k§(§[^§,1,0.8);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§5"v§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§9#U§);
         stage.addEventListener(Event.RESIZE,this.§?$3§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§;"=§);
         stage.addEventListener(Event.ACTIVATE,this.§<!D§);
         stage.addEventListener(Event.DEACTIVATE,this.§6"T§);
         stage.tabChildren = false;
         §4#b§ = new §8"8§(stage);
         §4#b§.addEventListener(§6#2§.§-#d§,this.§6#c§);
         §4#b§.addEventListener(§6#2§.§3"4§,this.§!#$§);
         §6"w§.§ "D§.§!#j§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §6"T§(param1:Event) : void
      {
         this.§=!I§();
      }
      
      private function §=!I§() : void
      {
         if(!this.§,##§)
         {
            return;
         }
         this.§,##§ = false;
         this.§!!=§ = §!#&§.§`"a§;
         if(!this.§!!=§)
         {
         }
      }
      
      private function §<!D§(param1:Event) : void
      {
         this.§1$§();
      }
      
      private function §1$§() : void
      {
         if(this.§,##§)
         {
            return;
         }
         this.§,##§ = true;
         if(!this.§!!=§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§6#6§ = new MovieClip();
         §'!P§.stage.addChild(this.§6#6§);
         this.§8,§ = new §8!j§(this.§6#6§,§0"C§,this);
         this.§8,§.addEventListener(§?#7§.OPEN,this.§6#c§);
         this.§8,§.addEventListener(§?#7§.CLOSE,this.§!#$§);
         this.§=#j§ = new § #P§(this.§8,§,this.§5""§,§+!&§.§3!5§);
         this.§8,§.addLayer(§+!&§.§`!r§,true,new Rectangle(0,0,-180,0));
         this.§8,§.addLayer(§+!&§.§3!5§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §6#c§(param1:Event) : void
      {
         this.§6#n§();
      }
      
      protected function §!#$§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§8,§.§`$§();
         var _loc2_:Boolean = §4#b§.§;#y§();
         if(!_loc1_ && !_loc2_ && !this.§#!;§)
         {
            §!#A§.resume();
         }
      }
      
      public function §6#n§() : void
      {
         §!#A§.pause();
      }
      
      protected function §[!3§() : void
      {
         this.§ "G§ = this.initializeLevelItemManager();
         this.§7"h§ = this.initializeLevelThemeManager();
         this.mLevelManager = this.initializeLevelManager();
         this.§["t§ = this.initializePackageManager();
         §!#A§.§#F§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §!!S§
      {
         return new §!!S§(stage,this.§ "G§,this.§7"h§,this.mLevelManager);
      }
      
      protected function initializeLevelItemManager() : §&"T§
      {
         return new §&"T§();
      }
      
      protected function initializeLevelThemeManager() : §[k§
      {
         return new §[k§();
      }
      
      protected function initializeLevelManager() : §^#Q§
      {
         return new §^#Q§();
      }
      
      protected function initializePackageManager() : §4b§
      {
         return new §4b§(this.mLevelManager);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§5""§.userProgress = new §6W§(SERVER_ROOT,this.mLevelManager);
      }
      
      protected function initializeStates() : void
      {
         §?!7§(new §9#P§(this.mLevelManager,§0"C§,false));
         §?!7§(new §+$,§(this.mLevelManager,§0"C§,false));
         §?!7§(new §4#M§(this.mLevelManager,§0"C§,false));
         §?!7§(new §7!c§(this.mLevelManager,§0"C§,false));
         §?!7§(new StatePlay(this.mLevelManager,§0"C§,false));
         §?!7§(new §`"m§(this.mLevelManager,§0"C§,false));
         §?!7§(new §"!u§(this.mLevelManager,§0"C§,false));
         §?!7§(new §]#e§(this.mLevelManager,§0"C§,false));
         §?!7§(new §[j§(this.mLevelManager,§0"C§,false));
         §?!7§(new StateCutScene(this.mLevelManager,§0"C§,false));
         §?!7§(new §@"X§(this.mLevelManager,§0"C§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§?$3§(null);
         }
      }
      
      protected function §`"E§(param1:ByteArray) : void
      {
      }
      
      protected function §5"v§(param1:Event) : void
      {
         §9#D§.§ !O§();
      }
      
      protected function §9#U§(param1:MouseEvent) : void
      {
         §9#D§.§3#c§();
         if(this.§;w§)
         {
            ++this.§^"g§;
            if(this.§^"g§ > §'#P§)
            {
               this.§;w§ = false;
               if(this.§5!$§ < §8#l§)
               {
                  this.§,! §(this.§]";§);
               }
            }
         }
      }
      
      public function §+S§() : void
      {
         this.§?$3§(null);
      }
      
      protected function §?$3§(param1:Event) : void
      {
         this.§,"K§ = true;
      }
      
      protected function §;"=§(param1:Event) : void
      {
         this.§1$§();
      }
      
      public function §6"0§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§]";§ > §;"F§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
            {
               this.§,! §(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§["q§(_loc1_);
            }
         }
      }
      
      public function exitFullScreen() : void
      {
         this.§,! §(0);
      }
      
      public function §3#3§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         return false;
      }
      
      private function §,! §(param1:int) : void
      {
         this.§,"K§ = true;
         this.§]";§ = param1;
         this.§;w§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §["q§(param1:int) : void
      {
         var time:int = param1;
         this.§,"K§ = true;
         this.§]";§ = time;
         this.§5!$§ = 0;
         this.§^"g§ = 0;
         this.§;w§ = true;
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
      
      public function get §-"-§() : Boolean
      {
         return this.§2!h§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§2!h§ = true;
         this.initializeGame();
         §@!q§.§ "D§.§3!A§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§!#A§.§set § != null)
         {
            §!#A§.§set §.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§[##§().isGenericState())
         {
            if(_loc2_ == §'!L§.§`!?§)
            {
               §5"p§(§[##§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §-Y§;
      }
      
      override public function getAppHeight() : Number
      {
         return §<!q§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §1!§;
      }
      
      protected function getThemeMusicName() : String
      {
         return § "N§;
      }
      
      public function playThemeMusic() : void
      {
         if(§!#&§.§3!c§(§2#a§) == null || !§!#&§.§3!c§(§2#a§).isPlaying())
         {
            §!#&§.playSound(this.getThemeMusicName(),§2#a§,999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         §!#&§.§4#J§(§2#a§);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §-#!§;
      }
      
      protected function loadItems() : void
      {
         this.§ "G§.loadItems(this.getItemDataXML());
      }
      
      protected function §continue§() : void
      {
         this.§7"h§.§06§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§continue§();
         §!#A§.§^C§(this.§["t§.§'$3§,this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §8N§.§1F§(§1!^§);
      }
      
      protected function getItemDataXML() : XML
      {
         return §8N§.§1F§(§2!L§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §2!w§ = true;
         §5"p§(§+$,§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§;w§)
         {
            ++this.§5!$§;
         }
         if(!Starling.§&!#§())
         {
            return;
         }
         if(this.§,"K§)
         {
            this.resize();
            this.§,"K§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §?;§;
            _loc3_ = §3"P§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §?;§ == _loc2_ && §3"P§ == _loc3_)
         {
            return false;
         }
         §?;§ = _loc2_;
         §3"P§ = _loc3_;
         this.resizeViews(§?;§,§3"P§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int, param3:Boolean = false) : void
      {
         §!#A§.§+i§(0,0,param1,param2,param3);
         setViewSize(param1,param2);
         this.§8,§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §?#x§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
