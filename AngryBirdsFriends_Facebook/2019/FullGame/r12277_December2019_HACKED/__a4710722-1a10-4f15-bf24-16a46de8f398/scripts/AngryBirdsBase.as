package
{
   import § "a§.§ !C§;
   import § "v§.§4$4§;
   import § null§.§5"<§;
   import §#!S§.§[!s§;
   import §#"3§.§"$!§;
   import §#"3§.§2#>§;
   import §#"3§.§4!h§;
   import §%#^§.§;!g§;
   import §&§.Starling;
   import §&1§.§,"I§;
   import §&1§.§4""§;
   import §+!n§.§+!p§;
   import §+!n§.§=%§;
   import §-!j§.§#"+§;
   import §-!j§.§&!@§;
   import §2E§.§>"^§;
   import §5"l§.§0!b§;
   import §6#x§.§'!G§;
   import §7"1§.§[#U§;
   import §9!6§.§-§;
   import §9!6§.§8#v§;
   import §9!6§.§@M§;
   import §=X§.§-!<§;
   import §>#Y§.§"1§;
   import §>#Y§.§@!p§;
   import §?$#§.§<d§;
   import §?o§.§4#?§;
   import §^1§.§%"`§;
   import §^1§.§+!Y§;
   import §^1§.§-§;
   import §^1§.§2t§;
   import §^1§.§4!s§;
   import §^1§.§4#p§;
   import §^1§.§5!6§;
   import §^1§.§;O§;
   import §^1§.§=!w§;
   import §^1§.StateCutScene;
   import §^1§.StatePlay;
   import §`!u§.§%#B§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§&!n§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class AngryBirdsBase extends §4""§
   {
      
      protected static var § &§:Class = §4!w§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §@#F§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §2"?§:int = 1024;
      
      public static const §%!"§:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = false;
      
      public static const §["a§:int = 2000;
      
      private static const §^"8§:int = 750;
      
      private static const §9$E§:int = 3;
      
      private static const §6[§:int = 15;
      
      public static const §>"u§:String = "Channel_Theme";
      
      public static const §!"G§:String = "CHANNEL_AMBIENT";
      
      public static const §-##§:String = "friends_title_theme";
      
      protected static var §6$8§:Class = §0!z§;
      
      protected static var §@!G§:Class = §["r§;
      
      protected static var § #v§:Class = §'"$§;
      
      protected static var §+#3§:Class = §9#8§;
      
      protected static var §["`§:Class = §9#a§;
      
      public static var §7"q§:Boolean = true;
      
      private static var §9!h§:AngryBirdsBase = null;
      
      public static var §0J§:Sprite = null;
      
      public static var §>#J§:§=%§;
      
      public static var §1# §:Boolean = false;
      
      protected static var §3#M§:int = 0;
      
      protected static var §`#O§:int = 0;
       
      
      protected var §]I§:§"1§;
      
      protected var §+#D§:§#"+§;
      
      protected var §8$;§:§[!s§;
      
      protected var mLevelManager:§4#?§;
      
      protected var §"-§:MovieClip;
      
      protected var §,#O§:§8#v§;
      
      protected var §7#P§:§%#B§;
      
      private var §+!>§:int;
      
      private var §>"S§:Boolean;
      
      private var §+8§:int;
      
      private var §`"z§:int;
      
      protected var §##=§:Boolean;
      
      protected var §[!y§:Boolean;
      
      protected var §'"G§:§@!p§;
      
      protected var §4"R§:Boolean;
      
      protected var §%$ §:Boolean = true;
      
      private var §#"K§:Boolean = false;
      
      public function AngryBirdsBase(param1:§,"I§, param2:String, param3:String)
      {
         this.§>H§();
         §@#F§ = param2;
         SERVER_ROOT = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.getPopupData();
         §>"^§.§8"H§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §3#M§;
      }
      
      public static function get stageHeight() : int
      {
         return §`#O§;
      }
      
      public static function §4!T§(param1:Boolean) : void
      {
         §7"q§ = param1;
         §4$4§.§2$§(§7"q§);
      }
      
      public static function §]!K§() : Boolean
      {
         return §7"q§;
      }
      
      public static function get screenWidth() : int
      {
         return singleton.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return singleton.getAppHeight();
      }
      
      public static function get singleton() : AngryBirdsBase
      {
         return §9!h§;
      }
      
      public function get popupManager() : §8#v§
      {
         return this.§,#O§;
      }
      
      public function get §8q§() : §%#B§
      {
         return this.§7#P§;
      }
      
      public function get dataModel() : §@!p§
      {
         return this.§'"G§;
      }
      
      public function get §5!3§() : Boolean
      {
         return this.§[!y§;
      }
      
      public function set §5!3§(param1:Boolean) : void
      {
         this.§[!y§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §"$!§.§0!T§(§ #v§);
      }
      
      protected function getUIData() : XML
      {
         return §"$!§.§0!T§(§6$8§);
      }
      
      protected function getPopupData() : XML
      {
         return §"$!§.§0!T§(§@!G§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         this.§'"G§ = new §@!p§();
      }
      
      protected function initialize() : void
      {
         §9!h§ = this;
         this.§[!y§ = false;
         §+!p§.init(this,screenWidth,screenHeight);
         this.initializeDataModel();
         this.§-"c§();
         this.initializeUserProgress();
         §;!g§.§3"1§.init(§[#U§.§ 5§(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.§]I§,this.§2""§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §>p§ = screenWidth;
         §>#2§ = screenHeight;
         §+!p§.§[#I§.visible = DEBUG_MODE_ENABLED;
         §4!h§.§8!&§(§ "U§);
         §4!h§.§"!a§(true);
         var _loc1_:XMLList = §"$!§.§0!T§(§ &§).children();
         §&!n§.init(_loc1_);
         §4$4§.§<!A§(§>"u§,1,0.6);
         §4$4§.§<!A§(§!"G§,1,0.8);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§9"1§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§["1§);
         stage.addEventListener(Event.RESIZE,this.§!">§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§]#,§);
         stage.addEventListener(Event.ACTIVATE,this.§4"d§);
         stage.addEventListener(Event.DEACTIVATE,this.§%$B§);
         stage.tabChildren = false;
         §>#J§ = new §=%§(stage);
         §>#J§.addEventListener(§-!<§.§"H§,this.§5#§);
         §>#J§.addEventListener(§-!<§.§5"9§,this.§&j§);
         §5"<§.§3"1§.§7-§ = !DEBUG_MODE_ENABLED;
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §%$B§(param1:Event) : void
      {
         this.§#!Y§();
      }
      
      private function §#!Y§() : void
      {
         if(!this.§%$ §)
         {
            return;
         }
         this.§%$ § = false;
         this.§4"R§ = §4$4§.§%#u§;
         if(!this.§4"R§)
         {
         }
      }
      
      private function §4"d§(param1:Event) : void
      {
         this.§5"U§();
      }
      
      private function §5"U§() : void
      {
         if(this.§%$ §)
         {
            return;
         }
         this.§%$ § = true;
         if(!this.§4"R§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§"-§ = new MovieClip();
         § "U§.stage.addChild(this.§"-§);
         this.§,#O§ = new §9!6§.§-#6§(this.§"-§,§6%§,this);
         this.§,#O§.addEventListener(§0!b§.OPEN,this.§5#§);
         this.§,#O§.addEventListener(§0!b§.CLOSE,this.§&j§);
         this.§7#P§ = new §%#B§(this.§,#O§,this.§'"G§,§@M§.§<!P§);
         this.§,#O§.addLayer(§@M§.§%!'§,true,new Rectangle(0,0,-180,0));
         this.§,#O§.addLayer(§@M§.§<!P§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §5#§(param1:Event) : void
      {
         this.§4"`§();
      }
      
      protected function §&j§(param1:Event) : void
      {
         this.resumeEngine();
      }
      
      public function resumeEngine() : void
      {
         var _loc1_:Boolean = this.§,#O§.§!=§();
         var _loc2_:Boolean = §>#J§.§@"a§();
         if(!_loc1_ && !_loc2_ && !this.§5!3§)
         {
            §+!p§.resume();
         }
      }
      
      public function §4"`§() : void
      {
         §+!p§.pause();
      }
      
      protected function §-"c§() : void
      {
         this.§+#D§ = this.initializeLevelItemManager();
         this.§8$;§ = this.initializeLevelThemeManager();
         this.mLevelManager = this.initializeLevelManager();
         this.§]I§ = this.initializePackageManager();
         §+!p§.§`?§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §<d§
      {
         return new §<d§(stage,this.§+#D§,this.§8$;§,this.mLevelManager);
      }
      
      protected function initializeLevelItemManager() : §#"+§
      {
         return new §#"+§();
      }
      
      protected function initializeLevelThemeManager() : §[!s§
      {
         return new §[!s§();
      }
      
      protected function initializeLevelManager() : §4#?§
      {
         return new §4#?§();
      }
      
      protected function initializePackageManager() : §"1§
      {
         return new §"1§(this.mLevelManager);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§'"G§.userProgress = new § !C§(SERVER_ROOT,this.mLevelManager);
      }
      
      protected function initializeStates() : void
      {
         §"<§(new §2t§(this.mLevelManager,§6%§,false));
         §"<§(new §=!w§(this.mLevelManager,§6%§,false));
         §"<§(new §4#p§(this.mLevelManager,§6%§,false));
         §"<§(new §;O§(this.mLevelManager,§6%§,false));
         §"<§(new StatePlay(this.mLevelManager,§6%§,false));
         §"<§(new §4!s§(this.mLevelManager,§6%§,false));
         §"<§(new §^1§.§-§(this.mLevelManager,§6%§,false));
         §"<§(new §5!6§(this.mLevelManager,§6%§,false));
         §"<§(new §%"`§(this.mLevelManager,§6%§,false));
         §"<§(new StateCutScene(this.mLevelManager,§6%§,false));
         §"<§(new §+!Y§(this.mLevelManager,§6%§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§!">§(null);
         }
      }
      
      protected function §2""§(param1:ByteArray) : void
      {
      }
      
      protected function §9"1§(param1:Event) : void
      {
         §2#>§.§=!b§();
      }
      
      protected function §["1§(param1:MouseEvent) : void
      {
         §2#>§.§@!r§();
         if(this.§>"S§)
         {
            ++this.§`"z§;
            if(this.§`"z§ > §6[§)
            {
               this.§>"S§ = false;
               if(this.§+8§ < §9$E§)
               {
                  this.§!M§(this.§+!>§);
               }
            }
         }
      }
      
      public function §^"w§() : void
      {
         this.§!">§(null);
      }
      
      protected function §!">§(param1:Event) : void
      {
         this.§##=§ = true;
      }
      
      protected function §]#,§(param1:Event) : void
      {
         this.§5"U§();
      }
      
      public function §=!Y§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§+!>§ > §^"8§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
            {
               this.§!M§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§2#H§(_loc1_);
            }
         }
      }
      
      public function exitFullScreen() : void
      {
         this.§!M§(0);
      }
      
      public function §&m§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN || stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         return false;
      }
      
      private function §!M§(param1:int) : void
      {
         this.§##=§ = true;
         this.§+!>§ = param1;
         this.§>"S§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §2#H§(param1:int) : void
      {
         var time:int = param1;
         this.§##=§ = true;
         this.§+!>§ = time;
         this.§+8§ = 0;
         this.§`"z§ = 0;
         this.§>"S§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         catch(e:Error)
         {
            try
            {
               stage.displayState = StageDisplayState.FULL_SCREEN;
            }
            catch(e:Error)
            {
            }
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §,"A§() : Boolean
      {
         return this.§#"K§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§#"K§ = true;
         this.initializeGame();
         §;!g§.§3"1§.§+#c§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§+!p§.§[#I§ != null)
         {
            §+!p§.§[#I§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§8"v§().isGenericState())
         {
            if(_loc2_ == §'!G§.§3!Q§)
            {
               §%!?§(§8"v§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §2"?§;
      }
      
      override public function getAppHeight() : Number
      {
         return §%!"§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §["a§;
      }
      
      protected function getThemeMusicName() : String
      {
         return §-##§;
      }
      
      public function playThemeMusic() : void
      {
         if(§4$4§.§`!U§(§>"u§) == null || !§4$4§.§`!U§(§>"u§).isPlaying())
         {
            §4$4§.playSound(this.getThemeMusicName(),§>"u§,999);
         }
      }
      
      public function stopThemeMusic() : void
      {
         §4$4§.§'!?§(§>"u§);
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §@#F§;
      }
      
      protected function loadItems() : void
      {
         this.§+#D§.loadItems(this.getItemDataXML());
      }
      
      protected function §[!0§() : void
      {
         this.§8$;§.§#r§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§[!0§();
         §+!p§.§2"^§(this.§]I§.§&!H§,this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §"$!§.§0!T§(§["`§);
      }
      
      protected function getItemDataXML() : XML
      {
         return §"$!§.§0!T§(§+#3§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §1# § = true;
         §%!?§(§=!w§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§>"S§)
         {
            ++this.§+8§;
         }
         if(!Starling.§6O§())
         {
            return;
         }
         if(this.§##=§)
         {
            this.resize();
            this.§##=§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §3#M§;
            _loc3_ = §`#O§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §3#M§ == _loc2_ && §`#O§ == _loc3_)
         {
            return false;
         }
         §3#M§ = _loc2_;
         §`#O§ = _loc3_;
         this.resizeViews(§3#M§,§`#O§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int, param3:Boolean = false) : void
      {
         §+!p§.§"E§(0,0,param1,param2,param3);
         setViewSize(param1,param2);
         this.§,#O§.setViewSize(param1,param2);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §>H§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
      
      public function getSoundResource(param1:String) : §&!@§
      {
         return this.§+#D§.getSoundResource(param1);
      }
   }
}
