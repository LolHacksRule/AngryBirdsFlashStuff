package
{
   import § !T§.§ q§;
   import §"r§.§"j§;
   import §%z§.§?8§;
   import §&M§.§^!A§;
   import §-!Y§.§%!%§;
   import §-w§.§;3§;
   import §0!$§.§#!-§;
   import §0!$§.§2!K§;
   import §0!$§.§4!Z§;
   import §0b§.§;!a§;
   import §2W§.§2!s§;
   import §3"!§.§&U§;
   import §5u§.§!!v§;
   import §5u§.§4!m§;
   import §5u§.§=!U§;
   import §6!5§.§ !S§;
   import §6!5§.§"d§;
   import §6!5§.§#!D§;
   import §6!5§.§#!v§;
   import §6!5§.§4!R§;
   import §6!5§.§4q§;
   import §6!5§.§?;§;
   import §6!5§.StateCutScene;
   import §6!5§.StateEpisodeSelection;
   import §6!5§.StatePlay;
   import §6!5§.§^!+§;
   import §6!^§.§1!7§;
   import §6!^§.§>m§;
   import §6t§.§3`§;
   import §8,§.§0!>§;
   import §?!v§.§ "4§;
   import §?!v§.§&r§;
   import §@!6§.§3!5§;
   import §@&§.§ !E§;
   import §]Z§.§8j§;
   import §]k§.§<S§;
   import com.angrybirds.§6!E§;
   import com.angrybirds.§;!-§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§#!=§;
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
   
   public class §-!I§ extends §1!7§
   {
      
      protected static var §8'§:Class = §1P§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §]-§:String;
      
      public static var §7!G§:String;
      
      public static const §#9§:int = 1024;
      
      public static const §<N§:int = 768;
      
      public static const §%q§:Boolean = false;
      
      public static const §7!B§:int = 2000;
      
      private static const §=!e§:int = 750;
      
      private static const §!w§:int = 3;
      
      private static const §>!d§:int = 15;
      
      protected static var §&!D§:Class = §<s§;
      
      protected static var §3!F§:Class = §2!3§;
      
      protected static var §`!D§:Class = §#!U§;
      
      protected static var §@p§:Class = §%s§;
      
      protected static var §%!b§:Class = §6d§;
      
      public static var §5"#§:Boolean = true;
      
      private static var §2V§:§-!I§ = null;
      
      public static var §[t§:Sprite = null;
      
      public static var §[![§:§;!-§;
      
      public static var §#"5§:Boolean = false;
      
      private static var §,w§:int = 0;
      
      private static var §4!+§:int = 0;
       
      
      protected var §5!q§:§ "4§;
      
      protected var §'K§:§?8§;
      
      protected var §," §:§ !E§;
      
      protected var §="4§:§ q§;
      
      protected var §-!z§:MovieClip;
      
      protected var §<M§:§4!m§;
      
      protected var §30§:§;3§;
      
      private var §'N§:int;
      
      private var §+"§:Boolean;
      
      private var §7J§:int;
      
      private var §]!>§:int;
      
      protected var §-9§:Boolean;
      
      protected var §1?§:Boolean;
      
      protected var §%0§:§&r§;
      
      protected var §6!N§:Boolean;
      
      protected var §![§:Boolean = true;
      
      private var §`!P§:Boolean = false;
      
      public function §-!I§(param1:§>m§, param2:String, param3:String)
      {
         this.initFonts();
         §]-§ = param2;
         §7!G§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§3!$§();
         §2!s§.§ ![§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
         this.initialize();
         this.initializeStates();
         if(stage.stageWidth != §[M§ || stage.stageHeight != §&!P§)
         {
            this.resize();
         }
         stage.showDefaultContextMenu = false;
      }
      
      public static function get stageWidth() : int
      {
         return §,w§;
      }
      
      public static function get stageHeight() : int
      {
         return §4!+§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §5"#§ = param1;
         §3!5§.§0,§(§5"#§);
      }
      
      public static function §6!_§() : Boolean
      {
         return §5"#§;
      }
      
      public static function get §[M§() : int
      {
         return §[f§.getAppWidth();
      }
      
      public static function get §&!P§() : int
      {
         return §[f§.getAppHeight();
      }
      
      public static function get §[f§() : §-!I§
      {
         return §2V§;
      }
      
      public function get §@!C§() : §4!m§
      {
         return this.§<M§;
      }
      
      public function get §5!i§() : §;3§
      {
         return this.§30§;
      }
      
      public function get §?4§() : §&r§
      {
         return this.§%0§;
      }
      
      public function get §^o§() : Boolean
      {
         return this.§1?§;
      }
      
      public function set §^o§(param1:Boolean) : void
      {
         this.§1?§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §2!K§.§5i§(§`!D§);
      }
      
      protected function getUIData() : XML
      {
         return §2!K§.§5i§(§&!D§);
      }
      
      protected function §3!$§() : XML
      {
         return §2!K§.§5i§(§3!F§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §%h§() : void
      {
         this.§%0§ = new §&r§();
      }
      
      protected function initialize() : void
      {
         §2V§ = this;
         this.§1?§ = false;
         §6!E§.init(this,§[M§,§&!P§);
         this.§%h§();
         this.initializeManagers();
         this.initializeUserProgress();
         §;!a§.§<"5§.init(§^!A§.§7!A§(),this.§!Z§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§5!q§,this.§?y§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §#@§ = §[M§;
         §9W§ = §&!P§;
         §6!E§.§5V§.visible = §%q§;
         §#!-§.§+X§(§?"5§);
         §#!-§.§9!>§(true);
         var _loc1_:XMLList = §2!K§.§5i§(§8'§).children();
         §#!=§.init(_loc1_);
         §3!5§.§`Z§("CHANNEL_THEME",1,1);
         §3!5§.§`Z§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§@!4§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!&§);
         stage.addEventListener(Event.RESIZE,this.§+!-§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§2v§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§'z§);
         stage.addEventListener(Event.ACTIVATE,this.§8"'§);
         stage.addEventListener(Event.DEACTIVATE,this.§?!c§);
         stage.tabChildren = false;
         §[![§ = new §;!-§(stage);
         §[![§.addEventListener(§0!>§.§;!x§,this.§>!K§);
         §[![§.addEventListener(§0!>§.§5K§,this.§[e§);
         §3`§.§<"5§.§^!6§ = !§%q§;
      }
      
      protected function §!Z§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §?!c§(param1:Event) : void
      {
         this.§!t§();
      }
      
      private function §!t§() : void
      {
         if(!this.§![§)
         {
            return;
         }
         this.§![§ = false;
         this.§6!N§ = §3!5§.§!"3§;
         if(!this.§6!N§)
         {
         }
      }
      
      private function §8"'§(param1:Event) : void
      {
         this.§ !w§();
      }
      
      private function § !w§() : void
      {
         if(this.§![§)
         {
            return;
         }
         this.§![§ = true;
         if(!this.§6!N§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§-!z§ = new MovieClip();
         §?"5§.stage.addChild(this.§-!z§);
         this.§<M§ = new §!!v§(this.§-!z§,§<u§,this);
         this.§<M§.addEventListener(§&U§.OPEN,this.§>!K§);
         this.§<M§.addEventListener(§&U§.CLOSE,this.§[e§);
         this.§30§ = new §;3§(this.§<M§,this.§%0§,§=!U§.§4!t§);
         this.§<M§.addLayer(§=!U§.§<"+§,true,new Rectangle(0,0,-180,0));
         this.§<M§.addLayer(§=!U§.§4!t§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §>!K§(param1:Event) : void
      {
         this.§]!"§();
      }
      
      protected function §[e§(param1:Event) : void
      {
         this.§^"&§();
      }
      
      public function §^"&§() : void
      {
         var _loc1_:Boolean = this.§<M§.§+!F§();
         var _loc2_:Boolean = §[![§.§0!i§();
         if(!_loc1_ && !_loc2_ && !this.§^o§)
         {
            §6!E§.resume();
         }
      }
      
      public function §]!"§() : void
      {
         §6!E§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§'K§ = this.initializeLevelItemManager();
         this.§," § = this.initializeLevelThemeManager();
         this.§="4§ = this.initializeLevelManager();
         this.§5!q§ = this.initializePackageManager();
         §6!E§.§7I§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §<S§
      {
         return new §<S§(stage,this.§'K§,this.§," §,this.§="4§);
      }
      
      protected function initializeLevelItemManager() : §?8§
      {
         return new §?8§();
      }
      
      protected function initializeLevelThemeManager() : § !E§
      {
         return new § !E§();
      }
      
      protected function initializeLevelManager() : § q§
      {
         return new § q§();
      }
      
      protected function initializePackageManager() : § "4§
      {
         return new § "4§(this.§="4§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§%0§.userProgress = new §8j§(§7!G§,this.§="4§);
      }
      
      protected function initializeStates() : void
      {
         §`1§(new §4!R§(this.§="4§,§<u§,false));
         §`1§(new §4q§(this.§="4§,§<u§,false));
         §`1§(new StateEpisodeSelection(this.§="4§,§<u§,false));
         §`1§(new §^!+§(this.§="4§,§<u§,false));
         §`1§(new StatePlay(this.§="4§,§<u§,false));
         §`1§(new §#!D§(this.§="4§,§<u§,false));
         §`1§(new §"d§(this.§="4§,§<u§,false));
         §`1§(new §#!v§(this.§="4§,§<u§,false));
         §`1§(new §?;§(this.§="4§,§<u§,false));
         §`1§(new StateCutScene(this.§="4§,§<u§,false));
         §`1§(new § !S§(this.§="4§,§<u§,false));
         if(stage.stageWidth != §[M§ || stage.stageHeight != §&!P§)
         {
            this.§+!-§(null);
         }
      }
      
      protected function §?y§(param1:ByteArray) : void
      {
      }
      
      protected function §@!4§(param1:Event) : void
      {
         §4!Z§.§ !V§();
      }
      
      protected function §%!&§(param1:MouseEvent) : void
      {
         §4!Z§.§<!8§();
         if(this.§+"§)
         {
            ++this.§]!>§;
            if(this.§]!>§ > §>!d§)
            {
               this.§+"§ = false;
               if(this.§7J§ < §!w§)
               {
                  this.§5"'§(this.§'N§);
               }
            }
         }
      }
      
      public function §-!D§() : void
      {
         this.§+!-§(null);
      }
      
      protected function §+!-§(param1:Event) : void
      {
         this.§-9§ = true;
      }
      
      protected function §'z§(param1:Event) : void
      {
         this.§ !w§();
      }
      
      public function §?U§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§'N§ > §=!e§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§5"'§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§-!+§(_loc1_);
            }
         }
      }
      
      public function §-"1§() : void
      {
         this.§5"'§(0);
      }
      
      public function §`"2§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §5"'§(param1:int) : void
      {
         this.§-9§ = true;
         this.§'N§ = param1;
         this.§+"§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §-!+§(param1:int) : void
      {
         this.§-9§ = true;
         this.§'N§ = param1;
         this.§7J§ = 0;
         this.§]!>§ = 0;
         this.§+"§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §2v§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      public function get §0!=§() : Boolean
      {
         return this.§`!P§;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         this.§`!P§ = true;
         this.initializeGame();
         §;!a§.§<"5§.§;!T§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§6!E§.§5V§ != null)
         {
            §6!E§.§5V§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§2m§().isGenericState())
         {
            if(_loc2_ == §"j§.§-!2§)
            {
               §?n§(§2m§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §#9§;
      }
      
      override public function getAppHeight() : Number
      {
         return §<N§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §7!B§;
      }
      
      protected function §00§() : String
      {
         return "ThemeMusic";
      }
      
      public function §[g§() : void
      {
         if(§3!5§.§`!'§("Channel_Theme") == null || !§3!5§.§`!'§("Channel_Theme").§35§())
         {
            §3!5§.§<!9§(this.§00§(),"Channel_Theme",999);
         }
      }
      
      public function §4@§() : void
      {
         §3!5§.§55§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §]-§;
      }
      
      protected function loadItems() : void
      {
         this.§'K§.loadItems(this.§[R§());
      }
      
      protected function §!!n§() : void
      {
         this.§," §.§;!I§(this.getLevelBackgroundXML().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.loadItems();
         this.§!!n§();
         §6!E§.§"",§(this.§5!q§.§!!,§,this.§;W§);
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §2!K§.§5i§(§%!b§);
      }
      
      protected function §[R§() : XML
      {
         return §2!K§.§5i§(§@p§);
      }
      
      protected function §;W§(param1:Event) : void
      {
         §#"5§ = true;
         §?n§(§4q§.§7w§);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§+"§)
         {
            ++this.§7J§;
         }
         if(!§%!%§.§5"%§())
         {
            return;
         }
         if(this.§-9§)
         {
            this.resize();
            this.§-9§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §,w§;
            _loc3_ = §4!+§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §,w§ == _loc2_ && §4!+§ == _loc3_)
         {
            return false;
         }
         §,w§ = _loc2_;
         §4!+§ = _loc3_;
         this.resizeViews(§,w§,§4!+§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §6!E§.§0[§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§<M§.setViewSize(param1,param2);
      }
      
      public function §8!v§() : void
      {
      }
      
      public function §[S§() : void
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
