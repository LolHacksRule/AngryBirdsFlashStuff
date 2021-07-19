package
{
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §,!"§.§ true§;
   import §,!"§.§,!#§;
   import §,!"§.§-O§;
   import §,!"§.§0!5§;
   import §,!"§.§8j§;
   import §,!"§.§8v§;
   import §,!"§.§<z§;
   import §,!"§.§="§;
   import §,!"§.§@D§;
   import §,!"§.StateCutScene;
   import §,!"§.StatePlay;
   import §,!"§.§[_§;
   import §,!"§.§]g§;
   import §2!<§.§;!M§;
   import §2G§.§>U§;
   import §5Z§.§[Z§;
   import §8!B§.§ 7§;
   import §8!B§.§#! §;
   import §9P§.§'B§;
   import §9P§.§[!4§;
   import §9T§.§1r§;
   import §;f§.§7P§;
   import §]!0§.§<0§;
   import §]p§.§%§;
   import §^]§.§`!K§;
   import §`K§.§ L§;
   import §`K§.§4N§;
   import §`K§.§^!5§;
   import com.rovio.assets.§1!8§;
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
   
   public class AngryBirdsFP11 extends §[!4§
   {
      
      protected static var §]!!§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §02§:String;
      
      public static var §#U§:String;
      
      public static const §-p§:int = 1024;
      
      public static const §5!9§:int = 768;
      
      public static const §^!E§:Boolean = false;
      
      public static const §-t§:int = 2000;
      
      public static const §1!=§:Boolean = false;
      
      private static const §88§:int = 750;
      
      private static const §[§:int = 3;
      
      private static const §9!4§:int = 15;
      
      protected static var § a§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §?!P§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §-!0§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §;T§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §`I§:§<0§ = null;
      
      public static var §"!5§:Boolean = true;
      
      private static var §46§:AngryBirdsFP11 = null;
      
      public static var §8&§:Sprite = null;
      
      public static var §;!4§:§ 7§;
      
      public static var §"e§:Boolean = false;
      
      protected static var §?P§:int = 0;
      
      protected static var §%Z§:int = 0;
       
      
      private var §@+§:§%§;
      
      private var §=3§:int;
      
      private var §,M§:Boolean;
      
      private var §%v§:int;
      
      private var §9,§:int;
      
      protected var §<d§:Boolean;
      
      public function AngryBirdsFP11(param1:§'B§)
      {
         this.§@+§ = new §%§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §3!<§ || stage.stageHeight != §8!4§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §?P§;
      }
      
      public static function get stageHeight() : int
      {
         return §%Z§;
      }
      
      public static function §6r§(param1:Boolean) : void
      {
         §"!5§ = param1;
         §[!7§.§%R§(§"!5§);
      }
      
      public static function §5e§() : Boolean
      {
         return §"!5§;
      }
      
      public static function get §3!<§() : int
      {
         return §`y§.getAppWidth();
      }
      
      public static function get §8!4§() : int
      {
         return §`y§.getAppHeight();
      }
      
      public static function §[5§() : void
      {
         if(§[!7§.§-K§("Channel_Theme") == null || !§[!7§.§-K§("Channel_Theme").§+c§())
         {
            §[!7§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §1k§() : void
      {
         §[!7§.§9!K§("Channel_Theme");
      }
      
      public static function get §`y§() : AngryBirdsFP11
      {
         return §46§;
      }
      
      protected function getAssetMap() : XML
      {
         return §^!5§.§'l§(§?!P§);
      }
      
      protected function getUIData() : XML
      {
         return §^!5§.§'l§(§ a§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §;!M§.§>o§.init(§7P§.§'g§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§@+§,this.§]!,§);
         §46§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §6!6§ = §3!<§;
         §3d§ = §8!4§;
         §#! §.init(this,§3!<§,§8!4§);
         this.initLevelMain();
         §#! §.§92§.visible = false;
         § L§.§2e§(§#!G§);
         § L§.§?!!§(true);
         var _loc1_:XMLList = §^!5§.§'l§(§]!!§).children();
         §1!8§.init(_loc1_);
         §[!7§.§'<§("CHANNEL_THEME",1,1);
         §[!7§.§'<§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§+S§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§-B§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §;!4§ = new § 7§(stage);
         §3C§.§>o§.§&!&§ = !§^!E§;
      }
      
      protected function initLevelMain() : void
      {
         §#! §.§`'§ = new §1r§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §`I§ = new §<0§(§#U§);
      }
      
      protected function initStates() : void
      {
         §#!F§(new §[_§(false));
         §#!F§(new §-O§(false));
         §#!F§(new §8j§(false));
         §#!F§(new §@D§(false));
         §#!F§(new §0!5§(false));
         §#!F§(new StatePlay(false));
         §#!F§(new §="§(false));
         §#!F§(new §<z§(false));
         §#!F§(new § true§(false));
         §#!F§(new §]g§(false));
         §#!F§(new §8v§(false));
         §#!F§(new StateCutScene(false));
         §#!F§(new §,!#§(false));
         if(stage.stageWidth != §3!<§ || stage.stageHeight != §8!4§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §]!,§(param1:ByteArray) : void
      {
      }
      
      protected function §+S§(param1:Event) : void
      {
         §4N§.§<!K§();
      }
      
      protected function §-B§(param1:MouseEvent) : void
      {
         §4N§.§6V§();
         if(this.§,M§)
         {
            ++this.§9,§;
            if(this.§9,§ > §9!4§)
            {
               this.§,M§ = false;
               if(this.§%v§ < §[§)
               {
                  this.§6N§(this.§=3§);
               }
            }
         }
      }
      
      public function § §() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§<d§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §3!<§;
         var _loc3_:Number = stage.stageHeight / §8!4§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§8!4§ / §3!<§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§3!<§ / §8!4§);
            _loc5_ = stage.stageHeight;
         }
         §#! §.§%U§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §?P§ = stage.stageWidth;
         §%Z§ = stage.stageHeight;
      }
      
      public function §,,§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§=3§ > §88§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§6N§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§2<§(_loc1_);
            }
         }
      }
      
      public function §@9§() : void
      {
         this.§6N§(0);
      }
      
      public function §'!H§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §6N§(param1:int) : void
      {
         this.§<d§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§=3§ = param1;
         this.§,M§ = false;
      }
      
      private function §2<§(param1:int) : void
      {
         this.§<d§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§=3§ = param1;
         this.§%v§ = 0;
         this.§9,§ = 0;
         this.§,M§ = true;
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
         §;!M§.§>o§.§,U§();
         §`!K§.§0!#§(JSON.parse(this.§@+§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§#! §.§92§ != null)
         {
            §#! §.§92§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§@!@§().isGenericState())
         {
            if(_loc2_ == §'!#§.STATE_STATUS_COMPLETED)
            {
               § L§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §@!@§().mName + " New State = " + §@!@§().mNextState);
               §8n§(§@!@§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §-p§;
      }
      
      override public function getAppHeight() : Number
      {
         return §5!9§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §-t§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §02§;
      }
      
      protected function initializeGame() : void
      {
         §#! §.§+Q§(this.getItemData(),this.getLevelBackgrounds());
         §#! §.§0!8§(this.§@+§.§;k§,§>U§.§<v§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §^!5§.§'l§(§;T§);
      }
      
      protected function getItemData() : XML
      {
         return §^!5§.§'l§(§-!0§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §"e§ = true;
         if(§1!=§)
         {
            §8n§(§[_§.§-A§);
         }
         else
         {
            §8n§(§8j§.§-A§);
         }
      }
      
      public function §%! §(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§,M§)
         {
            ++this.§%v§;
         }
         if(!§[Z§.§?4§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§<d§)
         {
            this.§<d§ = false;
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
