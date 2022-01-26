package
{
   import §"o§.§ M§;
   import §#!2§.§0T§;
   import §'m§.§%!5§;
   import §'m§.§<7§;
   import §'m§.§^S§;
   import §+N§.§!j§;
   import §,!$§.§[! §;
   import §2!"§.§4!%§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §;j§.§]_§;
   import §=9§.§#!+§;
   import §=9§.§]!B§;
   import §>Z§.§2;§;
   import §?'§.§ 1§;
   import §?'§.§-Y§;
   import §?'§.§0!'§;
   import §?'§.§08§;
   import §?'§.§1N§;
   import §?'§.§1w§;
   import §?'§.§2!!§;
   import §?'§.§8!,§;
   import §?'§.§8m§;
   import §?'§.§<O§;
   import §?'§.StateCutScene;
   import §?'§.StatePlay;
   import §?'§.§`0§;
   import §?[§.§7f§;
   import §@!%§.§+8§;
   import §`!,§.§,O§;
   import §`<§.§,!6§;
   import com.rovio.assets.§`a§;
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
   
   public class AngryBirdsFP11 extends §]!B§
   {
      
      protected static var §,F§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §60§:String;
      
      public static var §3p§:String;
      
      public static const §!!"§:int = 1024;
      
      public static const §2G§:int = 768;
      
      public static const §<! §:Boolean = false;
      
      public static const §-c§:int = 2000;
      
      public static const §`&§:Boolean = false;
      
      private static const §'%§:int = 750;
      
      private static const §=!;§:int = 3;
      
      private static const §<j§:int = 15;
      
      protected static var §>J§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §]!C§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §]-§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §=N§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §[l§:§,O§ = null;
      
      public static var §#3§:Boolean = true;
      
      private static var §^z§:AngryBirdsFP11 = null;
      
      public static var §5!A§:Sprite = null;
      
      public static var §!x§:§]_§;
      
      public static var §4!G§:Boolean = false;
      
      protected static var §implements§:int = 0;
      
      protected static var §'p§:int = 0;
       
      
      private var §-X§:§[! §;
      
      private var §-v§:int;
      
      private var §%s§:Boolean;
      
      private var §<x§:int;
      
      private var §1z§:int;
      
      protected var §=,§:Boolean;
      
      public function AngryBirdsFP11(param1:§#!+§)
      {
         this.§-X§ = new §[! §();
         §60§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §3p§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§<! § ? "http://head-dot-angrybirds-facebook-dev.appspot.com" : "http://angrybirds-facebook-dev.appspot.com");
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
         return §implements§;
      }
      
      public static function get stageHeight() : int
      {
         return §'p§;
      }
      
      public static function §2t§(param1:Boolean) : void
      {
         §#3§ = param1;
         §2;§.§;P§(§#3§);
      }
      
      public static function §"]§() : Boolean
      {
         return §#3§;
      }
      
      public static function get screenWidth() : int
      {
         return §`H§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §`H§.getAppHeight();
      }
      
      public static function §!!9§() : void
      {
         if(§2;§.§1Z§("Channel_Theme") == null || !§2;§.§1Z§("Channel_Theme").§'!,§())
         {
            §2;§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §20§() : void
      {
         §2;§.§%j§("Channel_Theme");
      }
      
      public static function get §`H§() : AngryBirdsFP11
      {
         return §^z§;
      }
      
      protected function getAssetMap() : XML
      {
         return §%!5§.§!]§(§]!C§);
      }
      
      protected function getUIData() : XML
      {
         return §%!5§.§!]§(§>J§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §7f§.§5!B§.init(§0T§.§@!&§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§-X§,this.§<t§);
         §^z§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §^t§ = screenWidth;
         §=4§ = screenHeight;
         §8[§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §8[§.§8!B§.visible = false;
         §^S§.§96§(§9e§);
         §^S§.§=X§(true);
         var _loc1_:XMLList = §%!5§.§!]§(§,F§).children();
         §`a§.init(_loc1_);
         §2;§.§^=§("CHANNEL_THEME",1,1);
         §2;§.§^=§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§<!A§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §!x§ = new §]_§(stage);
         §!j§.§5!B§.§5@§ = !§<! §;
      }
      
      protected function initLevelMain() : void
      {
         §8[§.§import§ = new § M§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §[l§ = new §,O§(§3p§);
      }
      
      protected function initStates() : void
      {
         §0m§(new §8!,§(false));
         §0m§(new §`0§(false));
         §0m§(new § 1§(false));
         §0m§(new §1w§(false));
         §0m§(new §8m§(false));
         §0m§(new StatePlay(false));
         §0m§(new §-Y§(false));
         §0m§(new §<O§(false));
         §0m§(new §1N§(false));
         §0m§(new §08§(false));
         §0m§(new §0!'§(false));
         §0m§(new StateCutScene(false));
         §0m§(new §2!!§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §<t§(param1:ByteArray) : void
      {
      }
      
      protected function §<!A§(param1:Event) : void
      {
         §<7§.§7O§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §<7§.§2'§();
         if(this.§%s§)
         {
            ++this.§1z§;
            if(this.§1z§ > §<j§)
            {
               this.§%s§ = false;
               if(this.§<x§ < §=!;§)
               {
                  this.§^#§(this.§-v§);
               }
            }
         }
      }
      
      public function § F§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§=,§)
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
         §8[§.§93§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §implements§ = stage.stageWidth;
         §'p§ = stage.stageHeight;
      }
      
      public function §>&§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§-v§ > §'%§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§^#§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§&&§(_loc1_);
            }
         }
      }
      
      public function §#g§() : void
      {
         this.§^#§(0);
      }
      
      public function §<r§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §^#§(param1:int) : void
      {
         this.§=,§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§-v§ = param1;
         this.§%s§ = false;
      }
      
      private function §&&§(param1:int) : void
      {
         this.§=,§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§-v§ = param1;
         this.§<x§ = 0;
         this.§1z§ = 0;
         this.§%s§ = true;
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
         §7f§.§5!B§.§?4§();
         §&#§.§1K§(JSON.parse(this.§-X§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§8[§.§8!B§ != null)
         {
            §8[§.§8!B§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§8U§().isGenericState())
         {
            if(_loc2_ == §,!6§.STATE_STATUS_COMPLETED)
            {
               §^S§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §8U§().mName + " New State = " + §8U§().mNextState);
               §"y§(§8U§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §!!"§;
      }
      
      override public function getAppHeight() : Number
      {
         return §2G§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §-c§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §60§;
      }
      
      protected function initializeGame() : void
      {
         §8[§.§^!4§(this.getItemData(),this.getLevelBackgrounds());
         §8[§.§ e§(this.§-X§.§^!%§,§4!%§.§ A§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §%!5§.§!]§(§=N§);
      }
      
      protected function getItemData() : XML
      {
         return §%!5§.§!]§(§]-§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §4!G§ = true;
         if(§`&§)
         {
            §"y§(§8!,§.§`%§);
         }
         else
         {
            §"y§(§ 1§.§`%§);
         }
      }
      
      public function §^v§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§%s§)
         {
            ++this.§<x§;
         }
         if(!§+8§.§#!<§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§=,§)
         {
            this.§=,§ = false;
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
