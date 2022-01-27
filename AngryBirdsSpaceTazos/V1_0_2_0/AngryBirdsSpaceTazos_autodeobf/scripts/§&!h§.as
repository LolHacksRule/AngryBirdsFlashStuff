package
{
   import § X§.§7q§;
   import §""%§.§"!@§;
   import §""%§.§extends§;
   import §""<§.§#N§;
   import §""<§.§9!p§;
   import §""<§.§=Q§;
   import §"_§.§!!r§;
   import §"_§.§5S§;
   import §"_§.§=X§;
   import §%"7§.§+"C§;
   import §'#§.§=`§;
   import §+!9§.§6T§;
   import §+!9§.§;0§;
   import §,§.;
   import §3!4§.§ ![§;
   import §4"-§.§<!l§;
   import §7!c§.§!!Q§;
   import §7!c§.§"!H§;
   import §7!c§.§0!Q§;
   import §7!c§.§4!K§;
   import §7!c§.§4'§;
   import §7!c§.§;!r§;
   import §7!c§.§="1§;
   import §7!c§.§>!6§;
   import §7!c§.StateCutScene;
   import §7!c§.StateEpisodeSelection;
   import §7!c§.StatePlay;
   import §9!G§.§"!S§;
   import §;!,§.§"q§;
   import §;!,§.§6!`§;
   import §;!0§.;
   import §;"=§.§3"=§;
   import §<!#§.§7!R§;
   import §<§.§<K§;
   import §?!<§.§'!1§;
   import §]!V§.§;!O§;
   import §]n§.§0!g§;
   import §`"!§.§<t§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§;z§;
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
   
   public class §&!h§ extends §"q§
   {
      
      protected static var §6Z§:Class = §9" §;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §^!0§:String;
      
      public static var §,!E§:String;
      
      public static const §+g§:int = 1024;
      
      public static const §5+§:int = 768;
      
      public static const §+",§:Boolean = false;
      
      public static const §6y§:int = 2000;
      
      private static const §!!c§:int = 750;
      
      private static const §,!a§:int = 3;
      
      private static const §0i§:int = 15;
      
      protected static var §%"B§:Class = §,!Y§;
      
      protected static var §&L§:Class = §-X§;
      
      protected static var §&!V§:Class = §+"2§;
      
      protected static var §`c§:Class = §%T§;
      
      protected static var §2"C§:Class = §`+§;
      
      public static var §8!i§:Boolean = true;
      
      private static var §]""§:§&!h§ = null;
      
      public static var §1I§:Sprite = null;
      
      public static var §7_§:§6T§;
      
      public static var §;!$§:Boolean = false;
      
      private static var §]!I§:int = 0;
      
      private static var §,w§:int = 0;
       
      
      protected var §!!$§:§"!@§;
      
      protected var §@1§:§3"=§;
      
      protected var §,!r§:§,§.§#0§;
      
      protected var §,W§:§;!0§.§#2§;
      
      protected var §9"'§:MovieClip;
      
      protected var §+k§:§!!r§;
      
      protected var §&O§:§7q§;
      
      private var §%v§:int;
      
      private var §<p§:Boolean;
      
      private var §`!e§:int;
      
      private var §@5§:int;
      
      protected var §[l§:Boolean;
      
      protected var §5!2§:Boolean;
      
      protected var § #§:§extends§;
      
      protected var §4!4§:Boolean;
      
      protected var §3e§:Boolean = true;
      
      public function §&!h§(param1:§6!`§, param2:String, param3:String)
      {
         this.§4!"§();
         §^!0§ = param2;
         §,!E§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§9!s§();
         §=`§.§2x§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.resize();
         }
      }
      
      public static function get stageWidth() : int
      {
         return §]!I§;
      }
      
      public static function get stageHeight() : int
      {
         return §,w§;
      }
      
      public static function §@!a§(param1:Boolean) : void
      {
         §8!i§ = param1;
         §"!S§.§#!P§(§8!i§);
      }
      
      public static function §?3§() : Boolean
      {
         return §8!i§;
      }
      
      public static function get screenWidth() : int
      {
         return § u§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return § u§.getAppHeight();
      }
      
      public static function get § u§() : §&!h§
      {
         return §]""§;
      }
      
      public function get §-"F§() : §!!r§
      {
         return this.§+k§;
      }
      
      public function get §+"5§() : §7q§
      {
         return this.§&O§;
      }
      
      public function get §-!V§() : §extends§
      {
         return this.§ #§;
      }
      
      public function get §!N§() : Boolean
      {
         return this.§5!2§;
      }
      
      public function set §!N§(param1:Boolean) : void
      {
         this.§5!2§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §=Q§.§%!g§(§&!V§);
      }
      
      protected function getUIData() : XML
      {
         return §=Q§.§%!g§(§%"B§);
      }
      
      protected function §9!s§() : XML
      {
         return §=Q§.§%!g§(§&L§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §0`§() : void
      {
         this.§ #§ = new §extends§();
      }
      
      protected function initialize() : void
      {
         §]""§ = this;
         this.§5!2§ = false;
         §;0§.init(this,screenWidth,screenHeight);
         this.§0`§();
         this.initializeManagers();
         §;!O§.§<"B§.init(§<t§.§+Q§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§!!$§,this.§'!N§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §"s§ = screenWidth;
         §'^§ = screenHeight;
         §;0§.§]!8§.visible = §+",§;
         §#N§.§`"7§(§`"D§);
         §#N§.§>!?§(true);
         var _loc1_:XMLList = §=Q§.§%!g§(§6Z§).children();
         §;z§.init(_loc1_);
         §"!S§.§4+§("CHANNEL_THEME",1,1);
         §"!S§.§4+§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§`!b§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§48§);
         stage.addEventListener(Event.RESIZE,this.§[X§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§-">§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§=§);
         stage.addEventListener(Event.ACTIVATE,this.§3G§);
         stage.addEventListener(Event.DEACTIVATE,this.§6]§);
         §7_§ = new §6T§(stage);
         §7_§.addEventListener(§7!R§.§#"G§,this.§2Y§);
         §7_§.addEventListener(§7!R§.§4!e§,this.§?!1§);
         §<K§.§<"B§.§@"3§ = !§+",§;
      }
      
      private function §6]§(param1:Event) : void
      {
         this.§%"8§();
      }
      
      private function §%"8§() : void
      {
         if(!this.§3e§)
         {
            return;
         }
         this.§3e§ = false;
         this.§4!4§ = §"!S§.§1!Z§;
         if(!this.§4!4§)
         {
         }
      }
      
      private function §3G§(param1:Event) : void
      {
         this.§1B§();
      }
      
      private function §1B§() : void
      {
         if(this.§3e§)
         {
            return;
         }
         this.§3e§ = true;
         if(!this.§4!4§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§9"'§ = new MovieClip();
         §`"D§.stage.addChild(this.§9"'§);
         this.§+k§ = new §5S§(this.§9"'§,§^"5§,this);
         this.§+k§.addEventListener(§+"C§.OPEN,this.§2Y§);
         this.§+k§.addEventListener(§+"C§.CLOSE,this.§?!1§);
         this.§&O§ = new §7q§(this.§+k§,this.§ #§,§=X§.§-r§);
         this.§+k§.addLayer(§=X§.§89§,true,new Rectangle(0,0,-180,0));
         this.§+k§.addLayer(§=X§.§-r§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §2Y§(param1:Event) : void
      {
         this.§8I§();
      }
      
      protected function §?!1§(param1:Event) : void
      {
         this.§,"F§();
      }
      
      public function §,"F§() : void
      {
         var _loc1_:Boolean = this.§+k§.§^X§();
         var _loc2_:Boolean = §7_§.§"K§();
         if(!_loc1_ && !_loc2_ && !this.§!N§)
         {
            §;0§.resume();
         }
      }
      
      public function §8I§() : void
      {
         §;0§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§@1§ = this.initializeLevelItemManager();
         this.§,!r§ = this.initializeLevelThemeManager();
         this.§,W§ = this.initializeLevelManager();
         this.§!!$§ = this.initializePackageManager();
         §;0§.§@!^§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §'!1§
      {
         return new §'!1§(stage,this.§@1§,this.§,!r§,this.§,W§);
      }
      
      protected function initializeLevelItemManager() : §3"=§
      {
         return new §3"=§();
      }
      
      protected function initializeLevelThemeManager() : §,§.§#0§
      {
         return new §,§.§#0§();
      }
      
      protected function initializeLevelManager() : §;!0§.§#2§
      {
         return new §;!0§.§#2§();
      }
      
      protected function initializePackageManager() : §"!@§
      {
         return new §"!@§(this.§,W§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§ #§.userProgress = new §<!l§(§,!E§,this.§,W§);
      }
      
      protected function initializeStates() : void
      {
         §-"%§(new §"!H§(this.§,W§,§^"5§,false));
         §-"%§(new §>!6§(this.§,W§,§^"5§,false));
         §-"%§(new StateEpisodeSelection(this.§,W§,§^"5§,false));
         §-"%§(new §!!Q§(this.§,W§,§^"5§,false));
         §-"%§(new StatePlay(this.§,W§,§^"5§,false));
         §-"%§(new §4!K§(this.§,W§,§^"5§,false));
         §-"%§(new §="1§(this.§,W§,§^"5§,false));
         §-"%§(new §;!r§(this.§,W§,§^"5§,false));
         §-"%§(new §0!Q§(this.§,W§,§^"5§,false));
         §-"%§(new StateCutScene(this.§,W§,§^"5§,false));
         §-"%§(new §4'§(this.§,W§,§^"5§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§[X§(null);
         }
      }
      
      protected function §'!N§(param1:ByteArray) : void
      {
      }
      
      protected function §`!b§(param1:Event) : void
      {
         §9!p§.§-"3§();
         if(this.§#"B§())
         {
            this.§[U§(0);
         }
      }
      
      protected function §48§(param1:MouseEvent) : void
      {
         §9!p§.§2"1§();
         if(this.§<p§)
         {
            ++this.§@5§;
            if(this.§@5§ > §0i§)
            {
               this.§<p§ = false;
               if(this.§`!e§ < §,!a§)
               {
                  this.§[U§(this.§%v§);
               }
            }
         }
      }
      
      public function § !L§() : void
      {
         this.§[X§(null);
      }
      
      protected function §[X§(param1:Event) : void
      {
         this.§[l§ = true;
      }
      
      protected function §=§(param1:Event) : void
      {
         this.§1B§();
      }
      
      public function §+"4§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§%v§ > §!!c§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§[U§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§1V§(_loc1_);
            }
         }
      }
      
      public function §`!2§() : void
      {
         this.§[U§(0);
      }
      
      public function §#"B§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §[U§(param1:int) : void
      {
         this.§[l§ = true;
         this.§%v§ = param1;
         this.§<p§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §1V§(param1:int) : void
      {
         this.§[l§ = true;
         this.§%v§ = param1;
         this.§`!e§ = 0;
         this.§@5§ = 0;
         this.§<p§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §-">§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.initializeGame();
         §;!O§.§<"B§.§-!,§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§;0§.§]!8§ != null)
         {
            §;0§.§]!8§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§ ";§().isGenericState())
         {
            if(_loc2_ == §0!g§.§'7§)
            {
               §#N§.log("AngryBirdSocial::run() state change is about to start. Old State = " + § ";§().mName + " New State = " + § ";§().nextState);
               §2g§(§ ";§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §+g§;
      }
      
      override public function getAppHeight() : Number
      {
         return §5+§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §6y§;
      }
      
      protected function §#"#§() : String
      {
         return "ThemeMusic";
      }
      
      public function §`=§() : void
      {
         if(§"!S§.§2"6§("Channel_Theme") == null || !§"!S§.§2"6§("Channel_Theme").§`]§())
         {
            §"!S§.playSound(this.§#"#§(),"Channel_Theme",999);
         }
      }
      
      public function §%"?§() : void
      {
         §"!S§.§]R§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §^!0§;
      }
      
      protected function loadItems() : void
      {
         this.§@1§.loadItems(this.§,+§());
      }
      
      protected function loadBackgrounds() : void
      {
         this.§,!r§.§`!o§(this.§=!,§().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.initializeUserProgress();
         this.loadItems();
         this.loadBackgrounds();
         §;0§.§77§(this.§!!$§.§%5§,this.§]"&§);
      }
      
      protected function §=!,§() : XML
      {
         return §=Q§.§%!g§(§2"C§);
      }
      
      protected function §,+§() : XML
      {
         return §=Q§.§%!g§(§`c§);
      }
      
      protected function §]"&§(param1:Event) : void
      {
         §;!$§ = true;
         §2g§(§>!6§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§<p§)
         {
            ++this.§`!e§;
         }
         if(!§ ![§.§[c§())
         {
            return;
         }
         if(this.§[l§)
         {
            this.resize();
            this.§[l§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §]!I§;
            _loc3_ = §,w§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §]!I§ == _loc2_ && §,w§ == _loc3_)
         {
            return false;
         }
         §]!I§ = _loc2_;
         §,w§ = _loc3_;
         this.resizeViews(§]!I§,§,w§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §;0§.§'0§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§+k§.setViewSize(param1,param2);
      }
      
      public function §6!l§() : void
      {
      }
      
      public function §]q§() : void
      {
      }
      
      protected function §4!"§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
