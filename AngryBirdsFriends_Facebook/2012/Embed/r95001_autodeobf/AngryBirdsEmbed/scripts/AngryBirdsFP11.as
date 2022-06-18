package
{
   import § "§.§8!3§;
   import §!T§.§2!!§;
   import §0M§.§@2§;
   import §0m§.§1!,§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §10§.§>c§;
   import §9!2§.§7N§;
   import §9!?§.§^]§;
   import §9H§.§-!7§;
   import §9H§.§@M§;
   import §9H§.§`j§;
   import §@!%§.§!!'§;
   import §@!%§.§0&§;
   import §@!%§.§2!"§;
   import §@!%§.§4P§;
   import §@!%§.§5c§;
   import §@!%§.§6a§;
   import §@!%§.§9B§;
   import §@!%§.§9d§;
   import §@!%§.§=z§;
   import §@!%§.§>X§;
   import §@!%§.StateCutScene;
   import §@!%§.StatePlay;
   import §@!%§.§]V§;
   import §[!&§.§42§;
   import §[!&§.§[R§;
   import §]5§.§,G§;
   import §^@§.§%!?§;
   import §`X§.§%!5§;
   import com.rovio.assets.§#m§;
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
   import §null §.§;i§;
   
   public class AngryBirdsFP11 extends §42§
   {
      
      protected static var §?!#§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §-,§:String;
      
      public static var §'B§:String;
      
      public static const §each §:int = 1024;
      
      public static const §81§:int = 768;
      
      public static const §,!%§:Boolean = false;
      
      public static const §;!'§:int = 2000;
      
      public static const §3`§:Boolean = false;
      
      private static const §8!§:int = 750;
      
      private static const § Q§:int = 3;
      
      private static const §,P§:int = 15;
      
      protected static var §-+§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §1!3§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §^D§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §[!=§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§%!?§ = null;
      
      public static var §6'§:Boolean = true;
      
      private static var §]z§:AngryBirdsFP11 = null;
      
      public static var §>x§:Sprite = null;
      
      public static var §#3§:§>c§;
      
      public static var §#!E§:Boolean = false;
      
      protected static var §#!8§:int = 0;
      
      protected static var §3p§:int = 0;
       
      
      private var §!E§:§@2§;
      
      private var §4<§:int;
      
      private var §3§:Boolean;
      
      private var §;!A§:int;
      
      private var §'g§:int;
      
      protected var §<!4§:Boolean;
      
      public function AngryBirdsFP11(param1:§[R§)
      {
         this.§!E§ = new §@2§();
         §-,§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §'B§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§,!%§ ? "http://head-dot-angrybirds-facebook-dev.appspot.com" : "http://angrybirds-facebook-dev.appspot.com");
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
         return §#!8§;
      }
      
      public static function get stageHeight() : int
      {
         return §3p§;
      }
      
      public static function §@d§(param1:Boolean) : void
      {
         §6'§ = param1;
         §7_§.§=!2§(§6'§);
      }
      
      public static function §>!6§() : Boolean
      {
         return §6'§;
      }
      
      public static function get screenWidth() : int
      {
         return §?,§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §?,§.getAppHeight();
      }
      
      public static function §7!0§() : void
      {
         if(§7_§.§4l§("Channel_Theme") == null || !§7_§.§4l§("Channel_Theme").§,N§())
         {
            §7_§.§4!5§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §5!4§() : void
      {
         §7_§.§!4§("Channel_Theme");
      }
      
      public static function get §?,§() : AngryBirdsFP11
      {
         return §]z§;
      }
      
      protected function getAssetMap() : XML
      {
         return §`j§.§]!#§(§1!3§);
      }
      
      protected function getUIData() : XML
      {
         return §`j§.§]!#§(§-+§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §;i§.§+S§.init(§%!5§.§!&§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§!E§,this.§^2§);
         §]z§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §+D§ = screenWidth;
         §4c§ = screenHeight;
         §#!4§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §#!4§.§ try§.visible = false;
         §@M§.§+!E§(§<!E§);
         §@M§.§@K§(true);
         var _loc1_:XMLList = §`j§.§]!#§(§?!#§).children();
         §#m§.init(_loc1_);
         §7_§.§#I§("CHANNEL_THEME",1,1);
         §7_§.§#I§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§ #§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §#3§ = new §>c§(stage);
         §,G§.§+S§.§>!;§ = !§,!%§;
      }
      
      protected function initLevelMain() : void
      {
         §#!4§.§^Y§ = new §^]§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §%!?§(§'B§);
      }
      
      protected function initStates() : void
      {
         §!a§(new §>X§(false));
         §!a§(new §2!"§(false));
         §!a§(new §4P§(false));
         §!a§(new §9d§(false));
         §!a§(new §]V§(false));
         §!a§(new StatePlay(false));
         §!a§(new §9B§(false));
         §!a§(new §=z§(false));
         §!a§(new §0&§(false));
         §!a§(new §!!'§(false));
         §!a§(new §5c§(false));
         §!a§(new StateCutScene(false));
         §!a§(new §6a§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §^2§(param1:ByteArray) : void
      {
      }
      
      protected function § #§(param1:Event) : void
      {
         §-!7§.§+^§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §-!7§.§4!;§();
         if(this.§3§)
         {
            ++this.§'g§;
            if(this.§'g§ > §,P§)
            {
               this.§3§ = false;
               if(this.§;!A§ < § Q§)
               {
                  this.§[U§(this.§4<§);
               }
            }
         }
      }
      
      public function §7!D§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§<!4§)
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
         §#!4§.§=h§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §#!8§ = stage.stageWidth;
         §3p§ = stage.stageHeight;
      }
      
      public function §do§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§4<§ > §8!§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§[U§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§[!9§(_loc1_);
            }
         }
      }
      
      public function § $§() : void
      {
         this.§[U§(0);
      }
      
      public function §]P§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §[U§(param1:int) : void
      {
         this.§<!4§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§4<§ = param1;
         this.§3§ = false;
      }
      
      private function §[!9§(param1:int) : void
      {
         this.§<!4§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§4<§ = param1;
         this.§;!A§ = 0;
         this.§'g§ = 0;
         this.§3§ = true;
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
         §;i§.§+S§.§'5§();
         §8!3§.§6y§(JSON.parse(this.§!E§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§#!4§.§ try§ != null)
         {
            §#!4§.§ try§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§^b§().isGenericState())
         {
            if(_loc2_ == §1!,§.STATE_STATUS_COMPLETED)
            {
               §@M§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §^b§().mName + " New State = " + §^b§().mNextState);
               §case§(§^b§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §each §;
      }
      
      override public function getAppHeight() : Number
      {
         return §81§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §;!'§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §-,§;
      }
      
      protected function initializeGame() : void
      {
         §#!4§.§6!&§(this.getItemData(),this.getLevelBackgrounds());
         §#!4§.§@^§(this.§!E§.§3!D§,§2!!§.§ !+§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §`j§.§]!#§(§[!=§);
      }
      
      protected function getItemData() : XML
      {
         return §`j§.§]!#§(§^D§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §#!E§ = true;
         if(§3`§)
         {
            §case§(§>X§.§5%§);
         }
         else
         {
            §case§(§4P§.§5%§);
         }
      }
      
      public function §<0§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§3§)
         {
            ++this.§;!A§;
         }
         if(!§7N§.§&Z§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§<!4§)
         {
            this.§<!4§ = false;
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
