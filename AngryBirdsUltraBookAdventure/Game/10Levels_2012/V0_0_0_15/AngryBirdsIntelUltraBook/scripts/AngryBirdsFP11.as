package
{
   import §_-0AB§.§_-cx§;
   import §_-0BH§.§_-FK§;
   import §_-0BH§.§_-Hy§;
   import §_-0BH§.§_-ZE§;
   import §_-0DG§.§_-09t§;
   import §_-0Ea§.§_-AY§;
   import §_-4g§.§_-pX§;
   import §_-Ga§.LevelManager;
   import §_-Hb§.§_-ok§;
   import §_-TG§.§_-00u§;
   import §_-aC§.§_-ML§;
   import §_-ad§.StateCutScene;
   import §_-ad§.StatePlay;
   import §_-ad§.§_-00w§;
   import §_-ad§.§_-05N§;
   import §_-ad§.§_-07g§;
   import §_-ad§.§_-08C§;
   import §_-ad§.§_-08x§;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-MG§;
   import §_-ad§.§_-Rp§;
   import §_-ad§.§_-UO§;
   import §_-ad§.§_-iz§;
   import §_-ad§.§_-rF§;
   import §_-dX§.§_-03L§;
   import §_-jn§.§_-G2§;
   import §_-jn§.§_-hS§;
   import §_-qO§.§ in§;
   import §_-qO§.§_-T0§;
   import §_-ry§.§_-00s§;
   import §_-x8§.§_-nG§;
   import com.rovio.assets.§_-0BK§;
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
   
   public class AngryBirdsFP11 extends §_-G2§
   {
      
      protected static var §_-0BW§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §_-3T§:String;
      
      public static var §_-08Q§:String;
      
      public static const §_-W8§:int = 1024;
      
      public static const §_-Kj§:int = 768;
      
      public static const §_-LI§:Boolean = false;
      
      public static const §_-4s§:int = 2000;
      
      public static const §_-0EL§:Boolean = false;
      
      private static const §_-GL§:int = 750;
      
      private static const §_-OW§:int = 3;
      
      private static const §_-B1§:int = 15;
      
      protected static var §_-zc§:Class = AngryBirdsFP11_mViewLibraryBin;
      
      protected static var §_-X7§:Class = AngryBirdsFP11_mAssetMapBin;
      
      protected static var §_-vt§:Class = AngryBirdsFP11_mItemDataTableBin;
      
      protected static var §_-xP§:Class = AngryBirdsFP11_mLevelBackgroundsTableBin;
      
      public static var sUserProgress:§_-00s§ = null;
      
      public static var §_-gR§:Boolean = true;
      
      private static var §_-rY§:AngryBirdsFP11 = null;
      
      public static var §_-SK§:Sprite = null;
      
      public static var §_-Z§:§_-T0§;
      
      public static var §_-pL§:Boolean = false;
      
      protected static var §_-pO§:int = 0;
      
      protected static var §_-02I§:int = 0;
       
      
      private var §_-SF§:§_-ML§;
      
      private var §_-lD§:int;
      
      private var §_-04g§:Boolean;
      
      private var §_-ao§:int;
      
      private var §_-By§:int;
      
      protected var §_-aR§:Boolean;
      
      public function AngryBirdsFP11(param1:§_-hS§)
      {
         this.§_-SF§ = new §_-ML§();
         super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
         this.initialize();
         this.initStates();
         if(stage.stageWidth != §_-Uj§ || stage.stageHeight != §_-06d§)
         {
            this.onStageResize(null);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §_-pO§;
      }
      
      public static function get stageHeight() : int
      {
         return §_-02I§;
      }
      
      public static function §_-mv§(param1:Boolean) : void
      {
         §_-gR§ = param1;
         §_-pX§.§_-bg§(§_-gR§);
      }
      
      public static function §_-Lz§() : Boolean
      {
         return §_-gR§;
      }
      
      public static function get §_-Uj§() : int
      {
         return §_-07§.getAppWidth();
      }
      
      public static function get §_-06d§() : int
      {
         return §_-07§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         if(§_-pX§.§_-BM§("Channel_Theme") == null || !§_-pX§.§_-BM§("Channel_Theme").§_-3t§())
         {
            §_-pX§.playSound("ThemeMusic","Channel_Theme",999);
         }
      }
      
      public static function §_-8§() : void
      {
         §_-pX§.§_-0B7§("Channel_Theme");
      }
      
      public static function get §_-07§() : AngryBirdsFP11
      {
         return §_-rY§;
      }
      
      protected function getAssetMap() : XML
      {
         return §_-ZE§.§_-ve§(§_-X7§);
      }
      
      protected function getUIData() : XML
      {
         return §_-ZE§.§_-ve§(§_-zc§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         §_-03L§.§_-3S§.init(§_-ok§.§_-Ji§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§_-SF§,this.§_-fH§);
         §_-rY§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-Jg§ = §_-Uj§;
         §_-4a§ = §_-06d§;
         § in§.init(this,§_-Uj§,§_-06d§);
         this.initLevelMain();
         § in§.§_-Cv§.visible = false;
         §_-FK§.§_-ey§(§_-t8§);
         §_-FK§.§_-Ia§(true);
         var _loc1_:XMLList = §_-ZE§.§_-ve§(§_-0BW§).children();
         §_-0BK§.init(_loc1_);
         §_-pX§.§_-UJ§("CHANNEL_THEME",1,1);
         §_-pX§.§_-UJ§("CHANNEL_AMBIENT",1,1);
         this.initUserProgress();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-06h§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-0AC§);
         stage.addEventListener(Event.RESIZE,this.onStageResize);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         §_-Z§ = new §_-T0§(stage);
         §_-cx§.§_-3S§.§_-JH§ = !§_-LI§;
      }
      
      protected function initLevelMain() : void
      {
         § in§.§_-Dc§ = new §_-00u§(stage);
      }
      
      protected function initUserProgress() : void
      {
         sUserProgress = new §_-00s§(§_-08Q§);
      }
      
      protected function initStates() : void
      {
         §_-pP§(new §_-00w§(false));
         §_-pP§(new §_-MG§(false));
         §_-pP§(new §_-05N§(false));
         §_-pP§(new §_-Rp§(false));
         §_-pP§(new §_-UO§(false));
         §_-pP§(new StatePlay(false));
         §_-pP§(new §_-08C§(false));
         §_-pP§(new §_-08x§(false));
         §_-pP§(new §_-iz§(false));
         §_-pP§(new §_-rF§(false));
         §_-pP§(new §_-07g§(false));
         §_-pP§(new StateCutScene(false));
         §_-pP§(new §_-7A§(false));
         if(stage.stageWidth != §_-Uj§ || stage.stageHeight != §_-06d§)
         {
            this.onStageResize(null);
         }
      }
      
      protected function §_-fH§(param1:ByteArray) : void
      {
      }
      
      protected function §_-06h§(param1:Event) : void
      {
         §_-Hy§.§_-ih§();
      }
      
      protected function §_-0AC§(param1:MouseEvent) : void
      {
         §_-Hy§.§_-03u§();
         if(this.§_-04g§)
         {
            ++this.§_-By§;
            if(this.§_-By§ > §_-B1§)
            {
               this.§_-04g§ = false;
               if(this.§_-ao§ < §_-OW§)
               {
                  this.§_-0B3§(this.§_-lD§);
               }
            }
         }
      }
      
      public function §_-PO§() : void
      {
         this.onStageResize(null);
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§_-aR§)
         {
            return;
         }
         if(stage.stageWidth < 2 || stage.stageHeight < 2)
         {
            return;
         }
         var _loc2_:Number = stage.stageWidth / §_-Uj§;
         var _loc3_:Number = stage.stageHeight / §_-06d§;
         if(_loc2_ < _loc3_)
         {
            _loc4_ = stage.stageWidth;
            _loc5_ = stage.stageWidth * (§_-06d§ / §_-Uj§);
         }
         else
         {
            _loc4_ = stage.stageHeight * (§_-Uj§ / §_-06d§);
            _loc5_ = stage.stageHeight;
         }
         § in§.§_-82§(0,0,stage.stageWidth,stage.stageHeight);
         setViewSize(stage.stageWidth,stage.stageHeight);
         §_-pO§ = stage.stageWidth;
         §_-02I§ = stage.stageHeight;
      }
      
      public function §_-0De§() : void
      {
         var _loc1_:int = getTimer();
         if(_loc1_ - this.§_-lD§ > §_-GL§)
         {
            if(stage.displayState == StageDisplayState.FULL_SCREEN)
            {
               this.§_-0B3§(_loc1_);
            }
            else if(stage.displayState == StageDisplayState.NORMAL)
            {
               this.§_-9e§(_loc1_);
            }
         }
      }
      
      public function §_-DE§() : void
      {
         this.§_-0B3§(0);
      }
      
      public function §_-Mh§() : Boolean
      {
         if(stage)
         {
            return stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return false;
      }
      
      private function §_-0B3§(param1:int) : void
      {
         this.§_-aR§ = true;
         stage.displayState = StageDisplayState.NORMAL;
         this.§_-lD§ = param1;
         this.§_-04g§ = false;
      }
      
      private function §_-9e§(param1:int) : void
      {
         this.§_-aR§ = true;
         stage.displayState = StageDisplayState.FULL_SCREEN;
         this.§_-lD§ = param1;
         this.§_-ao§ = 0;
         this.§_-By§ = 0;
         this.§_-04g§ = true;
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
         §_-03L§.§_-3S§.§_-qu§();
         LevelManager.§_-Vk§(JSON.parse(this.§_-SF§.getFileAsString("Chapters.json")));
         this.initializeGame();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§ in§.§_-Cv§ != null)
         {
            § in§.§_-Cv§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-053§().isGenericState())
         {
            if(_loc2_ == §_-nG§.STATE_STATUS_COMPLETED)
            {
               §_-FK§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-053§().mName + " New State = " + §_-053§().mNextState);
               §_-Sk§(§_-053§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-W8§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-Kj§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-4s§;
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + VERSION.replace("{svn_version}","local dev build") + ", " + "Server: " + §_-3T§;
      }
      
      protected function initializeGame() : void
      {
         § in§.§_-0-C§(this.getItemData(),this.getLevelBackgrounds());
         § in§.§_-041§(this.§_-SF§.§_-07S§,§_-09t§.§_-19§(),this.onGraphicsInitialized);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §_-ZE§.§_-ve§(§_-xP§);
      }
      
      protected function getItemData() : XML
      {
         return §_-ZE§.§_-ve§(§_-vt§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         §_-pL§ = true;
         if(§_-0EL§)
         {
            §_-Sk§(§_-00w§.§_-pk§);
         }
         else
         {
            §_-Sk§(§_-05N§.§_-pk§);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§_-04g§)
         {
            ++this.§_-ao§;
         }
         if(!§_-AY§.§_-Ow§())
         {
            return;
         }
         super.onEnterFrame(param1);
         if(this.§_-aR§)
         {
            this.§_-aR§ = false;
         }
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
