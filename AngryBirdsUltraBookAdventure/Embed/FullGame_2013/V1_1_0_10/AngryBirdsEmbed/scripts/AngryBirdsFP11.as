package
{
   import § !@§.§ !"§;
   import § !@§.§ q§;
   import § !@§.§&b§;
   import § !@§.§+W§;
   import § !@§.§5!#§;
   import § !@§.§6!@§;
   import § !@§.§7§;
   import § !@§.§8!M§;
   import § !@§.§8A§;
   import § !@§.StateCutScene;
   import § !@§.StatePlay;
   import § !@§.§^!K§;
   import § !@§.§for §;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §+F§.§"o§;
   import §1!-§.§[4§;
   import §3a§.§"X§;
   import §3a§.§'q§;
   import §3a§.§7!+§;
   import §5!L§.§0!L§;
   import §5!L§.§=w§;
   import §6!F§.§9A§;
   import §6A§.§ !§;
   import §7W§.§'!-§;
   import §7g§.§1Q§;
   import §7j§.§5!N§;
   import §7j§.§8P§;
   import §=!0§.§>I§;
   import §?!3§.§`!K§;
   import §^!L§.§6<§;
   import com.rovio.assets.§3!0§;
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
   
   public class AngryBirdsFP11 extends §8P§
   {
      
      protected static var §1!1§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §"!&§:String;
      
      public static var §,A§:String;
      
      public static const §9!#§:int = 1024;
      
      public static const §0i§:int = 768;
      
      public static const §%Z§:Boolean = false;
      
      public static const § n§:int = 2000;
      
      public static const §5p§:Boolean = false;
      
      private static const §6V§:int = 750;
      
      private static const §"#§:int = 3;
      
      private static const §9U§:int = 15;
      
      protected static var §3N§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §6l§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §!<§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §,s§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§`!K§ = null;
      
      public static var §"0§:Boolean = true;
      
      private static var §4!"§:AngryBirdsFP11 = null;
      
      public static var §@?§:Sprite = null;
      
      public static var §#!<§:§0!L§;
      
      public static var §,E§:Boolean = false;
      
      protected static var §&n§:int = 0;
      
      protected static var §7?§:int = 0;
       
      
      private var §9!4§:§'!-§;
      
      private var §=O§:int;
      
      private var §'!K§:Boolean;
      
      private var §`!;§:int;
      
      private var §@&§:int;
      
      protected var §-=§:Boolean;
      
      public function AngryBirdsFP11(param1:§5!N§)
      {
         this.§9!4§ = new §'!-§();
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
         return §&n§;
      }
      
      public static function get stageHeight() : int
      {
         return §7?§;
      }
      
      public static function §%!H§(param1:Boolean) : void
      {
         §"0§ = param1;
         §,!F§.§7!&§(§"0§);
      }
      
      public static function §<!G§() : Boolean
      {
         return §"0§;
      }
      
      public static function get screenWidth() : int
      {
         return § y§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return § y§.getAppHeight();
      }
      
      public static function § x§() : void
      {
         if(§,!F§.§=!H§("Channel_Theme") == null || !§,!F§.§=!H§("Channel_Theme").§]n§())
         {
            §,!F§.§;v§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §#!5§() : void
      {
         §,!F§.§@!9§("Channel_Theme");
      }
      
      public static function get § y§() : AngryBirdsFP11
      {
         return §4!"§;
      }
      
      protected function getAssetMap() : XML
      {
         return §"X§.§,@§(§6l§);
      }
      
      protected function getUIData() : XML
      {
         return §"X§.§,@§(§3N§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §"o§.§@6§.init(§9A§.§,!5§(),this.§[!4§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§9!4§,this.§'!A§);
         §4!"§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §1!N§ = screenWidth;
         §#o§ = screenHeight;
         §=w§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §=w§.§?!L§.visible = false;
         §7!+§.§[W§(§"B§);
         §7!+§.§4u§(true);
         var _loc1_:XMLList = §"X§.§,@§(§1!1§).children();
         §3!0§.init(_loc1_);
         §,!F§.§@o§("CHANNEL_THEME",1,1);
         §,!F§.§@o§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§`k§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §#!<§ = new §0!L§(stage);
         §@7§.§@6§.§;y§ = !§%Z§;
      }
      
      protected function §[!4§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         §=w§.§ o§ = new § !§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §`!K§(§,A§);
      }
      
      protected function initStates() : void
      {
         §8Y§(new §8A§(false));
         §8Y§(new §^!K§(false));
         §8Y§(new §5!#§(false));
         §8Y§(new §for §(false));
         §8Y§(new §6!@§(false));
         §8Y§(new StatePlay(false));
         §8Y§(new §7§(false));
         §8Y§(new §+W§(false));
         §8Y§(new §&b§(false));
         §8Y§(new § !"§(false));
         §8Y§(new § q§(false));
         §8Y§(new StateCutScene(false));
         §8Y§(new §8!M§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §'!A§(param1:ByteArray) : void
      {
      }
      
      protected function §`k§(param1:Event) : void
      {
         §'q§.§4W§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §'q§.§&u§();
         if(this.§'!K§)
         {
            ++this.§@&§;
            if(this.§@&§ > §9U§)
            {
               this.§'!K§ = false;
               if(this.§`!;§ < §"#§)
               {
                  this.§[!7§(this.§=O§);
               }
            }
         }
      }
      
      public function §-u§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         this.§-=§ = true;
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §&n§;
            _loc3_ = §7?§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §&n§ == _loc2_ && §7?§ == _loc3_)
         {
            return false;
         }
         §&n§ = _loc2_;
         §7?§ = _loc3_;
         this.§+!C§(§&n§,§7?§);
         return true;
      }
      
      protected function §+!C§(param1:int, param2:int) : void
      {
         §=w§.§8'§(0,0,param1,param2);
         setViewSize(param1,param2);
      }
      
      public function §-!$§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§=O§ > §6V§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§[!7§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§>!B§(_loc1_);
            }
         }
      }
      
      public function §8<§() : void
      {
         this.§[!7§(0);
      }
      
      public function §'!>§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §[!7§(param1:int) : void
      {
         this.§-=§ = true;
         this.§=O§ = param1;
         this.§'!K§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §>!B§(param1:int) : void
      {
         this.§-=§ = true;
         this.§=O§ = param1;
         this.§`!;§ = 0;
         this.§@&§ = 0;
         this.§'!K§ = true;
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
         §"o§.§@6§.§3l§();
         §[4§.§6!+§(JSON.parse(this.§9!4§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§=w§.§?!L§ != null)
         {
            §=w§.§?!L§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§@v§().isGenericState())
         {
            if(_loc2_ == §1Q§.STATE_STATUS_COMPLETED)
            {
               §7!+§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §@v§().mName + " New State = " + §@v§().mNextState);
               §+N§(§@v§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §9!#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §0i§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return § n§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §"!&§;
      }
      
      protected function initializeGame() : void
      {
         §=w§.§?!"§(this.getItemData(),this.getLevelBackgrounds());
         §=w§.§5!B§(this.§9!4§.§='§,§6<§.§>!@§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §"X§.§,@§(§,s§);
      }
      
      protected function getItemData() : XML
      {
         return §"X§.§,@§(§!<§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §,E§ = true;
         if(§5p§)
         {
            §+N§(§8A§.§>9§);
         }
         else
         {
            §+N§(§5!#§.§>9§);
         }
      }
      
      public function §"A§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§'!K§)
         {
            ++this.§`!;§;
         }
         if(!§>I§.§]u§())
         {
            return;
         }
         if(this.§-=§)
         {
            this.resize();
            this.§-=§ = false;
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
