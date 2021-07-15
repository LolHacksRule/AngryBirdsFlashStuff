package
{
   import §"n§.§[!e§;
   import §#"&§.§4!W§;
   import §#"&§.§6!F§;
   import §&v§.§#!R§;
   import §,C§.§+§;
   import §-!;§.§[!F§;
   import §1!`§.§8!s§;
   import §1T§.§'!c§;
   import §48§.§1k§;
   import §48§.§4L§;
   import §48§.§5E§;
   import §8!K§.§5!Y§;
   import §9!`§.§;g§;
   import §;!§.§ !c§;
   import §;!§.§"o§;
   import §;!§.§#!J§;
   import §;!§.§&4§;
   import §;!§.§4!9§;
   import §;!§.§8^§;
   import §;!§.§>!X§;
   import §;!§.StateCutScene;
   import §;!§.StateEpisodeSelection;
   import §;!§.StatePlay;
   import §;!§.§[j§;
   import §=!L§.§4k§;
   import §?""§.§6!A§;
   import §?""§.§`!o§;
   import §?@§.§'^§;
   import §?z§.§4!C§;
   import §@L§.§?!'§;
   import §@g§.§;!5§;
   import §^S§.§#!X§;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   import com.angrybirds.§[!5§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§#h§;
   import each.§!!'§;
   import each.§5<§;
   import each.§8!N§;
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
   
   public class §6!!§ extends §6!A§
   {
      
      protected static var §02§:Class = §"!6§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §=!N§:String;
      
      public static var §<Q§:String;
      
      public static const §8#§:int = 1024;
      
      public static const §'+§:int = 768;
      
      public static const §7!2§:Boolean = false;
      
      public static const §@!N§:int = 2000;
      
      private static const §@!<§:int = 750;
      
      private static const §=!c§:int = 3;
      
      private static const §,l§:int = 15;
      
      protected static var §?§:Class = §1E§;
      
      protected static var §2!N§:Class = §[!o§;
      
      protected static var §-c§:Class = §;!o§;
      
      protected static var §!!@§:Class = §,`§;
      
      protected static var §6!w§:Class = §7!C§;
      
      public static var §[>§:Boolean = true;
      
      private static var §1!j§:§6!!§ = null;
      
      public static var §,!I§:Sprite = null;
      
      public static var §^!`§:§[!5§;
      
      public static var §'!@§:Boolean = false;
      
      private static var §&m§:int = 0;
      
      private static var §-",§:int = 0;
       
      
      protected var §3&§:§6!F§;
      
      protected var §@!H§:§#!R§;
      
      protected var §9,§:§+§;
      
      protected var §&" §:§5!Y§;
      
      protected var §8!^§:MovieClip;
      
      protected var §-G§:§1k§;
      
      protected var §+"0§:§4k§;
      
      private var §7!_§:int;
      
      private var §]4§:Boolean;
      
      private var §>"-§:int;
      
      private var §-!U§:int;
      
      protected var §>!z§:Boolean;
      
      protected var §,K§:Boolean;
      
      protected var §^!8§:§4!W§;
      
      protected var §^z§:Boolean;
      
      protected var §1!h§:Boolean = true;
      
      private var §87§:Boolean = false;
      
      public function §6!!§(param1:§`!o§, param2:String, param3:String)
      {
         this.initFonts();
         §=!N§ = param2;
         §<Q§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§3L§();
         §[!e§.§[!4§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != §+g§ || stage.stageHeight != §=!?§)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §&m§;
      }
      
      public static function get stageHeight() : int
      {
         return §-",§;
      }
      
      public static function §<=§(param1:Boolean) : void
      {
         §[>§ = param1;
         §'!c§.§,!O§(§[>§);
      }
      
      public static function §2!c§() : Boolean
      {
         return §[>§;
      }
      
      public static function get §+g§() : int
      {
         return singleton.getAppWidth();
      }
      
      public static function get §=!?§() : int
      {
         return singleton.getAppHeight();
      }
      
      public static function get singleton() : §6!!§
      {
         return §1!j§;
      }
      
      public function get §%![§() : §1k§
      {
         return this.§-G§;
      }
      
      public function get §6"#§() : §4k§
      {
         return this.§+"0§;
      }
      
      public function get §<!S§() : §4!W§
      {
         return this.§^!8§;
      }
      
      public function get §2!h§() : Boolean
      {
         return this.§,K§;
      }
      
      public function set §2!h§(param1:Boolean) : void
      {
         this.§,K§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §8!N§.§?!c§(§-c§);
      }
      
      protected function getUIData() : XML
      {
         return §8!N§.§?!c§(§?§);
      }
      
      protected function §3L§() : XML
      {
         return §8!N§.§?!c§(§2!N§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §4X§() : void
      {
         this.§^!8§ = new §4!W§();
      }
      
      protected function initialize() : void
      {
         §1!j§ = this;
         this.§,K§ = false;
         §&!"§.init(this,§+g§,§=!?§);
         this.§4X§();
         this.initializeManagers();
         this.initializeUserProgress();
         §;!5§.§2Z§.init(§8!s§.§3!b§(),this.§,!J§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§3&§,this.§7!@§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §7!;§ = §+g§;
         §66§ = §=!?§;
         §&!"§.§!!D§.visible = §7!2§;
         §!!'§.§'k§(§!!U§);
         §!!'§.§&!E§(true);
         var _loc1_:XMLList = §8!N§.§?!c§(§02§).children();
         §#h§.init(_loc1_);
         §'!c§.§8G§("CHANNEL_THEME",1,1);
         §'!c§.§8G§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§`""§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§&!u§);
         stage.addEventListener(Event.RESIZE,this.§@Q§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§%!u§);
         stage.addEventListener(Event.ACTIVATE,this.§]^§);
         stage.addEventListener(Event.DEACTIVATE,this.§1§);
         stage.tabChildren = false;
         §^!`§ = new §[!5§(stage);
         §^!`§.addEventListener(§[!F§.§'Z§,this.§ !U§);
         §^!`§.addEventListener(§[!F§.§%n§,this.§`=§);
         §'^§.§2Z§.§<d§ = !§7!2§;
      }
      
      protected function §,!J§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §1§(param1:Event) : void
      {
         this.§0!0§();
      }
      
      private function §0!0§() : void
      {
         if(!this.§1!h§)
         {
            return;
         }
         this.§1!h§ = false;
         this.§^z§ = §'!c§.§<!g§;
         if(!this.§^z§)
         {
         }
      }
      
      private function §]^§(param1:Event) : void
      {
         this.§[b§();
      }
      
      private function §[b§() : void
      {
         if(this.§1!h§)
         {
            return;
         }
         this.§1!h§ = true;
         if(!this.§^z§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§8!^§ = new MovieClip();
         §!!U§.stage.addChild(this.§8!^§);
         this.§-G§ = new §5E§(this.§8!^§,§@!>§,this);
         this.§-G§.addEventListener(§;g§.OPEN,this.§ !U§);
         this.§-G§.addEventListener(§;g§.CLOSE,this.§`=§);
         this.§+"0§ = new §4k§(this.§-G§,this.§^!8§,§4L§.§[1§);
         this.§-G§.§?<§(§4L§.§<l§,true,new Rectangle(0,0,-180,0));
         this.§-G§.§?<§(§4L§.§[1§,true,new Rectangle(0,0,0,0));
      }
      
      protected function § !U§(param1:Event) : void
      {
         this.§%y§();
      }
      
      protected function §`=§(param1:Event) : void
      {
         this.§4%§();
      }
      
      public function §4%§() : void
      {
         var _loc1_:Boolean = this.§-G§.§%&§();
         var _loc2_:Boolean = §^!`§.§6q§();
         if(!_loc1_ && !_loc2_ && !this.§2!h§)
         {
            §&!"§.resume();
         }
      }
      
      public function §%y§() : void
      {
         §&!"§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§@!H§ = this.initializeLevelItemManager();
         this.§9,§ = this.initializeLevelThemeManager();
         this.§&" § = this.initializeLevelManager();
         this.§3&§ = this.initializePackageManager();
         §&!"§.§1!D§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §?!'§
      {
         return new §?!'§(stage,this.§@!H§,this.§9,§,this.§&" §);
      }
      
      protected function initializeLevelItemManager() : §#!R§
      {
         return new §#!R§();
      }
      
      protected function initializeLevelThemeManager() : §+§
      {
         return new §+§();
      }
      
      protected function initializeLevelManager() : §5!Y§
      {
         return new §5!Y§();
      }
      
      protected function initializePackageManager() : §6!F§
      {
         return new §6!F§(this.§&" §);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§^!8§.userProgress = new §#!X§(§<Q§,this.§&" §);
      }
      
      protected function initializeStates() : void
      {
         §7p§(new §[j§(this.§&" §,§@!>§,false));
         §7p§(new §8^§(this.§&" §,§@!>§,false));
         §7p§(new StateEpisodeSelection(this.§&" §,§@!>§,false));
         §7p§(new §4!9§(this.§&" §,§@!>§,false));
         §7p§(new StatePlay(this.§&" §,§@!>§,false));
         §7p§(new § !c§(this.§&" §,§@!>§,false));
         §7p§(new §>!X§(this.§&" §,§@!>§,false));
         §7p§(new §#!J§(this.§&" §,§@!>§,false));
         §7p§(new §"o§(this.§&" §,§@!>§,false));
         §7p§(new StateCutScene(this.§&" §,§@!>§,false));
         §7p§(new §&4§(this.§&" §,§@!>§,false));
         if(stage.stageWidth != §+g§ || stage.stageHeight != §=!?§)
         {
            this.§@Q§(null);
         }
      }
      
      protected function §7!@§(param1:ByteArray) : void
      {
      }
      
      protected function §`""§(param1:Event) : void
      {
         §5<§.§`[§();
      }
      
      protected function §&!u§(param1:MouseEvent) : void
      {
         §5<§.§3!X§();
         if(this.§]4§)
         {
            ++this.§-!U§;
            if(this.§-!U§ > §,l§)
            {
               this.§]4§ = false;
               if(this.§>"-§ < §=!c§)
               {
                  this.§!!l§(this.§7!_§);
               }
            }
         }
      }
      
      public function §^!l§() : void
      {
         this.§@Q§(null);
      }
      
      protected function §@Q§(param1:Event) : void
      {
         this.§>!z§ = true;
      }
      
      protected function §%!u§(param1:Event) : void
      {
         this.§[b§();
      }
      
      public function §%!O§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§7!_§ > §@!<§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§!!l§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§'!f§(_loc1_);
            }
         }
      }
      
      public function §#N§() : void
      {
         this.§!!l§(0);
      }
      
      public function §9Z§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §!!l§(param1:int) : void
      {
         this.§>!z§ = true;
         this.§7!_§ = param1;
         this.§]4§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §'!f§(param1:int) : void
      {
         this.§>!z§ = true;
         this.§7!_§ = param1;
         this.§>"-§ = 0;
         this.§-!U§ = 0;
         this.§]4§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §>$§() : Boolean
      {
         return this.§87§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§87§ = true;
         this.initializeGame();
         §;!5§.§2Z§.§%l§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§&!"§.§!!D§ != null)
         {
            §&!"§.§!!D§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§'E§().isGenericState())
         {
            if(_loc2_ == §4!C§.§8s§)
            {
               §<f§(§'E§().nextState);
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
         return §'+§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §@!N§;
      }
      
      protected function §5`§() : String
      {
         return "ThemeMusic";
      }
      
      public function §"!<§() : void
      {
         if(§'!c§.§[!d§("Channel_Theme") == null || !§'!c§.§[!d§("Channel_Theme").§,!V§())
         {
            §'!c§.§3!f§(this.§5`§(),"Channel_Theme",999);
         }
      }
      
      public function §2!>§() : void
      {
         §'!c§.§;! §("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §=!N§;
      }
      
      protected function loadItems() : void
      {
         this.§@!H§.loadItems(this.§#p§());
      }
      
      protected function §4!%§() : void
      {
         this.§9,§.§0"+§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§4!%§();
         §&!"§.§1!y§(this.§3&§.§-!-§,this.§!"!§);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §8!N§.§?!c§(§6!w§);
      }
      
      protected function §#p§() : XML
      {
         return §8!N§.§?!c§(§!!@§);
      }
      
      protected function §!"!§(param1:Event) : void
      {
         §'!@§ = true;
         §<f§(§8^§.§-!q§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§]4§)
         {
            ++this.§>"-§;
         }
         if(!§1"&§.§ !R§())
         {
            return;
         }
         if(this.§>!z§)
         {
            this.resize();
            this.§>!z§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §&m§;
            _loc3_ = §-",§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §&m§ == _loc2_ && §-",§ == _loc3_)
         {
            return false;
         }
         §&m§ = _loc2_;
         §-",§ = _loc3_;
         this.resizeViews(§&m§,§-",§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §&!"§.§4!_§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§-G§.setViewSize(param1,param2);
      }
      
      public function §"!O§() : void
      {
      }
      
      public function §5,§() : void
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
