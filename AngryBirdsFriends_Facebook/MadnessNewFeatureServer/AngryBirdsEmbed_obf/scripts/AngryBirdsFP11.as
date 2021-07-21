package
{
   import § true§.§ k§;
   import § true§.§"!>§;
   import § true§.§&!F§;
   import § true§.§&D§;
   import § true§.§&^§;
   import § true§.§0!§;
   import § true§.§5z§;
   import § true§.§>x§;
   import § true§.§?,§;
   import § true§.StateCutScene;
   import § true§.StatePlay;
   import § true§.§[!B§;
   import § true§.§case §;
   import §!V§.§%Y§;
   import §%! §.§>!<§;
   import §'6§.§?!L§;
   import §'6§.§^^§;
   import §'6§.§^t§;
   import §'9§.§3!§;
   import §+[§.§%G§;
   import §,!,§.§2t§;
   import §2E§.§]B§;
   import §3!$§.§^[§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §>!O§.§^!G§;
   import §?!$§.§%1§;
   import §?!$§.§+!,§;
   import §?j§.§`R§;
   import §`!1§.§-!&§;
   import §`!4§.§6l§;
   import com.rovio.assets.§=!C§;
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
   
   public class AngryBirdsFP11 extends §%1§
   {
      
      protected static var §`S§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §#!4§:String;
      
      public static var §1M§:String;
      
      public static const §'q§:int = 1024;
      
      public static const §0!-§:int = 768;
      
      public static const §^!I§:Boolean = false;
      
      public static const §9a§:int = 2000;
      
      public static const §+!#§:Boolean = false;
      
      private static const §&! §:int = 750;
      
      private static const §2i§:int = 3;
      
      private static const §@V§:int = 15;
      
      protected static var native:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §2"§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §'!J§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §?k§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§%Y§ = null;
      
      public static var §0j§:Boolean = true;
      
      private static var §;C§:AngryBirdsFP11 = null;
      
      public static var §+Q§:Sprite = null;
      
      public static var §>2§:§^!G§;
      
      public static var §7q§:Boolean = false;
      
      protected static var §]H§:int = 0;
      
      protected static var §^!H§:int = 0;
       
      
      private var §<t§:§>!<§;
      
      private var §@!@§:int;
      
      private var §,;§:Boolean;
      
      private var §0k§:int;
      
      private var §]!2§:int;
      
      protected var §?n§:Boolean;
      
      public function AngryBirdsFP11(param1:§+!,§)
      {
         this.§<t§ = new §>!<§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §]H§;
      }
      
      public static function get stageHeight() : int
      {
         return §^!H§;
      }
      
      public static function §-!A§(param1:Boolean) : void
      {
         §0j§ = param1;
         §%G§.§78§(§0j§);
      }
      
      public static function §3!D§() : Boolean
      {
         return §0j§;
      }
      
      public static function get screenWidth() : int
      {
         return §6Z§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §6Z§.getAppHeight();
      }
      
      public static function §&n§() : void
      {
         if(§%G§.§>Q§("Channel_Theme") == null || !§%G§.§>Q§("Channel_Theme").§?d§())
         {
            §%G§.§48§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §]-§() : void
      {
         §%G§.§8e§("Channel_Theme");
      }
      
      public static function get §6Z§() : AngryBirdsFP11
      {
         return §;C§;
      }
      
      protected function getAssetMap() : XML
      {
         return §^^§.§]d§(§2"§);
      }
      
      protected function getUIData() : XML
      {
         return §^^§.§]d§(native);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §3!§.§;R§.init(§^[§.§0§(),this.§'i§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§<t§,this.§<!H§);
         §;C§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §#a§ = screenWidth;
         §5M§ = screenHeight;
         §[+§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §[+§.§!N§.visible = false;
         §?!L§.§>$§(§,Y§);
         §?!L§.§;E§(true);
         var _loc1_:XMLList = §^^§.§]d§(§`S§).children();
         §=!C§.init(_loc1_);
         §%G§.§>,§("CHANNEL_THEME",1,1);
         §%G§.§>,§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§3!&§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §>2§ = new §^!G§(stage);
         §-!&§.§;R§.§<=§ = !§^!I§;
      }
      
      protected function §'i§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         §[+§.§,!&§ = new §6l§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §%Y§(§1M§);
      }
      
      protected function initStates() : void
      {
         §3R§(new §&^§(false));
         §3R§(new §case §(false));
         §3R§(new §?,§(false));
         §3R§(new §&D§(false));
         §3R§(new §&!F§(false));
         §3R§(new StatePlay(false));
         §3R§(new §5z§(false));
         §3R§(new §"!>§(false));
         §3R§(new §[!B§(false));
         §3R§(new §0!§(false));
         §3R§(new § k§(false));
         §3R§(new StateCutScene(false));
         §3R§(new §>x§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §<!H§(param1:ByteArray) : void
      {
      }
      
      protected function §3!&§(param1:Event) : void
      {
         §^t§.§4p§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §^t§.§]! §();
         if(this.§,;§)
         {
            ++this.§]!2§;
            if(this.§]!2§ > §@V§)
            {
               this.§,;§ = false;
               if(this.§0k§ < §2i§)
               {
                  this.§>F§(this.§@!@§);
               }
            }
         }
      }
      
      public function §2!+§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         this.§?n§ = true;
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §]H§;
            _loc3_ = §^!H§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §]H§ == _loc2_ && §^!H§ == _loc3_)
         {
            return false;
         }
         §]H§ = _loc2_;
         §^!H§ = _loc3_;
         this.§&Q§(§]H§,§^!H§);
         return true;
      }
      
      protected function §&Q§(param1:int, param2:int) : void
      {
         §[+§.§@§(0,0,param1,param2);
         setViewSize(param1,param2);
      }
      
      public function §9#§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§@!@§ > §&! §)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§>F§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§2d§(_loc1_);
            }
         }
      }
      
      public function §&=§() : void
      {
         this.§>F§(0);
      }
      
      public function §8!1§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §>F§(param1:int) : void
      {
         this.§?n§ = true;
         this.§@!@§ = param1;
         this.§,;§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §2d§(param1:int) : void
      {
         this.§?n§ = true;
         this.§@!@§ = param1;
         this.§0k§ = 0;
         this.§]!2§ = 0;
         this.§,;§ = true;
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
         §3!§.§;R§.§07§();
         §`R§.§5B§(JSON.parse(this.§<t§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§[+§.§!N§ != null)
         {
            §[+§.§!N§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§`!%§().isGenericState())
         {
            if(_loc2_ == §,!?§.STATE_STATUS_COMPLETED)
            {
               §?!L§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §`!%§().mName + " New State = " + §`!%§().mNextState);
               §#!%§(§`!%§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §'q§;
      }
      
      override public function getAppHeight() : Number
      {
         return §0!-§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §9a§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §#!4§;
      }
      
      protected function initializeGame() : void
      {
         §[+§.§^=§(this.getItemData(),this.getLevelBackgrounds());
         §[+§.§''§(this.§<t§.§5!K§,§]B§.§9j§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §^^§.§]d§(§?k§);
      }
      
      protected function getItemData() : XML
      {
         return §^^§.§]d§(§'!J§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §7q§ = true;
         if(§+!#§)
         {
            §#!%§(§&^§.§`W§);
         }
         else
         {
            §#!%§(§?,§.§`W§);
         }
      }
      
      public function §+!%§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§,;§)
         {
            ++this.§0k§;
         }
         if(!§2t§.§[!K§())
         {
            return;
         }
         if(this.§?n§)
         {
            this.resize();
            this.§?n§ = false;
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
