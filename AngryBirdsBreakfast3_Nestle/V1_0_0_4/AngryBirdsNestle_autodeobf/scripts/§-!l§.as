package
{
   import §"I§.§ !R§;
   import §"I§.§=!U§;
   import §"I§.§?"4§;
   import §"m§.§'!6§;
   import §"m§.§,g§;
   import §#@§.§^!^§;
   import §&!>§.§3!k§;
   import §&"&§.§#!'§;
   import §'<§.§=!o§;
   import §0I§.§!!p§;
   import §2?§.§4!5§;
   import §3"%§.§>K§;
   import §5!7§.§<"2§;
   import §6!4§.§<!D§;
   import §9!a§.§@S§;
   import §><§.§0!M§;
   import §?!4§.§=!v§;
   import §?!E§.§#V§;
   import §?!E§.§'!-§;
   import §?!E§.§,!_§;
   import §?!E§.§2S§;
   import §?!E§.§2j§;
   import §?!E§.§62§;
   import §?!E§.§7!H§;
   import §?!E§.StateCutScene;
   import §?!E§.StateEpisodeSelection;
   import §?!E§.StatePlay;
   import §?!E§.§]l§;
   import §?N§.§+!J§;
   import §?N§.§6!b§;
   import §?N§.§]!_§;
   import §?Z§.§5-§;
   import §@!2§.§2A§;
   import §[j§.§-?§;
   import §[j§.§8&§;
   import §`6§.§ 2§;
   import com.angrybirds.§ !$§;
   import com.angrybirds.§6U§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§]`§;
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
   
   public class §-!l§ extends §,g§
   {
      
      protected static var §'x§:Class = §`!;§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §?b§:String;
      
      public static var §%"-§:String;
      
      public static const §[6§:int = 1024;
      
      public static const §1a§:int = 768;
      
      public static const §`"$§:Boolean = false;
      
      public static const §;!M§:int = 2000;
      
      private static const §']§:int = 750;
      
      private static const §>"+§:int = 3;
      
      private static const § !,§:int = 15;
      
      protected static var §6e§:Class = §?!h§;
      
      protected static var §`!r§:Class = §<!y§;
      
      protected static var §&!N§:Class = §,y§;
      
      protected static var §0!p§:Class = §#!@§;
      
      protected static var §'!G§:Class = §=R§;
      
      public static var §[Z§:Boolean = true;
      
      private static var §;[§:§-!l§ = null;
      
      public static var §"!Q§:Sprite = null;
      
      public static var §'1§:§ !$§;
      
      public static var §7!,§:Boolean = false;
      
      private static var §1H§:int = 0;
      
      private static var §%!w§:int = 0;
       
      
      protected var §'!"§:§8&§;
      
      protected var §with§:§<"2§;
      
      protected var §'5§:§4!5§;
      
      protected var §+o§:§=!o§;
      
      protected var §,!#§:MovieClip;
      
      protected var §'!`§:§+!J§;
      
      protected var §1!u§:§^!^§;
      
      private var §=!b§:int;
      
      private var §1!e§:Boolean;
      
      private var §#v§:int;
      
      private var §&N§:int;
      
      protected var §@5§:Boolean;
      
      protected var §4!u§:Boolean;
      
      protected var §^!g§:§-?§;
      
      protected var §+Y§:Boolean;
      
      protected var §1T§:Boolean = true;
      
      private var §`l§:Boolean = false;
      
      public function §-!l§(param1:§'!6§, param2:String, param3:String)
      {
         this.initFonts();
         §?b§ = param2;
         §%"-§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§3!_§();
         § 2§.§6!,§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != §?g§ || stage.stageHeight != §-!W§)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §1H§;
      }
      
      public static function get stageHeight() : int
      {
         return §%!w§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §[Z§ = param1;
         §3!k§.§"!-§(§[Z§);
      }
      
      public static function §&!<§() : Boolean
      {
         return §[Z§;
      }
      
      public static function get §?g§() : int
      {
         return §"x§.getAppWidth();
      }
      
      public static function get §-!W§() : int
      {
         return §"x§.getAppHeight();
      }
      
      public static function get §"x§() : §-!l§
      {
         return §;[§;
      }
      
      public function get §,!W§() : §+!J§
      {
         return this.§'!`§;
      }
      
      public function get §`9§() : §^!^§
      {
         return this.§1!u§;
      }
      
      public function get §?"&§() : §-?§
      {
         return this.§^!g§;
      }
      
      public function get §@!c§() : Boolean
      {
         return this.§4!u§;
      }
      
      public function set §@!c§(param1:Boolean) : void
      {
         this.§4!u§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return § !R§.§`G§(§&!N§);
      }
      
      protected function getUIData() : XML
      {
         return § !R§.§`G§(§6e§);
      }
      
      protected function §3!_§() : XML
      {
         return § !R§.§`G§(§`!r§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §2!v§() : void
      {
         this.§^!g§ = new §-?§();
      }
      
      protected function initialize() : void
      {
         §;[§ = this;
         this.§4!u§ = false;
         §6U§.init(this,§?g§,§-!W§);
         this.§2!v§();
         this.initializeManagers();
         this.initializeUserProgress();
         §2A§.§?!+§.init(§>K§.§-b§(),this.§6s§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§'!"§,this.§7&§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §@!L§ = §?g§;
         §2!>§ = §-!W§;
         §6U§.§<!@§.visible = §`"$§;
         §=!U§.§8!l§(§^J§);
         §=!U§.§;n§(true);
         var _loc1_:XMLList = § !R§.§`G§(§'x§).children();
         §]`§.init(_loc1_);
         §3!k§.§[y§("CHANNEL_THEME",1,1);
         §3!k§.§[y§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§>k§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§!"4§);
         stage.addEventListener(Event.RESIZE,this.§7!l§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!r§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§8!g§);
         stage.addEventListener(Event.ACTIVATE,this.§0e§);
         stage.addEventListener(Event.DEACTIVATE,this.§%6§);
         stage.tabChildren = false;
         §'1§ = new § !$§(stage);
         §'1§.addEventListener(§=!v§.§="-§,this.§%J§);
         §'1§.addEventListener(§=!v§.§4!c§,this.§>!Z§);
         §0!M§.§?!+§.§;d§ = !§`"$§;
      }
      
      protected function §6s§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §%6§(param1:Event) : void
      {
         this.§+U§();
      }
      
      private function §+U§() : void
      {
         if(!this.§1T§)
         {
            return;
         }
         this.§1T§ = false;
         this.§+Y§ = §3!k§.§]!`§;
         if(!this.§+Y§)
         {
         }
      }
      
      private function §0e§(param1:Event) : void
      {
         this.§+!%§();
      }
      
      private function §+!%§() : void
      {
         if(this.§1T§)
         {
            return;
         }
         this.§1T§ = true;
         if(!this.§+Y§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§,!#§ = new MovieClip();
         §^J§.stage.addChild(this.§,!#§);
         this.§'!`§ = new §6!b§(this.§,!#§,§@!W§,this);
         this.§'!`§.addEventListener(§5-§.OPEN,this.§%J§);
         this.§'!`§.addEventListener(§5-§.CLOSE,this.§>!Z§);
         this.§1!u§ = new §^!^§(this.§'!`§,this.§^!g§,§]!_§.§!o§);
         this.§'!`§.addLayer(§]!_§.§3!y§,true,new Rectangle(0,0,-180,0));
         this.§'!`§.addLayer(§]!_§.§!o§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §%J§(param1:Event) : void
      {
         this.§,$§();
      }
      
      protected function §>!Z§(param1:Event) : void
      {
         this.§]!-§();
      }
      
      public function §]!-§() : void
      {
         var _loc1_:Boolean = this.§'!`§.§7"#§();
         var _loc2_:Boolean = §'1§.§'s§();
         if(!_loc1_ && !_loc2_ && !this.§@!c§)
         {
            §6U§.resume();
         }
      }
      
      public function §,$§() : void
      {
         §6U§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§with§ = this.initializeLevelItemManager();
         this.§'5§ = this.initializeLevelThemeManager();
         this.§+o§ = this.initializeLevelManager();
         this.§'!"§ = this.initializePackageManager();
         §6U§.§+_§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §!!p§
      {
         return new §!!p§(stage,this.§with§,this.§'5§,this.§+o§);
      }
      
      protected function initializeLevelItemManager() : §<"2§
      {
         return new §<"2§();
      }
      
      protected function initializeLevelThemeManager() : §4!5§
      {
         return new §4!5§();
      }
      
      protected function initializeLevelManager() : §=!o§
      {
         return new §=!o§();
      }
      
      protected function initializePackageManager() : §8&§
      {
         return new §8&§(this.§+o§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§^!g§.userProgress = new §#!'§(§%"-§,this.§+o§);
      }
      
      protected function initializeStates() : void
      {
         §8Q§(new §62§(this.§+o§,§@!W§,false));
         §8Q§(new §#V§(this.§+o§,§@!W§,false));
         §8Q§(new StateEpisodeSelection(this.§+o§,§@!W§,false));
         §8Q§(new §]l§(this.§+o§,§@!W§,false));
         §8Q§(new StatePlay(this.§+o§,§@!W§,false));
         §8Q§(new §'!-§(this.§+o§,§@!W§,false));
         §8Q§(new §7!H§(this.§+o§,§@!W§,false));
         §8Q§(new §2j§(this.§+o§,§@!W§,false));
         §8Q§(new §,!_§(this.§+o§,§@!W§,false));
         §8Q§(new StateCutScene(this.§+o§,§@!W§,false));
         §8Q§(new §2S§(this.§+o§,§@!W§,false));
         if(stage.stageWidth != §?g§ || stage.stageHeight != §-!W§)
         {
            this.§7!l§(null);
         }
      }
      
      protected function §7&§(param1:ByteArray) : void
      {
      }
      
      protected function §>k§(param1:Event) : void
      {
         §?"4§.§=?§();
      }
      
      protected function §!"4§(param1:MouseEvent) : void
      {
         §?"4§.§,!5§();
         if(this.§1!e§)
         {
            ++this.§&N§;
            if(this.§&N§ > § !,§)
            {
               this.§1!e§ = false;
               if(this.§#v§ < §>"+§)
               {
                  this.§]!>§(this.§=!b§);
               }
            }
         }
      }
      
      public function §9?§() : void
      {
         this.§7!l§(null);
      }
      
      protected function §7!l§(param1:Event) : void
      {
         this.§@5§ = true;
      }
      
      protected function §8!g§(param1:Event) : void
      {
         this.§+!%§();
      }
      
      public function §3l§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§=!b§ > §']§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§]!>§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§#^§(_loc1_);
            }
         }
      }
      
      public function §'"-§() : void
      {
         this.§]!>§(0);
      }
      
      public function §;4§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §]!>§(param1:int) : void
      {
         this.§@5§ = true;
         this.§=!b§ = param1;
         this.§1!e§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §#^§(param1:int) : void
      {
         this.§@5§ = true;
         this.§=!b§ = param1;
         this.§#v§ = 0;
         this.§&N§ = 0;
         this.§1!e§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §!!r§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §3W§() : Boolean
      {
         return this.§`l§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§`l§ = true;
         this.initializeGame();
         §2A§.§?!+§.§@!O§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§6U§.§<!@§ != null)
         {
            §6U§.§<!@§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§'!K§().isGenericState())
         {
            if(_loc2_ == §@S§.§-!R§)
            {
               §0!w§(§'!K§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §[6§;
      }
      
      override public function getAppHeight() : Number
      {
         return §1a§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §;!M§;
      }
      
      protected function §6!k§() : String
      {
         return "ThemeMusic";
      }
      
      public function §"H§() : void
      {
         if(§3!k§.§]" §("Channel_Theme") == null || !§3!k§.§]" §("Channel_Theme").§="§())
         {
            §3!k§.§]"4§(this.§6!k§(),"Channel_Theme",999);
         }
      }
      
      public function §9x§() : void
      {
         §3!k§.§4[§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §?b§;
      }
      
      protected function loadItems() : void
      {
         this.§with§.loadItems(this.§,i§());
      }
      
      protected function §`,§() : void
      {
         this.§'5§.§"!2§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§`,§();
         §6U§.§<d§(this.§'!"§.§7!u§,this.§-§);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return § !R§.§`G§(§'!G§);
      }
      
      protected function §,i§() : XML
      {
         return § !R§.§`G§(§0!p§);
      }
      
      protected function §-§(param1:Event) : void
      {
         §7!,§ = true;
         §0!w§(§#V§.§+B§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§1!e§)
         {
            ++this.§#v§;
         }
         if(!§<!D§.§7i§())
         {
            return;
         }
         if(this.§@5§)
         {
            this.resize();
            this.§@5§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §1H§;
            _loc3_ = §%!w§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §1H§ == _loc2_ && §%!w§ == _loc3_)
         {
            return false;
         }
         §1H§ = _loc2_;
         §%!w§ = _loc3_;
         this.resizeViews(§1H§,§%!w§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §6U§.§,!"§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§'!`§.setViewSize(param1,param2);
      }
      
      public function §`!D§() : void
      {
      }
      
      public function §-h§() : void
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
