package
{
   import § !Q§.§"D§;
   import § !Q§.§9%§;
   import § !Q§.§=!3§;
   import §!!&§.§^!,§;
   import §!!`§.§12§;
   import §!!`§.§8"'§;
   import §!!`§.§>r§;
   import §!!i§.§>!j§;
   import §!P§.§5!1§;
   import §"V§.§#"%§;
   import §&!+§.§@z§;
   import §-b§.§"!d§;
   import §2,§.§"G§;
   import §3@§.§4!m§;
   import §3@§.§`!h§;
   import §8!$§.§@![§;
   import §;s§.§%!c§;
   import §="3§.§0!z§;
   import §="3§.§[N§;
   import §=M§.§&!1§;
   import §>!'§.§<U§;
   import §>!z§.set;
   import §[^§.§'g§;
   import §]!V§.§&g§;
   import §]!V§.§3!2§;
   import §]!V§.§3"&§;
   import §]!V§.§5!h§;
   import §]!V§.§5"'§;
   import §]!V§.§6J§;
   import §]!V§.StateCutScene;
   import §]!V§.StateEpisodeSelection;
   import §]!V§.StatePlay;
   import §]!V§.§`!&§;
   import §]!V§.§`w§;
   import §]A§.§[d§;
   import §`V§.§;6§;
   import com.angrybirds.§!g§;
   import com.angrybirds.§#Z§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§"I§;
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
   
   public class §,!X§ extends §[N§
   {
      
      protected static var §[!6§:Class = §5"2§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §[,§:String;
      
      public static var §!![§:String;
      
      public static const § c§:int = 1024;
      
      public static const §1<§:int = 768;
      
      public static const §?!,§:Boolean = false;
      
      public static const §=h§:int = 2000;
      
      private static const §]! §:int = 750;
      
      private static const §'!m§:int = 3;
      
      private static const §&w§:int = 15;
      
      protected static var §^!Y§:Class = §0L§;
      
      protected static var §-!N§:Class = §?!<§;
      
      protected static var §3!9§:Class = § $§;
      
      protected static var §,!d§:Class = §&!X§;
      
      protected static var §0!U§:Class = §]'§;
      
      public static var §&,§:Boolean = true;
      
      private static var §0!a§:§,!X§ = null;
      
      public static var §;U§:Sprite = null;
      
      public static var §`!A§:§!g§;
      
      public static var §2!r§:Boolean = false;
      
      private static var §5"#§:int = 0;
      
      private static var §'!I§:int = 0;
       
      
      protected var §8!G§:§4!m§;
      
      protected var §4!J§:§'g§;
      
      protected var §3!§:set;
      
      protected var §97§:§5!1§;
      
      protected var §[U§:MovieClip;
      
      protected var §`Z§:§12§;
      
      protected var §%!#§:§>!j§;
      
      private var §?]§:int;
      
      private var §3X§:Boolean;
      
      private var §[!P§:int;
      
      private var §3h§:int;
      
      protected var §+!9§:Boolean;
      
      protected var §6i§:Boolean;
      
      protected var §`p§:§`!h§;
      
      protected var §#`§:Boolean;
      
      protected var §-!X§:Boolean = true;
      
      private var §0!§:Boolean = false;
      
      public function §,!X§(param1:§0!z§, param2:String, param3:String)
      {
         this.initFonts();
         §[,§ = param2;
         §!![§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§%!^§();
         §^!,§.§-!b§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != §-t§ || stage.stageHeight != §^!Q§)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §5"#§;
      }
      
      public static function get stageHeight() : int
      {
         return §'!I§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §&,§ = param1;
         §%!c§.§#!E§(§&,§);
      }
      
      public static function §>m§() : Boolean
      {
         return §&,§;
      }
      
      public static function get §-t§() : int
      {
         return §>!G§.getAppWidth();
      }
      
      public static function get §^!Q§() : int
      {
         return §>!G§.getAppHeight();
      }
      
      public static function get §>!G§() : §,!X§
      {
         return §0!a§;
      }
      
      public function get §5!K§() : §12§
      {
         return this.§`Z§;
      }
      
      public function get §%"6§() : §>!j§
      {
         return this.§%!#§;
      }
      
      public function get §>!I§() : §`!h§
      {
         return this.§`p§;
      }
      
      public function get §=q§() : Boolean
      {
         return this.§6i§;
      }
      
      public function set §=q§(param1:Boolean) : void
      {
         this.§6i§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §=!3§.§0I§(§3!9§);
      }
      
      protected function getUIData() : XML
      {
         return §=!3§.§0I§(§^!Y§);
      }
      
      protected function §%!^§() : XML
      {
         return §=!3§.§0I§(§-!N§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function § each§() : void
      {
         this.§`p§ = new §`!h§();
      }
      
      protected function initialize() : void
      {
         §0!a§ = this;
         this.§6i§ = false;
         §#Z§.init(this,§-t§,§^!Q§);
         this.§ each§();
         this.initializeManagers();
         this.initializeUserProgress();
         §&!1§.§>!P§.init(§"G§.§5!>§(),this.§#!p§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§8!G§,this.§?!r§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §'5§ = §-t§;
         §0A§ = §^!Q§;
         §#Z§.§@!V§.visible = §?!,§;
         §"D§.§8$§(§6L§);
         §"D§.§,!4§(true);
         var _loc1_:XMLList = §=!3§.§0I§(§[!6§).children();
         §"I§.init(_loc1_);
         §%!c§.§"!u§("CHANNEL_THEME",1,1);
         §%!c§.§"!u§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§in§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<N§);
         stage.addEventListener(Event.RESIZE,this.§%!T§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§&M§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§^2§);
         stage.addEventListener(Event.ACTIVATE,this.§-x§);
         stage.addEventListener(Event.DEACTIVATE,this.§6!M§);
         stage.tabChildren = false;
         §`!A§ = new §!g§(stage);
         §`!A§.addEventListener(§#"%§.§3!7§,this.§4!r§);
         §`!A§.addEventListener(§#"%§.§9E§,this.§,%§);
         §"!d§.§>!P§.§+!,§ = !§?!,§;
      }
      
      protected function §#!p§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §6!M§(param1:Event) : void
      {
         this.§2!o§();
      }
      
      private function §2!o§() : void
      {
         if(!this.§-!X§)
         {
            return;
         }
         this.§-!X§ = false;
         this.§#`§ = §%!c§.§`!;§;
         if(!this.§#`§)
         {
         }
      }
      
      private function §-x§(param1:Event) : void
      {
         this.§&N§();
      }
      
      private function §&N§() : void
      {
         if(this.§-!X§)
         {
            return;
         }
         this.§-!X§ = true;
         if(!this.§#`§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§[U§ = new MovieClip();
         §6L§.stage.addChild(this.§[U§);
         this.§`Z§ = new §8"'§(this.§[U§,§!""§,this);
         this.§`Z§.addEventListener(§@z§.OPEN,this.§4!r§);
         this.§`Z§.addEventListener(§@z§.CLOSE,this.§,%§);
         this.§%!#§ = new §>!j§(this.§`Z§,this.§`p§,§>r§.§?§);
         this.§`Z§.addLayer(§>r§.§?!"§,true,new Rectangle(0,0,-180,0));
         this.§`Z§.addLayer(§>r§.§?§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §4!r§(param1:Event) : void
      {
         this.§ §();
      }
      
      protected function §,%§(param1:Event) : void
      {
         this.§6!R§();
      }
      
      public function §6!R§() : void
      {
         var _loc1_:Boolean = this.§`Z§.§@"-§();
         var _loc2_:Boolean = §`!A§.§9<§();
         if(!_loc1_ && !_loc2_ && !this.§=q§)
         {
            §#Z§.resume();
         }
      }
      
      public function § §() : void
      {
         §#Z§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§4!J§ = this.initializeLevelItemManager();
         this.§3!§ = this.initializeLevelThemeManager();
         this.§97§ = this.initializeLevelManager();
         this.§8!G§ = this.initializePackageManager();
         §#Z§.§'0§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §[d§
      {
         return new §[d§(stage,this.§4!J§,this.§3!§,this.§97§);
      }
      
      protected function initializeLevelItemManager() : §'g§
      {
         return new §'g§();
      }
      
      protected function initializeLevelThemeManager() : set
      {
         return new set();
      }
      
      protected function initializeLevelManager() : §5!1§
      {
         return new §5!1§();
      }
      
      protected function initializePackageManager() : §4!m§
      {
         return new §4!m§(this.§97§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§`p§.userProgress = new §<U§(§!![§,this.§97§);
      }
      
      protected function initializeStates() : void
      {
         §["4§(new §5!h§(this.§97§,§!""§,false));
         §["4§(new §`w§(this.§97§,§!""§,false));
         §["4§(new StateEpisodeSelection(this.§97§,§!""§,false));
         §["4§(new §&g§(this.§97§,§!""§,false));
         §["4§(new StatePlay(this.§97§,§!""§,false));
         §["4§(new §3!2§(this.§97§,§!""§,false));
         §["4§(new §3"&§(this.§97§,§!""§,false));
         §["4§(new §`!&§(this.§97§,§!""§,false));
         §["4§(new §6J§(this.§97§,§!""§,false));
         §["4§(new StateCutScene(this.§97§,§!""§,false));
         §["4§(new §5"'§(this.§97§,§!""§,false));
         if(stage.stageWidth != §-t§ || stage.stageHeight != §^!Q§)
         {
            this.§%!T§(null);
         }
      }
      
      protected function §?!r§(param1:ByteArray) : void
      {
      }
      
      protected function §in§(param1:Event) : void
      {
         §9%§.§ X§();
      }
      
      protected function §<N§(param1:MouseEvent) : void
      {
         §9%§.§2!9§();
         if(this.§3X§)
         {
            ++this.§3h§;
            if(this.§3h§ > §&w§)
            {
               this.§3X§ = false;
               if(this.§[!P§ < §'!m§)
               {
                  this.§[V§(this.§?]§);
               }
            }
         }
      }
      
      public function §4C§() : void
      {
         this.§%!T§(null);
      }
      
      protected function §%!T§(param1:Event) : void
      {
         this.§+!9§ = true;
      }
      
      protected function §^2§(param1:Event) : void
      {
         this.§&N§();
      }
      
      public function §4I§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§?]§ > §]! §)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§[V§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§9G§(_loc1_);
            }
         }
      }
      
      public function §'!f§() : void
      {
         this.§[V§(0);
      }
      
      public function §-#§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §[V§(param1:int) : void
      {
         this.§+!9§ = true;
         this.§?]§ = param1;
         this.§3X§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §9G§(param1:int) : void
      {
         this.§+!9§ = true;
         this.§?]§ = param1;
         this.§[!P§ = 0;
         this.§3h§ = 0;
         this.§3X§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §&M§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §+8§() : Boolean
      {
         return this.§0!§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§0!§ = true;
         this.initializeGame();
         §&!1§.§>!P§.§with§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§#Z§.§@!V§ != null)
         {
            §#Z§.§@!V§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§']§().isGenericState())
         {
            if(_loc2_ == §@![§.§1!?§)
            {
               §8!`§(§']§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return § c§;
      }
      
      override public function getAppHeight() : Number
      {
         return §1<§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §=h§;
      }
      
      protected function §>! §() : String
      {
         return "ThemeMusic";
      }
      
      public function § " §() : void
      {
         if(§%!c§.§>b§("Channel_Theme") == null || !§%!c§.§>b§("Channel_Theme").§>K§())
         {
            §%!c§.§8" §(this.§>! §(),"Channel_Theme",999);
         }
      }
      
      public function §<!y§() : void
      {
         §%!c§.§#!G§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §[,§;
      }
      
      protected function loadItems() : void
      {
         this.§4!J§.loadItems(this.§%!`§());
      }
      
      protected function §^!w§() : void
      {
         this.§3!§.§>v§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§^!w§();
         §#Z§.§&!`§(this.§8!G§.§5h§,this.§@!B§);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §=!3§.§0I§(§0!U§);
      }
      
      protected function §%!`§() : XML
      {
         return §=!3§.§0I§(§,!d§);
      }
      
      protected function §@!B§(param1:Event) : void
      {
         §2!r§ = true;
         §8!`§(§`w§.§+a§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§3X§)
         {
            ++this.§[!P§;
         }
         if(!§;6§.§%1§())
         {
            return;
         }
         if(this.§+!9§)
         {
            this.resize();
            this.§+!9§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §5"#§;
            _loc3_ = §'!I§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §5"#§ == _loc2_ && §'!I§ == _loc3_)
         {
            return false;
         }
         §5"#§ = _loc2_;
         §'!I§ = _loc3_;
         this.resizeViews(§5"#§,§'!I§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §#Z§.§&B§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§`Z§.setViewSize(param1,param2);
      }
      
      public function §<"&§() : void
      {
      }
      
      public function §#4§() : void
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
