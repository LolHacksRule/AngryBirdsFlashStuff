package
{
   import § ""§.§4!n§;
   import §!l§.§<!"§;
   import §&W§.§1!w§;
   import §&W§.§3g§;
   import §&W§.§7L§;
   import §-!+§.§6"6§;
   import §07§.§ >§;
   import §0s§.§8!z§;
   import §1d§.§'!t§;
   import §2x§.§ !]§;
   import §2x§.§!0§;
   import §2x§.§""<§;
   import §2x§.§'5§;
   import §2x§.§-"1§;
   import §2x§.§40§;
   import §2x§.§6"=§;
   import §2x§.§7!x§;
   import §2x§.§8";§;
   import §2x§.§8D§;
   import §2x§.StateCutScene;
   import §2x§.StatePlay;
   import §2x§.§^f§;
   import §5!8§.§1u§;
   import §8!E§.§?!X§;
   import §9";§.§,"4§;
   import §9";§.§<!7§;
   import §=!<§.§5!U§;
   import §=!<§.§7+§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import com.rovio.assets.§3!E§;
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
   
   public class AngryBirdsFP11 extends §<!7§
   {
      
      protected static var §=!c§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §`]§:String;
      
      public static var §;!N§:String;
      
      public static const §`!_§:int = 1024;
      
      public static const §?_§:int = 768;
      
      public static const §1D§:Boolean = false;
      
      public static const §4!G§:int = 2000;
      
      public static const § !b§:Boolean = false;
      
      private static const §%!h§:int = 750;
      
      private static const §<"<§:int = 3;
      
      private static const §6I§:int = 15;
      
      protected static var §1!q§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §[Y§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §@7§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var § !w§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §"!c§:§'!t§ = null;
      
      public static var §2!<§:Boolean = true;
      
      private static var §+!g§:AngryBirdsFP11 = null;
      
      public static var §6D§:Sprite = null;
      
      public static var §6!7§:§7+§;
      
      public static var §%"2§:Boolean = false;
      
      protected static var §6"7§:int = 0;
      
      protected static var §-z§:int = 0;
       
      
      private var § for§:§ >§;
      
      private var §`Z§:int;
      
      private var §4+§:Boolean;
      
      private var §;K§:int;
      
      private var §3s§:int;
      
      protected var § ;§:Boolean;
      
      public function AngryBirdsFP11(param1:§,"4§)
      {
         this.§ for§ = new § >§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §`!4§ || stage.stageHeight != §!,§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §6"7§;
      }
      
      public static function get stageHeight() : int
      {
         return §-z§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §2!<§ = param1;
         §5;§.§!"!§(§2!<§);
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §2!<§;
      }
      
      public static function get §`!4§() : int
      {
         return §2p§.getAppWidth();
      }
      
      public static function get §!,§() : int
      {
         return §2p§.getAppHeight();
      }
      
      public static function §;!X§() : void
      {
         if(§5;§.§+!7§("Channel_Theme") == null || !§5;§.§+!7§("Channel_Theme").§9!8§())
         {
            §5;§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §["9§() : void
      {
         §5;§.§@g§("Channel_Theme");
      }
      
      public static function get §2p§() : AngryBirdsFP11
      {
         return §+!g§;
      }
      
      protected function getAssetMap() : XML
      {
         return §3g§.§5">§(§[Y§);
      }
      
      protected function getUIData() : XML
      {
         return §3g§.§5">§(§1!q§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §<!"§.§7!?§.init(§1u§.§@t§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§ for§,this.§0<§);
         §+!g§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §&s§ = §`!4§;
         §"-§ = §!,§;
         §5!U§.init(this,§`!4§,§!,§);
         this.initLevelMain();
         §5!U§.§+p§.visible = false;
         §7L§.§4!W§(§[!V§);
         §7L§.§=o§(true);
         var _loc1_:XMLList = §3g§.§5">§(§=!c§).children();
         §3!E§.init(_loc1_);
         §5;§.§9L§("CHANNEL_THEME",1,1);
         §5;§.§9L§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§'D§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;M§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§<7§);
         §6!7§ = new §7+§(stage);
         §"L§.§7!?§.§]!5§ = !§1D§;
      }
      
      protected function initLevelMain() : void
      {
         §5!U§.§,!E§ = new §?!X§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §"!c§ = new §'!t§(§;!N§);
      }
      
      protected function initStates() : void
      {
         §'"§(new § !]§(false));
         §'"§(new §8D§(false));
         §'"§(new §'5§(false));
         §'"§(new §7!x§(false));
         §'"§(new §8";§(false));
         §'"§(new StatePlay(false));
         §'"§(new §-"1§(false));
         §'"§(new §!0§(false));
         §'"§(new §""<§(false));
         §'"§(new §40§(false));
         §'"§(new §6"=§(false));
         §'"§(new StateCutScene(false));
         §'"§(new §^f§(false));
         if(stage.stageWidth != §`!4§ || stage.stageHeight != §!,§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §0<§(param1:ByteArray) : void
      {
      }
      
      protected function §'D§(param1:Event) : void
      {
         §1!w§.§`!y§();
      }
      
      protected function §;M§(param1:MouseEvent) : void
      {
         §1!w§.§@!&§();
         if(this.§4+§)
         {
            ++this.§3s§;
            if(this.§3s§ > §6I§)
            {
               this.§4+§ = false;
               if(this.§;K§ < §<"<§)
               {
                  this.§+!<§(this.§`Z§);
               }
            }
         }
      }
      
      public function §]!c§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§ ;§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §`!4§;
         var _loc3_:Number = stage.stageHeight / §!,§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§!,§ / §`!4§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§`!4§ / §!,§);
            _loc5_ = stage.stageHeight;
         }
         §5!U§.§;"#§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §6"7§ = stage.stageWidth;
         §-z§ = stage.stageHeight;
      }
      
      public function §`W§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§`Z§ > §%!h§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§+!<§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§@y§(_loc1_);
            }
         }
      }
      
      public function §4!Z§() : void
      {
         this.§+!<§(0);
      }
      
      public function §'"2§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §+!<§(param1:int) : void
      {
         this.§ ;§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§`Z§ = param1;
         this.§4+§ = false;
      }
      
      private function §@y§(param1:int) : void
      {
         this.§ ;§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§`Z§ = param1;
         this.§;K§ = 0;
         this.§3s§ = 0;
         this.§4+§ = true;
      }
      
      protected function §<7§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §<!"§.§7!?§.§8T§();
         §8!z§.§,a§(JSON.parse(this.§ for§.getFileAsString("Chapters.json")));
         this.§+m§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§5!U§.§+p§ != null)
         {
            §5!U§.§+p§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§-!q§().isGenericState())
         {
            if(_loc2_ == §>!T§.STATE_STATUS_COMPLETED)
            {
               §7L§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §-!q§().mName + " New State = " + §-!q§().mNextState);
               §4>§(§-!q§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §`!_§;
      }
      
      override public function getAppHeight() : Number
      {
         return §?_§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §4!G§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §`]§;
      }
      
      protected function §+m§() : void
      {
         §5!U§.§"&§(this.getItemData(),this.getLevelBackgrounds());
         §5!U§.§[8§(this.§ for§.§;&§,§4!n§.§@B§(),this.§`n§);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §3g§.§5">§(§ !w§);
      }
      
      protected function getItemData() : XML
      {
         return §3g§.§5">§(§@7§);
      }
      
      protected function §`n§(param1:Event) : void
      {
         §%"2§ = true;
         if(§ !b§)
         {
            §4>§(§ !]§.§>H§);
         }
         else
         {
            §4>§(§'5§.§>H§);
         }
      }
      
      public function §]"1§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§4+§)
         {
            ++this.§;K§;
         }
         if(!§6"6§.§-!S§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§ ;§)
         {
            this.§ ;§ = false;
         }
      }
      
      public function §5j§() : void
      {
      }
      
      public function §[=§() : void
      {
      }
   }
}
