package
{
   import §""=§.§&!M§;
   import §'!k§.§"d§;
   import §'!k§.§>!P§;
   import §'!n§.§2!j§;
   import §+"2§.§%!A§;
   import §+"2§.§-"F§;
   import §+"2§.§2!=§;
   import §+=§.§'""§;
   import §1f§.§9H§;
   import §3R§.§1!R§;
   import §4",§.§,!j§;
   import §5R§.§0!P§;
   import §5R§.§6"7§;
   import §6!C§.§6E§;
   import §6!C§.§7[§;
   import §6!C§.§8!T§;
   import §6!M§.§8"3§;
   import §6O§.§6!x§;
   import §7!C§.§8!w§;
   import §7!C§.§;Y§;
   import §9!U§.§@F§;
   import §;a§.§5!;§;
   import §<!<§.§0`§;
   import §<[§.§#!4§;
   import §=!"§.§2"&§;
   import §=" §.§ Q§;
   import §=" §.§!!U§;
   import §=" §.§&";§;
   import §=" §.§1B§;
   import §=" §.§>O§;
   import §=" §.§?-§;
   import §=" §.§@",§;
   import §=" §.StateCutScene;
   import §=" §.StateEpisodeSelection;
   import §=" §.StatePlay;
   import §=" §.§]!"§;
   import §>!X§.§1i§;
   import §>"!§.§@!9§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§9!5§;
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
   
   public class §&"<§ extends §>!P§
   {
      
      protected static var §,3§:Class = §[!a§;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §9!Z§:String;
      
      public static var §<j§:String;
      
      public static const §6c§:int = 1024;
      
      public static const §9"-§:int = 768;
      
      public static const §;!§:Boolean = false;
      
      public static const § !U§:int = 2000;
      
      private static const §'"=§:int = 750;
      
      private static const §-&§:int = 3;
      
      private static const §2!w§:int = 15;
      
      protected static var §'"?§:Class = §@!I§;
      
      protected static var §4!'§:Class = §4!8§;
      
      protected static var §'!=§:Class = §@Z§;
      
      protected static var §;Q§:Class = §+![§;
      
      protected static var §1K§:Class = §[B§;
      
      public static var §!""§:Boolean = true;
      
      private static var §@!d§:§&"<§ = null;
      
      public static var §&B§:Sprite = null;
      
      public static var §+";§:§;Y§;
      
      public static var §!;§:Boolean = false;
      
      private static var §!$§:int = 0;
      
      private static var §18§:int = 0;
       
      
      protected var §4J§:§0!P§;
      
      protected var §2!?§:§8"3§;
      
      protected var §4!+§:§0`§;
      
      protected var §]m§:§,!j§;
      
      protected var §<!Q§:MovieClip;
      
      protected var §;R§:§-"F§;
      
      protected var §;8§:§1i§;
      
      private var §6R§:int;
      
      private var §@!]§:Boolean;
      
      private var §,$§:int;
      
      private var §#!q§:int;
      
      protected var §%"§:Boolean;
      
      protected var §8!E§:Boolean;
      
      protected var §,!P§:§6"7§;
      
      protected var §1F§:Boolean;
      
      protected var §^[§:Boolean = true;
      
      public function §&"<§(param1:§"d§, param2:String, param3:String)
      {
         this.§=!t§();
         §9!Z§ = param2;
         §<j§ = param3;
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§=8§();
         §2!j§.§?"A§(_loc5_,_loc4_,["Views","Components","Popups"],true);
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
         return §!$§;
      }
      
      public static function get stageHeight() : int
      {
         return §18§;
      }
      
      public static function §0!p§(param1:Boolean) : void
      {
         §!""§ = param1;
         §@!9§.§7!u§(§!""§);
      }
      
      public static function §8O§() : Boolean
      {
         return §!""§;
      }
      
      public static function get screenWidth() : int
      {
         return §<!7§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §<!7§.getAppHeight();
      }
      
      public static function get §<!7§() : §&"<§
      {
         return §@!d§;
      }
      
      public function get §1"0§() : §-"F§
      {
         return this.§;R§;
      }
      
      public function get §5!p§() : §1i§
      {
         return this.§;8§;
      }
      
      public function get §,!9§() : §6"7§
      {
         return this.§,!P§;
      }
      
      public function get §"!"§() : Boolean
      {
         return this.§8!E§;
      }
      
      public function set §"!"§(param1:Boolean) : void
      {
         this.§8!E§ = param1;
      }
      
      protected function getAssetMap() : XML
      {
         return §7[§.§[!n§(§'!=§);
      }
      
      protected function getUIData() : XML
      {
         return §7[§.§[!n§(§'"?§);
      }
      
      protected function §=8§() : XML
      {
         return §7[§.§[!n§(§4!'§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §[I§() : void
      {
         this.§,!P§ = new §6"7§();
      }
      
      protected function initialize() : void
      {
         §@!d§ = this;
         this.§8!E§ = false;
         §8!w§.init(this,screenWidth,screenHeight);
         this.§[I§();
         this.initializeManagers();
         §#!4§.§8!J§.init(§&!M§.§5"=§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§4J§,this.§;!`§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §-!`§ = screenWidth;
         §;!2§ = screenHeight;
         §8!w§.§1!j§.visible = §;!§;
         §6E§.§]Q§(§"%§);
         §6E§.§`"D§(true);
         var _loc1_:XMLList = §7[§.§[!n§(§,3§).children();
         §9!5§.init(_loc1_);
         §@!9§.§#!-§("CHANNEL_THEME",1,1);
         §@!9§.§#!-§("CHANNEL_AMBIENT",1,1);
         stage.addEventListener(Event.MOUSE_LEAVE,this.§<" §);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§]"G§);
         stage.addEventListener(Event.RESIZE,this.§]!T§);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§&?§);
         stage.addEventListener(Event.ACTIVATE,this.§9§);
         stage.addEventListener(Event.DEACTIVATE,this.§>!!§);
         stage.tabChildren = false;
         §+";§ = new §;Y§(stage);
         §+";§.addEventListener(§'""§.§4!^§,this.§8![§);
         §+";§.addEventListener(§'""§.§]!4§,this.§>"'§);
         §@F§.§8!J§.§43§ = !§;!§;
      }
      
      private function §>!!§(param1:Event) : void
      {
         this.§?8§();
      }
      
      private function §?8§() : void
      {
         if(!this.§^[§)
         {
            return;
         }
         this.§^[§ = false;
         this.§1F§ = §@!9§.§!j§;
         if(!this.§1F§)
         {
         }
      }
      
      private function §9§(param1:Event) : void
      {
         this.§1&§();
      }
      
      private function §1&§() : void
      {
         if(this.§^[§)
         {
            return;
         }
         this.§^[§ = true;
         if(!this.§1F§)
         {
         }
      }
      
      protected function setupPopupManager() : void
      {
         this.§<!Q§ = new MovieClip();
         §"%§.stage.addChild(this.§<!Q§);
         this.§;R§ = new §%!A§(this.§<!Q§,§2]§,this);
         this.§;R§.addEventListener(§2"&§.OPEN,this.§8![§);
         this.§;R§.addEventListener(§2"&§.CLOSE,this.§>"'§);
         this.§;8§ = new §1i§(this.§;R§,this.§,!P§,§2!=§.§^l§);
         this.§;R§.addLayer(§2!=§.§-;§,true,new Rectangle(0,0,-180,0));
         this.§;R§.addLayer(§2!=§.§^l§,true,new Rectangle(0,0,0,0));
      }
      
      protected function §8![§(param1:Event) : void
      {
         this.§5!c§();
      }
      
      protected function §>"'§(param1:Event) : void
      {
         this.§-"B§();
      }
      
      public function §-"B§() : void
      {
         var _loc1_:Boolean = this.§;R§.§["5§();
         var _loc2_:Boolean = §+";§.§9b§();
         if(!_loc1_ && !_loc2_ && !this.§"!"§)
         {
            §8!w§.resume();
         }
      }
      
      public function §5!c§() : void
      {
         §8!w§.pause();
      }
      
      protected function initializeManagers() : void
      {
         this.§2!?§ = this.initializeLevelItemManager();
         this.§4!+§ = this.initializeLevelThemeManager();
         this.§]m§ = this.initializeLevelManager();
         this.§4J§ = this.initializePackageManager();
         §8!w§.§5!V§ = this.initializeLevelMain();
         this.setupPopupManager();
      }
      
      protected function initializeLevelMain() : §1!R§
      {
         return new §1!R§(stage,this.§2!?§,this.§4!+§,this.§]m§);
      }
      
      protected function initializeLevelItemManager() : §8"3§
      {
         return new §8"3§();
      }
      
      protected function initializeLevelThemeManager() : §0`§
      {
         return new §0`§();
      }
      
      protected function initializeLevelManager() : §,!j§
      {
         return new §,!j§();
      }
      
      protected function initializePackageManager() : §0!P§
      {
         return new §0!P§(this.§]m§);
      }
      
      protected function initializeUserProgress() : void
      {
         this.§,!P§.userProgress = new §5!;§(§<j§,this.§]m§);
      }
      
      protected function initializeStates() : void
      {
         §,!B§(new § Q§(this.§]m§,§2]§,false));
         §,!B§(new §&";§(this.§]m§,§2]§,false));
         §,!B§(new StateEpisodeSelection(this.§]m§,§2]§,false));
         §,!B§(new §]!"§(this.§]m§,§2]§,false));
         §,!B§(new StatePlay(this.§]m§,§2]§,false));
         §,!B§(new §1B§(this.§]m§,§2]§,false));
         §,!B§(new §@",§(this.§]m§,§2]§,false));
         §,!B§(new §!!U§(this.§]m§,§2]§,false));
         §,!B§(new §>O§(this.§]m§,§2]§,false));
         §,!B§(new StateCutScene(this.§]m§,§2]§,false));
         §,!B§(new §?-§(this.§]m§,§2]§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.§]!T§(null);
         }
      }
      
      protected function §;!`§(param1:ByteArray) : void
      {
      }
      
      protected function §<" §(param1:Event) : void
      {
         §8!T§.§>"@§();
         if(this.§>g§())
         {
            this.§-E§(0);
         }
      }
      
      protected function §]"G§(param1:MouseEvent) : void
      {
         §8!T§.§2%§();
         if(this.§@!]§)
         {
            ++this.§#!q§;
            if(this.§#!q§ > §2!w§)
            {
               this.§@!]§ = false;
               if(this.§,$§ < §-&§)
               {
                  this.§-E§(this.§6R§);
               }
            }
         }
      }
      
      public function §^"!§() : void
      {
         this.§]!T§(null);
      }
      
      protected function §]!T§(param1:Event) : void
      {
         this.§%"§ = true;
      }
      
      protected function §&?§(param1:Event) : void
      {
         this.§1&§();
      }
      
      public function §7!H§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§6R§ > §'"=§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§-E§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§'!'§(_loc1_);
            }
         }
      }
      
      public function §0!n§() : void
      {
         this.§-E§(0);
      }
      
      public function §>g§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §-E§(param1:int) : void
      {
         this.§%"§ = true;
         this.§6R§ = param1;
         this.§@!]§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §'!'§(param1:int) : void
      {
         this.§%"§ = true;
         this.§6R§ = param1;
         this.§,$§ = 0;
         this.§#!q§ = 0;
         this.§@!]§ = true;
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §8!b§(param1:KeyboardEvent) : void
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
         §#!4§.§8!J§.§7l§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§8!w§.§1!j§ != null)
         {
            §8!w§.§1!j§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§'B§().isGenericState())
         {
            if(_loc2_ == §6!x§.§>!Y§)
            {
               §6E§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §'B§().mName + " New State = " + §'B§().nextState);
               §'Q§(§'B§().nextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §6c§;
      }
      
      override public function getAppHeight() : Number
      {
         return §9"-§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return § !U§;
      }
      
      protected function §4""§() : String
      {
         return "ThemeMusic";
      }
      
      public function §>X§() : void
      {
         if(§@!9§.§!y§("Channel_Theme") == null || !§@!9§.§!y§("Channel_Theme").§]X§())
         {
            §@!9§.playSound(this.§4""§(),"Channel_Theme",999);
         }
      }
      
      public function §+S§() : void
      {
         §@!9§.§"!y§("Channel_Theme");
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §9!Z§;
      }
      
      protected function loadItems() : void
      {
         this.§2!?§.loadItems(this.§6!p§());
      }
      
      protected function loadBackgrounds() : void
      {
         this.§4!+§.§<!o§(this.§2c§().Backgrounds);
      }
      
      protected function initializeGame() : void
      {
         this.initializeUserProgress();
         this.loadItems();
         this.loadBackgrounds();
         §8!w§.§;!Q§(this.§4J§.§91§,this.§5C§);
      }
      
      protected function §2c§() : XML
      {
         return §7[§.§[!n§(§1K§);
      }
      
      protected function §6!p§() : XML
      {
         return §7[§.§[!n§(§;Q§);
      }
      
      protected function §5C§(param1:Event) : void
      {
         §!;§ = true;
         §'Q§(§&";§.STATE_NAME);
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§@!]§)
         {
            ++this.§,$§;
         }
         if(!§9H§.§9o§())
         {
            return;
         }
         if(this.§%"§)
         {
            this.resize();
            this.§%"§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §!$§;
            _loc3_ = §18§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §!$§ == _loc2_ && §18§ == _loc3_)
         {
            return false;
         }
         §!$§ = _loc2_;
         §18§ = _loc3_;
         this.resizeViews(§!$§,§18§);
         return true;
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         §8!w§.§7"0§(0,0,param1,param2);
         setViewSize(param1,param2);
         this.§;R§.setViewSize(param1,param2);
      }
      
      public function §2!5§() : void
      {
      }
      
      public function §?!`§() : void
      {
      }
      
      protected function §=!t§() : void
      {
         Font.registerFont(AngryBirdsFont);
         Font.registerFont(AngryBirdsBoldFont);
         Font.registerFont(AngryBirdsTextFont);
         Font.registerFont(AngryBirdsTextBoldFont);
      }
   }
}
