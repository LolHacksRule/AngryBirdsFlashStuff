package
{
   import § "-§.§6!R§;
   import §"§.§;!E§;
   import §#g§.§2"m§;
   import §%!G§.§8##§;
   import §%"Q§.§!K§;
   import §%"Q§.§#V§;
   import §%"Q§.§'!V§;
   import §%"Q§.§,!§;
   import §%"Q§.§7"9§;
   import §%"Q§.§<'§;
   import §%"Q§.§>"+§;
   import §%"Q§.StateCutScene;
   import §%"Q§.StatePlay;
   import §%"Q§.§^!e§;
   import §%"Q§.§`=§;
   import §+"x§.§&!Y§;
   import §+"x§.§6<§;
   import §+"x§.§=M§;
   import §+d§.§@h§;
   import §0"g§.§5!%§;
   import §7!n§.§>"H§;
   import §9"U§.§'!;§;
   import §9"U§.§9U§;
   import §9"`§.§-"H§;
   import §9"`§.§]"9§;
   import §9"`§.§]s§;
   import §9&§.§@"K§;
   import §9&§.§]!`§;
   import §9§.§1" §;
   import §=!4§.§2!k§;
   import §@[§.§0"C§;
   import §`!v§.§5!R§;
   import §`"1§.§=Q§;
   import §`"T§.§[l§;
   import §`"n§.§^!-§;
   import com.angrybirds.§6"s§;
   import com.angrybirds.§<!J§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§2"A§;
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
   import §null §.§5#§;
   
   public class §4"#§ extends §]!`§
   {
      
      protected static var §@"'§:Class = §;"1§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §%L§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §8!Q§:int = 1024;
      
      public static const §,e§:int = 768;
      
      public static const §<C§:Boolean = false;
      
      public static const §2!F§:int = 2000;
      
      private static const §>^§:int = 750;
      
      private static const §["c§:int = 3;
      
      private static const §5!O§:int = 15;
      
      protected static var §!#5§:Class = §&"$§;
      
      protected static var §^!@§:Class = §+"?§;
      
      protected static var §!H§:Class = § !Z§;
      
      protected static var §>#§:Class = §@w§;
      
      protected static var §2!W§:Class = §9Y§;
      
      public static var §1#!§:Boolean = true;
      
      private static var §-"K§:§4"#§ = null;
      
      public static var §8"i§:Sprite = null;
      
      public static var §`"!§:§6"s§;
      
      public static var §+t§:Boolean = false;
      
      private static var §!"3§:int = 0;
      
      private static var §9"2§:int = 0;
       
      
      protected var §&"a§:§9U§;
      
      protected var §7W§:§2"m§;
      
      protected var §+!X§:§5!R§;
      
      protected var §'""§:§5#§;
      
      protected var §%"H§:MovieClip;
      
      protected var §?"Q§:§&!Y§;
      
      protected var §?!s§:§[l§;
      
      private var §@L§:int;
      
      private var §?"A§:Boolean;
      
      private var §%"C§:int;
      
      private var §1"7§:int;
      
      protected var §9!7§:Boolean;
      
      protected var §3T§:Boolean;
      
      protected var §?!$§:§'!;§;
      
      protected var §8!_§:Boolean;
      
      protected var §3§:Boolean = true;
      
      private var §2V§:Boolean = false;
      
      public function §4"#§(param1:§@"K§, param2:String, param3:String)
      {
         this.§6!h§();
         §%L§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         §@h§.§%#2§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §!"3§;
      }
      
      public static function get stageHeight() : int
      {
         return §9"2§;
      }
      
      public static function §"W§(param1:Boolean) : void
      {
         §1#!§ = param1;
         §=Q§.§9-§(§1#!§);
      }
      
      public static function §-!;§() : Boolean
      {
         return §1#!§;
      }
      
      public static function get screenWidth() : int
      {
         return singleton.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return singleton.getAppHeight();
      }
      
      public static function get singleton() : §4"#§
      {
         return §-"K§;
      }
      
      public function get popupManager() : §&!Y§
      {
         return this.§?"Q§;
      }
      
      public function get tutorialPopupManager() : §[l§
      {
         return this.§?!s§;
      }
      
      public function get dataModel() : §'!;§
      {
         return this.§?!$§;
      }
      
      public function get § "#§() : Boolean
      {
         return this.§3T§;
      }
      
      public function set § "#§(param1:Boolean) : void
      {
         this.§3T§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §]"9§.§#§(§!H§);
      }
      
      protected function getUIData() : XML
      {
         return §]"9§.§#§(§!#5§);
      }
      
      protected function getPopupData() : XML
      {
         return §]"9§.§#§(§^!@§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§?!$§ = new §'!;§();
      }
      
      protected function initialize() : void
      {
         §-"K§ = this;
         this.§3T§ = false;
         §<!J§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§2!w§();
         this.initializeUserProgress();
         §0"C§.§!6§.init(§8##§.§7m§(),this.§"#%§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§&"a§,this.§!"2§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §@!H§ = screenWidth;
         §1l§ = screenHeight;
         §<!J§.§1t§.visible = §<C§;
         §-"H§.§=!C§(§1!e§);
         §-"H§.§@-§(true);
         var _loc1_:XMLList = §]"9§.§#§(§@"'§).children();
         §2"A§.init(_loc1_);
         §=Q§.§`"u§("CHANNEL_THEME",1,1);
         §=Q§.§`"u§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§3"Q§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§,"[§);
         stage.addEventListener(Event.RESIZE,this.§?<§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§=y§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§]!z§);
         stage.addEventListener(Event.ACTIVATE,this.§<!n§);
         stage.addEventListener(Event.DEACTIVATE,this.§6"&§);
         stage.tabChildren = false;
         §`"!§ = new §6"s§(stage);
         §`"!§.addEventListener(§2!k§.§+§,this.§@a§);
         §`"!§.addEventListener(§2!k§.§>c§,this.§4"F§);
         §5!%§.§!6§.§7"k§ = !§<C§;
      }
      
      protected function §"#%§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §6"&§(param1:Event) : void
      {
         this.§&I§();
      }
      
      private function §&I§() : void
      {
         if(!this.§3§)
         {
            return;
         }
         this.§3§ = false;
         this.§8!_§ = §=Q§.§2!8§;
         if(!this.§8!_§)
         {
         }
      }
      
      private function §<!n§(param1:Event) : void
      {
         this.§@!B§();
      }
      
      private function §@!B§() : void
      {
         if(this.§3§)
         {
            return;
         }
         this.§3§ = true;
         if(!this.§8!_§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§%"H§ = new MovieClip();
         §1!e§.stage.addChild(this.§%"H§);
         this.§?"Q§ = new §=M§(this.§%"H§,§1!L§,this);
         this.§?"Q§.addEventListener(§>"H§.OPEN,this.§@a§);
         this.§?"Q§.addEventListener(§>"H§.CLOSE,this.§4"F§);
         this.§?!s§ = new §[l§(this.§?"Q§,this.§?!$§,§6<§.§"w§);
         this.§?"Q§.§@"V§(§6<§.§<"Z§,true,new Rectangle(0,0,-180,0));
         this.§?"Q§.§@"V§(§6<§.§"w§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §@a§(param1:Event) : void
      {
         this.§3!w§();
      }
      
      protected function §4"F§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§?"Q§.§#"E§();
         var _loc2_:Boolean = §`"!§.isExternallyPaused();
         if(!_loc1_ && !_loc2_ && !this.§ "#§)
         {
            §<!J§.resume();
         }
      }
      
      public function §3!w§() : void
      {
         §<!J§.pause();
      }
      
      protected function §2!w§() : void
      {
         this.§7W§ = this.initializeLevelItemManager();
         this.§+!X§ = this.initializeLevelThemeManager();
         this.§'""§ = this.initializeLevelManager();
         this.§&"a§ = this.initializePackageManager();
         §<!J§.§=!%§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §;!E§
      {
         return new §;!E§(stage,this.§7W§,this.§+!X§,this.§'""§);
      }
      
      protected function initializeLevelItemManager() : §2"m§
      {
         return new §2"m§();
      }
      
      protected function initializeLevelThemeManager() : §5!R§
      {
         return new §5!R§();
      }
      
      protected function initializeLevelManager() : §5#§
      {
         return new §5#§();
      }
      
      protected function initializePackageManager() : §9U§
      {
         return new §9U§(this.§'""§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§?!$§.userProgress = new §^!-§(SERVER_ROOT,this.§'""§);
      }
      
      protected function initializeStates() : void
      {
         §^!%§(new §7"9§(this.§'""§,§1!L§,false));
         §^!%§(new §<'§(this.§'""§,§1!L§,false));
         §^!%§(new §'!V§(this.§'""§,§1!L§,false));
         §^!%§(new §!K§(this.§'""§,§1!L§,false));
         §^!%§(new StatePlay(this.§'""§,§1!L§,false));
         §^!%§(new §#V§(this.§'""§,§1!L§,false));
         §^!%§(new §^!e§(this.§'""§,§1!L§,false));
         §^!%§(new §`=§(this.§'""§,§1!L§,false));
         §^!%§(new §,!§(this.§'""§,§1!L§,false));
         §^!%§(new StateCutScene(this.§'""§,§1!L§,false));
         §^!%§(new §>"+§(this.§'""§,§1!L§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§?<§(null);
         }
      }
      
      protected function §!"2§(param1:ByteArray) : void
      {
      }
      
      protected function §3"Q§(param1:Event) : void
      {
         §]s§.§""t§();
      }
      
      protected function §,"[§(param1:MouseEvent) : void
      {
         §]s§.§&"A§();
         if(this.§?"A§)
         {
            ++this.§1"7§;
            if(this.§1"7§ > §5!O§)
            {
               this.§?"A§ = false;
               if(this.§%"C§ < §["c§)
               {
                  this.§=2§(this.§@L§);
               }
            }
         }
      }
      
      public function §4x§() : void
      {
         this.§?<§(null);
      }
      
      protected function §?<§(param1:Event) : void
      {
         this.§9!7§ = true;
      }
      
      protected function §]!z§(param1:Event) : void
      {
         this.§@!B§();
      }
      
      public function §^L§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§@L§ > §>^§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§=2§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§""_§(_loc1_);
            }
         }
      }
      
      public function §,]§() : void
      {
         this.§=2§(0);
      }
      
      public function §!n§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §=2§(param1:int) : void
      {
         this.§9!7§ = true;
         this.§@L§ = param1;
         this.§?"A§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §""_§(param1:int) : void
      {
         this.§9!7§ = true;
         this.§@L§ = param1;
         this.§%"C§ = 0;
         this.§1"7§ = 0;
         this.§?"A§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §=y§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §4"f§() : Boolean
      {
         return this.§2V§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§2V§ = true;
         this.initializeGame();
         §0"C§.§!6§.§1!6§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§<!J§.§1t§ != null)
         {
            §<!J§.§1t§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§%#&§().isGenericState())
         {
            if(_loc2_ == §1" §.§,!R§)
            {
               §`0§(§%#&§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §8!Q§;
      }
      
      override public function getAppHeight() : Number
      {
         return §,e§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §2!F§;
      }
      
      protected function § i§() : String
      {
         return "ThemeMusic";
      }
      
      public function playThemeMusic() : void
      {
         if(§=Q§.§+1§("Channel_Theme") == null || !§=Q§.§+1§("Channel_Theme").§["z§())
         {
            §=Q§.§`!A§(this.§ i§(),"Channel_Theme",999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         §=Q§.§&"=§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §%L§;
      }
      
      protected function loadItems() : void
      {
         this.§7W§.loadItems(this.§+!h§());
      }
      
      protected function loadBackgrounds() : void
      {
         this.§+!X§.§+!G§(this.§[#-§().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.loadBackgrounds();
         §<!J§.§-" §(this.§&"a§.§4!K§,this.onGraphicsInitialized);
      }
      
      protected function §[#-§() : XML
      {
         return §]"9§.§#§(§2!W§);
      }
      
      protected function §+!h§() : XML
      {
         return §]"9§.§#§(§>#§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §+t§ = true;
         §`0§(§<'§.§-!U§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§?"A§)
         {
            ++this.§%"C§;
         }
         if(!§6!R§.§^!j§())
         {
            return;
         }
         if(this.§9!7§)
         {
            this.resize();
            this.§9!7§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §!"3§;
            _loc3_ = §9"2§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §!"3§ == _loc2_ && §9"2§ == _loc3_)
         {
            return false;
         }
         §!"3§ = _loc2_;
         §9"2§ = _loc3_;
         this.resizeViews(§!"3§,§9"2§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §<!J§.§3!a§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§?"Q§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §6!h§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
