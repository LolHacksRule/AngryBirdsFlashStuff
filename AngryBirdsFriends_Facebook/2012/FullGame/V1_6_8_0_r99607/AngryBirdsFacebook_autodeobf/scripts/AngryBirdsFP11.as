package
{
   import §!!t§.§,-§;
   import §"!4§.§1!m§;
   import §'i§.§7!m§;
   import §+"6§.§5!H§;
   import §+I§.§7!$§;
   import §+I§.§9!%§;
   import §0!?§.§'!$§;
   import §0!?§.§1!%§;
   import §0!?§.§<K§;
   import §0M§.§=!K§;
   import §0M§.§`!9§;
   import §0r§.§7!b§;
   import §1k§.§%4§;
   import §2!,§.§3!V§;
   import §3,§.§[!;§;
   import §9"%§.§?V§;
   import §<%§.§%;§;
   import §[!K§.§!!x§;
   import §[!K§.§"c§;
   import §[!K§.§&!x§;
   import §[!K§.§,+§;
   import §[!K§.§-!M§;
   import §[!K§.§2"§;
   import §[!K§.§2&§;
   import §[!K§.§3y§;
   import §[!K§.§=!e§;
   import §[!K§.§=B§;
   import §[!K§.§?"-§;
   import §[!K§.StateCutScene;
   import §[!K§.StatePlay;
   import §[!z§.LevelManager;
   import com.rovio.assets.§5I§;
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
   
   public class AngryBirdsFP11 extends §=!K§
   {
      
      protected static var §'"<§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §5!9§:String;
      
      public static var §7!!§:String;
      
      public static const §^3§:int = 1024;
      
      public static const §&"$§:int = 768;
      
      public static const §+1§:Boolean = false;
      
      public static const §true §:int = 2000;
      
      public static const §<"<§:Boolean = false;
      
      private static const §do §:int = 750;
      
      private static const §9@§:int = 3;
      
      private static const §^;§:int = 15;
      
      protected static var §=U§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §3!2§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §'!%§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §3!e§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§7!m§ = null;
      
      public static var §3!U§:Boolean = true;
      
      private static var §%!y§:AngryBirdsFP11 = null;
      
      public static var §!!=§:Sprite = null;
      
      public static var §+!?§:§7!$§;
      
      public static var §4-§:Boolean = false;
      
      protected static var §,!§:int = 0;
      
      protected static var §9#§:int = 0;
       
      
      private var §^a§:§3!V§;
      
      private var §]!D§:int;
      
      private var § !N§:Boolean;
      
      private var §]1§:int;
      
      private var §7!P§:int;
      
      protected var §`!-§:Boolean;
      
      public function AngryBirdsFP11(param1:§`!9§)
      {
         this.§^a§ = new §3!V§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §#!T§ || stage.stageHeight != §+!e§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §,!§;
      }
      
      public static function get stageHeight() : int
      {
         return §9#§;
      }
      
      public static function §#u§(param1:Boolean) : void
      {
         §3!U§ = param1;
         §%4§.§>!6§(§3!U§);
      }
      
      public static function §0!+§() : Boolean
      {
         return §3!U§;
      }
      
      public static function get §#!T§() : int
      {
         return §`"B§.getAppWidth();
      }
      
      public static function get §+!e§() : int
      {
         return §`"B§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(§%4§.§+!y§("Channel_Theme") == null || !§%4§.§+!y§("Channel_Theme").§^^§())
         {
            §%4§.§>f§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §'§() : void
      {
         §%4§.§&"@§("Channel_Theme");
      }
      
      public static function get §`"B§() : AngryBirdsFP11
      {
         return §%!y§;
      }
      
      protected function getAssetMap() : XML
      {
         return §1!%§.§8!?§(§3!2§);
      }
      
      protected function getUIData() : XML
      {
         return §1!%§.§8!?§(§=U§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §1!m§.§8c§.init(§?V§.§9§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§^a§,this.§+-§);
         §%!y§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §@!X§ = §#!T§;
         §;N§ = §+!e§;
         §9!%§.init(this,§#!T§,§+!e§);
         this.initLevelMain();
         §9!%§.§<y§.visible = false;
         §'!$§.§<_§(§"=§);
         §'!$§.§6"!§(true);
         var _loc1_:XMLList = §1!%§.§8!?§(§'"<§).children();
         §5I§.init(_loc1_);
         §%4§.§>$§("CHANNEL_THEME",1,1);
         §%4§.§>$§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§1A§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§"!R§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §+!?§ = new §7!$§(stage);
         §7!b§.§8c§.§!!y§ = !§+1§;
      }
      
      protected function initLevelMain() : void
      {
         §9!%§.§!!M§ = new §[!;§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §7!m§(§7!!§);
      }
      
      protected function initStates() : void
      {
         §?F§(new §3y§(false));
         §?F§(new §"c§(false));
         §?F§(new §&!x§(false));
         §?F§(new §=!e§(false));
         §?F§(new §=B§(false));
         §?F§(new StatePlay(false));
         §?F§(new §-!M§(false));
         §?F§(new §!!x§(false));
         §?F§(new §2"§(false));
         §?F§(new §,+§(false));
         §?F§(new §?"-§(false));
         §?F§(new StateCutScene(false));
         §?F§(new §2&§(false));
         if(stage.stageWidth != §#!T§ || stage.stageHeight != §+!e§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §+-§(param1:ByteArray) : void
      {
      }
      
      protected function §1A§(param1:Event) : void
      {
         §<K§.§@"9§();
      }
      
      protected function §"!R§(param1:MouseEvent) : void
      {
         §<K§.§3!B§();
         if(this.§ !N§)
         {
            ++this.§7!P§;
            if(this.§7!P§ > §^;§)
            {
               this.§ !N§ = false;
               if(this.§]1§ < §9@§)
               {
                  this.§7+§(this.§]!D§);
               }
            }
         }
      }
      
      public function §%_§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§`!-§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §#!T§;
         var _loc3_:Number = stage.stageHeight / §+!e§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§+!e§ / §#!T§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§#!T§ / §+!e§);
            _loc5_ = stage.stageHeight;
         }
         §9!%§.§5c§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §,!§ = stage.stageWidth;
         §9#§ = stage.stageHeight;
      }
      
      public function §>!-§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§]!D§ > §do §)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§7+§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§%!%§(_loc1_);
            }
         }
      }
      
      public function §'H§() : void
      {
         this.§7+§(0);
      }
      
      public function §9A§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §7+§(param1:int) : void
      {
         this.§`!-§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§]!D§ = param1;
         this.§ !N§ = false;
      }
      
      private function §%!%§(param1:int) : void
      {
         this.§`!-§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§]!D§ = param1;
         this.§]1§ = 0;
         this.§7!P§ = 0;
         this.§ !N§ = true;
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
         §1!m§.§8c§.§-! §();
         LevelManager.§6N§(JSON.parse(this.§^a§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§9!%§.§<y§ != null)
         {
            §9!%§.§<y§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§>p§().isGenericState())
         {
            if(_loc2_ == §,-§.STATE_STATUS_COMPLETED)
            {
               §'!$§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §>p§().mName + " New State = " + §>p§().mNextState);
               § !`§(§>p§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §^3§;
      }
      
      override public function getAppHeight() : Number
      {
         return §&"$§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §true §;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §5!9§;
      }
      
      protected function initializeGame() : void
      {
         §9!%§.§4w§(this.getItemData(),this.getLevelBackgrounds());
         §9!%§.§="6§(this.§^a§.§'Y§,§%;§.§4!p§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §1!%§.§8!?§(§3!e§);
      }
      
      protected function getItemData() : XML
      {
         return §1!%§.§8!?§(§'!%§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §4-§ = true;
         if(§<"<§)
         {
            § !`§(§3y§.STATE_NAME);
         }
         else
         {
            § !`§(§&!x§.STATE_NAME);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§ !N§)
         {
            ++this.§]1§;
         }
         if(!§5!H§.include())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§`!-§)
         {
            this.§`!-§ = false;
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
