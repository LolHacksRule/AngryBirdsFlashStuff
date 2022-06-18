package
{
   import § if§.§2q§;
   import §#]§.§'5§;
   import §#]§.§,!1§;
   import §&@§.§;d§;
   import §4y§.§"s§;
   import §4y§.§9%§;
   import §88§.§!G§;
   import §88§.§&T§;
   import §88§.§'!;§;
   import §88§.§'W§;
   import §88§.§5z§;
   import §88§.§7!A§;
   import §88§.§7P§;
   import §88§.§9X§;
   import §88§.§>%§;
   import §88§.§@_§;
   import §88§.StateCutScene;
   import §88§.StatePlay;
   import §88§.§`!J§;
   import §8T§.§@o§;
   import §9!#§.§5y§;
   import §9!?§.§9!7§;
   import §;'§.§?!D§;
   import §<!M§.§[i§;
   import §<L§.§]!"§;
   import §=2§.§6z§;
   import §?!8§.§2>§;
   import §?!8§.§7X§;
   import §?!8§.§87§;
   import §??§.§5!@§;
   import §@q§.§6;§;
   import com.rovio.assets.§#u§;
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
   
   public class AngryBirdsFP11 extends §9%§
   {
      
      protected static var §`&§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §'!?§:String;
      
      public static var §+H§:String;
      
      public static const §@!0§:int = 1024;
      
      public static const §2!M§:int = 768;
      
      public static const §7!!§:Boolean = false;
      
      public static const §]M§:int = 2000;
      
      public static const §#6§:Boolean = false;
      
      private static const §,c§:int = 750;
      
      private static const §"1§:int = 3;
      
      private static const §3!E§:int = 15;
      
      protected static var §&G§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §-I§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §2!J§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §8!8§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§9!7§ = null;
      
      public static var §[;§:Boolean = true;
      
      private static var §3!2§:AngryBirdsFP11 = null;
      
      public static var §!! §:Sprite = null;
      
      public static var §6!8§:§,!1§;
      
      public static var §<!!§:Boolean = false;
      
      protected static var §1#§:int = 0;
      
      protected static var §%y§:int = 0;
       
      
      private var §break§:§]!"§;
      
      private var §<'§:int;
      
      private var §7C§:Boolean;
      
      private var §8!M§:int;
      
      private var §>a§:int;
      
      protected var §&!6§:Boolean;
      
      public function AngryBirdsFP11(param1:§"s§)
      {
         this.§break§ = new §]!"§();
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
         return §1#§;
      }
      
      public static function get stageHeight() : int
      {
         return §%y§;
      }
      
      public static function §;1§(param1:Boolean) : void
      {
         §[;§ = param1;
         §@o§.§ l§(§[;§);
      }
      
      public static function §[!0§() : Boolean
      {
         return §[;§;
      }
      
      public static function get screenWidth() : int
      {
         return §^!<§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §^!<§.getAppHeight();
      }
      
      public static function §7E§() : void
      {
         if(§@o§.§[W§("Channel_Theme") == null || !§@o§.§[W§("Channel_Theme").§8f§())
         {
            §@o§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §0!0§() : void
      {
         §@o§.§>!9§("Channel_Theme");
      }
      
      public static function get §^!<§() : AngryBirdsFP11
      {
         return §3!2§;
      }
      
      protected function getAssetMap() : XML
      {
         return §87§.§2R§(§-I§);
      }
      
      protected function getUIData() : XML
      {
         return §87§.§2R§(§&G§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §;d§.§&e§.init(§6z§.§<F§(),this.§,§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§break§,this.§2b§);
         §3!2§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §3k§ = screenWidth;
         §6S§ = screenHeight;
         §'5§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §'5§.§#!>§.visible = false;
         §2>§.§%i§(§3v§);
         §2>§.§3X§(true);
         var _loc1_:XMLList = §87§.§2R§(§`&§).children();
         §#u§.init(_loc1_);
         §@o§.§1+§("CHANNEL_THEME",1,1);
         §@o§.§1+§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§7Y§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §6!8§ = new §,!1§(stage);
         §6;§.§&e§.§#!2§ = !§7!!§;
      }
      
      protected function §,§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         §'5§.§^;§ = new §?!D§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §9!7§(§+H§);
      }
      
      protected function initStates() : void
      {
         §01§(new §>%§(false));
         §01§(new §`!J§(false));
         §01§(new §'W§(false));
         §01§(new §@_§(false));
         §01§(new §!G§(false));
         §01§(new StatePlay(false));
         §01§(new §7!A§(false));
         §01§(new §9X§(false));
         §01§(new §'!;§(false));
         §01§(new §5z§(false));
         §01§(new §&T§(false));
         §01§(new StateCutScene(false));
         §01§(new §7P§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §2b§(param1:ByteArray) : void
      {
      }
      
      protected function §7Y§(param1:Event) : void
      {
         §7X§.§ !6§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §7X§.§-t§();
         if(this.§7C§)
         {
            ++this.§>a§;
            if(this.§>a§ > §3!E§)
            {
               this.§7C§ = false;
               if(this.§8!M§ < §"1§)
               {
                  this.§3+§(this.§<'§);
               }
            }
         }
      }
      
      public function §#L§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         this.§&!6§ = true;
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §1#§;
            _loc3_ = §%y§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §1#§ == _loc2_ && §%y§ == _loc3_)
         {
            return false;
         }
         §1#§ = _loc2_;
         §%y§ = _loc3_;
         this.§]!$§(§1#§,§%y§);
         return true;
      }
      
      protected function §]!$§(param1:int, param2:int) : void
      {
         §'5§.§0N§(0,0,param1,param2);
         setViewSize(param1,param2);
      }
      
      public function §;3§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§<'§ > §,c§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§3+§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§?b§(_loc1_);
            }
         }
      }
      
      public function §>B§() : void
      {
         this.§3+§(0);
      }
      
      public function §="§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §3+§(param1:int) : void
      {
         this.§&!6§ = true;
         this.§<'§ = param1;
         this.§7C§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §?b§(param1:int) : void
      {
         this.§&!6§ = true;
         this.§<'§ = param1;
         this.§8!M§ = 0;
         this.§>a§ = 0;
         this.§7C§ = true;
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
         §;d§.§&e§.§]$§();
         §[i§.§3H§(JSON.parse(this.§break§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§'5§.§#!>§ != null)
         {
            §'5§.§#!>§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§?I§().isGenericState())
         {
            if(_loc2_ == §2q§.STATE_STATUS_COMPLETED)
            {
               §2>§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §?I§().mName + " New State = " + §?I§().mNextState);
               §`m§(§?I§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §@!0§;
      }
      
      override public function getAppHeight() : Number
      {
         return §2!M§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §]M§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §'!?§;
      }
      
      protected function initializeGame() : void
      {
         §'5§.§`n§(this.getItemData(),this.getLevelBackgrounds());
         §'5§.§&K§(this.§break§.§^I§,§5y§.§#!C§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §87§.§2R§(§8!8§);
      }
      
      protected function getItemData() : XML
      {
         return §87§.§2R§(§2!J§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §<!!§ = true;
         if(§#6§)
         {
            §`m§(§>%§.§&! §);
         }
         else
         {
            §`m§(§'W§.§&! §);
         }
      }
      
      public function §!o§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§7C§)
         {
            ++this.§8!M§;
         }
         if(!§5!@§.§;_§())
         {
            return;
         }
         if(this.§&!6§)
         {
            this.resize();
            this.§&!6§ = false;
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
