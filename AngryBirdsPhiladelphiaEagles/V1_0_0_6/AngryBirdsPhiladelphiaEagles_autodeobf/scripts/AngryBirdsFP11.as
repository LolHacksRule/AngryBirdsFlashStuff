package
{
   import §"! §.§6<§;
   import §"! §.§<B§;
   import §#!0§.§#-§;
   import §&b§.§!5§;
   import §&b§.§[F§;
   import §16§.§!y§;
   import §1E§.§2h§;
   import §3!O§.§ !2§;
   import §3!O§.§!Z§;
   import §3!O§.§5q§;
   import §3>§.§8!J§;
   import §4!-§.§%o§;
   import §4f§.§38§;
   import §8!A§.§ !6§;
   import §8!A§.§!n§;
   import §8!A§.§"!!§;
   import §8!A§.§#e§;
   import §8!A§.§#u§;
   import §8!A§.§-h§;
   import §8!A§.§4!?§;
   import §8!A§.§6!C§;
   import §8!A§.§8#§;
   import §8!A§.§;!E§;
   import §8!A§.§=L§;
   import §8!A§.StateCutScene;
   import §8!A§.StatePlay;
   import §;!!§.§0H§;
   import §<@§.§^m§;
   import §<Z§.§ l§;
   import §@g§.§4!@§;
   import §]$§.§5^§;
   import com.rovio.assets.§[_§;
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
   
   public class AngryBirdsFP11 extends §<B§
   {
      
      protected static var §&%§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §1c§:String;
      
      public static var §?!M§:String;
      
      public static const §[!1§:int = 1024;
      
      public static const §87§:int = 768;
      
      public static const §9!-§:Boolean = false;
      
      public static const §&H§:int = 2000;
      
      public static const §'H§:Boolean = false;
      
      private static const §5f§:int = 750;
      
      private static const §5X§:int = 3;
      
      private static const §"8§:int = 15;
      
      protected static var §3&§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §7R§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §,R§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §2!;§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var § !-§:§38§ = null;
      
      public static var §=C§:Boolean = true;
      
      private static var §=!N§:AngryBirdsFP11 = null;
      
      public static var §?B§:Sprite = null;
      
      public static var §];§:§!5§;
      
      public static var §#!6§:Boolean = false;
      
      protected static var §%!=§:int = 0;
      
      protected static var §2C§:int = 0;
       
      
      private var §5#§:§!y§;
      
      private var §"2§:int;
      
      private var §9"§:Boolean;
      
      private var §,§:int;
      
      private var §]!P§:int;
      
      protected var §?D§:Boolean;
      
      public function AngryBirdsFP11(param1:§6<§)
      {
         this.§5#§ = new §!y§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §^@§ || stage.stageHeight != §#,§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §%!=§;
      }
      
      public static function get stageHeight() : int
      {
         return §2C§;
      }
      
      public static function §0!E§(param1:Boolean) : void
      {
         §=C§ = param1;
         §#-§.§5R§(§=C§);
      }
      
      public static function § !Q§() : Boolean
      {
         return §=C§;
      }
      
      public static function get §^@§() : int
      {
         return §^F§.getAppWidth();
      }
      
      public static function get §#,§() : int
      {
         return §^F§.getAppHeight();
      }
      
      public static function §=0§() : void
      {
         if(§#-§.§=f§("Channel_Theme") == null || !§#-§.§=f§("Channel_Theme").§,J§())
         {
            §#-§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §2!7§() : void
      {
         §#-§.§`s§("Channel_Theme");
      }
      
      public static function get §^F§() : AngryBirdsFP11
      {
         return §=!N§;
      }
      
      protected function getAssetMap() : XML
      {
         return §!Z§.§5C§(§7R§);
      }
      
      protected function getUIData() : XML
      {
         return §!Z§.§5C§(§3&§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §8!J§.§<"§.init(§^m§.§`!$§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§5#§,this.§<n§);
         §=!N§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §0o§ = §^@§;
         §<v§ = §#,§;
         §[F§.init(this,§^@§,§#,§);
         this.initLevelMain();
         §[F§.§1L§.visible = false;
         §5q§.§-y§(§`r§);
         §5q§.§`!1§(true);
         var _loc1_:XMLList = §!Z§.§5C§(§&%§).children();
         §[_§.init(_loc1_);
         §#-§.§[R§("CHANNEL_THEME",1,1);
         §#-§.§[R§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§,W§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[Z§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §];§ = new §!5§(stage);
         §5^§.§<"§.§9-§ = !§9!-§;
      }
      
      protected function initLevelMain() : void
      {
         §[F§.§9u§ = new §%o§(stage);
      }
      
      protected function initUserProgress() : void
      {
         § !-§ = new §38§(§?!M§);
      }
      
      protected function initStates() : void
      {
         §1!O§(new §=L§(false));
         §1!O§(new §#u§(false));
         §1!O§(new §-h§(false));
         §1!O§(new § !6§(false));
         §1!O§(new §6!C§(false));
         §1!O§(new StatePlay(false));
         §1!O§(new §8#§(false));
         §1!O§(new §!n§(false));
         §1!O§(new §"!!§(false));
         §1!O§(new §#e§(false));
         §1!O§(new §;!E§(false));
         §1!O§(new StateCutScene(false));
         §1!O§(new §4!?§(false));
         if(stage.stageWidth != §^@§ || stage.stageHeight != §#,§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §<n§(param1:ByteArray) : void
      {
      }
      
      protected function §,W§(param1:Event) : void
      {
         § !2§.§?z§();
      }
      
      protected function §[Z§(param1:MouseEvent) : void
      {
         § !2§.§]=§();
         if(this.§9"§)
         {
            ++this.§]!P§;
            if(this.§]!P§ > §"8§)
            {
               this.§9"§ = false;
               if(this.§,§ < §5X§)
               {
                  this.§8&§(this.§"2§);
               }
            }
         }
      }
      
      public function §2!+§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§?D§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §^@§;
         var _loc3_:Number = stage.stageHeight / §#,§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§#,§ / §^@§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§^@§ / §#,§);
            _loc5_ = stage.stageHeight;
         }
         §[F§.§true §(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §%!=§ = stage.stageWidth;
         §2C§ = stage.stageHeight;
      }
      
      public function §>!M§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§"2§ > §5f§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§8&§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§]y§(_loc1_);
            }
         }
      }
      
      public function §;n§() : void
      {
         this.§8&§(0);
      }
      
      public function §`#§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §8&§(param1:int) : void
      {
         this.§?D§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§"2§ = param1;
         this.§9"§ = false;
      }
      
      private function §]y§(param1:int) : void
      {
         this.§?D§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§"2§ = param1;
         this.§,§ = 0;
         this.§]!P§ = 0;
         this.§9"§ = true;
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
         §8!J§.§<"§.§7'§();
         §2h§.§ !3§(JSON.parse(this.§5#§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§[F§.§1L§ != null)
         {
            §[F§.§1L§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§-!>§().isGenericState())
         {
            if(_loc2_ == §0H§.STATE_STATUS_COMPLETED)
            {
               §5q§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §-!>§().mName + " New State = " + §-!>§().mNextState);
               §"x§(§-!>§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §[!1§;
      }
      
      override public function getAppHeight() : Number
      {
         return §87§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §&H§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §1c§;
      }
      
      protected function initializeGame() : void
      {
         §[F§.§+B§(this.getItemData(),this.getLevelBackgrounds());
         §[F§.§9D§(this.§5#§.§=g§,§ l§.§7C§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §!Z§.§5C§(§2!;§);
      }
      
      protected function getItemData() : XML
      {
         return §!Z§.§5C§(§,R§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §#!6§ = true;
         if(§'H§)
         {
            §"x§(§=L§.§2`§);
         }
         else
         {
            §"x§(§-h§.§2`§);
         }
      }
      
      public function § +§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§9"§)
         {
            ++this.§,§;
         }
         if(!§4!@§.§<<§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§?D§)
         {
            this.§?D§ = false;
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
