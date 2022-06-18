package
{
   import §"V§.§true§;
   import §%Z§.§1y§;
   import §&I§.§3! §;
   import §+!%§.§'!"§;
   import §,Y§.§32§;
   import §-l§.§6!1§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §2!,§.§!W§;
   import §2!,§.§,`§;
   import §2x§.§'!@§;
   import §2x§.§'m§;
   import §2x§.§9!@§;
   import §9S§.§!!§;
   import §<!@§.§!P§;
   import §?!%§.§?!7§;
   import §?7§.§%o§;
   import §?7§.§&M§;
   import §?7§.§'!6§;
   import §?7§.§'!=§;
   import §?7§.§+A§;
   import §?7§.§,]§;
   import §?7§.§8!6§;
   import §?7§.§<!D§;
   import §?7§.§@!-§;
   import §?7§.StateCutScene;
   import §?7§.StatePlay;
   import §?7§.§[!B§;
   import §?7§.§^K§;
   import §^<§.§`p§;
   import com.rovio.assets.§&3§;
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
   import get.§^F§;
   
   public class AngryBirdsFP11 extends §!W§
   {
      
      protected static var §!n§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §%!=§:String;
      
      public static var §-!8§:String;
      
      public static const §?t§:int = 1024;
      
      public static const §,!,§:int = 768;
      
      public static const §!k§:Boolean = false;
      
      public static const §="§:int = 2000;
      
      public static const §'T§:Boolean = false;
      
      private static const §]!,§:int = 750;
      
      private static const §73§:int = 3;
      
      private static const §,!3§:int = 15;
      
      protected static var §'%§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §#E§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §^_§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §3=§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§^F§ = null;
      
      public static var §for§:Boolean = true;
      
      private static var §-W§:AngryBirdsFP11 = null;
      
      public static var §,§:Sprite = null;
      
      public static var §+R§:§6!1§;
      
      public static var §5f§:Boolean = false;
      
      protected static var §9-§:int = 0;
      
      protected static var §]!;§:int = 0;
       
      
      private var §=`§:§1y§;
      
      private var §1!&§:int;
      
      private var §6%§:Boolean;
      
      private var §6j§:int;
      
      private var §9!C§:int;
      
      protected var §0y§:Boolean;
      
      public function AngryBirdsFP11(param1:§,`§)
      {
         this.§=`§ = new §1y§();
         §%!=§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §-!8§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§!k§ ? "http://head-dot-angrybirds-facebook-dev.appspot.com" : "http://angrybirds-facebook-dev.appspot.com");
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
         return §9-§;
      }
      
      public static function get stageHeight() : int
      {
         return §]!;§;
      }
      
      public static function §5M§(param1:Boolean) : void
      {
         §for§ = param1;
         §;!>§.§`i§(§for§);
      }
      
      public static function §,!+§() : Boolean
      {
         return §for§;
      }
      
      public static function get screenWidth() : int
      {
         return § for§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return § for§.getAppHeight();
      }
      
      public static function §91§() : void
      {
         if(§;!>§.§5!4§("Channel_Theme") == null || !§;!>§.§5!4§("Channel_Theme").§4I§())
         {
            §;!>§.§>t§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §7!@§() : void
      {
         §;!>§.§8!"§("Channel_Theme");
      }
      
      public static function get § for§() : AngryBirdsFP11
      {
         return §-W§;
      }
      
      protected function getAssetMap() : XML
      {
         return §'m§.§-!;§(§#E§);
      }
      
      protected function getUIData() : XML
      {
         return §'m§.§-!;§(§'%§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §!!§.§^7§.init(§`p§.§8Y§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§=`§,this.§#F§);
         §-W§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §7q§ = screenWidth;
         §`R§ = screenHeight;
         §?'§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §?'§.§,!B§.visible = false;
         §'!@§.§68§(§`!>§);
         §'!@§.§<<§(true);
         var _loc1_:XMLList = §'m§.§-!;§(§!n§).children();
         §&3§.init(_loc1_);
         §;!>§.§]t§("CHANNEL_THEME",1,1);
         §;!>§.§]t§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§1_§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §+R§ = new §6!1§(stage);
         §?!7§.§^7§.§01§ = !§!k§;
      }
      
      protected function initLevelMain() : void
      {
         §?'§.§5!§ = new §'!"§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §^F§(§-!8§);
      }
      
      protected function initStates() : void
      {
         §8w§(new §+A§(false));
         §8w§(new §'!6§(false));
         §8w§(new §&M§(false));
         §8w§(new §'!=§(false));
         §8w§(new §<!D§(false));
         §8w§(new StatePlay(false));
         §8w§(new §,]§(false));
         §8w§(new §@!-§(false));
         §8w§(new §[!B§(false));
         §8w§(new §^K§(false));
         §8w§(new §8!6§(false));
         §8w§(new StateCutScene(false));
         §8w§(new §%o§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §#F§(param1:ByteArray) : void
      {
      }
      
      protected function §1_§(param1:Event) : void
      {
         §9!@§.§0n§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §9!@§.§[S§();
         if(this.§6%§)
         {
            ++this.§9!C§;
            if(this.§9!C§ > §,!3§)
            {
               this.§6%§ = false;
               if(this.§6j§ < §73§)
               {
                  this.§;g§(this.§1!&§);
               }
            }
         }
      }
      
      public function §@a§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§0y§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / screenWidth;
         var _loc3_:Number = stage.stageHeight / screenHeight;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (screenHeight / screenWidth);
         }
         else
         {
            _loc4_ = stage.stageHeight * (screenWidth / screenHeight);
            _loc5_ = stage.stageHeight;
         }
         §?'§.§<C§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §9-§ = stage.stageWidth;
         §]!;§ = stage.stageHeight;
      }
      
      public function §>§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§1!&§ > §]!,§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§;g§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§]]§(_loc1_);
            }
         }
      }
      
      public function §?M§() : void
      {
         this.§;g§(0);
      }
      
      public function §%y§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §;g§(param1:int) : void
      {
         this.§0y§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§1!&§ = param1;
         this.§6%§ = false;
      }
      
      private function §]]§(param1:int) : void
      {
         this.§0y§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§1!&§ = param1;
         this.§6j§ = 0;
         this.§9!C§ = 0;
         this.§6%§ = true;
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
         §!!§.§^7§.§+b§();
         §!P§.§2j§(JSON.parse(this.§=`§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§?'§.§,!B§ != null)
         {
            §?'§.§,!B§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§&!5§().isGenericState())
         {
            if(_loc2_ == §true§.STATE_STATUS_COMPLETED)
            {
               §'!@§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §&!5§().mName + " New State = " + §&!5§().mNextState);
               §]I§(§&!5§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §?t§;
      }
      
      override public function getAppHeight() : Number
      {
         return §,!,§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §="§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §%!=§;
      }
      
      protected function initializeGame() : void
      {
         §?'§.§#u§(this.getItemData(),this.getLevelBackgrounds());
         §?'§.§#!?§(this.§=`§.§2o§,§32§.§5C§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §'m§.§-!;§(§3=§);
      }
      
      protected function getItemData() : XML
      {
         return §'m§.§-!;§(§^_§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §5f§ = true;
         if(§'T§)
         {
            §]I§(§+A§.§4!&§);
         }
         else
         {
            §]I§(§&M§.§4!&§);
         }
      }
      
      public function §6§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§6%§)
         {
            ++this.§6j§;
         }
         if(!§3! §.§=!&§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§0y§)
         {
            this.§0y§ = false;
         }
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
