package
{
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §%"§.§ do§;
   import §+8§.§;!7§;
   import §+y§.§3V§;
   import §0!D§.§5$§;
   import §3!G§.§>V§;
   import §3!G§.§>y§;
   import §4!6§.§8Y§;
   import §8;§.§ $§;
   import §8;§.§!!6§;
   import §8;§.§!u§;
   import §8;§.§"q§;
   import §8;§.§,'§;
   import §8;§.§2!"§;
   import §8;§.§3!8§;
   import §8;§.§6!F§;
   import §8;§.§8!4§;
   import §8;§.§8^§;
   import §8;§.§9h§;
   import §8;§.StateCutScene;
   import §8;§.StatePlay;
   import §<!F§.§5!+§;
   import §<!F§.§[5§;
   import §?!;§.§6H§;
   import §@!%§.§-!;§;
   import §@V§.§-'§;
   import §@V§.§2!2§;
   import §@V§.§`!5§;
   import §^h§.§2l§;
   import §`=§.§"R§;
   import com.rovio.assets.§'!-§;
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
   
   public class AngryBirdsFP11 extends §>V§
   {
      
      protected static var §-!§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §5§:String;
      
      public static var §+!C§:String;
      
      public static const §[!0§:int = 1024;
      
      public static const §>!8§:int = 768;
      
      public static const §7I§:Boolean = false;
      
      public static const §1"§:int = 2000;
      
      public static const §&[§:Boolean = false;
      
      private static const §4T§:int = 750;
      
      private static const §0n§:int = 3;
      
      private static const §"I§:int = 15;
      
      protected static var §?Q§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §`g§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §&6§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §#t§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §^O§:§;!7§ = null;
      
      public static var §<C§:Boolean = true;
      
      private static var §@F§:AngryBirdsFP11 = null;
      
      public static var §break§:Sprite = null;
      
      public static var §6l§:§[5§;
      
      public static var §58§:Boolean = false;
      
      protected static var §7E§:int = 0;
      
      protected static var §&!A§:int = 0;
       
      
      private var §[[§:§8Y§;
      
      private var §>!@§:int;
      
      private var §>!7§:Boolean;
      
      private var §!d§:int;
      
      private var §7A§:int;
      
      protected var §+x§:Boolean;
      
      public function AngryBirdsFP11(param1:§>y§)
      {
         this.§[[§ = new §8Y§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §<§ || stage.stageHeight != §0O§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §7E§;
      }
      
      public static function get stageHeight() : int
      {
         return §&!A§;
      }
      
      public static function §`1§(param1:Boolean) : void
      {
         §<C§ = param1;
         §3V§.§2!L§(§<C§);
      }
      
      public static function §![§() : Boolean
      {
         return §<C§;
      }
      
      public static function get §<§() : int
      {
         return §"Y§.getAppWidth();
      }
      
      public static function get §0O§() : int
      {
         return §"Y§.getAppHeight();
      }
      
      public static function §6r§() : void
      {
         if(§3V§.§6q§("Channel_Theme") == null || !§3V§.§6q§("Channel_Theme").§6-§())
         {
            §3V§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §1T§() : void
      {
         §3V§.§5!A§("Channel_Theme");
      }
      
      public static function get §"Y§() : AngryBirdsFP11
      {
         return §@F§;
      }
      
      protected function getAssetMap() : XML
      {
         return §2!2§.§7!I§(§`g§);
      }
      
      protected function getUIData() : XML
      {
         return §2!2§.§7!I§(§?Q§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §5$§.§&y§.init(§-!;§.§'-§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§[[§,this.§8V§);
         §@F§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §1H§ = §<§;
         §[X§ = §0O§;
         §5!+§.init(this,§<§,§0O§);
         this.initLevelMain();
         §5!+§.§"!I§.visible = false;
         §`!5§.§#! §(static);
         §`!5§.§#S§(true);
         var _loc1_:XMLList = §2!2§.§7!I§(§-!§).children();
         §'!-§.init(_loc1_);
         §3V§.§?L§("CHANNEL_THEME",1,1);
         §3V§.§?L§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§^@§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?y§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §6l§ = new §[5§(stage);
         §49§.§&y§.§8r§ = !§7I§;
      }
      
      protected function initLevelMain() : void
      {
         §5!+§.§6!§ = new § do§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §^O§ = new §;!7§(§+!C§);
      }
      
      protected function initStates() : void
      {
         §@!!§(new §"q§(false));
         §@!!§(new §8^§(false));
         §@!!§(new §6!F§(false));
         §@!!§(new §2!"§(false));
         §@!!§(new §!!6§(false));
         §@!!§(new StatePlay(false));
         §@!!§(new §3!8§(false));
         §@!!§(new §9h§(false));
         §@!!§(new § $§(false));
         §@!!§(new §!u§(false));
         §@!!§(new §,'§(false));
         §@!!§(new StateCutScene(false));
         §@!!§(new §8!4§(false));
         if(stage.stageWidth != §<§ || stage.stageHeight != §0O§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §8V§(param1:ByteArray) : void
      {
      }
      
      protected function §^@§(param1:Event) : void
      {
         §-'§.§<!4§();
      }
      
      protected function §?y§(param1:MouseEvent) : void
      {
         §-'§.§9i§();
         if(this.§>!7§)
         {
            ++this.§7A§;
            if(this.§7A§ > §"I§)
            {
               this.§>!7§ = false;
               if(this.§!d§ < §0n§)
               {
                  this.§,%§(this.§>!@§);
               }
            }
         }
      }
      
      public function §`h§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§+x§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §<§;
         var _loc3_:Number = stage.stageHeight / §0O§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§0O§ / §<§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§<§ / §0O§);
            _loc5_ = stage.stageHeight;
         }
         §5!+§.§<!C§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §7E§ = stage.stageWidth;
         §&!A§ = stage.stageHeight;
      }
      
      public function §4%§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§>!@§ > §4T§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§,%§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§1!§(_loc1_);
            }
         }
      }
      
      public function §1s§() : void
      {
         this.§,%§(0);
      }
      
      public function §7]§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §,%§(param1:int) : void
      {
         this.§+x§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§>!@§ = param1;
         this.§>!7§ = false;
      }
      
      private function §1!§(param1:int) : void
      {
         this.§+x§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§>!@§ = param1;
         this.§!d§ = 0;
         this.§7A§ = 0;
         this.§>!7§ = true;
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
         §5$§.§&y§.§+F§();
         §6H§.§<1§(JSON.parse(this.§[[§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§5!+§.§"!I§ != null)
         {
            §5!+§.§"!I§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§6,§().isGenericState())
         {
            if(_loc2_ == §!L§.STATE_STATUS_COMPLETED)
            {
               §`!5§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §6,§().mName + " New State = " + §6,§().mNextState);
               §super§(§6,§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §[!0§;
      }
      
      override public function getAppHeight() : Number
      {
         return §>!8§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §1"§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §5§;
      }
      
      protected function initializeGame() : void
      {
         §5!+§.§0Y§(this.getItemData(),this.getLevelBackgrounds());
         §5!+§.§2!%§(this.§[[§.§0D§,§"R§.§ in§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §2!2§.§7!I§(§#t§);
      }
      
      protected function getItemData() : XML
      {
         return §2!2§.§7!I§(§&6§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §58§ = true;
         if(§&[§)
         {
            §super§(§"q§.§"Z§);
         }
         else
         {
            §super§(§6!F§.§"Z§);
         }
      }
      
      public function §0!5§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§>!7§)
         {
            ++this.§!d§;
         }
         if(!§2l§.§3!?§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§+x§)
         {
            this.§+x§ = false;
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
