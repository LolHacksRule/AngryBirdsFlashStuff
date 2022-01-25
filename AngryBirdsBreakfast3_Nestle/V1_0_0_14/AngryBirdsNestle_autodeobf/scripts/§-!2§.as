package
{
   import § 2§.§=+§;
   import §#!]§.§"!E§;
   import §#!]§.§'"$§;
   import §#!]§.§4T§;
   import §#!]§.§6U§;
   import §#!]§.§=A§;
   import §#!]§.§@!t§;
   import §#!]§.StateCutScene;
   import §#!]§.StateEpisodeSelection;
   import §#!]§.StatePlay;
   import §#!]§.§]!Q§;
   import §#!]§.§`"%§;
   import §&!I§.§>"%§;
   import §&"6§.§;G§;
   import §'"&§.§4!2§;
   import §'"&§.§9X§;
   import §0"1§.§%v§;
   import §1!s§.§0!T§;
   import §1!s§.§4"5§;
   import §1!s§.§5a§;
   import §2!s§.§0l§;
   import §3!0§.§#",§;
   import §3!0§.§`i§;
   import §7;§.§ K§;
   import §8!$§.§ !D§;
   import §8!$§.§1b§;
   import §8!$§.§?p§;
   import §;X§.§4!@§;
   import §<v§.§=v§;
   import §=!d§.§5!5§;
   import §=j§.§^!J§;
   import §?9§.§ x§;
   import §?u§.§6!R§;
   import §?u§.override;
   import §@!0§.§%"!§;
   import §`!s§.§'!#§;
   import §`"§.§3h§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§5j§;
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
   
   public class §-!2§ extends §4!2§
   {
      
      protected static var §`!v§:Class = §`s§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §^!K§:String;
      
      public static var §`K§:String;
      
      public static const §8#§:int = 1024;
      
      public static const §1k§:int = 768;
      
      public static const §#!a§:Boolean = false;
      
      public static const §@!3§:int = 2000;
      
      private static const §"!q§:int = 750;
      
      private static const §2!-§:int = 3;
      
      private static const §+_§:int = 15;
      
      protected static var §%y§:Class = §2,§;
      
      protected static var §?"§:Class = §#o§;
      
      protected static var §8!>§:Class = §?f§;
      
      protected static var §>!C§:Class = §1i§;
      
      protected static var §-q§:Class = §6!;§;
      
      public static var §@5§:Boolean = true;
      
      private static var §=!r§:§-!2§ = null;
      
      public static var §3"0§:Sprite = null;
      
      public static var §0h§:§#",§;
      
      public static var §9!m§:Boolean = false;
      
      private static var §'!e§:int = 0;
      
      private static var §[7§:int = 0;
       
      
      protected var §1"7§:§6!R§;
      
      protected var §4!R§:§0l§;
      
      protected var §9%§:§%v§;
      
      protected var §#n§:§-g§;
      
      protected var §@!N§:MovieClip;
      
      protected var §,#§:§5a§;
      
      protected var §1"6§:§ K§;
      
      private var §^! §:int;
      
      private var §^!>§:Boolean;
      
      private var §^"5§:int;
      
      private var §`!=§:int;
      
      protected var §"!x§:Boolean;
      
      protected var §!!r§:Boolean;
      
      protected var §+!L§:override;
      
      protected var §,!9§:Boolean;
      
      protected var §7!d§:Boolean = true;
      
      private var §!!s§:Boolean = false;
      
      public function §-!2§(param1:§9X§, param2:String, param3:String)
      {
         this.initFonts();
         §^!K§ = param2;
         §`K§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§]%§();
         §'!#§.§+"3§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != §2d§ || stage.stageHeight != §^s§)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §'!e§;
      }
      
      public static function get stageHeight() : int
      {
         return §[7§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §@5§ = param1;
         §4!@§.§,5§(§@5§);
      }
      
      public static function §[!A§() : Boolean
      {
         return §@5§;
      }
      
      public static function get §2d§() : int
      {
         return §7O§.getAppWidth();
      }
      
      public static function get §^s§() : int
      {
         return §7O§.getAppHeight();
      }
      
      public static function get §7O§() : §-!2§
      {
         return §=!r§;
      }
      
      public function get §0!l§() : §5a§
      {
         return this.§,#§;
      }
      
      public function get §-"7§() : § K§
      {
         return this.§1"6§;
      }
      
      public function get § !n§() : override
      {
         return this.§+!L§;
      }
      
      public function get §?!Q§() : Boolean
      {
         return this.§!!r§;
      }
      
      public function set §?!Q§(param1:Boolean) : void
      {
         this.§!!r§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §1b§.§?!R§(§8!>§);
      }
      
      protected function getUIData() : XML
      {
         return §1b§.§?!R§(§%y§);
      }
      
      protected function §]%§() : XML
      {
         return §1b§.§?!R§(§?"§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §4!m§() : void
      {
         this.§+!L§ = new override();
      }
      
      protected function initialize() : void
      {
         §=!r§ = this;
         this.§!!r§ = false;
         §`i§.init(this,§2d§,§^s§);
         this.§4!m§();
         this.initializeManagers();
         this.initializeUserProgress();
         §=v§.§&!;§.init(§^!J§.§14§(),this.§6`§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§1"7§,this.§@§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §<^§ = §2d§;
         §`r§ = §^s§;
         §`i§.§-!0§.visible = §#!a§;
         §?p§.§3!4§(§8@§);
         §?p§.§6<§(true);
         var _loc1_:XMLList = §1b§.§?!R§(§`!v§).children();
         §5j§.init(_loc1_);
         §4!@§.§=x§("CHANNEL_THEME",1,1);
         §4!@§.§=x§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§3T§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<!P§);
         stage.addEventListener(Event.RESIZE,this.§<!S§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§'!U§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§+^§);
         stage.addEventListener(Event.ACTIVATE,this.§[a§);
         stage.addEventListener(Event.DEACTIVATE,this.§4Z§);
         stage.tabChildren = false;
         §0h§ = new §#",§(stage);
         §0h§.addEventListener(§>"%§.§<!D§,this.§<j§);
         §0h§.addEventListener(§>"%§.§;!n§,this.§]M§);
         §%"!§.§&!;§.§>!"§ = !§#!a§;
      }
      
      protected function §6`§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §4Z§(param1:Event) : void
      {
         this.§>! §();
      }
      
      private function §>! §() : void
      {
         if(!this.§7!d§)
         {
            return;
         }
         this.§7!d§ = false;
         this.§,!9§ = §4!@§.§'!C§;
         if(!this.§,!9§)
         {
         }
      }
      
      private function §[a§(param1:Event) : void
      {
         this.§`"3§();
      }
      
      private function §`"3§() : void
      {
         if(this.§7!d§)
         {
            return;
         }
         this.§7!d§ = true;
         if(!this.§,!9§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§@!N§ = new MovieClip();
         §8@§.stage.addChild(this.§@!N§);
         this.§,#§ = new §4"5§(this.§@!N§,§`"6§,this);
         this.§,#§.addEventListener(§;G§.OPEN,this.§<j§);
         this.§,#§.addEventListener(§;G§.CLOSE,this.§]M§);
         this.§1"6§ = new § K§(this.§,#§,this.§+!L§,§0!T§.§if§);
         this.§,#§.addLayer(§0!T§.§super§,true,new Rectangle(0,0,-180,0));
         this.§,#§.addLayer(§0!T§.§if§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §<j§(param1:Event) : void
      {
         this.§5'§();
      }
      
      protected function §]M§(param1:Event) : void
      {
         this.§-K§();
      }
      
      public function §-K§() : void
      {
         var _loc1_:Boolean = this.§,#§.§6!7§();
         var _loc2_:Boolean = §0h§.§8Q§();
         if(!_loc1_ && !_loc2_ && !this.§?!Q§)
         {
            §`i§.resume();
         }
      }
      
      public function §5'§() : void
      {
         §`i§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§4!R§ = this.initializeLevelItemManager();
         this.§9%§ = this.initializeLevelThemeManager();
         this.§#n§ = this.initializeLevelManager();
         this.§1"7§ = this.initializePackageManager();
         §`i§.§&!L§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §=+§
      {
         return new §=+§(stage,this.§4!R§,this.§9%§,this.§#n§);
      }
      
      protected function initializeLevelItemManager() : §0l§
      {
         return new §0l§();
      }
      
      protected function initializeLevelThemeManager() : §%v§
      {
         return new §%v§();
      }
      
      protected function initializeLevelManager() : §-g§
      {
         return new §-g§();
      }
      
      protected function initializePackageManager() : §6!R§
      {
         return new §6!R§(this.§#n§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§+!L§.userProgress = new §3h§(§`K§,this.§#n§);
      }
      
      protected function initializeStates() : void
      {
         §<!,§(new §6U§(this.§#n§,§`"6§,false));
         §<!,§(new §@!t§(this.§#n§,§`"6§,false));
         §<!,§(new StateEpisodeSelection(this.§#n§,§`"6§,false));
         §<!,§(new §=A§(this.§#n§,§`"6§,false));
         §<!,§(new StatePlay(this.§#n§,§`"6§,false));
         §<!,§(new §"!E§(this.§#n§,§`"6§,false));
         §<!,§(new §]!Q§(this.§#n§,§`"6§,false));
         §<!,§(new §4T§(this.§#n§,§`"6§,false));
         §<!,§(new §`"%§(this.§#n§,§`"6§,false));
         §<!,§(new StateCutScene(this.§#n§,§`"6§,false));
         §<!,§(new §'"$§(this.§#n§,§`"6§,false));
         if(stage.stageWidth != §2d§ || stage.stageHeight != §^s§)
         {
            this.§<!S§(null);
         }
      }
      
      protected function §@§(param1:ByteArray) : void
      {
      }
      
      protected function §3T§(param1:Event) : void
      {
         § !D§.§"q§();
      }
      
      protected function §<!P§(param1:MouseEvent) : void
      {
         § !D§.§!;§();
         if(this.§^!>§)
         {
            ++this.§`!=§;
            if(this.§`!=§ > §+_§)
            {
               this.§^!>§ = false;
               if(this.§^"5§ < §2!-§)
               {
                  this.§ !1§(this.§^! §);
               }
            }
         }
      }
      
      public function §>!@§() : void
      {
         this.§<!S§(null);
      }
      
      protected function §<!S§(param1:Event) : void
      {
         this.§"!x§ = true;
      }
      
      protected function §+^§(param1:Event) : void
      {
         this.§`"3§();
      }
      
      public function §#!p§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§^! § > §"!q§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§ !1§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§]0§(_loc1_);
            }
         }
      }
      
      public function §-x§() : void
      {
         this.§ !1§(0);
      }
      
      public function §>c§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function § !1§(param1:int) : void
      {
         this.§"!x§ = true;
         this.§^! § = param1;
         this.§^!>§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §]0§(param1:int) : void
      {
         this.§"!x§ = true;
         this.§^! § = param1;
         this.§^"5§ = 0;
         this.§`!=§ = 0;
         this.§^!>§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §'!U§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §&N§() : Boolean
      {
         return this.§!!s§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§!!s§ = true;
         this.initializeGame();
         §=v§.§&!;§.§9a§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§`i§.§-!0§ != null)
         {
            §`i§.§-!0§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§4!^§().isGenericState())
         {
            if(_loc2_ == § x§.§]F§)
            {
               §]a§(§4!^§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §8#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §1k§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §@!3§;
      }
      
      protected function §<@§() : String
      {
         return "ThemeMusic";
      }
      
      public function §>q§() : void
      {
         if(§4!@§.§6!w§("Channel_Theme") == null || !§4!@§.§6!w§("Channel_Theme").§@t§())
         {
            §4!@§.§`!w§(this.§<@§(),"Channel_Theme",999);
         }
      }
      
      public function §0c§() : void
      {
         §4!@§.§`[§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §^!K§;
      }
      
      protected function loadItems() : void
      {
         this.§4!R§.loadItems(this.§7!U§());
      }
      
      protected function §`!^§() : void
      {
         this.§9%§.§"!n§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§`!^§();
         §`i§.§0C§(this.§1"7§.§'8§,this.§=D§);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §1b§.§?!R§(§-q§);
      }
      
      protected function §7!U§() : XML
      {
         return §1b§.§?!R§(§>!C§);
      }
      
      protected function §=D§(param1:Event) : void
      {
         §9!m§ = true;
         §]a§(§@!t§.§]!y§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§^!>§)
         {
            ++this.§^"5§;
         }
         if(!§5!5§.§<3§())
         {
            return;
         }
         if(this.§"!x§)
         {
            this.resize();
            this.§"!x§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §'!e§;
            _loc3_ = §[7§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §'!e§ == _loc2_ && §[7§ == _loc3_)
         {
            return false;
         }
         §'!e§ = _loc2_;
         §[7§ = _loc3_;
         this.resizeViews(§'!e§,§[7§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §`i§.§0J§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§,#§.setViewSize(param1,param2);
      }
      
      public function final() : void
      {
      }
      
      public function §1"0§() : void
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
