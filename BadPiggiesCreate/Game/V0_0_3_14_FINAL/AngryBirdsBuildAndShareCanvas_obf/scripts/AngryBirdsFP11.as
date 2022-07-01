package
{
   import §""3§.§,"5§;
   import §""3§.§0Y§;
   import §"v§.§3!w§;
   import §%c§.§6!f§;
   import §%c§.§=!X§;
   import §&"'§.§7!E§;
   import §,a§.§<!m§;
   import §-!n§.§5!U§;
   import §0![§.§%!F§;
   import §0![§.§'"6§;
   import §0![§.§+"3§;
   import §0![§.§0!v§;
   import §0![§.§4g§;
   import §0![§.§7B§;
   import §0![§.§="§;
   import §0![§.§@!m§;
   import §0![§.StateCutScene;
   import §0![§.StatePlay;
   import §0![§.§]x§;
   import §0![§.§^!w§;
   import §0![§.§`t§;
   import §4!D§.§3!7§;
   import §5!V§.§!w§;
   import §5"-§.§5y§;
   import §6p§.§?%§;
   import §=!M§.§"o§;
   import §=!M§.§9!P§;
   import §=!M§.§?!1§;
   import §="6§.§;!a§;
   import §@!v§.§6!Q§;
   import §`!y§.§,!u§;
   import com.rovio.assets.§[!z§;
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
   
   public class AngryBirdsFP11 extends §0Y§
   {
      
      protected static var §;2§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §@R§:String;
      
      public static var §0!^§:String;
      
      public static const §^!N§:int = 1024;
      
      public static const §5!P§:int = 768;
      
      public static const §>3§:Boolean = false;
      
      public static const §39§:int = 2000;
      
      public static const §@!&§:Boolean = false;
      
      private static const §5Z§:int = 750;
      
      private static const §<!e§:int = 3;
      
      private static const §9^§:int = 15;
      
      protected static var §0l§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §2!`§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §9"3§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §^!3§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §>" §:§,!u§ = null;
      
      public static var §8"&§:Boolean = true;
      
      private static var §>7§:AngryBirdsFP11 = null;
      
      public static var §[";§:Sprite = null;
      
      public static var §"!A§:§6!f§;
      
      public static var §,!v§:Boolean = false;
      
      protected static var §>6§:int = 0;
      
      protected static var §<!R§:int = 0;
       
      
      private var §[#§:§;!a§;
      
      private var §5`§:int;
      
      private var §-$§:Boolean;
      
      private var §7!2§:int;
      
      private var §="+§:int;
      
      protected var §-B§:Boolean;
      
      public function AngryBirdsFP11(param1:§,"5§)
      {
         this.§[#§ = new §;!a§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §>!U§ || stage.stageHeight != §>Y§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §>6§;
      }
      
      public static function get stageHeight() : int
      {
         return §<!R§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §8"&§ = param1;
         §5!U§.§-X§(§8"&§);
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §8"&§;
      }
      
      public static function get §>!U§() : int
      {
         return §%d§.getAppWidth();
      }
      
      public static function get §>Y§() : int
      {
         return §%d§.getAppHeight();
      }
      
      public static function §<!,§() : void
      {
         if(§5!U§.§`!;§("Channel_Theme") == null || !§5!U§.§`!;§("Channel_Theme").§if §())
         {
            §5!U§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §@!1§() : void
      {
         §5!U§.§+!7§("Channel_Theme");
      }
      
      public static function get §%d§() : AngryBirdsFP11
      {
         return §>7§;
      }
      
      protected function getAssetMap() : XML
      {
         return §?!1§.§ !?§(§2!`§);
      }
      
      protected function getUIData() : XML
      {
         return §?!1§.§ !?§(§0l§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §3!7§.§2=§.init(§6!Q§.§]!q§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§[#§,this.§["1§);
         §>7§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §?!,§ = §>!U§;
         §;!Z§ = §>Y§;
         §=!X§.init(this,§>!U§,§>Y§);
         this.initLevelMain();
         §=!X§.§29§.visible = false;
         §9!P§.§4!"§(§6!q§);
         §9!P§.§;"3§(true);
         var _loc1_:XMLList = §?!1§.§ !?§(§;2§).children();
         §[!z§.init(_loc1_);
         §5!U§.§2R§("CHANNEL_THEME",1,1);
         §5!U§.§2R§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§,!_§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§2<§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!l§);
         §"!A§ = new §6!f§(stage);
         §7!E§.§2=§.§#!5§ = !§>3§;
      }
      
      protected function initLevelMain() : void
      {
         §=!X§.§!'§ = new §!w§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §>" § = new §,!u§(§0!^§);
      }
      
      protected function initStates() : void
      {
         §,Y§(new §+"3§(false));
         §,Y§(new §0!v§(false));
         §,Y§(new §]x§(false));
         §,Y§(new §="§(false));
         §,Y§(new §7B§(false));
         §,Y§(new StatePlay(false));
         §,Y§(new §4g§(false));
         §,Y§(new §`t§(false));
         §,Y§(new §@!m§(false));
         §,Y§(new §%!F§(false));
         §,Y§(new §^!w§(false));
         §,Y§(new StateCutScene(false));
         §,Y§(new §'"6§(false));
         if(stage.stageWidth != §>!U§ || stage.stageHeight != §>Y§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §["1§(param1:ByteArray) : void
      {
      }
      
      protected function §,!_§(param1:Event) : void
      {
         §"o§.§9$§();
      }
      
      protected function §2<§(param1:MouseEvent) : void
      {
         §"o§.§'X§();
         if(this.§-$§)
         {
            ++this.§="+§;
            if(this.§="+§ > §9^§)
            {
               this.§-$§ = false;
               if(this.§7!2§ < §<!e§)
               {
                  this.§4!s§(this.§5`§);
               }
            }
         }
      }
      
      public function §0K§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§-B§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §>!U§;
         var _loc3_:Number = stage.stageHeight / §>Y§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§>Y§ / §>!U§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§>!U§ / §>Y§);
            _loc5_ = stage.stageHeight;
         }
         §=!X§.§%" §(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §>6§ = stage.stageWidth;
         §<!R§ = stage.stageHeight;
      }
      
      public function §9+§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§5`§ > §5Z§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§4!s§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§+!X§(_loc1_);
            }
         }
      }
      
      public function §!!#§() : void
      {
         this.§4!s§(0);
      }
      
      public function §^!'§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §4!s§(param1:int) : void
      {
         this.§-B§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§5`§ = param1;
         this.§-$§ = false;
      }
      
      private function §+!X§(param1:int) : void
      {
         this.§-B§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§5`§ = param1;
         this.§7!2§ = 0;
         this.§="+§ = 0;
         this.§-$§ = true;
      }
      
      protected function §8!l§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §3!7§.§2=§.§1b§();
         §3!w§.§'!9§(JSON.parse(this.§[#§.getFileAsString("Chapters.json")));
         this.§`!K§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§=!X§.§29§ != null)
         {
            §=!X§.§29§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§&[§().isGenericState())
         {
            if(_loc2_ == §5y§.STATE_STATUS_COMPLETED)
            {
               §9!P§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §&[§().mName + " New State = " + §&[§().mNextState);
               §1!b§(§&[§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §^!N§;
      }
      
      override public function getAppHeight() : Number
      {
         return §5!P§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §39§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §@R§;
      }
      
      protected function §`!K§() : void
      {
         §=!X§.§0_§(this.getItemData(),this.getLevelBackgrounds());
         §=!X§.§2!2§(this.§[#§.§>"0§,§<!m§.§1C§(),this.§5!f§);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §?!1§.§ !?§(§^!3§);
      }
      
      protected function getItemData() : XML
      {
         return §?!1§.§ !?§(§9"3§);
      }
      
      protected function §5!f§(param1:Event) : void
      {
         §,!v§ = true;
         if(§@!&§)
         {
            §1!b§(§+"3§.§'=§);
         }
         else
         {
            §1!b§(§]x§.§'=§);
         }
      }
      
      public function §`!r§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§-$§)
         {
            ++this.§7!2§;
         }
         if(!§?%§.§]p§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§-B§)
         {
            this.§-B§ = false;
         }
      }
      
      public function §#^§() : void
      {
      }
      
      public function §>!!§() : void
      {
      }
   }
}
