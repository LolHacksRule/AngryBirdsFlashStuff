package
{
   import §!!!§.§6!l§;
   import §!""§.§5!8§;
   import §"!w§.§6!E§;
   import §%!B§.§0![§;
   import §%!n§.§%]§;
   import §%8§.§4O§;
   import §,!'§.§5O§;
   import §,!'§.§6!L§;
   import §0!m§.§<!t§;
   import §0!m§.§@!S§;
   import §1![§.§-"5§;
   import §1![§.§`w§;
   import §1!c§.§'!y§;
   import §1!c§.§'8§;
   import §1!c§.§1!Z§;
   import §1!c§.§8§;
   import §1!c§.§@=§;
   import §1!c§.StateCutScene;
   import §1!c§.StateEpisodeSelection;
   import §1!c§.StatePlay;
   import §1!c§.§]0§;
   import §1!c§.§^j§;
   import §1!c§.§`!z§;
   import §1!i§.§"g§;
   import §1!i§.§,-§;
   import §1!i§.§^Q§;
   import §2!&§.§+h§;
   import §24§.;
   import §24§.§4!H§;
   import §24§.§=!L§;
   import §37§.§9!c§;
   import §4!i§.§<!1§;
   import §8]§.§7O§;
   import §;g§.§0!o§;
   import §>z§.§5!d§;
   import §@V§.§#=§;
   import §[!Z§.§>D§;
   import §^"!§.§+!7§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§34§;
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
   
   public class § !4§ extends §5O§
   {
      
      protected static var §>!h§:Class = §>!Y§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §7!1§:String;
      
      public static var §[!F§:String;
      
      public static const §3z§:int = 1024;
      
      public static const §`!,§:int = 768;
      
      public static const §!L§:Boolean = false;
      
      public static const §1!p§:int = 2000;
      
      private static const §+!y§:int = 750;
      
      private static const §3J§:int = 3;
      
      private static const §>,§:int = 15;
      
      protected static var §3B§:Class = §3!4§;
      
      protected static var §=k§:Class = §=F§;
      
      protected static var §?6§:Class = §3!S§;
      
      protected static var §,!%§:Class = §=!2§;
      
      protected static var §,f§:Class = §9^§;
      
      public static var §[7§:Boolean = true;
      
      private static var §0!V§:§ !4§ = null;
      
      public static var §,!o§:Sprite = null;
      
      public static var §`?§:§<!t§;
      
      public static var §`Z§:Boolean = false;
      
      private static var §^!I§:int = 0;
      
      private static var §]i§:int = 0;
       
      
      protected var §=p§:§-"5§;
      
      protected var §@!]§:§4O§;
      
      protected var §2!v§:§5!d§;
      
      protected var §4a§:§0![§;
      
      protected var §%,§:MovieClip;
      
      protected var §#!c§:§^Q§;
      
      protected var §@y§:§+!7§;
      
      private var §;A§:int;
      
      private var §[!!§:Boolean;
      
      private var §?]§:int;
      
      private var §%!W§:int;
      
      protected var §0w§:Boolean;
      
      protected var §4p§:Boolean;
      
      protected var §6!4§:§`w§;
      
      protected var §+!#§:Boolean;
      
      protected var §`n§:Boolean = true;
      
      private var §^!§:Boolean = false;
      
      public function § !4§(param1:§6!L§, param2:String, param3:String)
      {
         this.initFonts();
         §7!1§ = param2;
         §[!F§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§4!K§();
         §<!1§.§3M§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != §&v§ || stage.stageHeight != §,n§)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §^!I§;
      }
      
      public static function get stageHeight() : int
      {
         return §]i§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §[7§ = param1;
         §>D§.§,"§(§[7§);
      }
      
      public static function §4E§() : Boolean
      {
         return §[7§;
      }
      
      public static function get §&v§() : int
      {
         return §%"7§.getAppWidth();
      }
      
      public static function get §,n§() : int
      {
         return §%"7§.getAppHeight();
      }
      
      public static function get §%"7§() : § !4§
      {
         return §0!V§;
      }
      
      public function get §+!J§() : §^Q§
      {
         return this.§#!c§;
      }
      
      public function get §=!e§() : §+!7§
      {
         return this.§@y§;
      }
      
      public function get §@D§() : §`w§
      {
         return this.§6!4§;
      }
      
      public function get §?!9§() : Boolean
      {
         return this.§4p§;
      }
      
      public function set §?!9§(param1:Boolean) : void
      {
         this.§4p§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §4!H§.§7o§(§?6§);
      }
      
      protected function getUIData() : XML
      {
         return §4!H§.§7o§(§3B§);
      }
      
      protected function §4!K§() : XML
      {
         return §4!H§.§7o§(§=k§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §,3§() : void
      {
         this.§6!4§ = new §`w§();
      }
      
      protected function initialize() : void
      {
         §0!V§ = this;
         this.§4p§ = false;
         §@!S§.init(this,§&v§,§,n§);
         this.§,3§();
         this.initializeManagers();
         this.initializeUserProgress();
         §6!E§.§,2§.init(§+h§.§^!W§(),this.§%!=§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§=p§,this.§#2§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §5!k§ = §&v§;
         §!O§ = §,n§;
         §@!S§.§["4§.visible = §!L§;
         §#7§.§+n§(§-!x§);
         §#7§.§,P§(true);
         var _loc1_:XMLList = §4!H§.§7o§(§>!h§).children();
         §34§.init(_loc1_);
         §>D§.§0"6§("CHANNEL_THEME",1,1);
         §>D§.§0"6§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§4f§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§>Z§);
         stage.addEventListener(Event.RESIZE,this.§#!U§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§[g§);
         stage.addEventListener(Event.ACTIVATE,this.§'I§);
         stage.addEventListener(Event.DEACTIVATE,this.§,z§);
         stage.tabChildren = false;
         §`?§ = new §<!t§(stage);
         §`?§.addEventListener(§5!8§.§7!`§,this.§>!t§);
         §`?§.addEventListener(§5!8§.§<!F§,this.§"D§);
         §0!o§.§,2§.§6!i§ = !§!L§;
      }
      
      protected function §%!=§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §,z§(param1:Event) : void
      {
         this.§ d§();
      }
      
      private function § d§() : void
      {
         if(!this.§`n§)
         {
            return;
         }
         this.§`n§ = false;
         this.§+!#§ = §>D§.§3!%§;
         if(!this.§+!#§)
         {
         }
      }
      
      private function §'I§(param1:Event) : void
      {
         this.§"!b§();
      }
      
      private function §"!b§() : void
      {
         if(this.§`n§)
         {
            return;
         }
         this.§`n§ = true;
         if(!this.§+!#§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§%,§ = new MovieClip();
         §-!x§.stage.addChild(this.§%,§);
         this.§#!c§ = new §"g§(this.§%,§,§,$§,this);
         this.§#!c§.addEventListener(§7O§.OPEN,this.§>!t§);
         this.§#!c§.addEventListener(§7O§.CLOSE,this.§"D§);
         this.§@y§ = new §+!7§(this.§#!c§,this.§6!4§,§,-§.§'!f§);
         this.§#!c§.addLayer(§,-§.§#!V§,true,new Rectangle(0,0,-180,0));
         this.§#!c§.addLayer(§,-§.§'!f§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §>!t§(param1:Event) : void
      {
         this.§>b§();
      }
      
      protected function §"D§(param1:Event) : void
      {
         this.§@!R§();
      }
      
      public function §@!R§() : void
      {
         var _loc1_:Boolean = this.§#!c§.§8!5§();
         var _loc2_:Boolean = §`?§.§+F§();
         if(!_loc1_ && !_loc2_ && !this.§?!9§)
         {
            §@!S§.resume();
         }
      }
      
      public function §>b§() : void
      {
         §@!S§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§@!]§ = this.initializeLevelItemManager();
         this.§2!v§ = this.initializeLevelThemeManager();
         this.§4a§ = this.initializeLevelManager();
         this.§=p§ = this.initializePackageManager();
         §@!S§.§2A§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §#=§
      {
         return new §#=§(stage,this.§@!]§,this.§2!v§,this.§4a§);
      }
      
      protected function initializeLevelItemManager() : §4O§
      {
         return new §4O§();
      }
      
      protected function initializeLevelThemeManager() : §5!d§
      {
         return new §5!d§();
      }
      
      protected function initializeLevelManager() : §0![§
      {
         return new §0![§();
      }
      
      protected function initializePackageManager() : §-"5§
      {
         return new §-"5§(this.§4a§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§6!4§.userProgress = new §%]§(§[!F§,this.§4a§);
      }
      
      protected function initializeStates() : void
      {
         §1""§(new §'8§(this.§4a§,§,$§,false));
         §1""§(new §`!z§(this.§4a§,§,$§,false));
         §1""§(new StateEpisodeSelection(this.§4a§,§,$§,false));
         §1""§(new §^j§(this.§4a§,§,$§,false));
         §1""§(new StatePlay(this.§4a§,§,$§,false));
         §1""§(new §8§(this.§4a§,§,$§,false));
         §1""§(new §'!y§(this.§4a§,§,$§,false));
         §1""§(new §]0§(this.§4a§,§,$§,false));
         §1""§(new §@=§(this.§4a§,§,$§,false));
         §1""§(new StateCutScene(this.§4a§,§,$§,false));
         §1""§(new §1!Z§(this.§4a§,§,$§,false));
         if(stage.stageWidth != §&v§ || stage.stageHeight != §,n§)
         {
            this.§#!U§(null);
         }
      }
      
      protected function §#2§(param1:ByteArray) : void
      {
      }
      
      protected function §4f§(param1:Event) : void
      {
         §=!L§.§&f§();
      }
      
      protected function §>Z§(param1:MouseEvent) : void
      {
         §=!L§.§@Y§();
         if(this.§[!!§)
         {
            ++this.§%!W§;
            if(this.§%!W§ > §>,§)
            {
               this.§[!!§ = false;
               if(this.§?]§ < §3J§)
               {
                  this.§5!v§(this.§;A§);
               }
            }
         }
      }
      
      public function §-_§() : void
      {
         this.§#!U§(null);
      }
      
      protected function §#!U§(param1:Event) : void
      {
         this.§0w§ = true;
      }
      
      protected function §[g§(param1:Event) : void
      {
         this.§"!b§();
      }
      
      public function §]!;§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§;A§ > §+!y§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§5!v§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§%t§(_loc1_);
            }
         }
      }
      
      public function §,a§() : void
      {
         this.§5!v§(0);
      }
      
      public function §[z§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §5!v§(param1:int) : void
      {
         this.§0w§ = true;
         this.§;A§ = param1;
         this.§[!!§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §%t§(param1:int) : void
      {
         this.§0w§ = true;
         this.§;A§ = param1;
         this.§?]§ = 0;
         this.§%!W§ = 0;
         this.§[!!§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §!!d§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §[!W§() : Boolean
      {
         return this.§^!§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§^!§ = true;
         this.initializeGame();
         §6!E§.§,2§.§7!t§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§@!S§.§["4§ != null)
         {
            §@!S§.§["4§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§-!w§().isGenericState())
         {
            if(_loc2_ == §9!c§.§6+§)
            {
               §7"6§(§-!w§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §3z§;
      }
      
      override public function getAppHeight() : Number
      {
         return §`!,§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §1!p§;
      }
      
      protected function §,p§() : String
      {
         return "ThemeMusic";
      }
      
      public function §get §() : void
      {
         if(§>D§.§<d§("Channel_Theme") == null || !§>D§.§<d§("Channel_Theme").§2x§())
         {
            §>D§.§9!q§(this.§,p§(),"Channel_Theme",999);
         }
      }
      
      public function §=!a§() : void
      {
         §>D§.§6A§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §7!1§;
      }
      
      protected function loadItems() : void
      {
         this.§@!]§.loadItems(this.§+!g§());
      }
      
      protected function §9!7§() : void
      {
         this.§2!v§.§ <§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§9!7§();
         §@!S§.§>!J§(this.§=p§.§"1§,this.§]d§);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §4!H§.§7o§(§,f§);
      }
      
      protected function §+!g§() : XML
      {
         return §4!H§.§7o§(§,!%§);
      }
      
      protected function §]d§(param1:Event) : void
      {
         §`Z§ = true;
         §7"6§(§`!z§.§8"%§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§[!!§)
         {
            ++this.§?]§;
         }
         if(!§6!l§.§<E§())
         {
            return;
         }
         if(this.§0w§)
         {
            this.resize();
            this.§0w§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §^!I§;
            _loc3_ = §]i§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §^!I§ == _loc2_ && §]i§ == _loc3_)
         {
            return false;
         }
         §^!I§ = _loc2_;
         §]i§ = _loc3_;
         this.resizeViews(§^!I§,§]i§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §@!S§.§1!§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§#!c§.setViewSize(param1,param2);
      }
      
      public function §0B§() : void
      {
      }
      
      public function §1$§() : void
      {
      }
      
      protected function initFonts() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
