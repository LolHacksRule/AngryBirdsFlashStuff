package
{
   import § !A§.§ p§;
   import § !A§.§"!8§;
   import § !r§.§%s§;
   import § !r§.§3!X§;
   import § !r§.§`![§;
   import §&!0§.§%!`§;
   import §-!0§.§1^§;
   import §1!F§.§#!@§;
   import §1!F§.§0k§;
   import §1!F§.§0x§;
   import §1!F§.§1!f§;
   import §1!F§.§26§;
   import §1!F§.§8!v§;
   import §1!F§.§9!h§;
   import §1!F§.§<!`§;
   import §1!F§.§?!M§;
   import §1!F§.§?&§;
   import §1!F§.StateCutScene;
   import §1!F§.StatePlay;
   import §1!F§.§^r§;
   import §1?§.§+!§;
   import §1j§.§1R§;
   import §7v§.§%!M§;
   import §9!n§.§@!T§;
   import §<!<§.§7E§;
   import §<Y§.§;!i§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!-§.§<!§;
   import §?!6§.§1!!§;
   import §@!X§.§7j§;
   import com.rovio.assets.§;y§;
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
   
   public class AngryBirdsFP11 extends § p§
   {
      
      protected static var §;!Q§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §9!T§:String;
      
      public static var §`!l§:String;
      
      public static const §&d§:int = 1024;
      
      public static const §6k§:int = 768;
      
      public static const §>!q§:Boolean = false;
      
      public static const §&_§:int = 2000;
      
      public static const §^!#§:Boolean = false;
      
      private static const §%!c§:int = 750;
      
      private static const §#!s§:int = 3;
      
      private static const §+!A§:int = 15;
      
      protected static var §%&§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §^>§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §?N§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §&!_§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§;!i§ = null;
      
      public static var §%!8§:Boolean = true;
      
      private static var §8;§:AngryBirdsFP11 = null;
      
      public static var §8q§:Sprite = null;
      
      public static var §!!,§:§<!§;
      
      public static var §7!p§:Boolean = false;
      
      protected static var §6!I§:int = 0;
      
      protected static var §+m§:int = 0;
       
      
      private var §<^§:§1R§;
      
      private var §;R§:int;
      
      private var §^!v§:Boolean;
      
      private var §#`§:int;
      
      private var §#!I§:int;
      
      protected var §<W§:Boolean;
      
      public function AngryBirdsFP11(param1:§"!8§)
      {
         this.§<^§ = new §1R§();
         §9!T§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §`!l§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§>!q§ ? "http://head-dot-angrybirds-facebook-dev.appspot.com" : "http://angrybirds-facebook-dev.appspot.com");
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §6!I§;
      }
      
      public static function get stageHeight() : int
      {
         return §+m§;
      }
      
      public static function §;z§(param1:Boolean) : void
      {
         §%!8§ = param1;
         §+!§.§4z§(§%!8§);
      }
      
      public static function §;!f§() : Boolean
      {
         return §%!8§;
      }
      
      public static function get screenWidth() : int
      {
         return §`!d§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §`!d§.getAppHeight();
      }
      
      public static function §?!7§() : void
      {
         if(§+!§.§%!6§("Channel_Theme") == null || !§+!§.§%!6§("Channel_Theme").§6e§())
         {
            §+!§.§4c§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §9!?§() : void
      {
         §+!§.§+!h§("Channel_Theme");
      }
      
      public static function get §`!d§() : AngryBirdsFP11
      {
         return §8;§;
      }
      
      protected function getAssetMap() : XML
      {
         return §3!X§.§3<§(§^>§);
      }
      
      protected function getUIData() : XML
      {
         return §3!X§.§3<§(§%&§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §%!M§.§`!t§.init(§%!`§.§[!6§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§<^§,this.§]!3§);
         §8;§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §,!3§ = screenWidth;
         §-h§ = screenHeight;
         §'!V§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §'!V§.§'!s§.visible = false;
         §`![§.§;q§(§4a§);
         §`![§.§05§(true);
         var _loc1_:XMLList = §3!X§.§3<§(§;!Q§).children();
         §;y§.init(_loc1_);
         §+!§.§#n§("CHANNEL_THEME",1,1);
         §+!§.§#n§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§4E§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §!!,§ = new §<!§(stage);
         §@!T§.§`!t§.§;@§ = !§>!q§;
      }
      
      protected function initLevelMain() : void
      {
         §'!V§.§1!2§ = new §7E§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §;!i§(§`!l§);
      }
      
      protected function initStates() : void
      {
         § Y§(new §1!f§(false));
         § Y§(new §26§(false));
         § Y§(new §#!@§(false));
         § Y§(new §9!h§(false));
         § Y§(new §?&§(false));
         § Y§(new StatePlay(false));
         § Y§(new §^r§(false));
         § Y§(new §0k§(false));
         § Y§(new §<!`§(false));
         § Y§(new §0x§(false));
         § Y§(new §8!v§(false));
         § Y§(new StateCutScene(false));
         § Y§(new §?!M§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §]!3§(param1:ByteArray) : void
      {
      }
      
      protected function §4E§(param1:Event) : void
      {
         §%s§.§9g§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §%s§.§,5§();
         if(this.§^!v§)
         {
            ++this.§#!I§;
            if(this.§#!I§ > §+!A§)
            {
               this.§^!v§ = false;
               if(this.§#`§ < §#!s§)
               {
                  this.§7Q§(this.§;R§);
               }
            }
         }
      }
      
      public function §2#§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§<W§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / screenWidth;
         var _loc3_:Number = stage.stageHeight / screenHeight;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (screenHeight / screenWidth);
         }
         else
         {
            _loc4_ = stage.stageHeight * (screenWidth / screenHeight);
            _loc5_ = stage.stageHeight;
         }
         §'!V§.§>!T§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §6!I§ = stage.stageWidth;
         §+m§ = stage.stageHeight;
      }
      
      public function §!5§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§;R§ > §%!c§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§7Q§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§+!Y§(_loc1_);
            }
         }
      }
      
      public function §2t§() : void
      {
         this.§7Q§(0);
      }
      
      public function §`!-§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §7Q§(param1:int) : void
      {
         this.§<W§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§;R§ = param1;
         this.§^!v§ = false;
      }
      
      private function §+!Y§(param1:int) : void
      {
         this.§<W§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§;R§ = param1;
         this.§#`§ = 0;
         this.§#!I§ = 0;
         this.§^!v§ = true;
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
         §%!M§.§`!t§.§3n§();
         §1^§.§2A§(JSON.parse(this.§<^§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§'!V§.§'!s§ != null)
         {
            §'!V§.§'!s§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§?8§().isGenericState())
         {
            if(_loc2_ == §;!!§.STATE_STATUS_COMPLETED)
            {
               §`![§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §?8§().mName + " New State = " + §?8§().mNextState);
               §8!W§(§?8§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §&d§;
      }
      
      override public function getAppHeight() : Number
      {
         return §6k§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §&_§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §9!T§;
      }
      
      protected function initializeGame() : void
      {
         §'!V§.§@!u§(this.getItemData(),this.getLevelBackgrounds());
         §'!V§.§ D§(this.§<^§.§#!a§,§1!!§.§`Y§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §3!X§.§3<§(§&!_§);
      }
      
      protected function getItemData() : XML
      {
         return §3!X§.§3<§(§?N§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §7!p§ = true;
         if(§^!#§)
         {
            §8!W§(§1!f§.STATE_NAME);
         }
         else
         {
            §8!W§(§#!@§.STATE_NAME);
         }
      }
      
      public function §]R§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§^!v§)
         {
            ++this.§#`§;
         }
         if(!§7j§.§!m§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§<W§)
         {
            this.§<W§ = false;
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
