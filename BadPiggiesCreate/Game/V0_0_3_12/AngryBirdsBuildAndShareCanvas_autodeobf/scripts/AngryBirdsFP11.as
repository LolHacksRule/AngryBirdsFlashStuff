package
{
   import §"p§.§@8§;
   import §"p§.§@=§;
   import §"p§.§`!y§;
   import §#?§.§%!O§;
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §,r§.§'!O§;
   import §,r§.§+!F§;
   import §,r§.§,!,§;
   import §,r§.§3!?§;
   import §,r§.§3=§;
   import §,r§.§8!%§;
   import §,r§.§8^§;
   import §,r§.StateCutScene;
   import §,r§.StatePlay;
   import §,r§.§]!S§;
   import §,r§.§]#§;
   import §,r§.§^u§;
   import §,r§.§`!X§;
   import §0E§.§-!F§;
   import §0Z§.§-!M§;
   import §3",§.§0"<§;
   import §7"1§.§%W§;
   import §7"1§.§,!y§;
   import §9a§.§-!d§;
   import §>!#§.§2w§;
   import §[8§.§[!`§;
   import §[B§.§"d§;
   import §[m§.§!";§;
   import §[m§.§^^§;
   import §]^§.§0!3§;
   import com.rovio.assets.§-_§;
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
   
   public class AngryBirdsFP11 extends §!";§
   {
      
      protected static var §5@§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §8! §:String;
      
      public static var §7!A§:String;
      
      public static const §0<§:int = 1024;
      
      public static const §-!'§:int = 768;
      
      public static const §;[§:Boolean = false;
      
      public static const §@!?§:int = 2000;
      
      public static const §<!a§:Boolean = false;
      
      private static const §%N§:int = 750;
      
      private static const §6!a§:int = 3;
      
      private static const §8!^§:int = 15;
      
      protected static var §4"-§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var § 0§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §2!5§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var § !v§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §`!j§:§-!d§ = null;
      
      public static var §["&§:Boolean = true;
      
      private static var §null §:AngryBirdsFP11 = null;
      
      public static var §`-§:Sprite = null;
      
      public static var §^!M§:§,!y§;
      
      public static var §;U§:Boolean = false;
      
      protected static var §=C§:int = 0;
      
      protected static var §&@§:int = 0;
       
      
      private var §@!9§:§2w§;
      
      private var §[!K§:int;
      
      private var §>!3§:Boolean;
      
      private var §13§:int;
      
      private var §[!8§:int;
      
      protected var §"m§:Boolean;
      
      public function AngryBirdsFP11(param1:§^^§)
      {
         this.§@!9§ = new §2w§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §<J§ || stage.stageHeight != §%T§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §=C§;
      }
      
      public static function get stageHeight() : int
      {
         return §&@§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §["&§ = param1;
         §^k§.§3q§(§["&§);
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §["&§;
      }
      
      public static function get §<J§() : int
      {
         return §"!V§.getAppWidth();
      }
      
      public static function get §%T§() : int
      {
         return §"!V§.getAppHeight();
      }
      
      public static function §9!u§() : void
      {
         if(§^k§.§'!?§("Channel_Theme") == null || !§^k§.§'!?§("Channel_Theme").§2"'§())
         {
            §^k§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §#N§() : void
      {
         §^k§.§"E§("Channel_Theme");
      }
      
      public static function get §"!V§() : AngryBirdsFP11
      {
         return §null §;
      }
      
      protected function getAssetMap() : XML
      {
         return §@=§.§="#§(§ 0§);
      }
      
      protected function getUIData() : XML
      {
         return §@=§.§="#§(§4"-§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §0!3§.§ "!§.init(§[!`§.§>2§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§@!9§,this.§ "$§);
         §null § = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §="<§ = §<J§;
         §38§ = §%T§;
         §%W§.init(this,§<J§,§%T§);
         this.initLevelMain();
         §%W§.§=X§.visible = false;
         §@8§.§<0§(§`!T§);
         §@8§.§0!w§(true);
         var _loc1_:XMLList = §@=§.§="#§(§5@§).children();
         §-_§.init(_loc1_);
         §^k§.§>7§("CHANNEL_THEME",1,1);
         §^k§.§>7§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§3!i§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;"#§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§;4§);
         §^!M§ = new §,!y§(stage);
         §-!M§.§ "!§.§>"0§ = !§;[§;
      }
      
      protected function initLevelMain() : void
      {
         §%W§.§5"8§ = new §"d§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §`!j§ = new §-!d§(§7!A§);
      }
      
      protected function initStates() : void
      {
         §3!B§(new §,!,§(false));
         §3!B§(new §'!O§(false));
         §3!B§(new §^u§(false));
         §3!B§(new §3=§(false));
         §3!B§(new §+!F§(false));
         §3!B§(new StatePlay(false));
         §3!B§(new §8!%§(false));
         §3!B§(new §]!S§(false));
         §3!B§(new §]#§(false));
         §3!B§(new §3!?§(false));
         §3!B§(new §8^§(false));
         §3!B§(new StateCutScene(false));
         §3!B§(new §`!X§(false));
         if(stage.stageWidth != §<J§ || stage.stageHeight != §%T§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function § "$§(param1:ByteArray) : void
      {
      }
      
      protected function §3!i§(param1:Event) : void
      {
         §`!y§.§8"3§();
      }
      
      protected function §;"#§(param1:MouseEvent) : void
      {
         §`!y§.§9!=§();
         if(this.§>!3§)
         {
            ++this.§[!8§;
            if(this.§[!8§ > §8!^§)
            {
               this.§>!3§ = false;
               if(this.§13§ < §6!a§)
               {
                  this.§7!+§(this.§[!K§);
               }
            }
         }
      }
      
      public function §!l§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§"m§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §<J§;
         var _loc3_:Number = stage.stageHeight / §%T§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§%T§ / §<J§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§<J§ / §%T§);
            _loc5_ = stage.stageHeight;
         }
         §%W§.§18§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §=C§ = stage.stageWidth;
         §&@§ = stage.stageHeight;
      }
      
      public function §=!C§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§[!K§ > §%N§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§7!+§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§[U§(_loc1_);
            }
         }
      }
      
      public function §&!n§() : void
      {
         this.§7!+§(0);
      }
      
      public function §&%§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §7!+§(param1:int) : void
      {
         this.§"m§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§[!K§ = param1;
         this.§>!3§ = false;
      }
      
      private function §[U§(param1:int) : void
      {
         this.§"m§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§[!K§ = param1;
         this.§13§ = 0;
         this.§[!8§ = 0;
         this.§>!3§ = true;
      }
      
      protected function §;4§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §0!3§.§ "!§.§-j§();
         §-!F§.§&I§(JSON.parse(this.§@!9§.getFileAsString("Chapters.json")));
         this.§4"7§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§%W§.§=X§ != null)
         {
            §%W§.§=X§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§%"0§().isGenericState())
         {
            if(_loc2_ == §,v§.STATE_STATUS_COMPLETED)
            {
               §@8§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §%"0§().mName + " New State = " + §%"0§().mNextState);
               §0!Q§(§%"0§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §0<§;
      }
      
      override public function getAppHeight() : Number
      {
         return §-!'§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §@!?§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §8! §;
      }
      
      protected function §4"7§() : void
      {
         §%W§.§1!f§(this.getItemData(),this.getLevelBackgrounds());
         §%W§.§,C§(this.§@!9§.§7!@§,§%!O§.§?&§(),this.§8!?§);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §@=§.§="#§(§ !v§);
      }
      
      protected function getItemData() : XML
      {
         return §@=§.§="#§(§2!5§);
      }
      
      protected function §8!?§(param1:Event) : void
      {
         §;U§ = true;
         if(§<!a§)
         {
            §0!Q§(§,!,§.§8n§);
         }
         else
         {
            §0!Q§(§^u§.§8n§);
         }
      }
      
      public function §56§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§>!3§)
         {
            ++this.§13§;
         }
         if(!§0"<§.§>",§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§"m§)
         {
            this.§"m§ = false;
         }
      }
      
      public function §9!T§() : void
      {
      }
      
      public function §4i§() : void
      {
      }
   }
}
