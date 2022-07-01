package
{
   import § i§.§'V§;
   import §&!s§.§+!O§;
   import §+!v§.§2!f§;
   import §,i§.§#!G§;
   import §,i§.§-q§;
   import §,i§.§1!K§;
   import §,i§.§4<§;
   import §,i§.§6!x§;
   import §,i§.§8!=§;
   import §,i§.§9"+§;
   import §,i§.§=B§;
   import §,i§.§>!_§;
   import §,i§.§>Y§;
   import §,i§.§?c§;
   import §,i§.StateCutScene;
   import §,i§.StatePlay;
   import §1U§.§ !K§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!s§.§%I§;
   import §5!5§.§^e§;
   import §5^§.§ !x§;
   import §7M§.§"?§;
   import §8!s§.§+?§;
   import §8"!§.§'e§;
   import §8"!§.§8! §;
   import §9!G§.§<$§;
   import §9!G§.§>!n§;
   import §9!G§.§]!e§;
   import §>"2§.§<y§;
   import §^!D§.§;^§;
   import com.rovio.assets.§%!8§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class AngryBirdsFP11 extends §8! §
   {
      
      protected static var §<!C§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §'d§:String;
      
      public static var §8V§:String;
      
      public static const §<!8§:int = 1024;
      
      public static const §[V§:int = 768;
      
      public static const §2!_§:Boolean = false;
      
      public static const §@!_§:int = 2000;
      
      public static const §3!p§:Boolean = false;
      
      private static const §'!Z§:int = 750;
      
      private static const §>!r§:int = 3;
      
      private static const §;!L§:int = 15;
      
      protected static var §`g§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §7!,§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §#s§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §6"-§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §<U§:§+?§ = null;
      
      public static var §?"!§:Boolean = true;
      
      private static var §&!W§:AngryBirdsFP11 = null;
      
      public static var §1!>§:Sprite = null;
      
      public static var §]C§:§ !K§;
      
      public static var §3!O§:Boolean = false;
      
      protected static var §"!r§:int = 0;
      
      protected static var §#!A§:int = 0;
       
      
      private var §"+§:§2!f§;
      
      private var §#j§:int;
      
      private var §4!r§:Boolean;
      
      private var §+d§:int;
      
      private var §3W§:int;
      
      protected var §%"-§:Boolean;
      
      public function AngryBirdsFP11(param1:§'e§)
      {
         this.§"+§ = new §2!f§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §#"8§ || stage.stageHeight != §2!e§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §"!r§;
      }
      
      public static function get stageHeight() : int
      {
         return §#!A§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §?"!§ = param1;
         § !x§.§9o§(§?"!§);
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §?"!§;
      }
      
      public static function get §#"8§() : int
      {
         return §'"0§.getAppWidth();
      }
      
      public static function get §2!e§() : int
      {
         return §'"0§.getAppHeight();
      }
      
      public static function §-"5§() : void
      {
         if(§ !x§.§69§("Channel_Theme") == null || !§ !x§.§69§("Channel_Theme").§#N§())
         {
            § !x§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §7W§() : void
      {
         § !x§.§`"4§("Channel_Theme");
      }
      
      public static function get §'"0§() : AngryBirdsFP11
      {
         return §&!W§;
      }
      
      protected function getAssetMap() : XML
      {
         return §<$§.§ "7§(§7!,§);
      }
      
      protected function getUIData() : XML
      {
         return §<$§.§ "7§(§`g§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §;^§.§,l§.init(§'V§.§#c§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§"+§,this.§;!0§);
         §&!W§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §0f§ = §#"8§;
         §>5§ = §2!e§;
         §"!V§.init(this,§#"8§,§2!e§);
         this.initLevelMain();
         §"!V§.§8!§.visible = false;
         §]!e§.§,Y§(§7!;§);
         §]!e§.§5!n§(true);
         var _loc1_:XMLList = §<$§.§ "7§(§<!C§).children();
         §%!8§.init(_loc1_);
         § !x§.§'^§("CHANNEL_THEME",1,1);
         § !x§.§'^§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§5X§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§^!V§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§^"5§);
         §]C§ = new § !K§(stage);
         §<y§.§,l§.§;!=§ = !§2!_§;
      }
      
      protected function initLevelMain() : void
      {
         §"!V§.§!j§ = new §%I§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §<U§ = new §+?§(§8V§);
      }
      
      protected function initStates() : void
      {
         §@!c§(new §8!=§(false));
         §@!c§(new §>Y§(false));
         §@!c§(new §#!G§(false));
         §@!c§(new §4<§(false));
         §@!c§(new §6!x§(false));
         §@!c§(new StatePlay(false));
         §@!c§(new §9"+§(false));
         §@!c§(new §=B§(false));
         §@!c§(new §?c§(false));
         §@!c§(new §1!K§(false));
         §@!c§(new §>!_§(false));
         §@!c§(new StateCutScene(false));
         §@!c§(new §-q§(false));
         if(stage.stageWidth != §#"8§ || stage.stageHeight != §2!e§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §;!0§(param1:ByteArray) : void
      {
      }
      
      protected function §5X§(param1:Event) : void
      {
         §>!n§.§^7§();
      }
      
      protected function §^!V§(param1:MouseEvent) : void
      {
         §>!n§.§@!d§();
         if(this.§4!r§)
         {
            ++this.§3W§;
            if(this.§3W§ > §;!L§)
            {
               this.§4!r§ = false;
               if(this.§+d§ < §>!r§)
               {
                  this.§8"%§(this.§#j§);
               }
            }
         }
      }
      
      public function §9"!§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§%"-§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §#"8§;
         var _loc3_:Number = stage.stageHeight / §2!e§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§2!e§ / §#"8§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§#"8§ / §2!e§);
            _loc5_ = stage.stageHeight;
         }
         §"!V§.§7!K§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §"!r§ = stage.stageWidth;
         §#!A§ = stage.stageHeight;
      }
      
      public function §[!>§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§#j§ > §'!Z§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§8"%§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§7a§(_loc1_);
            }
         }
      }
      
      public function §&+§() : void
      {
         this.§8"%§(0);
      }
      
      public function §]8§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §8"%§(param1:int) : void
      {
         this.§%"-§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§#j§ = param1;
         this.§4!r§ = false;
      }
      
      private function §7a§(param1:int) : void
      {
         this.§%"-§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§#j§ = param1;
         this.§+d§ = 0;
         this.§3W§ = 0;
         this.§4!r§ = true;
      }
      
      protected function §^"5§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §;^§.§,l§.§0w§();
         §"?§.§;L§(JSON.parse(this.§"+§.getFileAsString("Chapters.json")));
         this.§;4§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§"!V§.§8!§ != null)
         {
            §"!V§.§8!§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§7F§().isGenericState())
         {
            if(_loc2_ == §0!K§.STATE_STATUS_COMPLETED)
            {
               §]!e§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §7F§().mName + " New State = " + §7F§().mNextState);
               §%-§(§7F§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §<!8§;
      }
      
      override public function getAppHeight() : Number
      {
         return §[V§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §@!_§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §'d§;
      }
      
      protected function §;4§() : void
      {
         §"!V§.§6!&§(this.getItemData(),this.getLevelBackgrounds());
         §"!V§.§%6§(this.§"+§.§[!S§,§+!O§.§#@§(),this.§"!k§);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §<$§.§ "7§(§6"-§);
      }
      
      protected function getItemData() : XML
      {
         return §<$§.§ "7§(§#s§);
      }
      
      protected function §"!k§(param1:Event) : void
      {
         §3!O§ = true;
         if(§3!p§)
         {
            §%-§(§8!=§.§]"2§);
         }
         else
         {
            §%-§(§#!G§.§]"2§);
         }
      }
      
      public function §5"6§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§4!r§)
         {
            ++this.§+d§;
         }
         if(!§^e§.§5!#§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§%"-§)
         {
            this.§%"-§ = false;
         }
      }
      
      public function §2!R§() : void
      {
      }
      
      public function §&!P§() : void
      {
      }
   }
}
