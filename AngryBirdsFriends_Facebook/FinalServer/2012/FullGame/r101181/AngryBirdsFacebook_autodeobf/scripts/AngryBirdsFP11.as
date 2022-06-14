package
{
   import § "C§.§2"=§;
   import §#!e§.LevelManager;
   import §%Q§.§6G§;
   import §'6§.§"]§;
   import §-"6§.§3X§;
   import §-"6§.§5E§;
   import §0!G§.§1-§;
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §6o§.§5!C§;
   import §6o§.§="7§;
   import §7"@§.§!!7§;
   import §7"@§.§#;§;
   import §7"@§.§&!>§;
   import §7"@§.§5!v§;
   import §7"@§.§6"5§;
   import §7"@§.§7l§;
   import §7"@§.§8!u§;
   import §7"@§.§8"D§;
   import §7"@§.§9<§;
   import §7"@§.§<!z§;
   import §7"@§.§?'§;
   import §7"@§.StateCutScene;
   import §7"@§.StatePlay;
   import §8!v§.§>!+§;
   import §9"!§.§9"3§;
   import §=,§.§!!W§;
   import §?" §.§=!L§;
   import §]!>§.§1"%§;
   import §]!A§.;
   import §]!A§.§8!4§;
   import com.rovio.assets.§96§;
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
   
   public class AngryBirdsFP11 extends §3X§
   {
      
      protected static var §3h§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §&"D§:String;
      
      public static var §76§:String;
      
      public static const §;H§:int = 1024;
      
      public static const §+P§:int = 768;
      
      public static const §4x§:Boolean = false;
      
      public static const §6"<§:int = 2000;
      
      public static const §!!f§:Boolean = false;
      
      private static const §7!"§:int = 750;
      
      private static const §3+§:int = 3;
      
      private static const §!F§:int = 15;
      
      protected static var §<'§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §7!9§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §#!A§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §;I§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§!!W§ = null;
      
      public static var §9q§:Boolean = true;
      
      private static var §67§:AngryBirdsFP11 = null;
      
      public static var §,+§:Sprite = null;
      
      public static var §9!_§:§8!4§;
      
      public static var §4!8§:Boolean = false;
      
      protected static var §1M§:int = 0;
      
      protected static var §5K§:int = 0;
       
      
      private var §[O§:§1"%§;
      
      private var §<!h§:int;
      
      private var §0"B§:Boolean;
      
      private var §0!a§:int;
      
      private var §7!s§:int;
      
      protected var §+!S§:Boolean;
      
      public function AngryBirdsFP11(param1:§5E§)
      {
         this.§[O§ = new §1"%§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §=!u§ || stage.stageHeight != §^!7§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §1M§;
      }
      
      public static function get stageHeight() : int
      {
         return §5K§;
      }
      
      public static function §@i§(param1:Boolean) : void
      {
         §9q§ = param1;
         §>!E§.§7X§(§9q§);
      }
      
      public static function §3>§() : Boolean
      {
         return §9q§;
      }
      
      public static function get §=!u§() : int
      {
         return §@<§.getAppWidth();
      }
      
      public static function get §^!7§() : int
      {
         return §@<§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(§>!E§.§"h§("Channel_Theme") == null || !§>!E§.§"h§("Channel_Theme").§5%§())
         {
            §>!E§.§7N§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §`!"§() : void
      {
         §>!E§.§1!;§("Channel_Theme");
      }
      
      public static function get §@<§() : AngryBirdsFP11
      {
         return §67§;
      }
      
      protected function getAssetMap() : XML
      {
         return §5!C§.§9G§(§7!9§);
      }
      
      protected function getUIData() : XML
      {
         return §5!C§.§9G§(§<'§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §=!L§.§;"§.init(§2"=§.§0!,§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§[O§,this.§8P§);
         §67§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §9!"§ = §=!u§;
         §4t§ = §^!7§;
         §#6§.init(this,§=!u§,§^!7§);
         this.initLevelMain();
         §#6§.§=_§.visible = false;
         §+!k§.§5?§(§5!X§);
         §+!k§.§#!F§(true);
         var _loc1_:XMLList = §5!C§.§9G§(§3h§).children();
         §96§.init(_loc1_);
         §>!E§.§0I§("CHANNEL_THEME",1,1);
         §>!E§.§0I§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§<"'§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§3[§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §9!_§ = new §8!4§(stage);
         §>!+§.§;"§.§]!]§ = !§4x§;
      }
      
      protected function initLevelMain() : void
      {
         §#6§.§6!z§ = new §9"3§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §!!W§(§76§);
      }
      
      protected function initStates() : void
      {
         §[3§(new §6"5§(false));
         §[3§(new §!!7§(false));
         §[3§(new §#;§(false));
         §[3§(new §?'§(false));
         §[3§(new §8"D§(false));
         §[3§(new StatePlay(false));
         §[3§(new §7l§(false));
         §[3§(new §&!>§(false));
         §[3§(new §<!z§(false));
         §[3§(new §8!u§(false));
         §[3§(new §5!v§(false));
         §[3§(new StateCutScene(false));
         §[3§(new §9<§(false));
         if(stage.stageWidth != §=!u§ || stage.stageHeight != §^!7§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §8P§(param1:ByteArray) : void
      {
      }
      
      protected function §<"'§(param1:Event) : void
      {
         §="7§.§+!j§();
      }
      
      protected function §3[§(param1:MouseEvent) : void
      {
         §="7§.§#"0§();
         if(this.§0"B§)
         {
            ++this.§7!s§;
            if(this.§7!s§ > §!F§)
            {
               this.§0"B§ = false;
               if(this.§0!a§ < §3+§)
               {
                  this.§]!^§(this.§<!h§);
               }
            }
         }
      }
      
      public function §0_§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§+!S§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §=!u§;
         var _loc3_:Number = stage.stageHeight / §^!7§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§^!7§ / §=!u§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§=!u§ / §^!7§);
            _loc5_ = stage.stageHeight;
         }
         §#6§.§^9§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §1M§ = stage.stageWidth;
         §5K§ = stage.stageHeight;
      }
      
      public function §'!+§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§<!h§ > §7!"§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§]!^§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§^"@§(_loc1_);
            }
         }
      }
      
      public function §#m§() : void
      {
         this.§]!^§(0);
      }
      
      public function §-!P§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §]!^§(param1:int) : void
      {
         this.§+!S§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§<!h§ = param1;
         this.§0"B§ = false;
      }
      
      private function §^"@§(param1:int) : void
      {
         this.§+!S§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§<!h§ = param1;
         this.§0!a§ = 0;
         this.§7!s§ = 0;
         this.§0"B§ = true;
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
         §=!L§.§;"§.§-!`§();
         LevelManager.§!"@§(JSON.parse(this.§[O§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§#6§.§=_§ != null)
         {
            §#6§.§=_§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§>k§().isGenericState())
         {
            if(_loc2_ == §1-§.STATE_STATUS_COMPLETED)
            {
               §+!k§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §>k§().mName + " New State = " + §>k§().mNextState);
               §=!w§(§>k§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §;H§;
      }
      
      override public function getAppHeight() : Number
      {
         return §+P§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §6"<§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §&"D§;
      }
      
      protected function initializeGame() : void
      {
         §#6§.§%!e§(this.getItemData(),this.getLevelBackgrounds());
         §#6§.§[!2§(this.§[O§.§1S§,§6G§.§=!b§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §5!C§.§9G§(§;I§);
      }
      
      protected function getItemData() : XML
      {
         return §5!C§.§9G§(§#!A§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §4!8§ = true;
         if(§!!f§)
         {
            §=!w§(§6"5§.STATE_NAME);
         }
         else
         {
            §=!w§(§#;§.STATE_NAME);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§0"B§)
         {
            ++this.§0!a§;
         }
         if(!§"]§.§+"E§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§+!S§)
         {
            this.§+!S§ = false;
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
