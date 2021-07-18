package
{
   import § "4§.§8!R§;
   import § §.§4#`§;
   import §%R§.§["N§;
   import §&#H§.§3#J§;
   import §,"N§.§'#E§;
   import §,"N§.§@>§;
   import §0!=§.§'"]§;
   import §0!=§.§]"3§;
   import §1!i§.§1"9§;
   import §1#R§.§+#[§;
   import §2"Y§.§,§;
   import §5§.§0§;
   import §5t§.§>"p§;
   import §5t§.Log;
   import §5t§.§`"+§;
   import §6"G§.§-#C§;
   import §69§.§!!u§;
   import §<"c§.§"C§;
   import §<"c§.§+!n§;
   import §<"c§.§+#?§;
   import §<"c§.§,"A§;
   import §<"c§.§1!#§;
   import §<"c§.§5"p§;
   import §<"c§.§<2§;
   import §<"c§.StateCutScene;
   import §<"c§.StatePlay;
   import §<"c§.§^#M§;
   import §<"c§.§`!O§;
   import §<w§.§9"G§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import §[!m§.§&j§;
   import §[!m§.§;a§;
   import §[!m§.§?!C§;
   import §^#>§.§#_§;
   import §`!o§.§6",§;
   import com.angrybirds.§,!q§;
   import com.angrybirds.§=O§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§`=§;
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
   
   public class §4#;§ extends §]"3§
   {
      
      protected static var §7!h§:Class = §+"Y§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §<!&§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §%N§:int = 1024;
      
      public static const §>#O§:int = 768;
      
      public static const §<N§:Boolean = true;
      
      public static const §""V§:int = 2000;
      
      private static const §;#^§:int = 750;
      
      private static const §?"K§:int = 3;
      
      private static const §4!o§:int = 15;
      
      protected static var §1!G§:Class = §!"5§;
      
      protected static var §2"@§:Class = §`r§;
      
      protected static var §"!;§:Class = §#!Y§;
      
      protected static var §="s§:Class = §0N§;
      
      protected static var §!9§:Class = §?!T§;
      
      public static var §3"G§:Boolean = true;
      
      private static var §3!j§:§4#;§ = null;
      
      public static var §0Z§:Sprite = null;
      
      public static var §7!A§:§=O§;
      
      public static var §=f§:Boolean = false;
      
      protected static var §]!n§:int = 0;
      
      protected static var §'O§:int = 0;
       
      
      protected var §6"v§:§'#E§;
      
      protected var §?4§:§,#5§;
      
      protected var §?"1§:§!!u§;
      
      protected var §+!b§:§+"2§;
      
      protected var §`7§:MovieClip;
      
      protected var §5M§:§;a§;
      
      protected var §8z§:§0#2§;
      
      private var §case §:int;
      
      private var §3!h§:Boolean;
      
      private var §-#,§:int;
      
      private var §8#`§:int;
      
      protected var §4!V§:Boolean;
      
      protected var §5!X§:Boolean;
      
      protected var §4#J§:§@>§;
      
      protected var §?#B§:Boolean;
      
      protected var §^#F§:Boolean = true;
      
      private var § #_§:Boolean = false;
      
      public function §4#;§(param1:§'"]§, param2:String, param3:String)
      {
         this.§5B§();
         §<!&§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         §1"9§.§;!P§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §]!n§;
      }
      
      public static function get stageHeight() : int
      {
         return §'O§;
      }
      
      public static function §2!>§(param1:Boolean) : void
      {
         §3"G§ = param1;
         §?!r§.§2r§(§3"G§);
      }
      
      public static function §]q§() : Boolean
      {
         return §3"G§;
      }
      
      public static function get screenWidth() : int
      {
         return singleton.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return singleton.getAppHeight();
      }
      
      public static function get singleton() : §4#;§
      {
         return §3!j§;
      }
      
      public function get popupManager() : §;a§
      {
         return this.§5M§;
      }
      
      public function get tutorialPopupManager() : §0#2§
      {
         return this.§8z§;
      }
      
      public function get dataModel() : §@>§
      {
         return this.§4#J§;
      }
      
      public function get §-2§() : Boolean
      {
         return this.§5!X§;
      }
      
      public function set §-2§(param1:Boolean) : void
      {
         this.§5!X§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §>"p§.§ !Q§(§"!;§);
      }
      
      protected function getUIData() : XML
      {
         return §>"p§.§ !Q§(§1!G§);
      }
      
      protected function getPopupData() : XML
      {
         return §>"p§.§ !Q§(§2"@§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§4#J§ = new §@>§();
      }
      
      protected function initialize() : void
      {
         §3!j§ = this;
         this.§5!X§ = false;
         §,!q§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§"+§();
         this.initializeUserProgress();
         §["N§.§%!E§.init(§6",§.§<[§(),this.§%"&§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§6"v§,this.§4#4§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §?p§ = screenWidth;
         §4w§ = screenHeight;
         §,!q§.§!#=§.visible = §<N§;
         Log.§!"7§(§["A§);
         Log.§6"<§(true);
         var _loc1_:XMLList = §>"p§.§ !Q§(§7!h§).children();
         §`=§.init(_loc1_);
         §?!r§.§,"d§("CHANNEL_THEME",1,1);
         §?!r§.§,"d§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§[u§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.addEventListener(Event.RESIZE,this.§=_§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§?B§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§=,§);
         stage.addEventListener(Event.ACTIVATE,this.§=!j§);
         stage.addEventListener(Event.DEACTIVATE,this.§<"x§);
         stage.tabChildren = false;
         §7!A§ = new §=O§(stage);
         §7!A§.addEventListener(§9"G§.§`!V§,this.§'#K§);
         §7!A§.addEventListener(§9"G§.§,#T§,this.§3!I§);
         §-#C§.§%!E§.§;"8§ = !§<N§;
      }
      
      protected function §%"&§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §<"x§(param1:Event) : void
      {
         this.§57§();
      }
      
      private function §57§() : void
      {
         if(!this.§^#F§)
         {
            return;
         }
         this.§^#F§ = false;
         this.§?#B§ = §?!r§.§`"5§;
         if(!this.§?#B§)
         {
         }
      }
      
      private function §=!j§(param1:Event) : void
      {
         this.§=!§();
      }
      
      private function §=!§() : void
      {
         if(this.§^#F§)
         {
            return;
         }
         this.§^#F§ = true;
         if(!this.§?#B§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§`7§ = new MovieClip();
         §["A§.stage.addChild(this.§`7§);
         this.§5M§ = new §&j§(this.§`7§,§4#,§,this);
         this.§5M§.addEventListener(§+#[§.OPEN,this.§'#K§);
         this.§5M§.addEventListener(§+#[§.CLOSE,this.§3!I§);
         this.§8z§ = new §0#2§(this.§5M§,this.§4#J§,§?!C§.§[!Z§);
         this.§5M§.§5!a§(§?!C§.§&T§,true,new Rectangle(0,0,-180,0));
         this.§5M§.§5!a§(§?!C§.§[!Z§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §'#K§(param1:Event) : void
      {
         this.§##!§();
      }
      
      protected function §3!I§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§5M§.§""n§();
         var _loc2_:Boolean = §7!A§.isExternallyPaused();
         if(!_loc1_ && !_loc2_ && !this.§-2§)
         {
            §,!q§.resume();
         }
      }
      
      public function §##!§() : void
      {
         §,!q§.pause();
      }
      
      protected function §"+§() : void
      {
         this.§?4§ = this.initializeLevelItemManager();
         this.§?"1§ = this.initializeLevelThemeManager();
         this.§+!b§ = this.initializeLevelManager();
         this.§6"v§ = this.initializePackageManager();
         §,!q§.§9!,§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §#_§
      {
         return new §#_§(stage,this.§?4§,this.§?"1§,this.§+!b§);
      }
      
      protected function initializeLevelItemManager() : §,#5§
      {
         return new §,#5§();
      }
      
      protected function initializeLevelThemeManager() : §!!u§
      {
         return new §!!u§();
      }
      
      protected function initializeLevelManager() : §+"2§
      {
         return new §+"2§();
      }
      
      protected function initializePackageManager() : §'#E§
      {
         return new §'#E§(this.§+!b§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§4#J§.userProgress = new §8!R§(SERVER_ROOT,this.§+!b§);
      }
      
      protected function initializeStates() : void
      {
         §7![§(new §<2§(this.§+!b§,§4#,§,false));
         §7![§(new §+!n§(this.§+!b§,§4#,§,false));
         §7![§(new §"C§(this.§+!b§,§4#,§,false));
         §7![§(new §+#?§(this.§+!b§,§4#,§,false));
         §7![§(new StatePlay(this.§+!b§,§4#,§,false));
         §7![§(new §,"A§(this.§+!b§,§4#,§,false));
         §7![§(new §5"p§(this.§+!b§,§4#,§,false));
         §7![§(new §1!#§(this.§+!b§,§4#,§,false));
         §7![§(new §^#M§(this.§+!b§,§4#,§,false));
         §7![§(new StateCutScene(this.§+!b§,§4#,§,false));
         §7![§(new §`!O§(this.§+!b§,§4#,§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§=_§(null);
         }
      }
      
      protected function §4#4§(param1:ByteArray) : void
      {
      }
      
      protected function §[u§(param1:Event) : void
      {
         §`"+§.§+#`§();
      }
      
      protected function §[#8§(param1:MouseEvent) : void
      {
         §`"+§.§9!q§();
         if(this.§3!h§)
         {
            ++this.§8#`§;
            if(this.§8#`§ > §4!o§)
            {
               this.§3!h§ = false;
               if(this.§-#,§ < §?"K§)
               {
                  this.§"!+§(this.§case §);
               }
            }
         }
      }
      
      public function §+%§() : void
      {
         this.§=_§(null);
      }
      
      protected function §=_§(param1:Event) : void
      {
         this.§4!V§ = true;
      }
      
      protected function §=,§(param1:Event) : void
      {
         this.§=!§();
      }
      
      public function §5"q§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§case § > §;#^§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§"!+§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§9#-§(_loc1_);
            }
         }
      }
      
      public function §<#'§() : void
      {
         this.§"!+§(0);
      }
      
      public function §>!Z§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §"!+§(param1:int) : void
      {
         this.§4!V§ = true;
         this.§case § = param1;
         this.§3!h§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §9#-§(param1:int) : void
      {
         this.§4!V§ = true;
         this.§case § = param1;
         this.§-#,§ = 0;
         this.§8#`§ = 0;
         this.§3!h§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §?B§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §0k§() : Boolean
      {
         return this.§ #_§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§ #_§ = true;
         this.initializeGame();
         §["N§.§%!E§.§!" §();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§,!q§.§!#=§ != null)
         {
            §,!q§.§!#=§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§@!2§().isGenericState())
         {
            if(_loc2_ == §4#`§.§-#_§)
            {
               § g§(§@!2§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §%N§;
      }
      
      override public function getAppHeight() : Number
      {
         return §>#O§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §""V§;
      }
      
      protected function §5#J§() : String
      {
         return "ThemeMusic";
      }
      
      public function playThemeMusic() : void
      {
         if(§?!r§.§2R§("Channel_Theme") == null || !§?!r§.§2R§("Channel_Theme").§<"M§())
         {
            §?!r§.§"#_§(this.§5#J§(),"Channel_Theme",999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         §?!r§.§9"4§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §<!&§;
      }
      
      protected function loadItems() : void
      {
         this.§?4§.loadItems(this.§=!%§());
      }
      
      protected function loadBackgrounds() : void
      {
         this.§?"1§.§7-§(this.§6"!§().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.loadBackgrounds();
         §,!q§.§[#Z§(this.§6"v§.§!"$§,this.onGraphicsInitialized);
      }
      
      protected function §6"!§() : XML
      {
         return §>"p§.§ !Q§(§!9§);
      }
      
      protected function §=!%§() : XML
      {
         return §>"p§.§ !Q§(§="s§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §=f§ = true;
         § g§(§+!n§.§^!7§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§3!h§)
         {
            ++this.§-#,§;
         }
         if(!§3#J§.§;[§())
         {
            return;
         }
         if(this.§4!V§)
         {
            this.resize();
            this.§4!V§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §]!n§;
            _loc3_ = §'O§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §]!n§ == _loc2_ && §'O§ == _loc3_)
         {
            return false;
         }
         §]!n§ = _loc2_;
         §'O§ = _loc3_;
         this.resizeViews(§]!n§,§'O§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §,!q§.§0!L§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§5M§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §5B§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
