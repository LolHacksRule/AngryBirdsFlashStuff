package
{
   import § !"§.§=!%§;
   import § "A§.§,";§;
   import §"o§.§>!!§;
   import §#!O§.§"!t§;
   import §#R§.§`B§;
   import §%!P§.§;"H§;
   import §%!P§.§@o§;
   import §'!B§.§8T§;
   import §-!r§.§6!O§;
   import §-!r§.§6?§;
   import §-!r§.§=!n§;
   import §1z§.§^!@§;
   import §3!S§.§<5§;
   import §3"#§.§`"8§;
   import §3>§.§]!N§;
   import §4u§.§%r§;
   import §8!i§.§>j§;
   import §9%§.§ §;
   import §9%§.§ !u§;
   import §9%§.§1"1§;
   import §9%§.§2w§;
   import §9%§.§8E§;
   import §9%§.§?"$§;
   import §9%§.§@p§;
   import §9%§.StateCutScene;
   import §9%§.StateEpisodeSelection;
   import §9%§.StatePlay;
   import §9%§.§^! §;
   import §;"0§.§-q§;
   import §>"2§.§8k§;
   import §>"2§.§;!Y§;
   import §>%§.§ "3§;
   import §@u§.§#'§;
   import §@u§.§1"&§;
   import §[V§.§=G§;
   import §`!w§.§&!Q§;
   import §`!w§.§?!U§;
   import §`!w§.§^!$§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§1!c§;
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
   
   public class §2&§ extends §1"&§
   {
      
      protected static var §4!>§:Class = §`1§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §1!&§:String;
      
      public static var §+!j§:String;
      
      public static const §<A§:int = 1024;
      
      public static const §[s§:int = 768;
      
      public static const §"",§:Boolean = false;
      
      public static const §0!O§:int = 2000;
      
      private static const §,H§:int = 750;
      
      private static const §," §:int = 3;
      
      private static const §^!S§:int = 15;
      
      protected static var §`"2§:Class = §!3§;
      
      protected static var §<H§:Class = §48§;
      
      protected static var §@B§:Class = §&!L§;
      
      protected static var §,!3§:Class = §',§;
      
      protected static var §]?§:Class = §0+§;
      
      public static var §8"B§:Boolean = true;
      
      private static var § "§:§2&§ = null;
      
      public static var §6F§:Sprite = null;
      
      public static var §&L§:§;!Y§;
      
      public static var §[h§:Boolean = false;
      
      private static var §"B§:int = 0;
      
      private static var §+!r§:int = 0;
       
      
      protected var §+!h§:§;"H§;
      
      protected var §!d§:§]!N§;
      
      protected var §"!N§:§-q§;
      
      protected var §#"=§:§^!@§;
      
      protected var §%,§:MovieClip;
      
      protected var §&!W§:§=!n§;
      
      protected var §7!L§:§,";§;
      
      private var §3+§:int;
      
      private var §7K§:Boolean;
      
      private var §'i§:int;
      
      private var §#4§:int;
      
      protected var §6!P§:Boolean;
      
      protected var §3!`§:Boolean;
      
      protected var §7W§:§@o§;
      
      protected var §2!`§:Boolean;
      
      protected var §^"<§:Boolean = true;
      
      public function §2&§(param1:§#'§, param2:String, param3:String)
      {
         this.§8!R§();
         §1!&§ = param2;
         §+!j§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§="$§();
         §%r§.§8R§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §"B§;
      }
      
      public static function get stageHeight() : int
      {
         return §+!r§;
      }
      
      public static function §3!J§(param1:Boolean) : void
      {
         §8"B§ = param1;
         §<5§.§4h§(§8"B§);
      }
      
      public static function §6"#§() : Boolean
      {
         return §8"B§;
      }
      
      public static function get screenWidth() : int
      {
         return §6o§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §6o§.getAppHeight();
      }
      
      public static function get §6o§() : §2&§
      {
         return § "§;
      }
      
      public function get §^7§() : §=!n§
      {
         return this.§&!W§;
      }
      
      public function get §<!?§() : §,";§
      {
         return this.§7!L§;
      }
      
      public function get §2c§() : §@o§
      {
         return this.§7W§;
      }
      
      public function get §-b§() : Boolean
      {
         return this.§3!`§;
      }
      
      public function set §-b§(param1:Boolean) : void
      {
         this.§3!`§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §?!U§.§3!c§(§@B§);
      }
      
      protected function getUIData() : XML
      {
         return §?!U§.§3!c§(§`"2§);
      }
      
      protected function §="$§() : XML
      {
         return §?!U§.§3!c§(§<H§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §8f§() : void
      {
         this.§7W§ = new §@o§();
      }
      
      protected function initialize() : void
      {
         § "§ = this;
         this.§3!`§ = false;
         §8k§.init(this,screenWidth,screenHeight);
         this.§8f§();
         this.initializeManagers();
         §=!%§.§3R§.init(§>j§.§8"%§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§+!h§,this.§ Y§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §']§ = screenWidth;
         §'!O§ = screenHeight;
         §8k§.§9i§.visible = §"",§;
         §^!$§.§[!T§(§?"3§);
         §^!$§.§ e§(true);
         var _loc1_:XMLList = §?!U§.§3!c§(§4!>§).children();
         §1!c§.init(_loc1_);
         §<5§.§@6§("CHANNEL_THEME",1,1);
         §<5§.§@6§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§-=§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6!8§);
         stage.addEventListener(Event.RESIZE,this.§[g§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§4c§);
         stage.addEventListener(Event.ACTIVATE,this.§4!]§);
         stage.addEventListener(Event.DEACTIVATE,this.§>d§);
         stage.tabChildren = false;
         §&L§ = new §;!Y§(stage);
         §&L§.addEventListener(§`B§.§"!D§,this.§=!U§);
         §&L§.addEventListener(§`B§.§=W§,this.§5n§);
         §"!t§.§3R§.§ 6§ = !§"",§;
      }
      
      private function §>d§(param1:Event) : void
      {
         this.§;V§();
      }
      
      private function §;V§() : void
      {
         if(!this.§^"<§)
         {
            return;
         }
         this.§^"<§ = false;
         this.§2!`§ = §<5§.§`!8§;
         if(!this.§2!`§)
         {
         }
      }
      
      private function §4!]§(param1:Event) : void
      {
         this.§-!t§();
      }
      
      private function §-!t§() : void
      {
         if(this.§^"<§)
         {
            return;
         }
         this.§^"<§ = true;
         if(!this.§2!`§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§%,§ = new MovieClip();
         §?"3§.stage.addChild(this.§%,§);
         this.§&!W§ = new §6?§(this.§%,§,§@!,§,this);
         this.§&!W§.addEventListener(§ "3§.OPEN,this.§=!U§);
         this.§&!W§.addEventListener(§ "3§.CLOSE,this.§5n§);
         this.§7!L§ = new §,";§(this.§&!W§,this.§7W§,§6!O§.§@!3§);
         this.§&!W§.addLayer(§6!O§.§ ">§,true,new Rectangle(0,0,-180,0));
         this.§&!W§.addLayer(§6!O§.§@!3§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §=!U§(param1:Event) : void
      {
         this.§0"6§();
      }
      
      protected function §5n§(param1:Event) : void
      {
         this.§@"&§();
      }
      
      public function §@"&§() : void
      {
         var _loc1_:Boolean = this.§&!W§.§"r§();
         var _loc2_:Boolean = §&L§.§%!I§();
         if(!_loc1_ && !_loc2_ && !this.§-b§)
         {
            §8k§.resume();
         }
      }
      
      public function §0"6§() : void
      {
         §8k§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§!d§ = this.initializeLevelItemManager();
         this.§"!N§ = this.initializeLevelThemeManager();
         this.§#"=§ = this.initializeLevelManager();
         this.§+!h§ = this.initializePackageManager();
         §8k§.§;!]§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §`"8§
      {
         return new §`"8§(stage,this.§!d§,this.§"!N§,this.§#"=§);
      }
      
      protected function initializeLevelItemManager() : §]!N§
      {
         return new §]!N§();
      }
      
      protected function initializeLevelThemeManager() : §-q§
      {
         return new §-q§();
      }
      
      protected function initializeLevelManager() : §^!@§
      {
         return new §^!@§();
      }
      
      protected function initializePackageManager() : §;"H§
      {
         return new §;"H§(this.§#"=§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§7W§.userProgress = new §=G§(§+!j§,this.§#"=§);
      }
      
      protected function initializeStates() : void
      {
         §0!c§(new §^! §(this.§#"=§,§@!,§,false));
         §0!c§(new §1"1§(this.§#"=§,§@!,§,false));
         §0!c§(new StateEpisodeSelection(this.§#"=§,§@!,§,false));
         §0!c§(new § §(this.§#"=§,§@!,§,false));
         §0!c§(new StatePlay(this.§#"=§,§@!,§,false));
         §0!c§(new §@p§(this.§#"=§,§@!,§,false));
         §0!c§(new §?"$§(this.§#"=§,§@!,§,false));
         §0!c§(new §8E§(this.§#"=§,§@!,§,false));
         §0!c§(new § !u§(this.§#"=§,§@!,§,false));
         §0!c§(new StateCutScene(this.§#"=§,§@!,§,false));
         §0!c§(new §2w§(this.§#"=§,§@!,§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§[g§(null);
         }
      }
      
      protected function § Y§(param1:ByteArray) : void
      {
      }
      
      protected function §-=§(param1:Event) : void
      {
         §&!Q§.§0"G§();
         if(this.§#b§())
         {
            this.§"!&§(0);
         }
      }
      
      protected function §6!8§(param1:MouseEvent) : void
      {
         §&!Q§.§9?§();
         if(this.§7K§)
         {
            ++this.§#4§;
            if(this.§#4§ > §^!S§)
            {
               this.§7K§ = false;
               if(this.§'i§ < §," §)
               {
                  this.§"!&§(this.§3+§);
               }
            }
         }
      }
      
      public function §;>§() : void
      {
         this.§[g§(null);
      }
      
      protected function §[g§(param1:Event) : void
      {
         this.§6!P§ = true;
      }
      
      protected function §4c§(param1:Event) : void
      {
         this.§-!t§();
      }
      
      public function §>!9§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§3+§ > §,H§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§"!&§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§+!I§(_loc1_);
            }
         }
      }
      
      public function §4"C§() : void
      {
         this.§"!&§(0);
      }
      
      public function §#b§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §"!&§(param1:int) : void
      {
         this.§6!P§ = true;
         this.§3+§ = param1;
         this.§7K§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §+!I§(param1:int) : void
      {
         this.§6!P§ = true;
         this.§3+§ = param1;
         this.§'i§ = 0;
         this.§#4§ = 0;
         this.§7K§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §`!d§(param1:KeyboardEvent) : void
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
         §=!%§.§3R§.§1X§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§8k§.§9i§ != null)
         {
            §8k§.§9i§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§[Z§().isGenericState())
         {
            if(_loc2_ == §>!!§.§,!w§)
            {
               §^!$§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §[Z§().mName + " New State = " + §[Z§().nextState);
               § !I§(§[Z§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §<A§;
      }
      
      override public function getAppHeight() : Number
      {
         return §[s§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §0!O§;
      }
      
      protected function §"s§() : String
      {
         return "ThemeMusic";
      }
      
      public function §,k§() : void
      {
         if(§<5§.§^g§("Channel_Theme") == null || !§<5§.§^g§("Channel_Theme").§6!L§())
         {
            §<5§.playSound(this.§"s§(),"Channel_Theme",999);
         }
      }
      
      public function §6I§() : void
      {
         §<5§.§["'§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §1!&§;
      }
      
      protected function loadItems() : void
      {
         this.§!d§.loadItems(this.§;F§());
      }
      
      protected function loadBackgrounds() : void
      {
         this.§"!N§.§@" §(this.§+!-§().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.initializeUserProgress();
         this.loadItems();
         this.loadBackgrounds();
         §8k§.§^"7§(this.§+!h§.§6@§,this.§"V§);
      }
      
      protected function §+!-§() : XML
      {
         return §?!U§.§3!c§(§]?§);
      }
      
      protected function §;F§() : XML
      {
         return §?!U§.§3!c§(§,!3§);
      }
      
      protected function §"V§(param1:Event) : void
      {
         §[h§ = true;
         § !I§(§1"1§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§7K§)
         {
            ++this.§'i§;
         }
         if(!§8T§.§=M§())
         {
            return;
         }
         if(this.§6!P§)
         {
            this.resize();
            this.§6!P§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §"B§;
            _loc3_ = §+!r§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §"B§ == _loc2_ && §+!r§ == _loc3_)
         {
            return false;
         }
         §"B§ = _loc2_;
         §+!r§ = _loc3_;
         this.resizeViews(§"B§,§+!r§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §8k§.§+6§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§&!W§.setViewSize(param1,param2);
      }
      
      public function §+r§() : void
      {
      }
      
      public function §&">§() : void
      {
      }
      
      protected function §8!R§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
