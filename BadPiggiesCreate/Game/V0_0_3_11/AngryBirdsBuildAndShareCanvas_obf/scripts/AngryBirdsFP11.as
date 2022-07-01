package
{
   import §""6§.§!Z§;
   import §""6§.§"!Y§;
   import §""6§.§+v§;
   import §""6§.§4!l§;
   import §""6§.§4b§;
   import §""6§.§7"#§;
   import §""6§.§7h§;
   import §""6§.§;!U§;
   import §""6§.§=!`§;
   import §""6§.StateCutScene;
   import §""6§.StatePlay;
   import §""6§.§[O§;
   import §""6§.§`!%§;
   import §#!+§.§[E§;
   import §'x§.§+!#§;
   import §'x§.§?z§;
   import §+%§.§+"%§;
   import §0P§.§!!l§;
   import §1!v§.§@%§;
   import §2!O§.§,w§;
   import §2j§.§ +§;
   import §2j§.§2B§;
   import §45§.§@"'§;
   import §7c§.§@<§;
   import §8q§.§@§;
   import §;X§.§ "2§;
   import §;X§.§ do§;
   import §;X§.§1x§;
   import §?!k§.§0!t§;
   import §?h§.§%!Z§;
   import §]X§.§>q§;
   import com.rovio.assets.§-!6§;
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
   
   public class AngryBirdsFP11 extends §2B§
   {
      
      protected static var §'r§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §^"7§:String;
      
      public static var § >§:String;
      
      public static const § !q§:int = 1024;
      
      public static const §%"2§:int = 768;
      
      public static const §8&§:Boolean = false;
      
      public static const §0@§:int = 2000;
      
      public static const §4Z§:Boolean = false;
      
      private static const §!]§:int = 750;
      
      private static const §]!r§:int = 3;
      
      private static const §true §:int = 15;
      
      protected static var §9V§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §6!1§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §#+§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §3!E§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §8!I§:§@<§ = null;
      
      public static var §[!#§:Boolean = true;
      
      private static var § set§:AngryBirdsFP11 = null;
      
      public static var §@S§:Sprite = null;
      
      public static var §67§:§+!#§;
      
      public static var §`"+§:Boolean = false;
      
      protected static var §3!>§:int = 0;
      
      protected static var §else§:int = 0;
       
      
      private var §2"0§:§>q§;
      
      private var §=F§:int;
      
      private var §64§:Boolean;
      
      private var §7-§:int;
      
      private var §5"+§:int;
      
      protected var §8§:Boolean;
      
      public function AngryBirdsFP11(param1:§ +§)
      {
         this.§2"0§ = new §>q§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §#k§ || stage.stageHeight != §!7§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §3!>§;
      }
      
      public static function get stageHeight() : int
      {
         return §else§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §[!#§ = param1;
         §0!t§.§?!s§(§[!#§);
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §[!#§;
      }
      
      public static function get §#k§() : int
      {
         return §@!N§.getAppWidth();
      }
      
      public static function get §!7§() : int
      {
         return §@!N§.getAppHeight();
      }
      
      public static function §5!q§() : void
      {
         if(§0!t§.§ !a§("Channel_Theme") == null || !§0!t§.§ !a§("Channel_Theme").§@!K§())
         {
            §0!t§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §>X§() : void
      {
         §0!t§.§?!u§("Channel_Theme");
      }
      
      public static function get §@!N§() : AngryBirdsFP11
      {
         return § set§;
      }
      
      protected function getAssetMap() : XML
      {
         return §1x§.§9!t§(§6!1§);
      }
      
      protected function getUIData() : XML
      {
         return §1x§.§9!t§(§9V§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §[E§.§if §.init(§@"'§.§%!I§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§2"0§,this.§4!t§);
         § set§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §+!s§ = §#k§;
         §%!g§ = §!7§;
         §?z§.init(this,§#k§,§!7§);
         this.initLevelMain();
         §?z§.§^!t§.visible = false;
         § do§.§=!0§(§+q§);
         § do§.§%5§(true);
         var _loc1_:XMLList = §1x§.§9!t§(§'r§).children();
         §-!6§.init(_loc1_);
         §0!t§.§2Q§("CHANNEL_THEME",1,1);
         §0!t§.§2Q§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§1"2§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§-!e§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§1!r§);
         §67§ = new §+!#§(stage);
         §%!Z§.§if §.§finally§ = !§8&§;
      }
      
      protected function initLevelMain() : void
      {
         §?z§.§=7§ = new §@%§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §8!I§ = new §@<§(§ >§);
      }
      
      protected function initStates() : void
      {
         §6w§(new §4b§(false));
         §6w§(new §!Z§(false));
         §6w§(new §;!U§(false));
         §6w§(new §+v§(false));
         §6w§(new §`!%§(false));
         §6w§(new StatePlay(false));
         §6w§(new §7h§(false));
         §6w§(new §7"#§(false));
         §6w§(new §[O§(false));
         §6w§(new §4!l§(false));
         §6w§(new §=!`§(false));
         §6w§(new StateCutScene(false));
         §6w§(new §"!Y§(false));
         if(stage.stageWidth != §#k§ || stage.stageHeight != §!7§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §4!t§(param1:ByteArray) : void
      {
      }
      
      protected function §1"2§(param1:Event) : void
      {
         § "2§.§?!_§();
      }
      
      protected function §-!e§(param1:MouseEvent) : void
      {
         § "2§.§=I§();
         if(this.§64§)
         {
            ++this.§5"+§;
            if(this.§5"+§ > §true §)
            {
               this.§64§ = false;
               if(this.§7-§ < §]!r§)
               {
                  this.§^T§(this.§=F§);
               }
            }
         }
      }
      
      public function §=!u§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§8§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §#k§;
         var _loc3_:Number = stage.stageHeight / §!7§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§!7§ / §#k§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§#k§ / §!7§);
            _loc5_ = stage.stageHeight;
         }
         §?z§.§'a§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §3!>§ = stage.stageWidth;
         §else§ = stage.stageHeight;
      }
      
      public function §2!1§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§=F§ > §!]§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§^T§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§ #§(_loc1_);
            }
         }
      }
      
      public function §-!Z§() : void
      {
         this.§^T§(0);
      }
      
      public function §^R§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §^T§(param1:int) : void
      {
         this.§8§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§=F§ = param1;
         this.§64§ = false;
      }
      
      private function § #§(param1:int) : void
      {
         this.§8§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§=F§ = param1;
         this.§7-§ = 0;
         this.§5"+§ = 0;
         this.§64§ = true;
      }
      
      protected function §1!r§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §[E§.§if §.§;!h§();
         §+"%§.§0V§(JSON.parse(this.§2"0§.getFileAsString("Chapters.json")));
         this.§^!E§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§?z§.§^!t§ != null)
         {
            §?z§.§^!t§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§1w§().isGenericState())
         {
            if(_loc2_ == §,w§.STATE_STATUS_COMPLETED)
            {
               § do§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §1w§().mName + " New State = " + §1w§().mNextState);
               §2!]§(§1w§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return § !q§;
      }
      
      override public function getAppHeight() : Number
      {
         return §%"2§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §0@§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §^"7§;
      }
      
      protected function §^!E§() : void
      {
         §?z§.§ E§(this.getItemData(),this.getLevelBackgrounds());
         §?z§.§;!J§(this.§2"0§.§7"!§,§@§.§3u§(),this.§-!4§);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §1x§.§9!t§(§3!E§);
      }
      
      protected function getItemData() : XML
      {
         return §1x§.§9!t§(§#+§);
      }
      
      protected function §-!4§(param1:Event) : void
      {
         §`"+§ = true;
         if(§4Z§)
         {
            §2!]§(§4b§.§^z§);
         }
         else
         {
            §2!]§(§;!U§.§^z§);
         }
      }
      
      public function §#G§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§64§)
         {
            ++this.§7-§;
         }
         if(!§!!l§.§2"9§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§8§)
         {
            this.§8§ = false;
         }
      }
      
      public function §8!4§() : void
      {
      }
      
      public function §0!N§() : void
      {
      }
   }
}
