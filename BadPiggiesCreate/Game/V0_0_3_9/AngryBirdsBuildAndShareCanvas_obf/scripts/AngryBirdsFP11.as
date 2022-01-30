package
{
   import §"h§.§<"+§;
   import §&l§.§'"0§;
   import §-N§.§=!]§;
   import §3!S§.§%!R§;
   import §3!S§.§%s§;
   import §3>§.§["!§;
   import §5<§.§6",§;
   import §6!&§.§1!c§;
   import §6p§.§'!B§;
   import §9!#§.§ !4§;
   import §9!#§.§"" §;
   import §9!#§.§#B§;
   import §9!#§.§+0§;
   import §9!#§.§+e§;
   import §9!#§.§0!&§;
   import §9!#§.§3!+§;
   import §9!#§.§7!_§;
   import §9!#§.§8!<§;
   import §9!#§.§<!P§;
   import §9!#§.§>!o§;
   import §9!#§.StateCutScene;
   import §9!#§.StatePlay;
   import §=b§.§-!K§;
   import §>!J§.§"g§;
   import §@!;§.§%"-§;
   import §@!;§.§&F§;
   import §@!;§.§+b§;
   import §]!4§.§+!p§;
   import §]'§.§%!J§;
   import §^s§.§#!p§;
   import §^s§.§+!P§;
   import com.rovio.assets.§;!q§;
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
   
   public class AngryBirdsFP11 extends §+!P§
   {
      
      protected static var §1!b§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §7v§:String;
      
      public static var §`]§:String;
      
      public static const §"<§:int = 1024;
      
      public static const §9%§:int = 768;
      
      public static const §3'§:Boolean = false;
      
      public static const §&!>§:int = 2000;
      
      public static const §=!2§:Boolean = false;
      
      private static const §,3§:int = 750;
      
      private static const §=!T§:int = 3;
      
      private static const §&!6§:int = 15;
      
      protected static var §""7§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §0!p§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §7!i§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §%"%§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var §5!c§:§+!p§ = null;
      
      public static var §[8§:Boolean = true;
      
      private static var §1!S§:AngryBirdsFP11 = null;
      
      public static var §'v§:Sprite = null;
      
      public static var §#!f§:§%!R§;
      
      public static var §&g§:Boolean = false;
      
      protected static var §!y§:int = 0;
      
      protected static var § u§:int = 0;
       
      
      private var §`"!§:§%!J§;
      
      private var §03§:int;
      
      private var §^e§:Boolean;
      
      private var §5!W§:int;
      
      private var § g§:int;
      
      protected var §64§:Boolean;
      
      public function AngryBirdsFP11(param1:§#!p§)
      {
         this.§`"!§ = new §%!J§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §`6§ || stage.stageHeight != § "2§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §!y§;
      }
      
      public static function get stageHeight() : int
      {
         return § u§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         §[8§ = param1;
         §'!B§.§6t§(§[8§);
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §[8§;
      }
      
      public static function get §`6§() : int
      {
         return §?!-§.getAppWidth();
      }
      
      public static function get § "2§() : int
      {
         return §?!-§.getAppHeight();
      }
      
      public static function §4g§() : void
      {
         if(§'!B§.§"!4§("Channel_Theme") == null || !§'!B§.§"!4§("Channel_Theme").§[r§())
         {
            §'!B§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §8z§() : void
      {
         §'!B§.§&!r§("Channel_Theme");
      }
      
      public static function get §?!-§() : AngryBirdsFP11
      {
         return §1!S§;
      }
      
      protected function getAssetMap() : XML
      {
         return §+b§.§0x§(§0!p§);
      }
      
      protected function getUIData() : XML
      {
         return §+b§.§0x§(§""7§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §'"0§.§'!o§.init(§6",§.§>3§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§`"!§,this.§1[§);
         §1!S§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §"!J§ = §`6§;
         §3N§ = § "2§;
         §%s§.init(this,§`6§,§ "2§);
         this.initLevelMain();
         §%s§.§7H§.visible = false;
         §&F§.§4J§(§[!d§);
         §&F§.§5!G§(true);
         var _loc1_:XMLList = §+b§.§0x§(§1!b§).children();
         §;!q§.init(_loc1_);
         §'!B§.§#3§("CHANNEL_THEME",1,1);
         §'!B§.§#3§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§4!T§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!z§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§`$§);
         §#!f§ = new §%!R§(stage);
         §"g§.§'!o§.§-2§ = !§3'§;
      }
      
      protected function initLevelMain() : void
      {
         §%s§.§`!f§ = new §-!K§(stage);
      }
      
      protected function initUserProgress() : void
      {
         §5!c§ = new §+!p§(§`]§);
      }
      
      protected function initStates() : void
      {
         §?!B§(new §8!<§(false));
         §?!B§(new §+0§(false));
         §?!B§(new §+e§(false));
         §?!B§(new §7!_§(false));
         §?!B§(new §#B§(false));
         §?!B§(new StatePlay(false));
         §?!B§(new §<!P§(false));
         §?!B§(new §3!+§(false));
         §?!B§(new §"" §(false));
         §?!B§(new §0!&§(false));
         §?!B§(new § !4§(false));
         §?!B§(new StateCutScene(false));
         §?!B§(new §>!o§(false));
         if(stage.stageWidth != §`6§ || stage.stageHeight != § "2§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §1[§(param1:ByteArray) : void
      {
      }
      
      protected function §4!T§(param1:Event) : void
      {
         §%"-§.§5X§();
      }
      
      protected function §%!z§(param1:MouseEvent) : void
      {
         §%"-§.§`"%§();
         if(this.§^e§)
         {
            ++this.§ g§;
            if(this.§ g§ > §&!6§)
            {
               this.§^e§ = false;
               if(this.§5!W§ < §=!T§)
               {
                  this.§`R§(this.§03§);
               }
            }
         }
      }
      
      public function §?A§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§64§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §`6§;
         var _loc3_:Number = stage.stageHeight / § "2§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§ "2§ / §`6§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§`6§ / § "2§);
            _loc5_ = stage.stageHeight;
         }
         §%s§.§4!@§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §!y§ = stage.stageWidth;
         § u§ = stage.stageHeight;
      }
      
      public function §>=§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§03§ > §,3§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§`R§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§8!b§(_loc1_);
            }
         }
      }
      
      public function §0!B§() : void
      {
         this.§`R§(0);
      }
      
      public function §%9§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §`R§(param1:int) : void
      {
         this.§64§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§03§ = param1;
         this.§^e§ = false;
      }
      
      private function §8!b§(param1:int) : void
      {
         this.§64§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§03§ = param1;
         this.§5!W§ = 0;
         this.§ g§ = 0;
         this.§^e§ = true;
      }
      
      protected function §`$§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.F:
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §'"0§.§'!o§.§!!M§();
         §1!c§.§ _§(JSON.parse(this.§`"!§.getFileAsString("Chapters.json")));
         this.§9i§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§%s§.§7H§ != null)
         {
            §%s§.§7H§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§+!C§().isGenericState())
         {
            if(_loc2_ == §<"+§.STATE_STATUS_COMPLETED)
            {
               §&F§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §+!C§().mName + " New State = " + §+!C§().mNextState);
               §<g§(§+!C§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §"<§;
      }
      
      override public function getAppHeight() : Number
      {
         return §9%§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §&!>§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §7v§;
      }
      
      protected function §9i§() : void
      {
         §%s§.§?!D§(this.getItemData(),this.getLevelBackgrounds());
         §%s§.§[!l§(this.§`"!§.§#C§,§["!§.§'"5§(),this.§&8§);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §+b§.§0x§(§%"%§);
      }
      
      protected function getItemData() : XML
      {
         return §+b§.§0x§(§7!i§);
      }
      
      protected function §&8§(param1:Event) : void
      {
         §&g§ = true;
         if(§=!2§)
         {
            §<g§(§8!<§.§8G§);
         }
         else
         {
            §<g§(§+e§.§8G§);
         }
      }
      
      public function §#!X§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§^e§)
         {
            ++this.§5!W§;
         }
         if(!§=!]§.§'`§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§64§)
         {
            this.§64§ = false;
         }
      }
      
      public function §0!x§() : void
      {
      }
      
      public function §,!q§() : void
      {
      }
   }
}
