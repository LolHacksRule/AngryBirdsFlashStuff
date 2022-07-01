package
{
   import §!!<§.§-"4§;
   import §!!L§.§5!n§;
   import §#!`§.§%!w§;
   import §#!`§.§+"#§;
   import §&+§.§?J§;
   import §+c§.§5!6§;
   import §+j§.§@!_§;
   import §-!F§.§,Q§;
   import §5!W§.§>P§;
   import §6!C§.§;-§;
   import §6%§.§8A§;
   import §7-§.§8!v§;
   import §9![§.§1!i§;
   import §<R§.§!@§;
   import §<R§.§[!u§;
   import §=!7§.§%!%§;
   import §=!7§.§1!7§;
   import §=!7§.§9c§;
   import §=3§.§`!F§;
   import §>!L§.§%c§;
   import §>!a§.§5l§;
   import §@"1§.§"h§;
   import §[<§.§'!P§;
   import §[<§.§5t§;
   import §[<§.§6!W§;
   import §`!6§.§"!^§;
   import §`!6§.§+8§;
   import §`!6§.§-%§;
   import §`!6§.§3B§;
   import §`!6§.§;O§;
   import §`!6§.§<!9§;
   import §`!6§.§=!]§;
   import §`!6§.§?E§;
   import §`!6§.StateCutScene;
   import §`!6§.StateEpisodeSelection;
   import §`!6§.StatePlay;
   import com.angrybirds.§4!l§;
   import com.angrybirds.§]f§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§5B§;
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
   
   public class §&N§ extends §!@§
   {
      
      protected static var §6"2§:Class = §#!b§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §<!]§:String;
      
      public static var §!!@§:String;
      
      public static const §^!z§:int = 1024;
      
      public static const §^!y§:int = 768;
      
      public static const §[z§:Boolean = false;
      
      public static const §<!=§:int = 2000;
      
      private static const §%!m§:int = 750;
      
      private static const §2!Q§:int = 3;
      
      private static const §0"5§:int = 15;
      
      protected static var §6<§:Class = §87§;
      
      protected static var §!O§:Class = §3V§;
      
      protected static var §6!a§:Class = §`;§;
      
      protected static var §>!§:Class = §`!X§;
      
      protected static var §!`§:Class = §;!V§;
      
      public static var §4f§:Boolean = true;
      
      private static var §%F§:§&N§ = null;
      
      public static var §7w§:Sprite = null;
      
      public static var §`"0§:§]f§;
      
      public static var §^!7§:Boolean = false;
      
      private static var §7=§:int = 0;
      
      private static var §+!m§:int = 0;
       
      
      protected var §7,§:§%!w§;
      
      protected var §'!f§:§-"4§;
      
      protected var § if§:§5!6§;
      
      protected var §^!§:§5l§;
      
      protected var §+]§:MovieClip;
      
      protected var §+h§:§5t§;
      
      protected var §6!T§:§?J§;
      
      private var §?@§:int;
      
      private var §]!2§:Boolean;
      
      private var §5M§:int;
      
      private var §?W§:int;
      
      protected var §?'§:Boolean;
      
      protected var §7!O§:Boolean;
      
      protected var §'c§:§+"#§;
      
      protected var § 6§:Boolean;
      
      protected var §5!s§:Boolean = true;
      
      private var §4§:Boolean = false;
      
      public function §&N§(param1:§[!u§, param2:String, param3:String)
      {
         this.initFonts();
         §<!]§ = param2;
         §!!@§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§`!z§();
         §,Q§.§#g§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != §,!o§ || stage.stageHeight != §3!O§)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §7=§;
      }
      
      public static function get stageHeight() : int
      {
         return §+!m§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §4f§ = param1;
         §1!i§.§-b§(§4f§);
      }
      
      public static function §3!M§() : Boolean
      {
         return §4f§;
      }
      
      public static function get §,!o§() : int
      {
         return §#Y§.getAppWidth();
      }
      
      public static function get §3!O§() : int
      {
         return §#Y§.getAppHeight();
      }
      
      public static function get §#Y§() : §&N§
      {
         return §%F§;
      }
      
      public function get §@!H§() : §5t§
      {
         return this.§+h§;
      }
      
      public function get §1"3§() : §?J§
      {
         return this.§6!T§;
      }
      
      public function get §`"$§() : §+"#§
      {
         return this.§'c§;
      }
      
      public function get §!;§() : Boolean
      {
         return this.§7!O§;
      }
      
      public function set §!;§(param1:Boolean) : void
      {
         this.§7!O§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §%!%§.§<!0§(§6!a§);
      }
      
      protected function getUIData() : XML
      {
         return §%!%§.§<!0§(§6<§);
      }
      
      protected function §`!z§() : XML
      {
         return §%!%§.§<!0§(§!O§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §--§() : void
      {
         this.§'c§ = new §+"#§();
      }
      
      protected function initialize() : void
      {
         §%F§ = this;
         this.§7!O§ = false;
         §4!l§.init(this,§,!o§,§3!O§);
         this.§--§();
         this.initializeManagers();
         this.initializeUserProgress();
         §8A§.§=J§.init(§;-§.§1!O§(),this.§;!-§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§7,§,this.§5Y§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §[!d§ = §,!o§;
         include = §3!O§;
         §4!l§.§>!f§.visible = §[z§;
         §1!7§.§%!g§(§"3§);
         §1!7§.§?H§(true);
         var _loc1_:XMLList = §%!%§.§<!0§(§6"2§).children();
         §5B§.init(_loc1_);
         §1!i§.§[=§("CHANNEL_THEME",1,1);
         §1!i§.§[=§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§^!I§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§5m§);
         stage.addEventListener(Event.RESIZE,this.§%C§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§^=§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§`<§);
         stage.addEventListener(Event.ACTIVATE,this.§4p§);
         stage.addEventListener(Event.DEACTIVATE,this.§+4§);
         stage.tabChildren = false;
         §`"0§ = new §]f§(stage);
         §`"0§.addEventListener(§%c§.§^c§,this.§+!q§);
         §`"0§.addEventListener(§%c§.§,!Y§,this.§;!=§);
         §`!F§.§=J§.§]h§ = !§[z§;
      }
      
      protected function §;!-§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §+4§(param1:Event) : void
      {
         this.§!!`§();
      }
      
      private function §!!`§() : void
      {
         if(!this.§5!s§)
         {
            return;
         }
         this.§5!s§ = false;
         this.§ 6§ = §1!i§.§>o§;
         if(!this.§ 6§)
         {
         }
      }
      
      private function §4p§(param1:Event) : void
      {
         this.§#;§();
      }
      
      private function §#;§() : void
      {
         if(this.§5!s§)
         {
            return;
         }
         this.§5!s§ = true;
         if(!this.§ 6§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§+]§ = new MovieClip();
         §"3§.stage.addChild(this.§+]§);
         this.§+h§ = new §'!P§(this.§+]§,§&%§,this);
         this.§+h§.addEventListener(§8!v§.OPEN,this.§+!q§);
         this.§+h§.addEventListener(§8!v§.CLOSE,this.§;!=§);
         this.§6!T§ = new §?J§(this.§+h§,this.§'c§,§6!W§.§+!J§);
         this.§+h§.addLayer(§6!W§.§5S§,true,new Rectangle(0,0,-180,0));
         this.§+h§.addLayer(§6!W§.§+!J§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §+!q§(param1:Event) : void
      {
         this.§<!_§();
      }
      
      protected function §;!=§(param1:Event) : void
      {
         this.§^!?§();
      }
      
      public function §^!?§() : void
      {
         var _loc1_:Boolean = this.§+h§.§1s§();
         var _loc2_:Boolean = §`"0§.§2z§();
         if(!_loc1_ && !_loc2_ && !this.§!;§)
         {
            §4!l§.resume();
         }
      }
      
      public function §<!_§() : void
      {
         §4!l§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§'!f§ = this.initializeLevelItemManager();
         this.§ if§ = this.initializeLevelThemeManager();
         this.§^!§ = this.initializeLevelManager();
         this.§7,§ = this.initializePackageManager();
         §4!l§.§,!8§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §"h§
      {
         return new §"h§(stage,this.§'!f§,this.§ if§,this.§^!§);
      }
      
      protected function initializeLevelItemManager() : §-"4§
      {
         return new §-"4§();
      }
      
      protected function initializeLevelThemeManager() : §5!6§
      {
         return new §5!6§();
      }
      
      protected function initializeLevelManager() : §5l§
      {
         return new §5l§();
      }
      
      protected function initializePackageManager() : §%!w§
      {
         return new §%!w§(this.§^!§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§'c§.userProgress = new §5!n§(§!!@§,this.§^!§);
      }
      
      protected function initializeStates() : void
      {
         §-!r§(new §-%§(this.§^!§,§&%§,false));
         §-!r§(new §+8§(this.§^!§,§&%§,false));
         §-!r§(new StateEpisodeSelection(this.§^!§,§&%§,false));
         §-!r§(new §?E§(this.§^!§,§&%§,false));
         §-!r§(new StatePlay(this.§^!§,§&%§,false));
         §-!r§(new §;O§(this.§^!§,§&%§,false));
         §-!r§(new §<!9§(this.§^!§,§&%§,false));
         §-!r§(new §=!]§(this.§^!§,§&%§,false));
         §-!r§(new §"!^§(this.§^!§,§&%§,false));
         §-!r§(new StateCutScene(this.§^!§,§&%§,false));
         §-!r§(new §3B§(this.§^!§,§&%§,false));
         if(stage.stageWidth != §,!o§ || stage.stageHeight != §3!O§)
         {
            this.§%C§(null);
         }
      }
      
      protected function §5Y§(param1:ByteArray) : void
      {
      }
      
      protected function §^!I§(param1:Event) : void
      {
         §9c§.§5Q§();
      }
      
      protected function §5m§(param1:MouseEvent) : void
      {
         §9c§.§<!$§();
         if(this.§]!2§)
         {
            ++this.§?W§;
            if(this.§?W§ > §0"5§)
            {
               this.§]!2§ = false;
               if(this.§5M§ < §2!Q§)
               {
                  this.§#!Q§(this.§?@§);
               }
            }
         }
      }
      
      public function §7![§() : void
      {
         this.§%C§(null);
      }
      
      protected function §%C§(param1:Event) : void
      {
         this.§?'§ = true;
      }
      
      protected function §`<§(param1:Event) : void
      {
         this.§#;§();
      }
      
      public function §&<§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§?@§ > §%!m§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§#!Q§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§]!T§(_loc1_);
            }
         }
      }
      
      public function §7!e§() : void
      {
         this.§#!Q§(0);
      }
      
      public function §5!B§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §#!Q§(param1:int) : void
      {
         this.§?'§ = true;
         this.§?@§ = param1;
         this.§]!2§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §]!T§(param1:int) : void
      {
         this.§?'§ = true;
         this.§?@§ = param1;
         this.§5M§ = 0;
         this.§?W§ = 0;
         this.§]!2§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §^=§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §'!7§() : Boolean
      {
         return this.§4§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§4§ = true;
         this.initializeGame();
         §8A§.§=J§.§#!L§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§4!l§.§>!f§ != null)
         {
            §4!l§.§>!f§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§9!5§().isGenericState())
         {
            if(_loc2_ == §@!_§.§4"%§)
            {
               §8=§(§9!5§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §^!z§;
      }
      
      override public function getAppHeight() : Number
      {
         return §^!y§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §<!=§;
      }
      
      protected function §<!5§() : String
      {
         return "ThemeMusic";
      }
      
      public function §''§() : void
      {
         if(§1!i§.§?1§("Channel_Theme") == null || !§1!i§.§?1§("Channel_Theme").§?G§())
         {
            §1!i§.§+!Y§(this.§<!5§(),"Channel_Theme",999);
         }
      }
      
      public function §5!^§() : void
      {
         §1!i§.§=!3§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §<!]§;
      }
      
      protected function loadItems() : void
      {
         this.§'!f§.loadItems(this.§=P§());
      }
      
      protected function §;K§() : void
      {
         this.§ if§.§!n§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§;K§();
         §4!l§.§6!j§(this.§7,§.§;"#§,this.§[!2§);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §%!%§.§<!0§(§!`§);
      }
      
      protected function §=P§() : XML
      {
         return §%!%§.§<!0§(§>!§);
      }
      
      protected function §[!2§(param1:Event) : void
      {
         §^!7§ = true;
         §8=§(§+8§.§]O§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§]!2§)
         {
            ++this.§5M§;
         }
         if(!§>P§.§1Y§())
         {
            return;
         }
         if(this.§?'§)
         {
            this.resize();
            this.§?'§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §7=§;
            _loc3_ = §+!m§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §7=§ == _loc2_ && §+!m§ == _loc3_)
         {
            return false;
         }
         §7=§ = _loc2_;
         §+!m§ = _loc3_;
         this.resizeViews(§7=§,§+!m§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §4!l§.§&!1§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§+h§.setViewSize(param1,param2);
      }
      
      public function §1!9§() : void
      {
      }
      
      public function §`%§() : void
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
