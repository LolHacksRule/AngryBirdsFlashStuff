package
{
   import §!"N§.§`!q§;
   import §!X§.§%" §;
   import §!X§.§'!X§;
   import §!X§.§,"p§;
   import §!X§.§5+§;
   import §!X§.§7"@§;
   import §!X§.§9c§;
   import §!X§.§>!I§;
   import §!X§.StateCutScene;
   import §!X§.StatePlay;
   import §!X§.§]!z§;
   import §!X§.§^!6§;
   import §"!P§.§5X§;
   import §#!k§.§8"z§;
   import §#<§.§8!j§;
   import §'! §.§41§;
   import §+"f§.§+!0§;
   import §,!_§.§2"V§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §0"I§.§0"b§;
   import §0"I§.§5!s§;
   import §0"I§.§^!9§;
   import §0b§.§7">§;
   import §1G§.§7m§;
   import §1G§.§8!a§;
   import §4m§.§&N§;
   import §4m§.§=I§;
   import §4m§.§]" §;
   import §5!q§.§3"X§;
   import §7"l§.§,!Y§;
   import §7A§.§@!A§;
   import §9!!§.§=!S§;
   import §>P§.§!!O§;
   import §`"8§.§%"?§;
   import §`"8§.§4"K§;
   import com.angrybirds.§9G§;
   import com.angrybirds.§;!e§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§>F§;
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
   
   public class §;"@§ extends §8!a§
   {
      
      protected static var §]#2§:Class = §,t§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §^!P§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §]";§:int = 1024;
      
      public static const §8"?§:int = 768;
      
      public static const §[!S§:Boolean = false;
      
      public static const §["Y§:int = 2000;
      
      private static const §1"C§:int = 750;
      
      private static const §[>§:int = 3;
      
      private static const §0"p§:int = 15;
      
      protected static var §1=§:Class = §#[§;
      
      protected static var §-"A§:Class = §8$§;
      
      protected static var §0y§:Class = §in§;
      
      protected static var §@!U§:Class = §"#§;
      
      protected static var §5_§:Class = §3"@§;
      
      public static var §else §:Boolean = true;
      
      private static var §4<§:§;"@§ = null;
      
      public static var §7!J§:Sprite = null;
      
      public static var §[9§:§9G§;
      
      public static var §5"r§:Boolean = false;
      
      private static var §""h§:int = 0;
      
      private static var §"`§:int = 0;
       
      
      protected var §`"-§:§%"?§;
      
      protected var §#"§:§!!O§;
      
      protected var § G§:§+!0§;
      
      protected var § !p§:§7!m§;
      
      protected var §`!7§:MovieClip;
      
      protected var §"q§:§&N§;
      
      protected var §="d§:§7">§;
      
      private var §["h§:int;
      
      private var § "o§:Boolean;
      
      private var §`!F§:int;
      
      private var §1"c§:int;
      
      protected var §-!N§:Boolean;
      
      protected var §]r§:Boolean;
      
      protected var §]S§:§4"K§;
      
      protected var §0"4§:Boolean;
      
      protected var §%"8§:Boolean = true;
      
      private var §1"X§:Boolean = false;
      
      public function §;"@§(param1:§7m§, param2:String, param3:String)
      {
         this.§,"Z§();
         §^!P§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         §@!A§.§`6§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §""h§;
      }
      
      public static function get stageHeight() : int
      {
         return §"`§;
      }
      
      public static function §+!5§(param1:Boolean) : void
      {
         §else § = param1;
         §@§.§&"l§(§else §);
      }
      
      public static function §"8§() : Boolean
      {
         return §else §;
      }
      
      public static function get screenWidth() : int
      {
         return singleton.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return singleton.getAppHeight();
      }
      
      public static function get singleton() : §;"@§
      {
         return §4<§;
      }
      
      public function get popupManager() : §&N§
      {
         return this.§"q§;
      }
      
      public function get tutorialPopupManager() : §7">§
      {
         return this.§="d§;
      }
      
      public function get dataModel() : §4"K§
      {
         return this.§]S§;
      }
      
      public function get §1"2§() : Boolean
      {
         return this.§]r§;
      }
      
      public function set §1"2§(param1:Boolean) : void
      {
         this.§]r§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §^!9§.§-^§(§0y§);
      }
      
      protected function getUIData() : XML
      {
         return §^!9§.§-^§(§1=§);
      }
      
      protected function getPopupData() : XML
      {
         return §^!9§.§-^§(§-"A§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§]S§ = new §4"K§();
      }
      
      protected function initialize() : void
      {
         §4<§ = this;
         this.§]r§ = false;
         §;!e§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§?!2§();
         this.initializeUserProgress();
         §`!q§.§-G§.init(§2"V§.§=!U§(),this.§,"S§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§`"-§,this.§?!+§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §4#§ = screenWidth;
         §`d§ = screenHeight;
         §;!e§.§="1§.visible = §[!S§;
         §5!s§.§5"0§(§7"A§);
         §5!s§.§5"e§(true);
         var _loc1_:XMLList = §^!9§.§-^§(§]#2§).children();
         §>F§.init(_loc1_);
         §@§.§"#'§("CHANNEL_THEME",1,1);
         §@§.§"#'§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§7!-§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§8;§);
         stage.addEventListener(Event.RESIZE,this.§!!P§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§3"h§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§'"s§);
         stage.addEventListener(Event.ACTIVATE,this.§8#$§);
         stage.addEventListener(Event.DEACTIVATE,this.§-D§);
         stage.tabChildren = false;
         §[9§ = new §9G§(stage);
         §[9§.addEventListener(§8"z§.§@"$§,this.§^"%§);
         §[9§.addEventListener(§8"z§.§6b§,this.§;!7§);
         §41§.§-G§.§86§ = !§[!S§;
      }
      
      protected function §,"S§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §-D§(param1:Event) : void
      {
         this.§,f§();
      }
      
      private function §,f§() : void
      {
         if(!this.§%"8§)
         {
            return;
         }
         this.§%"8§ = false;
         this.§0"4§ = §@§.§`"@§;
         if(!this.§0"4§)
         {
         }
      }
      
      private function §8#$§(param1:Event) : void
      {
         this.§4!'§();
      }
      
      private function §4!'§() : void
      {
         if(this.§%"8§)
         {
            return;
         }
         this.§%"8§ = true;
         if(!this.§0"4§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§`!7§ = new MovieClip();
         §7"A§.stage.addChild(this.§`!7§);
         this.§"q§ = new §]" §(this.§`!7§,§!# §,this);
         this.§"q§.addEventListener(§8!j§.OPEN,this.§^"%§);
         this.§"q§.addEventListener(§8!j§.CLOSE,this.§;!7§);
         this.§="d§ = new §7">§(this.§"q§,this.§]S§,§=I§.§^"b§);
         this.§"q§.§;!f§(§=I§.§2"Z§,true,new Rectangle(0,0,-180,0));
         this.§"q§.§;!f§(§=I§.§^"b§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §^"%§(param1:Event) : void
      {
         this.§!!§();
      }
      
      protected function §;!7§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§"q§.§;"<§();
         var _loc2_:Boolean = §[9§.isExternallyPaused();
         if(!_loc1_ && !_loc2_ && !this.§1"2§)
         {
            §;!e§.resume();
         }
      }
      
      public function §!!§() : void
      {
         §;!e§.pause();
      }
      
      protected function §?!2§() : void
      {
         this.§#"§ = this.initializeLevelItemManager();
         this.§ G§ = this.initializeLevelThemeManager();
         this.§ !p§ = this.initializeLevelManager();
         this.§`"-§ = this.initializePackageManager();
         §;!e§.§<x§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §3"X§
      {
         return new §3"X§(stage,this.§#"§,this.§ G§,this.§ !p§);
      }
      
      protected function initializeLevelItemManager() : §!!O§
      {
         return new §!!O§();
      }
      
      protected function initializeLevelThemeManager() : §+!0§
      {
         return new §+!0§();
      }
      
      protected function initializeLevelManager() : §7!m§
      {
         return new §7!m§();
      }
      
      protected function initializePackageManager() : §%"?§
      {
         return new §%"?§(this.§ !p§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§]S§.userProgress = new §5X§(SERVER_ROOT,this.§ !p§);
      }
      
      protected function initializeStates() : void
      {
         §;"g§(new §>!I§(this.§ !p§,§!# §,false));
         §;"g§(new §'!X§(this.§ !p§,§!# §,false));
         §;"g§(new §5+§(this.§ !p§,§!# §,false));
         §;"g§(new §,"p§(this.§ !p§,§!# §,false));
         §;"g§(new StatePlay(this.§ !p§,§!# §,false));
         §;"g§(new §]!z§(this.§ !p§,§!# §,false));
         §;"g§(new §%" §(this.§ !p§,§!# §,false));
         §;"g§(new §^!6§(this.§ !p§,§!# §,false));
         §;"g§(new §9c§(this.§ !p§,§!# §,false));
         §;"g§(new StateCutScene(this.§ !p§,§!# §,false));
         §;"g§(new §7"@§(this.§ !p§,§!# §,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§!!P§(null);
         }
      }
      
      protected function §?!+§(param1:ByteArray) : void
      {
      }
      
      protected function §7!-§(param1:Event) : void
      {
         §0"b§.§;&§();
      }
      
      protected function §8;§(param1:MouseEvent) : void
      {
         §0"b§.§&"i§();
         if(this.§ "o§)
         {
            ++this.§1"c§;
            if(this.§1"c§ > §0"p§)
            {
               this.§ "o§ = false;
               if(this.§`!F§ < §[>§)
               {
                  this.§"H§(this.§["h§);
               }
            }
         }
      }
      
      public function §9f§() : void
      {
         this.§!!P§(null);
      }
      
      protected function §!!P§(param1:Event) : void
      {
         this.§-!N§ = true;
      }
      
      protected function §'"s§(param1:Event) : void
      {
         this.§4!'§();
      }
      
      public function §35§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§["h§ > §1"C§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§"H§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§]!8§(_loc1_);
            }
         }
      }
      
      public function §@_§() : void
      {
         this.§"H§(0);
      }
      
      public function §3!g§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §"H§(param1:int) : void
      {
         this.§-!N§ = true;
         this.§["h§ = param1;
         this.§ "o§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §]!8§(param1:int) : void
      {
         this.§-!N§ = true;
         this.§["h§ = param1;
         this.§`!F§ = 0;
         this.§1"c§ = 0;
         this.§ "o§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §3"h§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §?!S§() : Boolean
      {
         return this.§1"X§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§1"X§ = true;
         this.initializeGame();
         §`!q§.§-G§.§&!§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§;!e§.§="1§ != null)
         {
            §;!e§.§="1§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§[s§().isGenericState())
         {
            if(_loc2_ == §,!Y§.§8"+§)
            {
               §0"B§(§[s§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §]";§;
      }
      
      override public function getAppHeight() : Number
      {
         return §8"?§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §["Y§;
      }
      
      protected function §7!§() : String
      {
         return "ThemeMusic";
      }
      
      public function playThemeMusic() : void
      {
         if(§@§.§]#%§("Channel_Theme") == null || !§@§.§]#%§("Channel_Theme").§^"h§())
         {
            §@§.§=Y§(this.§7!§(),"Channel_Theme",999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         §@§.§@!D§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §^!P§;
      }
      
      protected function loadItems() : void
      {
         this.§#"§.loadItems(this.§2!3§());
      }
      
      protected function loadBackgrounds() : void
      {
         this.§ G§.§+l§(this.§[!N§().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.loadBackgrounds();
         §;!e§.§5"E§(this.§`"-§.§7"k§,this.onGraphicsInitialized);
      }
      
      protected function §[!N§() : XML
      {
         return §^!9§.§-^§(§5_§);
      }
      
      protected function §2!3§() : XML
      {
         return §^!9§.§-^§(§@!U§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §5"r§ = true;
         §0"B§(§'!X§.§'#2§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§ "o§)
         {
            ++this.§`!F§;
         }
         if(!§=!S§.§!!,§())
         {
            return;
         }
         if(this.§-!N§)
         {
            this.resize();
            this.§-!N§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §""h§;
            _loc3_ = §"`§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §""h§ == _loc2_ && §"`§ == _loc3_)
         {
            return false;
         }
         §""h§ = _loc2_;
         §"`§ = _loc3_;
         this.resizeViews(§""h§,§"`§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §;!e§.§8!0§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§"q§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §,"Z§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
