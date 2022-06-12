package
{
   import §+!F§.§1!D§;
   import §0!2§.§5"L§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §5!G§.§;!>§;
   import §8!k§.§4"0§;
   import §8!k§.§9=§;
   import §9!I§.§6!J§;
   import §9!h§.§ s§;
   import §=#§.§5!S§;
   import §=%§.§>"-§;
   import §>s§.§+m§;
   import §@",§.§ #§;
   import §@",§.§!W§;
   import §@",§.§'!N§;
   import §@",§.§,!c§;
   import §@",§.§5"7§;
   import §@",§.§6!B§;
   import §@",§.§9!M§;
   import §@",§.§9!p§;
   import §@",§.§>G§;
   import §@",§.StateCutScene;
   import §@",§.StatePlay;
   import §@",§.§[2§;
   import §@",§.§`f§;
   import §[!-§.§4-§;
   import §[x§.§%3§;
   import §[x§.§?-§;
   import §[x§.§]"!§;
   import §^!U§.§9S§;
   import §`!n§.LevelManager;
   import com.rovio.assets.§5!z§;
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
   
   public class AngryBirdsFP11 extends §9=§
   {
      
      protected static var §]!R§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §-!H§:String;
      
      public static var §#"@§:String;
      
      public static const §5!f§:int = 1024;
      
      public static const §#!h§:int = 768;
      
      public static const §&!M§:Boolean = false;
      
      public static const §=c§:int = 2000;
      
      public static const §'C§:Boolean = false;
      
      private static const §^"$§:int = 750;
      
      private static const §""+§:int = 3;
      
      private static const §2K§:int = 15;
      
      protected static var §&"J§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §%B§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §2"?§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §`"%§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§ s§ = null;
      
      public static var §]!?§:Boolean = true;
      
      private static var §&q§:AngryBirdsFP11 = null;
      
      public static var §0!4§:Sprite = null;
      
      public static var §,u§:§;!>§;
      
      public static var §<"§:Boolean = false;
      
      protected static var §^!j§:int = 0;
      
      protected static var §5y§:int = 0;
       
      
      private var §?"#§:§9S§;
      
      private var § @§:int;
      
      private var §5"&§:Boolean;
      
      private var §9!$§:int;
      
      private var §#!T§:int;
      
      protected var §3"1§:Boolean;
      
      public function AngryBirdsFP11(param1:§4"0§)
      {
         this.§?"#§ = new §9S§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §`",§ || stage.stageHeight != §[!f§)
         {
            this.§?U§(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §^!j§;
      }
      
      public static function get stageHeight() : int
      {
         return §5y§;
      }
      
      public static function §=",§(param1:Boolean) : void
      {
         §]!?§ = param1;
         §+m§.§["E§(§]!?§);
      }
      
      public static function §""4§() : Boolean
      {
         return §]!?§;
      }
      
      public static function get §`",§() : int
      {
         return §#!4§.getAppWidth();
      }
      
      public static function get §[!f§() : int
      {
         return §#!4§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(§+m§.§ do§("Channel_Theme") == null || !§+m§.§ do§("Channel_Theme").§%![§())
         {
            §+m§.§]!N§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §>d§() : void
      {
         §+m§.§5!P§("Channel_Theme");
      }
      
      public static function get §#!4§() : AngryBirdsFP11
      {
         return §&q§;
      }
      
      protected function getAssetMap() : XML
      {
         return §?-§.§9E§(§%B§);
      }
      
      protected function getUIData() : XML
      {
         return §?-§.§9E§(§&"J§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §6!J§.§1[§.init(§4-§.§ 5§(),this.§""$§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§?"#§,this.§ use§);
         §&q§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §1!t§ = §`",§;
         §&!B§ = §[!f§;
         §&2§.init(this,§`",§,§[!f§);
         this.initLevelMain();
         §&2§.§8"I§.visible = false;
         §%3§.§for §(§%!C§);
         §%3§.§&l§(true);
         var _loc1_:XMLList = §?-§.§9E§(§]!R§).children();
         §5!z§.init(_loc1_);
         §+m§.§9!g§("CHANNEL_THEME",1,1);
         §+m§.§9!g§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§@!l§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6"B§);
         stage.addEventListener(Event.RESIZE,this.§?U§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §,u§ = new §;!>§(stage);
         §&p§.§1[§.§ !`§ = !§&!M§;
      }
      
      protected function §""$§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         §&2§.§],§ = new §5"L§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new § s§(§#"@§);
      }
      
      protected function initStates() : void
      {
         §2"7§(new §,!c§(false));
         §2"7§(new §'!N§(false));
         §2"7§(new §5"7§(false));
         §2"7§(new §6!B§(false));
         §2"7§(new §[2§(false));
         §2"7§(new StatePlay(false));
         §2"7§(new §9!p§(false));
         §2"7§(new §!W§(false));
         §2"7§(new §>G§(false));
         §2"7§(new §9!M§(false));
         §2"7§(new § #§(false));
         §2"7§(new StateCutScene(false));
         §2"7§(new §`f§(false));
         if(stage.stageWidth != §`",§ || stage.stageHeight != §[!f§)
         {
            this.§?U§(null);
         }
      }
      
      protected function § use§(param1:ByteArray) : void
      {
      }
      
      protected function §@!l§(param1:Event) : void
      {
         §]"!§.§'"C§();
      }
      
      protected function §6"B§(param1:MouseEvent) : void
      {
         §]"!§.§9_§();
         if(this.§5"&§)
         {
            ++this.§#!T§;
            if(this.§#!T§ > §2K§)
            {
               this.§5"&§ = false;
               if(this.§9!$§ < §""+§)
               {
                  this.§0!e§(this.§ @§);
               }
            }
         }
      }
      
      public function §!;§() : void
      {
         this.§?U§(null);
      }
      
      protected function §?U§(param1:Event) : void
      {
         this.§3"1§ = true;
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §^!j§;
            _loc3_ = §5y§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §^!j§ == _loc2_ && §5y§ == _loc3_)
         {
            return false;
         }
         §^!j§ = _loc2_;
         §5y§ = _loc3_;
         this.resizeViews(§^!j§,§5y§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §&2§.§"!E§(0,0,param1,param2);
         setViewSize(param1,param2);
      }
      
      public function §-"F§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§ @§ > §^"$§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§0!e§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§"!r§(_loc1_);
            }
         }
      }
      
      public function §1z§() : void
      {
         this.§0!e§(0);
      }
      
      public function §<"!§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §0!e§(param1:int) : void
      {
         this.§3"1§ = true;
         this.§ @§ = param1;
         this.§5"&§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §"!r§(param1:int) : void
      {
         this.§3"1§ = true;
         this.§ @§ = param1;
         this.§9!$§ = 0;
         this.§#!T§ = 0;
         this.§5"&§ = true;
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
         §6!J§.§1[§.§-7§();
         LevelManager.§`!q§(JSON.parse(this.§?"#§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§&2§.§8"I§ != null)
         {
            §&2§.§8"I§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§6!k§().isGenericState())
         {
            if(_loc2_ == §5!S§.STATE_STATUS_COMPLETED)
            {
               §%3§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §6!k§().mName + " New State = " + §6!k§().mNextState);
               §>"I§(§6!k§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §5!f§;
      }
      
      override public function getAppHeight() : Number
      {
         return §#!h§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §=c§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §-!H§;
      }
      
      protected function initializeGame() : void
      {
         §&2§.§2"K§(this.getItemData(),this.getLevelBackgrounds());
         §&2§.§2H§(this.§?"#§.§9!e§,§>"-§.§@I§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §?-§.§9E§(§`"%§);
      }
      
      protected function getItemData() : XML
      {
         return §?-§.§9E§(§2"?§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §<"§ = true;
         if(§'C§)
         {
            §>"I§(§,!c§.STATE_NAME);
         }
         else
         {
            §>"I§(§5"7§.STATE_NAME);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§5"&§)
         {
            ++this.§9!$§;
         }
         if(!§1!D§.§&"$§())
         {
            return;
         }
         if(this.§3"1§)
         {
            this.resize();
            this.§3"1§ = false;
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
