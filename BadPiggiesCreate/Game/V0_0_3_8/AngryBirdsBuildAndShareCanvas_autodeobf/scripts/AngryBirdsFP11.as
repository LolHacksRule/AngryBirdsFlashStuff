package
{
   import §"!0§.§"!5§;
   import §%!<§.§7V§;
   import §%!k§.§=M§;
   import §%h§.§5X§;
   import §'!O§.§[!m§;
   import §-P§.§%p§;
   import §-P§.§-!8§;
   import §-P§.§-!H§;
   import §-P§.§1f§;
   import §-P§.§3" §;
   import §-P§.§9!,§;
   import §-P§.§<!4§;
   import §-P§.§?!B§;
   import §-P§.StateCutScene;
   import §-P§.StatePlay;
   import §-P§.§[!E§;
   import §-P§.§^!P§;
   import §-P§.§`G§;
   import §0!F§.§^d§;
   import §3&§.§7G§;
   import §4u§.§9<§;
   import §4u§.§<!>§;
   import §4u§.§<!L§;
   import §6!]§.§"!@§;
   import §6!]§.§-d§;
   import §6`§.§?!7§;
   import §;!+§.§?p§;
   import §>w§.§4E§;
   import §]-§.§=!$§;
   import §`%§.§"2§;
   import §`%§.§8!0§;
   import com.rovio.assets.§=<§;
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
   
   public class AngryBirdsFP11 extends §"!@§
   {
      
      protected static var §0!a§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §,!?§:String;
      
      public static var §!!s§:String;
      
      public static const §;"#§:int = 1024;
      
      public static const §3g§:int = 768;
      
      public static const §`"&§:Boolean = false;
      
      public static const §"!l§:int = 2000;
      
      public static const §[!H§:Boolean = false;
      
      private static const §`",§:int = 750;
      
      private static const §-!D§:int = 3;
      
      private static const §6@§:int = 15;
      
      protected static var §^!w§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §?!O§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §#U§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §^7§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §8!v§:§=!$§ = null;
      
      public static var §5!o§:Boolean = true;
      
      private static var §[""§:AngryBirdsFP11 = null;
      
      public static var §1l§:Sprite = null;
      
      public static var §@C§:§"2§;
      
      public static var §!!t§:Boolean = false;
      
      protected static var §4!_§:int = 0;
      
      protected static var §,! §:int = 0;
       
      
      private var §@!z§:§?p§;
      
      private var §<!a§:int;
      
      private var §5"#§:Boolean;
      
      private var §-T§:int;
      
      private var §[!u§:int;
      
      protected var §;y§:Boolean;
      
      public function AngryBirdsFP11(param1:§-d§)
      {
         this.§@!z§ = new §?p§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §'A§ || stage.stageHeight != §7!;§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §4!_§;
      }
      
      public static function get stageHeight() : int
      {
         return §,! §;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §5!o§ = param1;
         §?!7§.§["2§(§5!o§);
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §5!o§;
      }
      
      public static function get §'A§() : int
      {
         return §"!U§.getAppWidth();
      }
      
      public static function get §7!;§() : int
      {
         return §"!U§.getAppHeight();
      }
      
      public static function §]^§() : void
      {
         if(§?!7§.get("Channel_Theme") == null || !§?!7§.get("Channel_Theme").§^" §())
         {
            §?!7§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §5!j§() : void
      {
         §?!7§.§[N§("Channel_Theme");
      }
      
      public static function get §"!U§() : AngryBirdsFP11
      {
         return §[""§;
      }
      
      protected function getAssetMap() : XML
      {
         return §<!>§.§%!$§(§?!O§);
      }
      
      protected function getUIData() : XML
      {
         return §<!>§.§%!$§(§^!w§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §7G§.§9j§.init(§=M§.§2w§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§@!z§,this.§&!>§);
         §[""§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §+!o§ = §'A§;
         §8!C§ = §7!;§;
         §8!0§.init(this,§'A§,§7!;§);
         this.initLevelMain();
         §8!0§.§&!S§.visible = false;
         §<!L§.§#z§(§,W§);
         §<!L§.§@v§(true);
         var _loc1_:XMLList = §<!>§.§%!$§(§0!a§).children();
         §=<§.init(_loc1_);
         §?!7§.§!!l§("CHANNEL_THEME",1,1);
         §?!7§.§!!l§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§%s§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§4R§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§6!c§);
         §@C§ = new §"2§(stage);
         §"!5§.§9j§.§9P§ = !§`"&§;
      }
      
      protected function initLevelMain() : void
      {
         §8!0§.§?2§ = new §5X§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §8!v§ = new §=!$§(§!!s§);
      }
      
      protected function initStates() : void
      {
         §;r§(new §`G§(false));
         §;r§(new §[!E§(false));
         §;r§(new §3" §(false));
         §;r§(new §<!4§(false));
         §;r§(new §1f§(false));
         §;r§(new StatePlay(false));
         §;r§(new §%p§(false));
         §;r§(new §?!B§(false));
         §;r§(new §-!H§(false));
         §;r§(new §9!,§(false));
         §;r§(new §-!8§(false));
         §;r§(new StateCutScene(false));
         §;r§(new §^!P§(false));
         if(stage.stageWidth != §'A§ || stage.stageHeight != §7!;§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §&!>§(param1:ByteArray) : void
      {
      }
      
      protected function §%s§(param1:Event) : void
      {
         §9<§.§#!S§();
      }
      
      protected function §4R§(param1:MouseEvent) : void
      {
         §9<§.§,!`§();
         if(this.§5"#§)
         {
            ++this.§[!u§;
            if(this.§[!u§ > §6@§)
            {
               this.§5"#§ = false;
               if(this.§-T§ < §-!D§)
               {
                  this.§?d§(this.§<!a§);
               }
            }
         }
      }
      
      public function §;t§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§;y§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §'A§;
         var _loc3_:Number = stage.stageHeight / §7!;§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§7!;§ / §'A§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§'A§ / §7!;§);
            _loc5_ = stage.stageHeight;
         }
         §8!0§.§,",§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §4!_§ = stage.stageWidth;
         §,! § = stage.stageHeight;
      }
      
      public function §2!Z§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§<!a§ > §`",§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§?d§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§%!j§(_loc1_);
            }
         }
      }
      
      public function §`^§() : void
      {
         this.§?d§(0);
      }
      
      public function §-!!§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §?d§(param1:int) : void
      {
         this.§;y§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§<!a§ = param1;
         this.§5"#§ = false;
      }
      
      private function §%!j§(param1:int) : void
      {
         this.§;y§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§<!a§ = param1;
         this.§-T§ = 0;
         this.§[!u§ = 0;
         this.§5"#§ = true;
      }
      
      protected function §6!c§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §7G§.§9j§.§0!j§();
         §[!m§.§"H§(JSON.parse(this.§@!z§.getFileAsString("Chapters.json")));
         this.§>"+§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§8!0§.§&!S§ != null)
         {
            §8!0§.§&!S§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§ #§().isGenericState())
         {
            if(_loc2_ == §4E§.STATE_STATUS_COMPLETED)
            {
               §<!L§.log("AngryBirdSocial::run() state change is about to start. Old State = " + § #§().mName + " New State = " + § #§().mNextState);
               §6?§(§ #§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §;"#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §3g§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §"!l§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §,!?§;
      }
      
      protected function §>"+§() : void
      {
         §8!0§.§,-§(this.getItemData(),this.getLevelBackgrounds());
         §8!0§.§4!I§(this.§@!z§.§2!J§,§7V§.§@B§(),this.§4!X§);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §<!>§.§%!$§(§^7§);
      }
      
      protected function getItemData() : XML
      {
         return §<!>§.§%!$§(§#U§);
      }
      
      protected function §4!X§(param1:Event) : void
      {
         §!!t§ = true;
         if(§[!H§)
         {
            §6?§(§`G§.§#!w§);
         }
         else
         {
            §6?§(§3" §.§#!w§);
         }
      }
      
      public function §[!s§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§5"#§)
         {
            ++this.§-T§;
         }
         if(!§^d§.§+>§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§;y§)
         {
            this.§;y§ = false;
         }
      }
      
      public function §9§() : void
      {
      }
      
      public function §2L§() : void
      {
      }
   }
}
