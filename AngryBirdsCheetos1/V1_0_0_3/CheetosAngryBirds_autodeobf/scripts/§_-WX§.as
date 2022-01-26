package
{
   import §_-23§.§_-oZ§;
   import §_-2B§.§_-rD§;
   import §_-5b§.§_-Mm§;
   import §_-6m§.§_-RB§;
   import §_-9a§.§_-IU§;
   import §_-Aq§.§_-TN§;
   import §_-DH§.§_-KR§;
   import §_-E5§.§_-Wo§;
   import §_-EH§.§_-uz§;
   import §_-IO§.§_-zS§;
   import §_-Is§.§_-3Q§;
   import §_-TX§.§_-0X§;
   import §_-X4§.§_-rI§;
   import §_-Xz§.StateConnecting;
   import §_-Xz§.StateCutScene;
   import §_-Xz§.StatePlay;
   import §_-Xz§.§_-0N§;
   import §_-Xz§.§_-Jx§;
   import §_-Xz§.§_-SA§;
   import §_-Xz§.§_-VB§;
   import §_-Xz§.§_-cB§;
   import §_-Xz§.§_-xD§;
   import §_-aD§.§_-OS§;
   import §_-eZ§.§_-k0§;
   import §_-r6§.§_-Oy§;
   import §_-r6§.§_-YF§;
   import §_-r6§.§_-oy§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §_-WX§ extends §_-IU§
   {
      
      private static var §_-jc§:Class = §_-IH§;
      
      public static const VERSION:String = "0.0.0.10";
      
      public static const §_-I0§:int = 750;
      
      public static const §_-ZV§:int = 500;
      
      public static const §_-DB§:Boolean = false;
      
      public static const §_-Kc§:int = 3000;
      
      public static var §_-lU§:String = "../service/";
      
      public static var §_-Js§:String = "http://dev-1.angrybirds-cheetos.appspot.com/";
      
      public static var §_-8d§:String = "/webservices/game/";
      
      public static const §_-ne§:String = "../mail";
      
      public static var §_-3p§:String = "initialisesession";
      
      public static var §_-Sl§:String = "levelstart";
      
      public static var §_-x4§:String = "purchasepowerup";
      
      public static var §_-nQ§:String = "levelcomplete";
      
      public static var §_-Mr§:String = "updatespotprizewin";
      
      public static var §_-B3§:String = "refreshsession";
      
      private static var §_-X5§:Class = §_-fA§;
      
      private static var §_-q7§:Class = §_-4B§;
      
      private static var §_-3q§:Class = §_-2N§;
      
      private static var §_-K9§:Class = §_-rx§;
      
      public static var §_-ZR§:§_-k0§ = null;
      
      public static var §_-4l§:Boolean = true;
      
      public static var §_-ph§:MovieClip = null;
      
      public static var §_-nw§:§_-WX§ = null;
      
      public static var §_-bi§:Sprite = null;
       
      
      private var §_-9b§:§_-RB§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §_-mR§:SharedObject;
      
      private var callObject:Object;
      
      public function §_-WX§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§_-9b§ = new §_-RB§();
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §_-OS§.enabled = true;
         §_-OS§.§_-0-7§(§_-OS§.§_-AV§);
         try
         {
            this.§_-mR§ = SharedObject.getLocal("popupData");
            if(this.§_-mR§)
            {
               this.§_-mR§.data.mRememberMeToggled_Credit = this.§_-gf§;
               this.§_-mR§.data.mRememberMeToggled_CreditCheetosBag = this.§_-51§;
            }
         }
         catch(e:*)
         {
         }
         §_-Si§ = §_-I0§;
         §_-Y0§ = §_-ZV§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§_-YF§.§_-0-I§(§_-X5§),§_-YF§.§_-0-I§(§_-q7§));
         §_-oZ§.§_-yU§.init(§_-zS§.§_-Jv§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§_-9b§,this.§_-jX§);
         §_-nw§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-0X§.init(this,§_-I0§,§_-ZV§);
         §_-0X§.§_-O2§ = new §_-TN§(stage);
         §_-0X§.§_-BV§.visible = §_-DB§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §_-lU§ = stage.loaderInfo.parameters.domain + §_-8d§;
         }
         §_-3p§ = §_-lU§ + §_-3p§;
         §_-Sl§ = §_-lU§ + §_-Sl§;
         §_-x4§ = §_-lU§ + §_-x4§;
         §_-nQ§ = §_-lU§ + §_-nQ§;
         §_-Mr§ = §_-lU§ + §_-Mr§;
         §_-B3§ = §_-lU§ + §_-B3§;
         §_-ia§(new §_-SA§(false));
         §_-ia§(new §_-0N§(false));
         §_-ia§(new StatePlay(false));
         §_-ia§(new §_-Jx§(false));
         §_-ia§(new §_-cB§(false));
         §_-ia§(new §_-VB§(false));
         §_-ia§(new StateCutScene(false));
         §_-ia§(new §_-xD§(false));
         §_-ia§(new StateConnecting(false));
         §_-3Q§.addCallback("refreshSession",§_-0N§(§_-WX§.§_-nw§.§_-PL§(§_-0N§.§_-3o§)).refreshSession);
         §_-Oy§.§_-0-B§(§_-93§);
         §_-Oy§.§_-b0§(true);
         var textData:XMLList = §_-YF§.§_-0-I§(§_-jc§).children();
         §_-rD§.init(textData);
         stage.showDefaultContextMenu = false;
         §_-tJ§(true);
         §_-Wo§.§_-FT§("CHANNEL_THEME",1,1);
         §_-Wo§.§_-FT§("CHANNEL_AMBIENT",1,1);
         §_-ZR§ = new §_-k0§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-X1§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-5O§);
         stage.addEventListener(Event.RESIZE,this.§_-cx§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-cW§);
         if(stage.stageWidth != §_-I0§ || stage.stageHeight != §_-ZV§)
         {
            this.§_-cx§(null);
         }
      }
      
      public static function §_-tJ§(param1:Boolean) : void
      {
         §_-4l§ = param1;
         §_-Wo§.§_-VE§(§_-4l§);
      }
      
      public static function §_-L6§() : Boolean
      {
         return §_-4l§;
      }
      
      public static function §_-Jn§() : void
      {
         if(§_-Wo§.§_-XO§("Channel_Theme") == null || !§_-Wo§.§_-XO§("Channel_Theme").§_-Ll§())
         {
            §_-Wo§.playSound("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-9U§() : void
      {
         if(§_-Wo§.§_-XO§("Channel_Theme"))
         {
            §_-Wo§.§_-XO§("Channel_Theme").§_-EQ§();
         }
      }
      
      public function get §_-gf§() : Boolean
      {
         if(this.§_-mR§)
         {
            return this.§_-mR§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §_-gf§(param1:Boolean) : void
      {
         if(this.§_-mR§)
         {
            this.§_-mR§.data.mRememberMeToggled_Credit = param1;
            this.§_-mR§.flush();
         }
      }
      
      public function get §_-51§() : Boolean
      {
         if(this.§_-mR§)
         {
            return this.§_-mR§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §_-51§(param1:Boolean) : void
      {
         if(this.§_-mR§)
         {
            this.§_-mR§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§_-mR§.flush();
         }
      }
      
      protected function §_-jX§(param1:ByteArray) : void
      {
      }
      
      private function §_-X1§(param1:Event) : void
      {
         if(§_-0X§ != null && §_-0X§.§_-O2§.slingshot != null && §_-0X§.§_-O2§.slingshot.mDragging)
         {
            §_-0X§.§_-O2§.slingshot.cancelDragging();
         }
         §_-oy§.§_-rR§();
      }
      
      private function §_-5O§(param1:MouseEvent) : void
      {
         §_-oy§.§_-UM§();
      }
      
      private function §_-cx§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §_-I0§;
         var _loc3_:Number = stage.stageHeight / §_-ZV§;
         if(_loc2_ < _loc3_)
         {
            §_-93§.scaleX = §_-93§.scaleY = _loc2_;
            §_-0X§.§_-Uz§(§_-93§.x,§_-93§.y,stage.stageWidth,stage.stageWidth * (§_-ZV§ / §_-I0§));
         }
         else
         {
            §_-93§.scaleX = §_-93§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§_-I0§ / §_-ZV§);
            _loc5_ = stage.stageHeight;
            §_-0X§.§_-Uz§(§_-93§.x,§_-93§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-cW§(param1:FullScreenEvent) : void
      {
         this.§_-cx§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-oZ§.§_-yU§.§_-og§();
         §_-Mm§.§_-Il§(§_-KR§.§_-8B§(this.§_-9b§.getFileAsString("Chapters.json")));
         this.§_-G9§();
         try
         {
            §_-3Q§.§_-st§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-G9§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-OS§.§_-0-7§(§_-OS§.§_-1j§,_loc1_.toString(),_loc1_);
         §_-0X§.§_-9u§(§_-YF§.§_-0-I§(§_-3q§),§_-YF§.§_-0-I§(§_-K9§));
         §_-0X§.§_-qs§(this.§_-9b§.§_-xw§,§_-rI§.§_-3§(),this.§_-YA§);
      }
      
      private function §_-YA§(param1:Event) : void
      {
         §_-va§(StateConnecting.§_-3o§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-0X§.§_-BV§ != null)
         {
            §_-0X§.§_-BV§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-vm§().isGenericState())
         {
            if(_loc2_ == §_-uz§.STATE_STATUS_COMPLETED)
            {
               §_-Oy§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-vm§().mName + " New State = " + §_-vm§().mNextState);
               §_-va§(§_-vm§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-I0§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-ZV§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-Kc§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         if(stage != null)
         {
            _loc1_ = stage.loaderInfo.parameters.buildNumber;
            if(_loc1_ != null && _loc1_.length > 0)
            {
               _loc2_ = _loc1_.indexOf(".");
               if(_loc2_ > 0)
               {
                  _loc1_ = _loc1_.substr(0,_loc2_);
               }
               while(_loc1_.search("-") != -1)
               {
                  _loc1_ = _loc1_.replace("-",".");
               }
               return _loc1_;
            }
         }
         return VERSION.replace("{svn_version}","local dev build");
      }
      
      public function §_-cz§() : void
      {
         var _loc1_:§_-uz§ = §_-vm§();
         if(_loc1_.mName == StateConnecting.§_-3o§)
         {
            §_-va§(StateConnecting.§_-3o§);
         }
      }
   }
}
