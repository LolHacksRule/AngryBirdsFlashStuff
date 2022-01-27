package
{
   import §"1§.§1c§;
   import §"1§.§3'§;
   import §"1§.§>I§;
   import §&-§.§<h§;
   import §'!3§.§&!H§;
   import §'8§.§5!H§;
   import §+!1§.§]r§;
   import §,!1§.§]e§;
   import §,T§.§[-§;
   import §-!D§.§>d§;
   import §0E§.§"b§;
   import §6!L§.§&u§;
   import §=!0§.§"!4§;
   import §=!0§.§"Y§;
   import §=!0§.§&z§;
   import §=!0§.§-!N§;
   import §=!0§.§1!F§;
   import §=!0§.§5O§;
   import §=!0§.§6!9§;
   import §=!0§.§7C§;
   import §=!0§.§7y§;
   import §=!0§.§9!D§;
   import §=!0§.§?!G§;
   import §=!0§.StateCutScene;
   import §=!0§.StatePlay;
   import §=z§.§ _§;
   import §=z§.§0!E§;
   import §?>§.§19§;
   import §?>§.§`!P§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import com.rovio.assets.§>A§;
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
   
   public class AngryBirdsFP11 extends §`!P§
   {
      
      protected static var §!q§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §[!0§:String;
      
      public static var §@1§:String;
      
      public static const §6!I§:int = 1024;
      
      public static const §4U§:int = 768;
      
      public static const §=o§:Boolean = false;
      
      public static const §&!A§:int = 2000;
      
      public static const §`O§:Boolean = false;
      
      private static const §2e§:int = 750;
      
      private static const §?J§:int = 3;
      
      private static const §3#§:int = 15;
      
      protected static var §'s§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §'Z§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §=!C§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §8j§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §5@§:§]r§ = null;
      
      public static var §?`§:Boolean = true;
      
      private static var §4M§:AngryBirdsFP11 = null;
      
      public static var §!!0§:Sprite = null;
      
      public static var §-v§:§ _§;
      
      public static var §'§:Boolean = false;
      
      protected static var §<Y§:int = 0;
      
      protected static var §2!3§:int = 0;
       
      
      private var §]b§:§>d§;
      
      private var §5+§:int;
      
      private var §[I§:Boolean;
      
      private var §9!K§:int;
      
      private var §'!$§:int;
      
      protected var §[y§:Boolean;
      
      public function AngryBirdsFP11(param1:§19§)
      {
         this.§]b§ = new §>d§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §1C§ || stage.stageHeight != §3!§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §<Y§;
      }
      
      public static function get stageHeight() : int
      {
         return §2!3§;
      }
      
      public static function §6x§(param1:Boolean) : void
      {
         §?`§ = param1;
         §]e§.§5!0§(§?`§);
      }
      
      public static function §?!L§() : Boolean
      {
         return §?`§;
      }
      
      public static function get §1C§() : int
      {
         return §;!@§.getAppWidth();
      }
      
      public static function get §3!§() : int
      {
         return §;!@§.getAppHeight();
      }
      
      public static function §!!!§() : void
      {
         if(§]e§.§'!?§("Channel_Theme") == null || !§]e§.§'!?§("Channel_Theme").§;7§())
         {
            §]e§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §case§() : void
      {
         §]e§.§7&§("Channel_Theme");
      }
      
      public static function get §;!@§() : AngryBirdsFP11
      {
         return §4M§;
      }
      
      protected function getAssetMap() : XML
      {
         return §1c§.§6T§(§'Z§);
      }
      
      protected function getUIData() : XML
      {
         return §1c§.§6T§(§'s§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §<h§.§@!&§.init(§5!H§.§"! §(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§]b§,this.§]!5§);
         §4M§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §>L§ = §1C§;
         §%!0§ = §3!§;
         §0!E§.init(this,§1C§,§3!§);
         this.initLevelMain();
         §0!E§.§5!$§.visible = false;
         §3'§.§%!C§(§1^§);
         §3'§.§]d§(true);
         var _loc1_:XMLList = §1c§.§6T§(§!q§).children();
         §>A§.init(_loc1_);
         §]e§.§#x§("CHANNEL_THEME",1,1);
         §]e§.§#x§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§[! §);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<8§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §-v§ = new § _§(stage);
         §5!&§.§@!&§.§ !E§ = !§=o§;
      }
      
      protected function initLevelMain() : void
      {
         §0!E§.§9!B§ = new §[-§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §5@§ = new §]r§(§@1§);
      }
      
      protected function initStates() : void
      {
         §^!3§(new §"!4§(false));
         §^!3§(new §1!F§(false));
         §^!3§(new §"Y§(false));
         §^!3§(new §&z§(false));
         §^!3§(new §?!G§(false));
         §^!3§(new StatePlay(false));
         §^!3§(new §7y§(false));
         §^!3§(new §5O§(false));
         §^!3§(new §6!9§(false));
         §^!3§(new §-!N§(false));
         §^!3§(new §7C§(false));
         §^!3§(new StateCutScene(false));
         §^!3§(new §9!D§(false));
         if(stage.stageWidth != §1C§ || stage.stageHeight != §3!§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §]!5§(param1:ByteArray) : void
      {
      }
      
      protected function §[! §(param1:Event) : void
      {
         §>I§.§6E§();
      }
      
      protected function §<8§(param1:MouseEvent) : void
      {
         §>I§.§>v§();
         if(this.§[I§)
         {
            ++this.§'!$§;
            if(this.§'!$§ > §3#§)
            {
               this.§[I§ = false;
               if(this.§9!K§ < §?J§)
               {
                  this.§<d§(this.§5+§);
               }
            }
         }
      }
      
      public function §[!'§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§[y§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §1C§;
         var _loc3_:Number = stage.stageHeight / §3!§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§3!§ / §1C§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§1C§ / §3!§);
            _loc5_ = stage.stageHeight;
         }
         §0!E§.§7<§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §<Y§ = stage.stageWidth;
         §2!3§ = stage.stageHeight;
      }
      
      public function §8N§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§5+§ > §2e§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§<d§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§=V§(_loc1_);
            }
         }
      }
      
      public function §&L§() : void
      {
         this.§<d§(0);
      }
      
      public function §;i§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §<d§(param1:int) : void
      {
         this.§[y§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§5+§ = param1;
         this.§[I§ = false;
      }
      
      private function §=V§(param1:int) : void
      {
         this.§[y§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§5+§ = param1;
         this.§9!K§ = 0;
         this.§'!$§ = 0;
         this.§[I§ = true;
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
         §<h§.§@!&§.§@>§();
         §&u§.§%7§(JSON.parse(this.§]b§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§0!E§.§5!$§ != null)
         {
            §0!E§.§5!$§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§[x§().isGenericState())
         {
            if(_loc2_ == §-!,§.STATE_STATUS_COMPLETED)
            {
               §3'§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §[x§().mName + " New State = " + §[x§().mNextState);
               §?%§(§[x§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §6!I§;
      }
      
      override public function getAppHeight() : Number
      {
         return §4U§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §&!A§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §[!0§;
      }
      
      protected function initializeGame() : void
      {
         §0!E§.§@0§(this.getItemData(),this.getLevelBackgrounds());
         §0!E§.§"!3§(this.§]b§.§9-§,§"b§.§?t§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §1c§.§6T§(§8j§);
      }
      
      protected function getItemData() : XML
      {
         return §1c§.§6T§(§=!C§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §'§ = true;
         if(§`O§)
         {
            §?%§(§"!4§.§@§);
         }
         else
         {
            §?%§(§"Y§.§@§);
         }
      }
      
      public function § a§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§[I§)
         {
            ++this.§9!K§;
         }
         if(!§&!H§.§%^§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§[y§)
         {
            this.§[y§ = false;
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
