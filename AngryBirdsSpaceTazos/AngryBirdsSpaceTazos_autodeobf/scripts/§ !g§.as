package
{
   import § !Y§.§1!j§;
   import § I§.§]"6§;
   import §!?§.§=!_§;
   import §!?§.§@"C§;
   import §!X§.§<!3§;
   import §"!&§.§-!M§;
   import §#!b§.§"!"§;
   import §#!b§.§'y§;
   import §'4§.§^g§;
   import §+!a§.§`b§;
   import §+!h§.§#V§;
   import §,"&§.§6" §;
   import §,"&§.§9q§;
   import §0N§.§0!g§;
   import §0N§.§2!@§;
   import §0N§.§5!^§;
   import §1%§.§0!3§;
   import §3"#§.§<!O§;
   import §5Q§.§^!e§;
   import §7!%§.§[K§;
   import §7!H§.§!!4§;
   import §7!H§.§#!f§;
   import §7!H§.§>1§;
   import §8!_§.§ null§;
   import §8!_§.§0!q§;
   import §8!_§.§3!g§;
   import §8!_§.§4!U§;
   import §8!_§.§8!H§;
   import §8!_§.§93§;
   import §8!_§.§?!#§;
   import §8!_§.StateCutScene;
   import §8!_§.StateEpisodeSelection;
   import §8!_§.StatePlay;
   import §8!_§.§]J§;
   import §<W§.§#e§;
   import §=u§.§!D§;
   import §^r§.§@!T§;
   import §`!j§.§9"!§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§1!l§;
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
   
   public class § !g§ extends §'y§
   {
      
      protected static var §^"1§:Class = §#8§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §&!t§:String;
      
      public static var §2!R§:String;
      
      public static const §?[§:int = 1024;
      
      public static const §3!h§:int = 768;
      
      public static const §-"<§:Boolean = false;
      
      public static const §1!E§:int = 2000;
      
      private static const §2!h§:int = 750;
      
      private static const §2"D§:int = 3;
      
      private static const §6"C§:int = 15;
      
      protected static var §51§:Class = §7!c§;
      
      protected static var §8"7§:Class = §;#§;
      
      protected static var §4!G§:Class = §6!0§;
      
      protected static var §1F§:Class = §;!f§;
      
      protected static var §&t§:Class = §["+§;
      
      public static var §>!1§:Boolean = true;
      
      private static var §9";§:§ !g§ = null;
      
      public static var §%M§:Sprite = null;
      
      public static var §6l§:§6" §;
      
      public static var §<B§:Boolean = false;
      
      private static var §+!Y§:int = 0;
      
      private static var §"y§:int = 0;
       
      
      protected var §^?§:§@"C§;
      
      protected var §3"4§:§-!M§;
      
      protected var §+Q§:§`b§;
      
      protected var §6u§:§9"!§;
      
      protected var §'+§:MovieClip;
      
      protected var §'d§:§>1§;
      
      protected var §="<§:§<!3§;
      
      private var §8#§:int;
      
      private var §91§:Boolean;
      
      private var §2"E§:int;
      
      private var §[<§:int;
      
      protected var §+v§:Boolean;
      
      protected var §"!d§:Boolean;
      
      protected var §3u§:§=!_§;
      
      protected var §4!§:Boolean;
      
      protected var §'!?§:Boolean = true;
      
      public function § !g§(param1:§"!"§, param2:String, param3:String)
      {
         this.§?8§();
         §&!t§ = param2;
         §2!R§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§]"F§();
         §1!j§.§8"+§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §+!Y§;
      }
      
      public static function get stageHeight() : int
      {
         return §"y§;
      }
      
      public static function §@p§(param1:Boolean) : void
      {
         §>!1§ = param1;
         §<!O§.§!p§(§>!1§);
      }
      
      public static function §<!c§() : Boolean
      {
         return §>!1§;
      }
      
      public static function get screenWidth() : int
      {
         return §;!'§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §;!'§.getAppHeight();
      }
      
      public static function get §;!'§() : § !g§
      {
         return §9";§;
      }
      
      public function get §>";§() : §>1§
      {
         return this.§'d§;
      }
      
      public function get §@"8§() : §<!3§
      {
         return this.§="<§;
      }
      
      public function get §&!`§() : §=!_§
      {
         return this.§3u§;
      }
      
      public function get §#!'§() : Boolean
      {
         return this.§"!d§;
      }
      
      public function set §#!'§(param1:Boolean) : void
      {
         this.§"!d§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §0!g§.§[!y§(§4!G§);
      }
      
      protected function getUIData() : XML
      {
         return §0!g§.§[!y§(§51§);
      }
      
      protected function §]"F§() : XML
      {
         return §0!g§.§[!y§(§8"7§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §2"7§() : void
      {
         this.§3u§ = new §=!_§();
      }
      
      protected function initialize() : void
      {
         §9";§ = this;
         this.§"!d§ = false;
         §9q§.init(this,screenWidth,screenHeight);
         this.§2"7§();
         this.initializeManagers();
         §[K§.§[!1§.init(§#V§.§4!+§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§^?§,this.§^" §);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §8&§ = screenWidth;
         §`w§ = screenHeight;
         §9q§.§2!x§.visible = §-"<§;
         §2!@§.§0!t§(§2! §);
         §2!@§.§]W§(true);
         var _loc1_:XMLList = §0!g§.§[!y§(§^"1§).children();
         §1!l§.init(_loc1_);
         §<!O§.§;!D§("CHANNEL_THEME",1,1);
         §<!O§.§;!D§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§]!Y§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!J§);
         stage.addEventListener(Event.RESIZE,this.§1"?§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§7K§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§0!J§);
         stage.addEventListener(Event.ACTIVATE,this.§2"?§);
         stage.addEventListener(Event.DEACTIVATE,this.§1"§);
         §6l§ = new §6" §(stage);
         §6l§.addEventListener(§#e§.§;!#§,this.§5!$§);
         §6l§.addEventListener(§#e§.§5!L§,this.§9O§);
         §!D§.§[!1§.§>!d§ = !§-"<§;
      }
      
      private function §1"§(param1:Event) : void
      {
         this.§!!b§();
      }
      
      private function §!!b§() : void
      {
         if(!this.§'!?§)
         {
            return;
         }
         this.§'!?§ = false;
         this.§4!§ = §<!O§.§?!2§;
         if(!this.§4!§)
         {
         }
      }
      
      private function §2"?§(param1:Event) : void
      {
         this.§'";§();
      }
      
      private function §'";§() : void
      {
         if(this.§'!?§)
         {
            return;
         }
         this.§'!?§ = true;
         if(!this.§4!§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§'+§ = new MovieClip();
         §2! §.stage.addChild(this.§'+§);
         this.§'d§ = new §#!f§(this.§'+§,§super§,this);
         this.§'d§.addEventListener(§@!T§.OPEN,this.§5!$§);
         this.§'d§.addEventListener(§@!T§.CLOSE,this.§9O§);
         this.§="<§ = new §<!3§(this.§'d§,this.§3u§,§!!4§.§#!e§);
         this.§'d§.addLayer(§!!4§.§?!F§,true,new Rectangle(0,0,-180,0));
         this.§'d§.addLayer(§!!4§.§#!e§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §5!$§(param1:Event) : void
      {
         this.§=!z§();
      }
      
      protected function §9O§(param1:Event) : void
      {
         this.§?!f§();
      }
      
      public function §?!f§() : void
      {
         var _loc1_:Boolean = this.§'d§.§^",§();
         var _loc2_:Boolean = §6l§.§1"1§();
         if(!_loc1_ && !_loc2_ && !this.§#!'§)
         {
            §9q§.resume();
         }
      }
      
      public function §=!z§() : void
      {
         §9q§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§3"4§ = this.initializeLevelItemManager();
         this.§+Q§ = this.initializeLevelThemeManager();
         this.§6u§ = this.initializeLevelManager();
         this.§^?§ = this.initializePackageManager();
         §9q§.§>!L§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §^g§
      {
         return new §^g§(stage,this.§3"4§,this.§+Q§,this.§6u§);
      }
      
      protected function initializeLevelItemManager() : §-!M§
      {
         return new §-!M§();
      }
      
      protected function initializeLevelThemeManager() : §`b§
      {
         return new §`b§();
      }
      
      protected function initializeLevelManager() : §9"!§
      {
         return new §9"!§();
      }
      
      protected function initializePackageManager() : §@"C§
      {
         return new §@"C§(this.§6u§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§3u§.userProgress = new §]"6§(§2!R§,this.§6u§);
      }
      
      protected function initializeStates() : void
      {
         §0j§(new §?!#§(this.§6u§,§super§,false));
         §0j§(new §0!q§(this.§6u§,§super§,false));
         §0j§(new StateEpisodeSelection(this.§6u§,§super§,false));
         §0j§(new §]J§(this.§6u§,§super§,false));
         §0j§(new StatePlay(this.§6u§,§super§,false));
         §0j§(new §93§(this.§6u§,§super§,false));
         §0j§(new § null§(this.§6u§,§super§,false));
         §0j§(new §3!g§(this.§6u§,§super§,false));
         §0j§(new §8!H§(this.§6u§,§super§,false));
         §0j§(new StateCutScene(this.§6u§,§super§,false));
         §0j§(new §4!U§(this.§6u§,§super§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§1"?§(null);
         }
      }
      
      protected function §^" §(param1:ByteArray) : void
      {
      }
      
      protected function §]!Y§(param1:Event) : void
      {
         §5!^§.§6;§();
         if(this.§["#§())
         {
            this.§<""§(0);
         }
      }
      
      protected function §?!J§(param1:MouseEvent) : void
      {
         §5!^§.§<"F§();
         if(this.§91§)
         {
            ++this.§[<§;
            if(this.§[<§ > §6"C§)
            {
               this.§91§ = false;
               if(this.§2"E§ < §2"D§)
               {
                  this.§<""§(this.§8#§);
               }
            }
         }
      }
      
      public function §`"0§() : void
      {
         this.§1"?§(null);
      }
      
      protected function §1"?§(param1:Event) : void
      {
         this.§+v§ = true;
      }
      
      protected function §0!J§(param1:Event) : void
      {
         this.§'";§();
      }
      
      public function §%!N§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§8#§ > §2!h§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§<""§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§;?§(_loc1_);
            }
         }
      }
      
      public function §&4§() : void
      {
         this.§<""§(0);
      }
      
      public function §["#§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §<""§(param1:int) : void
      {
         this.§+v§ = true;
         this.§8#§ = param1;
         this.§91§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §;?§(param1:int) : void
      {
         this.§+v§ = true;
         this.§8#§ = param1;
         this.§2"E§ = 0;
         this.§[<§ = 0;
         this.§91§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §7K§(param1:KeyboardEvent) : void
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
         §[K§.§[!1§.§-"D§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§9q§.§2!x§ != null)
         {
            §9q§.§2!x§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§,"7§().isGenericState())
         {
            if(_loc2_ == §0!3§.§-c§)
            {
               §2!@§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §,"7§().mName + " New State = " + §,"7§().nextState);
               §8!^§(§,"7§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §?[§;
      }
      
      override public function getAppHeight() : Number
      {
         return §3!h§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §1!E§;
      }
      
      protected function §>5§() : String
      {
         return "ThemeMusic";
      }
      
      public function §2!M§() : void
      {
         if(§<!O§.§4d§("Channel_Theme") == null || !§<!O§.§4d§("Channel_Theme").§9"%§())
         {
            §<!O§.playSound(this.§>5§(),"Channel_Theme",999);
         }
      }
      
      public function §0!c§() : void
      {
         §<!O§.§,!z§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §&!t§;
      }
      
      protected function loadItems() : void
      {
         this.§3"4§.loadItems(this.§5!n§());
      }
      
      protected function loadBackgrounds() : void
      {
         this.§+Q§.§%'§(this.§>w§().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.initializeUserProgress();
         this.loadItems();
         this.loadBackgrounds();
         §9q§.§&!&§(this.§^?§.§-" §,this.§"W§);
      }
      
      protected function §>w§() : XML
      {
         return §0!g§.§[!y§(§&t§);
      }
      
      protected function §5!n§() : XML
      {
         return §0!g§.§[!y§(§1F§);
      }
      
      protected function §"W§(param1:Event) : void
      {
         §<B§ = true;
         §8!^§(§0!q§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§91§)
         {
            ++this.§2"E§;
         }
         if(!§^!e§.§>c§())
         {
            return;
         }
         if(this.§+v§)
         {
            this.resize();
            this.§+v§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §+!Y§;
            _loc3_ = §"y§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §+!Y§ == _loc2_ && §"y§ == _loc3_)
         {
            return false;
         }
         §+!Y§ = _loc2_;
         §"y§ = _loc3_;
         this.resizeViews(§+!Y§,§"y§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §9q§.§<_§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§'d§.setViewSize(param1,param2);
      }
      
      public function §const§() : void
      {
      }
      
      public function §8!S§() : void
      {
      }
      
      protected function §?8§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
