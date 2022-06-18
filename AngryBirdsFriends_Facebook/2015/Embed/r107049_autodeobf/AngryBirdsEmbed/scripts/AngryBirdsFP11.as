package
{
   import §#B§.§&!9§;
   import §%q§.§'!A§;
   import §'0§.§]!2§;
   import §-!3§.§!S§;
   import §0b§.§,!D§;
   import §2>§.§%$§;
   import §2>§.§&!8§;
   import §2>§.§'!=§;
   import §2>§.§,a§;
   import §2>§.§-!5§;
   import §2>§.§0!O§;
   import §2>§.§2!<§;
   import §2>§.§9$§;
   import §2>§.§9%§;
   import §2>§.§?!1§;
   import §2>§.StateCutScene;
   import §2>§.StatePlay;
   import §2>§.§[s§;
   import §6Z§.§'?§;
   import §6h§.§3K§;
   import §6h§.§[!4§;
   import §7!§.§,L§;
   import §7=§.§9Y§;
   import §9s§.§^9§;
   import §;!'§.§=j§;
   import §=Y§.§-=§;
   import §@!;§.§!!=§;
   import §@!;§.§?>§;
   import §@!;§.§`P§;
   import §`R§.§8!1§;
   import §`R§.§8D§;
   import com.rovio.assets.§?!B§;
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
   
   public class AngryBirdsFP11 extends §8!1§
   {
      
      protected static var §<l§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §5?§:String;
      
      public static var §>!N§:String;
      
      public static const §71§:int = 1024;
      
      public static const §=6§:int = 768;
      
      public static const §78§:Boolean = false;
      
      public static const §77§:int = 2000;
      
      public static const §%V§:Boolean = false;
      
      private static const §]!-§:int = 750;
      
      private static const §&1§:int = 3;
      
      private static const §6J§:int = 15;
      
      protected static var §,W§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §-O§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §3,§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §break§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§&!9§ = null;
      
      public static var §&[§:Boolean = true;
      
      private static var §8!E§:AngryBirdsFP11 = null;
      
      public static var § c§:Sprite = null;
      
      public static var §?!0§:§3K§;
      
      public static var § ,§:Boolean = false;
      
      protected static var §8M§:int = 0;
      
      protected static var §+#§:int = 0;
       
      
      private var §5!'§:§,!D§;
      
      private var §3!7§:int;
      
      private var §@1§:Boolean;
      
      private var §9!<§:int;
      
      private var §<Q§:int;
      
      protected var §4E§:Boolean;
      
      public function AngryBirdsFP11(param1:§8D§)
      {
         this.§5!'§ = new §,!D§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §8M§;
      }
      
      public static function get stageHeight() : int
      {
         return §+#§;
      }
      
      public static function §true §(param1:Boolean) : void
      {
         §&[§ = param1;
         §]!2§.§]7§(§&[§);
      }
      
      public static function §3§() : Boolean
      {
         return §&[§;
      }
      
      public static function get screenWidth() : int
      {
         return §6C§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §6C§.getAppHeight();
      }
      
      public static function §,3§() : void
      {
         if(§]!2§.§;j§("Channel_Theme") == null || !§]!2§.§;j§("Channel_Theme").§50§())
         {
            §]!2§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §!!;§() : void
      {
         §]!2§.§<!7§("Channel_Theme");
      }
      
      public static function get §6C§() : AngryBirdsFP11
      {
         return §8!E§;
      }
      
      protected function getAssetMap() : XML
      {
         return §?>§.§+!;§(§-O§);
      }
      
      protected function getUIData() : XML
      {
         return §?>§.§+!;§(§,W§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §!S§.§5+§.init(§-=§.§-!J§(),this.§null §() || "",stage.loaderInfo.parameters.buildNumber || "",this.§5!'§,this.§?n§);
         §8!E§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §?!>§ = screenWidth;
         §^!>§ = screenHeight;
         §[!4§.init(this,screenWidth,screenHeight);
         this.initLevelMain();
         §[!4§.§>B§.visible = false;
         §!!=§.§9Z§(§7!F§);
         §!!=§.§1q§(true);
         var _loc1_:XMLList = §?>§.§+!;§(§<l§).children();
         §?!B§.init(_loc1_);
         §]!2§.§+B§("CHANNEL_THEME",1,1);
         §]!2§.§+B§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§-§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §?!0§ = new §3K§(stage);
         §'!A§.§5+§.§<"§ = !§78§;
      }
      
      protected function §null §() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         §[!4§.§continue§ = new §^9§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §&!9§(§>!N§);
      }
      
      protected function initStates() : void
      {
         §%y§(new §%$§(false));
         §%y§(new §9$§(false));
         §%y§(new §&!8§(false));
         §%y§(new §9%§(false));
         §%y§(new §0!O§(false));
         §%y§(new StatePlay(false));
         §%y§(new §?!1§(false));
         §%y§(new §-!5§(false));
         §%y§(new §[s§(false));
         §%y§(new §'!=§(false));
         §%y§(new §2!<§(false));
         §%y§(new StateCutScene(false));
         §%y§(new §,a§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §?n§(param1:ByteArray) : void
      {
      }
      
      protected function §-§(param1:Event) : void
      {
         §`P§.§2!;§();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         §`P§.§4=§();
         if(this.§@1§)
         {
            ++this.§<Q§;
            if(this.§<Q§ > §6J§)
            {
               this.§@1§ = false;
               if(this.§9!<§ < §&1§)
               {
                  this.§?K§(this.§3!7§);
               }
            }
         }
      }
      
      public function §^!D§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         this.§4E§ = true;
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §8M§;
            _loc3_ = §+#§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return false;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         if(!param1 && §8M§ == _loc2_ && §+#§ == _loc3_)
         {
            return false;
         }
         §8M§ = _loc2_;
         §+#§ = _loc3_;
         this.§<'§(§8M§,§+#§);
         return true;
      }
      
      protected function §<'§(param1:int, param2:int) : void
      {
         §[!4§.§3m§(0,0,param1,param2);
         setViewSize(param1,param2);
      }
      
      public function §`d§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§3!7§ > §]!-§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§?K§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§%!9§(_loc1_);
            }
         }
      }
      
      public function §+m§() : void
      {
         this.§?K§(0);
      }
      
      public function §"s§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §?K§(param1:int) : void
      {
         this.§4E§ = true;
         this.§3!7§ = param1;
         this.§@1§ = false;
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §%!9§(param1:int) : void
      {
         this.§4E§ = true;
         this.§3!7§ = param1;
         this.§9!<§ = 0;
         this.§<Q§ = 0;
         this.§@1§ = true;
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
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §!S§.§5+§.§3]§();
         §'?§.§,!;§(JSON.parse(this.§5!'§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§[!4§.§>B§ != null)
         {
            §[!4§.§>B§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§6!6§().isGenericState())
         {
            if(_loc2_ == §9Y§.STATE_STATUS_COMPLETED)
            {
               §!!=§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §6!6§().mName + " New State = " + §6!6§().mNextState);
               §3!K§(§6!6§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §71§;
      }
      
      override public function getAppHeight() : Number
      {
         return §=6§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §77§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §5?§;
      }
      
      protected function initializeGame() : void
      {
         §[!4§.§['§(this.getItemData(),this.getLevelBackgrounds());
         §[!4§.§+Q§(this.§5!'§.§4V§,§=j§.§"`§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §?>§.§+!;§(§break§);
      }
      
      protected function getItemData() : XML
      {
         return §?>§.§+!;§(§3,§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         § ,§ = true;
         if(§%V§)
         {
            §3!K§(§%$§.§]! §);
         }
         else
         {
            §3!K§(§&!8§.§]! §);
         }
      }
      
      public function §!!9§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§@1§)
         {
            ++this.§9!<§;
         }
         if(!§,L§.§,"§())
         {
            return;
         }
         if(this.§4E§)
         {
            this.resize();
            this.§4E§ = false;
         }
         super.onEnterFrame(param1);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
