package
{
   import §"!>§.§=n§;
   import §"!>§.§=r§;
   import §#;§.§4!8§;
   import §,!§.§>N§;
   import §,u§.§8A§;
   import §-p§.§ §;
   import §-p§.§&2§;
   import §-p§.§5<§;
   import §1G§.§`U§;
   import §3!A§.§9!0§;
   import §7^§.§4Q§;
   import §8!G§.§-Z§;
   import §;%§.§8o§;
   import §;=§.§>!2§;
   import §=0§.§ !2§;
   import §=0§.§%!$§;
   import §=0§.§+^§;
   import §=0§.§,!'§;
   import §=0§.§,y§;
   import §=0§.§-v§;
   import §=0§.§20§;
   import §=0§.§33§;
   import §=0§.§;v§;
   import §=0§.StateCutScene;
   import §=0§.StatePlay;
   import §=0§.§[!$§;
   import §=0§.§^!>§;
   import §?u§.§]q§;
   import §^V§.§;n§;
   import §`t§.§ !=§;
   import §`t§.§^?§;
   import com.rovio.assets.§5;§;
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
   
   public class AngryBirdsFP11 extends §=r§
   {
      
      protected static var §5,§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §1K§:String;
      
      public static var §'a§:String;
      
      public static const §7i§:int = 1024;
      
      public static const §3[§:int = 768;
      
      public static const §8!=§:Boolean = false;
      
      public static const §<!>§:int = 2000;
      
      public static const §true§:Boolean = false;
      
      private static const §3L§:int = 750;
      
      private static const §+B§:int = 3;
      
      private static const §'v§:int = 15;
      
      protected static var §?^§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §!!9§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §&!A§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §,o§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§]q§ = null;
      
      public static var §1!&§:Boolean = true;
      
      private static var §1$§:AngryBirdsFP11 = null;
      
      public static var §]n§:Sprite = null;
      
      public static var §+!0§:§ !=§;
      
      public static var §6!C§:Boolean = false;
      
      protected static var §%7§:int = 0;
      
      protected static var §85§:int = 0;
       
      
      private var §#!;§:§4Q§;
      
      private var §+W§:int;
      
      private var §9i§:Boolean;
      
      private var §5M§:int;
      
      private var §#!2§:int;
      
      protected var §8!J§:Boolean;
      
      public function AngryBirdsFP11(param1:§=n§)
      {
         this.§#!;§ = new §4Q§();
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
         return §%7§;
      }
      
      public static function get stageHeight() : int
      {
         return §85§;
      }
      
      public static function §^!4§(param1:Boolean) : void
      {
         §1!&§ = param1;
         §9!0§.§[F§(§1!&§);
      }
      
      public static function §7H§() : Boolean
      {
         return §1!&§;
      }
      
      public static function get screenWidth() : int
      {
         return §5W§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §5W§.getAppHeight();
      }
      
      public static function §`!@§() : void
      {
         if(§9!0§.§"&§("Channel_Theme") == null || !§9!0§.§"&§("Channel_Theme").§-D§())
         {
            §9!0§.§-! §("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §[&§() : void
      {
         §9!0§.§5!'§("Channel_Theme");
      }
      
      public static function get §5W§() : AngryBirdsFP11
      {
         return §1$§;
      }
      
      protected function getAssetMap() : XML
      {
         return § §.§]Y§(§!!9§);
      }
      
      protected function getUIData() : XML
      {
         return § §.§]Y§(§?^§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §>N§.§72§.init(§8A§.§-8§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§#!;§,this.§;!;§);
         §1$§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §3H§ = screenWidth;
         §`!E§ = screenHeight;
         §^?§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §^?§.§0b§.visible = false;
         §&2§.§ !6§(§1!0§);
         §&2§.§8-§(true);
         var _loc1_:XMLList = § §.§]Y§(§5,§).children();
         §5;§.init(_loc1_);
         §9!0§.§;U§("CHANNEL_THEME",1,1);
         §9!0§.§;U§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§#T§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §+!0§ = new § !=§(stage);
         §>!2§.§72§.§=j§ = !§8!=§;
      }
      
      protected function initLevelMain() : void
      {
         §^?§.§]!%§ = new §4!8§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §]q§(§'a§);
      }
      
      protected function initStates() : void
      {
         §%p§(new §,y§(false));
         §%p§(new § !2§(false));
         §%p§(new §[!$§(false));
         §%p§(new §20§(false));
         §%p§(new §33§(false));
         §%p§(new StatePlay(false));
         §%p§(new §-v§(false));
         §%p§(new §,!'§(false));
         §%p§(new §;v§(false));
         §%p§(new §+^§(false));
         §%p§(new §^!>§(false));
         §%p§(new StateCutScene(false));
         §%p§(new §%!$§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §;!;§(param1:ByteArray) : void
      {
      }
      
      protected function §#T§(param1:Event) : void
      {
         §5<§.§4p§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §5<§.§]!$§();
         if(this.§9i§)
         {
            ++this.§#!2§;
            if(this.§#!2§ > §'v§)
            {
               this.§9i§ = false;
               if(this.§5M§ < §+B§)
               {
                  this.§3!0§(this.§+W§);
               }
            }
         }
      }
      
      public function §=O§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§8!J§)
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
         §^?§.§#!0§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §%7§ = stage.stageWidth;
         §85§ = stage.stageHeight;
      }
      
      public function §^!@§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§+W§ > §3L§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§3!0§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§>!!§(_loc1_);
            }
         }
      }
      
      public function §#!§() : void
      {
         this.§3!0§(0);
      }
      
      public function §1t§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §3!0§(param1:int) : void
      {
         this.§8!J§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§+W§ = param1;
         this.§9i§ = false;
      }
      
      private function §>!!§(param1:int) : void
      {
         this.§8!J§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§+W§ = param1;
         this.§5M§ = 0;
         this.§#!2§ = 0;
         this.§9i§ = true;
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
         §>N§.§72§.§?%§();
         §-Z§.§[§(JSON.parse(this.§#!;§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§^?§.§0b§ != null)
         {
            §^?§.§0b§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§%!>§().isGenericState())
         {
            if(_loc2_ == §`U§.STATE_STATUS_COMPLETED)
            {
               §&2§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §%!>§().mName + " New State = " + §%!>§().mNextState);
               §>A§(§%!>§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §7i§;
      }
      
      override public function getAppHeight() : Number
      {
         return §3[§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §<!>§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §1K§;
      }
      
      protected function initializeGame() : void
      {
         §^?§.§,!-§(this.getItemData(),this.getLevelBackgrounds());
         §^?§.§00§(this.§#!;§.§+f§,§;n§.§2K§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return § §.§]Y§(§,o§);
      }
      
      protected function getItemData() : XML
      {
         return § §.§]Y§(§&!A§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §6!C§ = true;
         if(§true§)
         {
            §>A§(§,y§.§?1§);
         }
         else
         {
            §>A§(§[!$§.§?1§);
         }
      }
      
      public function §&k§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§9i§)
         {
            ++this.§5M§;
         }
         if(!§8o§.§2i§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§8!J§)
         {
            this.§8!J§ = false;
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
