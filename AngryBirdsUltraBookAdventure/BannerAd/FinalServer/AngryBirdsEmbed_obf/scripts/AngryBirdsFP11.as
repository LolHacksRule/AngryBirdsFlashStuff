package
{
   import §"!&§.§#!,§;
   import §#!;§.§;T§;
   import §#'§.§'Q§;
   import §#'§.§0X§;
   import §+!"§.§5!<§;
   import §+!"§.§=L§;
   import §+!"§.§@P§;
   import §+?§.§03§;
   import §3[§.§<,§;
   import §5H§.§[k§;
   import §5H§.§]w§;
   import §6J§.§5j§;
   import §7!0§.§9!0§;
   import §9>§.§"!C§;
   import §;z§.§%"§;
   import §>!A§.§!!=§;
   import §>!A§.§"'§;
   import §>!A§.§"8§;
   import §>!A§.§'!?§;
   import §>!A§.§,w§;
   import §>!A§.§3!G§;
   import §>!A§.§5O§;
   import §>!A§.§=g§;
   import §>!A§.§>8§;
   import §>!A§.§?K§;
   import §>!A§.StateCutScene;
   import §>!A§.StatePlay;
   import §>!A§.§^q§;
   import §?b§.§7!,§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import com.rovio.assets.§@@§;
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
   
   public class AngryBirdsFP11 extends §0X§
   {
      
      protected static var §"5§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §<U§:String;
      
      public static var §+u§:String;
      
      public static const §>§:int = 1024;
      
      public static const §%i§:int = 768;
      
      public static const §,#§:Boolean = false;
      
      public static const §5!5§:int = 2000;
      
      public static const §<i§:Boolean = false;
      
      private static const §?O§:int = 750;
      
      private static const §5!+§:int = 3;
      
      private static const §6a§:int = 15;
      
      protected static var §^V§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §2"§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §1!5§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §<P§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§<,§ = null;
      
      public static var §-!7§:Boolean = true;
      
      private static var §[G§:AngryBirdsFP11 = null;
      
      public static var §^!=§:Sprite = null;
      
      public static var §]9§:§]w§;
      
      public static var §'^§:Boolean = false;
      
      protected static var §>D§:int = 0;
      
      protected static var §1!4§:int = 0;
       
      
      private var §5"§:§%"§;
      
      private var §;"§:int;
      
      private var §<!?§:Boolean;
      
      private var §[!$§:int;
      
      private var §2X§:int;
      
      protected var §&N§:Boolean;
      
      public function AngryBirdsFP11(param1:§'Q§)
      {
         this.§5"§ = new §%"§();
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
         return §>D§;
      }
      
      public static function get stageHeight() : int
      {
         return §1!4§;
      }
      
      public static function §4C§(param1:Boolean) : void
      {
         §-!7§ = param1;
         §6I§.§3Y§(§-!7§);
      }
      
      public static function §,`§() : Boolean
      {
         return §-!7§;
      }
      
      public static function get screenWidth() : int
      {
         return §,s§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §,s§.getAppHeight();
      }
      
      public static function §<!#§() : void
      {
         if(§6I§.§3t§("Channel_Theme") == null || !§6I§.§3t§("Channel_Theme").§^[§())
         {
            §6I§.§ ;§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §'i§() : void
      {
         §6I§.§9w§("Channel_Theme");
      }
      
      public static function get §,s§() : AngryBirdsFP11
      {
         return §[G§;
      }
      
      protected function getAssetMap() : XML
      {
         return §=L§.§!#§(§2"§);
      }
      
      protected function getUIData() : XML
      {
         return §=L§.§!#§(§^V§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §"!C§.§^n§.init(§03§.§3!-§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§5"§,this.§8_§);
         §[G§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §>p§ = screenWidth;
         §76§ = screenHeight;
         §[k§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §[k§.§+S§.visible = false;
         §5!<§.§'Z§(§7P§);
         §5!<§.§ Z§(true);
         var _loc1_:XMLList = §=L§.§!#§(§"5§).children();
         §@@§.init(_loc1_);
         §6I§.§"!'§("CHANNEL_THEME",1,1);
         §6I§.§"!'§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§7-§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §]9§ = new §]w§(stage);
         §,B§.§^n§.§-Q§ = !§,#§;
      }
      
      protected function initLevelMain() : void
      {
         §[k§.§&@§ = new §7!,§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §<,§(§+u§);
      }
      
      protected function initStates() : void
      {
         §^'§(new §'!?§(false));
         §^'§(new §,w§(false));
         §^'§(new §!!=§(false));
         §^'§(new §^q§(false));
         §^'§(new §5O§(false));
         §^'§(new StatePlay(false));
         §^'§(new §?K§(false));
         §^'§(new §"'§(false));
         §^'§(new §"8§(false));
         §^'§(new §>8§(false));
         §^'§(new §=g§(false));
         §^'§(new StateCutScene(false));
         §^'§(new §3!G§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §8_§(param1:ByteArray) : void
      {
      }
      
      protected function §7-§(param1:Event) : void
      {
         §@P§.§62§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §@P§.§]T§();
         if(this.§<!?§)
         {
            ++this.§2X§;
            if(this.§2X§ > §6a§)
            {
               this.§<!?§ = false;
               if(this.§[!$§ < §5!+§)
               {
                  this.§0!<§(this.§;"§);
               }
            }
         }
      }
      
      public function §0`§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§&N§)
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
         §[k§.§%e§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §>D§ = stage.stageWidth;
         §1!4§ = stage.stageHeight;
      }
      
      public function §8!1§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§;"§ > §?O§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§0!<§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§5v§(_loc1_);
            }
         }
      }
      
      public function §2'§() : void
      {
         this.§0!<§(0);
      }
      
      public function §9!,§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §0!<§(param1:int) : void
      {
         this.§&N§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§;"§ = param1;
         this.§<!?§ = false;
      }
      
      private function §5v§(param1:int) : void
      {
         this.§&N§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§;"§ = param1;
         this.§[!$§ = 0;
         this.§2X§ = 0;
         this.§<!?§ = true;
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
         §"!C§.§^n§.§#e§();
         §5j§.§;I§(JSON.parse(this.§5"§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§[k§.§+S§ != null)
         {
            §[k§.§+S§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§8y§().isGenericState())
         {
            if(_loc2_ == §#!,§.STATE_STATUS_COMPLETED)
            {
               §5!<§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §8y§().mName + " New State = " + §8y§().mNextState);
               §'<§(§8y§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §>§;
      }
      
      override public function getAppHeight() : Number
      {
         return §%i§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §5!5§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §<U§;
      }
      
      protected function initializeGame() : void
      {
         §[k§.§2!F§(this.getItemData(),this.getLevelBackgrounds());
         §[k§.§ <§(this.§5"§.§%b§,§9!0§.§]!H§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §=L§.§!#§(§<P§);
      }
      
      protected function getItemData() : XML
      {
         return §=L§.§!#§(§1!5§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §'^§ = true;
         if(§<i§)
         {
            §'<§(§'!?§.§?x§);
         }
         else
         {
            §'<§(§!!=§.§?x§);
         }
      }
      
      public function §0p§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§<!?§)
         {
            ++this.§[!$§;
         }
         if(!§;T§.§>!@§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§&N§)
         {
            this.§&N§ = false;
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
