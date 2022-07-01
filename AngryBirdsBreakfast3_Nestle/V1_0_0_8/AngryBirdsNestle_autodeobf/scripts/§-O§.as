package
{
   import § S§.§!H§;
   import § S§.§3!b§;
   import § S§.§5!y§;
   import §!"+§.§2!H§;
   import §"0§.§7W§;
   import §#!n§.§+!o§;
   import §#!n§.§+"3§;
   import §%f§.§&!=§;
   import §,#§.§ K§;
   import §,#§.§&3§;
   import §,#§.§'!e§;
   import §,#§.§6?§;
   import §,#§.§6L§;
   import §,#§.§7H§;
   import §,#§.§=%§;
   import §,#§.§?"&§;
   import §,#§.StateCutScene;
   import §,#§.StateEpisodeSelection;
   import §,#§.StatePlay;
   import §0P§.§+!l§;
   import §0P§.§with§;
   import §53§.§6!u§;
   import §5h§.§-!Q§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §9G§.§2F§;
   import §;4§.§%@§;
   import §;4§.§-!+§;
   import §;4§.§]!%§;
   import §<" §.§'"4§;
   import §=!6§.§+8§;
   import §=!k§.§[!4§;
   import §>D§.§!R§;
   import §@!i§.§!!Y§;
   import §]!5§.§^""§;
   import §^C§.§5!L§;
   import com.angrybirds.§'j§;
   import com.angrybirds.§4"6§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§1_§;
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
   
   public class §-O§ extends §+!l§
   {
      
      protected static var §;[§:Class = §3!3§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §1C§:String;
      
      public static var §',§:String;
      
      public static const §,_§:int = 1024;
      
      public static const §-v§:int = 768;
      
      public static const §5Y§:Boolean = false;
      
      public static const §@p§:int = 2000;
      
      private static const §`"4§:int = 750;
      
      private static const §8§:int = 3;
      
      private static const §+! §:int = 15;
      
      protected static var §23§:Class = §8u§;
      
      protected static var §'" §:Class = §]!X§;
      
      protected static var §![§:Class = §1U§;
      
      protected static var §@c§:Class = §5!>§;
      
      protected static var §%!p§:Class = §@!C§;
      
      public static var §=!#§:Boolean = true;
      
      private static var §-!H§:§-O§ = null;
      
      public static var §!J§:Sprite = null;
      
      public static var §6U§:§'j§;
      
      public static var §'!8§:Boolean = false;
      
      private static var §4!"§:int = 0;
      
      private static var §1!,§:int = 0;
       
      
      protected var §@Q§:§+"3§;
      
      protected var §<"3§:§2!H§;
      
      protected var §!P§:§!R§;
      
      protected var §!3§:§3"&§;
      
      protected var §%!@§:MovieClip;
      
      protected var §3X§:§!H§;
      
      protected var §0!i§:§[!4§;
      
      private var §6!8§:int;
      
      private var §1P§:Boolean;
      
      private var §8b§:int;
      
      private var §8"6§:int;
      
      protected var §1$§:Boolean;
      
      protected var §2!&§:Boolean;
      
      protected var §%""§:§+!o§;
      
      protected var §"f§:Boolean;
      
      protected var §6a§:Boolean = true;
      
      private var §27§:Boolean = false;
      
      public function §-O§(param1:§with§, param2:String, param3:String)
      {
         this.initFonts();
         §1C§ = param2;
         §',§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§0!R§();
         §&!=§.§"H§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != §"!V§ || stage.stageHeight != §^,§)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §4!"§;
      }
      
      public static function get stageHeight() : int
      {
         return §1!,§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §=!#§ = param1;
         §]d§.§7!_§(§=!#§);
      }
      
      public static function §^j§() : Boolean
      {
         return §=!#§;
      }
      
      public static function get §"!V§() : int
      {
         return §5!1§.getAppWidth();
      }
      
      public static function get §^,§() : int
      {
         return §5!1§.getAppHeight();
      }
      
      public static function get §5!1§() : §-O§
      {
         return §-!H§;
      }
      
      public function get §-6§() : §!H§
      {
         return this.§3X§;
      }
      
      public function get §=<§() : §[!4§
      {
         return this.§0!i§;
      }
      
      public function get §]u§() : §+!o§
      {
         return this.§%""§;
      }
      
      public function get §]'§() : Boolean
      {
         return this.§2!&§;
      }
      
      public function set §]'§(param1:Boolean) : void
      {
         this.§2!&§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §%@§.set(§![§);
      }
      
      protected function getUIData() : XML
      {
         return §%@§.set(§23§);
      }
      
      protected function §0!R§() : XML
      {
         return §%@§.set(§'" §);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §&D§() : void
      {
         this.§%""§ = new §+!o§();
      }
      
      protected function initialize() : void
      {
         §-!H§ = this;
         this.§2!&§ = false;
         §4"6§.init(this,§"!V§,§^,§);
         this.§&D§();
         this.initializeManagers();
         this.initializeUserProgress();
         §-!Q§.§"e§.init(§^""§.§%W§(),this.§2d§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§@Q§,this.§%!7§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §9!i§ = §"!V§;
         §^!N§ = §^,§;
         §4"6§.§,!h§.visible = §5Y§;
         §]!%§.§,!j§(§`!j§);
         §]!%§.§'@§(true);
         var _loc1_:XMLList = §%@§.set(§;[§).children();
         §1_§.init(_loc1_);
         §]d§.§[!$§("CHANNEL_THEME",1,1);
         §]d§.§[!$§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§`l§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;!o§);
         stage.addEventListener(Event.RESIZE,this.§ "#§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§ !?§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§@"3§);
         stage.addEventListener(Event.ACTIVATE,this.§9X§);
         stage.addEventListener(Event.DEACTIVATE,this.§]!>§);
         stage.tabChildren = false;
         §6U§ = new §'j§(stage);
         §6U§.addEventListener(§'"4§.§8!c§,this.§;]§);
         §6U§.addEventListener(§'"4§.§,-§,this.§7!a§);
         §6!u§.§"e§.§+!x§ = !§5Y§;
      }
      
      protected function §2d§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §]!>§(param1:Event) : void
      {
         this.§#-§();
      }
      
      private function §#-§() : void
      {
         if(!this.§6a§)
         {
            return;
         }
         this.§6a§ = false;
         this.§"f§ = §]d§.§&1§;
         if(!this.§"f§)
         {
         }
      }
      
      private function §9X§(param1:Event) : void
      {
         this.§&`§();
      }
      
      private function §&`§() : void
      {
         if(this.§6a§)
         {
            return;
         }
         this.§6a§ = true;
         if(!this.§"f§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§%!@§ = new MovieClip();
         §`!j§.stage.addChild(this.§%!@§);
         this.§3X§ = new §3!b§(this.§%!@§,§&"&§,this);
         this.§3X§.addEventListener(§!!Y§.OPEN,this.§;]§);
         this.§3X§.addEventListener(§!!Y§.CLOSE,this.§7!a§);
         this.§0!i§ = new §[!4§(this.§3X§,this.§%""§,§5!y§.§6!0§);
         this.§3X§.addLayer(§5!y§.§]S§,true,new Rectangle(0,0,-180,0));
         this.§3X§.addLayer(§5!y§.§6!0§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §;]§(param1:Event) : void
      {
         this.§=j§();
      }
      
      protected function §7!a§(param1:Event) : void
      {
         this.§ w§();
      }
      
      public function § w§() : void
      {
         var _loc1_:Boolean = this.§3X§.§ !I§();
         var _loc2_:Boolean = §6U§.§?S§();
         if(!_loc1_ && !_loc2_ && !this.§]'§)
         {
            §4"6§.resume();
         }
      }
      
      public function §=j§() : void
      {
         §4"6§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§<"3§ = this.initializeLevelItemManager();
         this.§!P§ = this.initializeLevelThemeManager();
         this.§!3§ = this.initializeLevelManager();
         this.§@Q§ = this.initializePackageManager();
         §4"6§.§;!k§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §2F§
      {
         return new §2F§(stage,this.§<"3§,this.§!P§,this.§!3§);
      }
      
      protected function initializeLevelItemManager() : §2!H§
      {
         return new §2!H§();
      }
      
      protected function initializeLevelThemeManager() : §!R§
      {
         return new §!R§();
      }
      
      protected function initializeLevelManager() : §3"&§
      {
         return new §3"&§();
      }
      
      protected function initializePackageManager() : §+"3§
      {
         return new §+"3§(this.§!3§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§%""§.userProgress = new §7W§(§',§,this.§!3§);
      }
      
      protected function initializeStates() : void
      {
         §,!H§(new § K§(this.§!3§,§&"&§,false));
         §,!H§(new §&3§(this.§!3§,§&"&§,false));
         §,!H§(new StateEpisodeSelection(this.§!3§,§&"&§,false));
         §,!H§(new §=%§(this.§!3§,§&"&§,false));
         §,!H§(new StatePlay(this.§!3§,§&"&§,false));
         §,!H§(new §'!e§(this.§!3§,§&"&§,false));
         §,!H§(new §?"&§(this.§!3§,§&"&§,false));
         §,!H§(new §6?§(this.§!3§,§&"&§,false));
         §,!H§(new §7H§(this.§!3§,§&"&§,false));
         §,!H§(new StateCutScene(this.§!3§,§&"&§,false));
         §,!H§(new §6L§(this.§!3§,§&"&§,false));
         if(stage.stageWidth != §"!V§ || stage.stageHeight != §^,§)
         {
            this.§ "#§(null);
         }
      }
      
      protected function §%!7§(param1:ByteArray) : void
      {
      }
      
      protected function §`l§(param1:Event) : void
      {
         §-!+§.§<!M§();
      }
      
      protected function §;!o§(param1:MouseEvent) : void
      {
         §-!+§.§8!#§();
         if(this.§1P§)
         {
            ++this.§8"6§;
            if(this.§8"6§ > §+! §)
            {
               this.§1P§ = false;
               if(this.§8b§ < §8§)
               {
                  this.§,!&§(this.§6!8§);
               }
            }
         }
      }
      
      public function §]N§() : void
      {
         this.§ "#§(null);
      }
      
      protected function § "#§(param1:Event) : void
      {
         this.§1$§ = true;
      }
      
      protected function §@"3§(param1:Event) : void
      {
         this.§&`§();
      }
      
      public function §0`§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§6!8§ > §`"4§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§,!&§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§7D§(_loc1_);
            }
         }
      }
      
      public function §="§() : void
      {
         this.§,!&§(0);
      }
      
      public function §%!y§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §,!&§(param1:int) : void
      {
         this.§1$§ = true;
         this.§6!8§ = param1;
         this.§1P§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §7D§(param1:int) : void
      {
         this.§1$§ = true;
         this.§6!8§ = param1;
         this.§8b§ = 0;
         this.§8"6§ = 0;
         this.§1P§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function § !?§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §>1§() : Boolean
      {
         return this.§27§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§27§ = true;
         this.initializeGame();
         §-!Q§.§"e§.§8!!§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§4"6§.§,!h§ != null)
         {
            §4"6§.§,!h§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§3!>§().isGenericState())
         {
            if(_loc2_ == §5!L§.§>3§)
            {
               §'"6§(§3!>§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §,_§;
      }
      
      override public function getAppHeight() : Number
      {
         return §-v§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §@p§;
      }
      
      protected function §[d§() : String
      {
         return "ThemeMusic";
      }
      
      public function §"-§() : void
      {
         if(§]d§.§`!?§("Channel_Theme") == null || !§]d§.§`!?§("Channel_Theme").§'_§())
         {
            §]d§.§^!J§(this.§[d§(),"Channel_Theme",999);
         }
      }
      
      public function §+U§() : void
      {
         §]d§.§<"+§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §1C§;
      }
      
      protected function loadItems() : void
      {
         this.§<"3§.loadItems(this.§[!m§());
      }
      
      protected function §'!M§() : void
      {
         this.§!P§.§0!J§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§'!M§();
         §4"6§.§&$§(this.§@Q§.§3V§,this.§@,§);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §%@§.set(§%!p§);
      }
      
      protected function §[!m§() : XML
      {
         return §%@§.set(§@c§);
      }
      
      protected function §@,§(param1:Event) : void
      {
         §'!8§ = true;
         §'"6§(§&3§.§'u§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§1P§)
         {
            ++this.§8b§;
         }
         if(!§+8§.§,<§())
         {
            return;
         }
         if(this.§1$§)
         {
            this.resize();
            this.§1$§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §4!"§;
            _loc3_ = §1!,§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §4!"§ == _loc2_ && §1!,§ == _loc3_)
         {
            return false;
         }
         §4!"§ = _loc2_;
         §1!,§ = _loc3_;
         this.resizeViews(§4!"§,§1!,§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §4"6§.§@! §(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§3X§.setViewSize(param1,param2);
      }
      
      public function §!0§() : void
      {
      }
      
      public function §1!0§() : void
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
