package
{
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §%!K§.§ i§;
   import §%!j§.§%K§;
   import §'V§.§7I§;
   import §'j§.§##§;
   import §,P§.§'_§;
   import §,P§.§1T§;
   import §5u§.§-!h§;
   import §6!k§.§@!L§;
   import §6!k§.§@B§;
   import §6]§.§+!T§;
   import §6]§.§,"0§;
   import §6]§.§8!W§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §]";§.§!<§;
   import §^!m§.§6§;
   import §^U§.§+"!§;
   import §^U§.§,!M§;
   import §^U§.§1!i§;
   import §^U§.§2u§;
   import §^U§.§7!X§;
   import §^U§.§7A§;
   import §^U§.§8!N§;
   import §^U§.§9k§;
   import §^U§.§<K§;
   import §^U§.§@!y§;
   import §^U§.StateCutScene;
   import §^U§.StatePlay;
   import §^U§.§`!;§;
   import com.rovio.assets.§8!o§;
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
   
   public class AngryBirdsFP11 extends §@!L§
   {
      
      protected static var §-8§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §["5§:String;
      
      public static var § !i§:String;
      
      public static const §["3§:int = 1024;
      
      public static const §7$§:int = 768;
      
      public static const §^q§:Boolean = false;
      
      public static const § "6§:int = 2000;
      
      public static const §["$§:Boolean = false;
      
      private static const §6"&§:int = 750;
      
      private static const §]N§:int = 3;
      
      private static const §]!"§:int = 15;
      
      protected static var §%!%§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §&L§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §7!t§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §<!=§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §>!7§:§##§ = null;
      
      public static var §2B§:Boolean = true;
      
      private static var §%"1§:AngryBirdsFP11 = null;
      
      public static var §,">§:Sprite = null;
      
      public static var §+W§:§1T§;
      
      public static var §["!§:Boolean = false;
      
      protected static var §7!u§:int = 0;
      
      protected static var §1"?§:int = 0;
       
      
      private var §2!1§:§-!h§;
      
      private var §;§:int;
      
      private var §9""§:Boolean;
      
      private var §^p§:int;
      
      private var §'!I§:int;
      
      protected var §`"1§:Boolean;
      
      public function AngryBirdsFP11(param1:§@B§)
      {
         this.§2!1§ = new §-!h§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §6j§ || stage.stageHeight != §+#§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §7!u§;
      }
      
      public static function get stageHeight() : int
      {
         return §1"?§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §2B§ = param1;
         §0"#§.§5#§(§2B§);
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §2B§;
      }
      
      public static function get §6j§() : int
      {
         return §@"7§.getAppWidth();
      }
      
      public static function get §+#§() : int
      {
         return §@"7§.getAppHeight();
      }
      
      public static function §do §() : void
      {
         if(§0"#§.§9!$§("Channel_Theme") == null || !§0"#§.§9!$§("Channel_Theme").§4C§())
         {
            §0"#§.§9"2§("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §4"2§() : void
      {
         §0"#§.§<"0§("Channel_Theme");
      }
      
      public static function get §@"7§() : AngryBirdsFP11
      {
         return §%"1§;
      }
      
      protected function getAssetMap() : XML
      {
         return §+!T§.§`x§(§&L§);
      }
      
      protected function getUIData() : XML
      {
         return §+!T§.§`x§(§%!%§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         § i§.§[E§.init(§6§.§25§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§2!1§,this.§8!I§);
         §%"1§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §<3§ = §6j§;
         §=!l§ = §+#§;
         §'_§.init(this,§6j§,§+#§);
         this.initLevelMain();
         §'_§.§5k§.visible = false;
         §,"0§.§-§(§&"!§);
         §,"0§.§;!;§(true);
         var _loc1_:XMLList = §+!T§.§`x§(§-8§).children();
         §8!o§.init(_loc1_);
         §0"#§.§4!m§("CHANNEL_THEME",1,1);
         §0"#§.§4!m§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§%!3§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§8x§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§[H§);
         §+W§ = new §1T§(stage);
         §7I§.§[E§.§?p§ = !§^q§;
      }
      
      protected function initLevelMain() : void
      {
         §'_§.§=M§ = new §,4§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §>!7§ = new §##§(§ !i§);
      }
      
      protected function initStates() : void
      {
         §&p§(new §8!N§(false));
         §&p§(new §`!;§(false));
         §&p§(new §7!X§(false));
         §&p§(new §2u§(false));
         §&p§(new §1!i§(false));
         §&p§(new StatePlay(false));
         §&p§(new §@!y§(false));
         §&p§(new §7A§(false));
         §&p§(new §+"!§(false));
         §&p§(new §9k§(false));
         §&p§(new §,!M§(false));
         §&p§(new StateCutScene(false));
         §&p§(new §<K§(false));
         if(stage.stageWidth != §6j§ || stage.stageHeight != §+#§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §8!I§(param1:ByteArray) : void
      {
      }
      
      protected function §%!3§(param1:Event) : void
      {
         §8!W§.§?!G§();
      }
      
      protected function §8x§(param1:MouseEvent) : void
      {
         §8!W§.§1"'§();
         if(this.§9""§)
         {
            ++this.§'!I§;
            if(this.§'!I§ > §]!"§)
            {
               this.§9""§ = false;
               if(this.§^p§ < §]N§)
               {
                  this.§&!E§(this.§;§);
               }
            }
         }
      }
      
      public function §>M§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§`"1§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §6j§;
         var _loc3_:Number = stage.stageHeight / §+#§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§+#§ / §6j§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§6j§ / §+#§);
            _loc5_ = stage.stageHeight;
         }
         §'_§.§=!R§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §7!u§ = stage.stageWidth;
         §1"?§ = stage.stageHeight;
      }
      
      public function §>!5§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§;§ > §6"&§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§&!E§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§1,§(_loc1_);
            }
         }
      }
      
      public function §>!A§() : void
      {
         this.§&!E§(0);
      }
      
      public function §&!6§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §&!E§(param1:int) : void
      {
         this.§`"1§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§;§ = param1;
         this.§9""§ = false;
      }
      
      private function §1,§(param1:int) : void
      {
         this.§`"1§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§;§ = param1;
         this.§^p§ = 0;
         this.§'!I§ = 0;
         this.§9""§ = true;
      }
      
      protected function §[H§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         § i§.§[E§.§?M§();
         §`!r§.§?D§(JSON.parse(this.§2!1§.getFileAsString("Chapters.json")));
         this.§<C§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§'_§.§5k§ != null)
         {
            §'_§.§5k§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§<"%§().isGenericState())
         {
            if(_loc2_ == §'B§.STATE_STATUS_COMPLETED)
            {
               §,"0§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §<"%§().mName + " New State = " + §<"%§().mNextState);
               §<t§(§<"%§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §["3§;
      }
      
      override public function getAppHeight() : Number
      {
         return §7$§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return § "6§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §["5§;
      }
      
      protected function §<C§() : void
      {
         §'_§.§#R§(this.getItemData(),this.getLevelBackgrounds());
         §'_§.§6h§(this.§2!1§.§1h§,§!<§.§6p§(),this.§>0§);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §+!T§.§`x§(§<!=§);
      }
      
      protected function getItemData() : XML
      {
         return §+!T§.§`x§(§7!t§);
      }
      
      protected function §>0§(param1:Event) : void
      {
         §["!§ = true;
         if(§["$§)
         {
            §<t§(§8!N§.§%!Q§);
         }
         else
         {
            §<t§(§7!X§.§%!Q§);
         }
      }
      
      public function §[!;§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§9""§)
         {
            ++this.§^p§;
         }
         if(!§%K§.§,!>§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§`"1§)
         {
            this.§`"1§ = false;
         }
      }
      
      public function §[0§() : void
      {
      }
      
      public function §=g§() : void
      {
      }
   }
}
