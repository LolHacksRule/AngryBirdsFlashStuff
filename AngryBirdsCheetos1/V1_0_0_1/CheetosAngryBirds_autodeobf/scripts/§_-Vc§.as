package
{
   import §_-3-§.§_-Zm§;
   import §_-3N§.§_-Dp§;
   import §_-3f§.§_-mc§;
   import §_-LQ§.§_-Vj§;
   import §_-Py§.§_-eK§;
   import §_-QJ§.§_-Om§;
   import §_-T8§.§_-Sa§;
   import §_-U0§.§_-JP§;
   import §_-U0§.§_-M9§;
   import §_-U0§.§_-tF§;
   import §_-aE§.§_-Wg§;
   import §_-cb§.§_-0B§;
   import §_-fg§.StateConnecting;
   import §_-fg§.StateCutScene;
   import §_-fg§.StatePlay;
   import §_-fg§.§_-7o§;
   import §_-fg§.§_-Pw§;
   import §_-fg§.§_-Tx§;
   import §_-fg§.§_-V0§;
   import §_-fg§.§_-Xa§;
   import §_-fg§.§_-fi§;
   import §_-gC§.§_-XR§;
   import §_-j0§.§_-IF§;
   import §_-p5§.§_-lM§;
   import §_-uG§.§_-Eu§;
   import §_-wO§.§_-e9§;
   import §_-zE§.§_-XJ§;
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
   
   public class §_-Vc§ extends §_-Om§
   {
      
      private static var §_-HY§:Class = §_-tc§;
      
      public static const VERSION:String = "0.0.0.10";
      
      public static const §_-jC§:int = 750;
      
      public static const §_-0-3§:int = 500;
      
      public static const §_-WY§:Boolean = false;
      
      public static const §_-jO§:int = 3000;
      
      public static var §_-V3§:String = "../service/";
      
      public static var §_-RE§:String = "http://dev-1.angrybirds-cheetos.appspot.com/";
      
      public static var §_-P8§:String = "/webservices/game/";
      
      public static const §_-0i§:String = "../mail";
      
      public static var §_-Jx§:String = "initialisesession";
      
      public static var §_-uo§:String = "levelstart";
      
      public static var §_-wA§:String = "purchasepowerup";
      
      public static var §_-2s§:String = "levelcomplete";
      
      public static var §_-h6§:String = "updatespotprizewin";
      
      public static var §_-HC§:String = "refreshsession";
      
      private static var §_-fe§:Class = §_-2P§;
      
      private static var §_-4y§:Class = §_-L2§;
      
      private static var §_-Gx§:Class = §_-0y§;
      
      private static var §_-qU§:Class = §_-06§;
      
      public static var §_-3K§:§_-Wg§ = null;
      
      public static var §_-lP§:Boolean = true;
      
      public static var §_-vV§:MovieClip = null;
      
      public static var §_-qI§:§_-Vc§ = null;
      
      public static var §_-hS§:Sprite = null;
       
      
      private var §_-L4§:§_-IF§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §_-uT§:SharedObject;
      
      private var callObject:Object;
      
      public function §_-Vc§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§_-L4§ = new §_-IF§();
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §_-e9§.enabled = true;
         §_-e9§.§_-k§(§_-e9§.§_-0-w§);
         try
         {
            this.§_-uT§ = SharedObject.getLocal("popupData");
            if(this.§_-uT§)
            {
               this.§_-uT§.data.mRememberMeToggled_Credit = this.§_-rL§;
               this.§_-uT§.data.mRememberMeToggled_CreditCheetosBag = this.§_-8n§;
            }
         }
         catch(e:*)
         {
         }
         §_-gf§ = §_-jC§;
         §_-E-§ = §_-0-3§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§_-JP§.§_-t5§(§_-fe§),§_-JP§.§_-t5§(§_-4y§));
         §_-Vj§.§var §.init(§_-mc§.§_-ZI§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§_-L4§,this.§_-Ci§);
         §_-qI§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-XR§.init(this,§_-jC§,§_-0-3§);
         §_-XR§.§_-Xv§ = new §_-Eu§(stage);
         §_-XR§.§_-r4§.visible = §_-WY§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §_-V3§ = stage.loaderInfo.parameters.domain + §_-P8§;
         }
         §_-Jx§ = §_-V3§ + §_-Jx§;
         §_-uo§ = §_-V3§ + §_-uo§;
         §_-wA§ = §_-V3§ + §_-wA§;
         §_-2s§ = §_-V3§ + §_-2s§;
         §_-h6§ = §_-V3§ + §_-h6§;
         §_-HC§ = §_-V3§ + §_-HC§;
         §_-bs§(new §_-V0§(false));
         §_-bs§(new §_-Pw§(false));
         §_-bs§(new StatePlay(false));
         §_-bs§(new §_-Xa§(false));
         §_-bs§(new §_-fi§(false));
         §_-bs§(new §_-7o§(false));
         §_-bs§(new StateCutScene(false));
         §_-bs§(new §_-Tx§(false));
         §_-bs§(new StateConnecting(false));
         §_-Dp§.addCallback("refreshSession",§_-Pw§(§_-Vc§.§_-qI§.§_-Zk§(§_-Pw§.§_-bg§)).refreshSession);
         §_-tF§.§_-3g§(§_-d3§);
         §_-tF§.§_-ov§(true);
         var textData:XMLList = §_-JP§.§_-t5§(§_-HY§).children();
         §_-Zm§.init(textData);
         stage.showDefaultContextMenu = false;
         §_-sT§(true);
         §_-0B§.§_-2b§("CHANNEL_THEME",1,1);
         §_-0B§.§_-2b§("CHANNEL_AMBIENT",1,1);
         §_-3K§ = new §_-Wg§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-PA§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-N§);
         stage.addEventListener(Event.RESIZE,this.§_-i3§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-gm§);
         if(stage.stageWidth != §_-jC§ || stage.stageHeight != §_-0-3§)
         {
            this.§_-i3§(null);
         }
      }
      
      public static function §_-sT§(param1:Boolean) : void
      {
         §_-lP§ = param1;
         §_-0B§.§_-Hu§(§_-lP§);
      }
      
      public static function §_-0K§() : Boolean
      {
         return §_-lP§;
      }
      
      public static function §_-Df§() : void
      {
         if(§_-0B§.§_-dO§("Channel_Theme") == null || !§_-0B§.§_-dO§("Channel_Theme").§_-5k§())
         {
            §_-0B§.playSound("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-gi§() : void
      {
         if(§_-0B§.§_-dO§("Channel_Theme"))
         {
            §_-0B§.§_-dO§("Channel_Theme").§_-ws§();
         }
      }
      
      public function get §_-rL§() : Boolean
      {
         if(this.§_-uT§)
         {
            return this.§_-uT§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §_-rL§(param1:Boolean) : void
      {
         if(this.§_-uT§)
         {
            this.§_-uT§.data.mRememberMeToggled_Credit = param1;
            this.§_-uT§.flush();
         }
      }
      
      public function get §_-8n§() : Boolean
      {
         if(this.§_-uT§)
         {
            return this.§_-uT§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §_-8n§(param1:Boolean) : void
      {
         if(this.§_-uT§)
         {
            this.§_-uT§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§_-uT§.flush();
         }
      }
      
      protected function §_-Ci§(param1:ByteArray) : void
      {
      }
      
      private function §_-PA§(param1:Event) : void
      {
         if(§_-XR§ != null && §_-XR§.§_-Xv§.slingshot != null && §_-XR§.§_-Xv§.slingshot.mDragging)
         {
            §_-XR§.§_-Xv§.slingshot.cancelDragging();
         }
         §_-M9§.§_-4C§();
      }
      
      private function §_-N§(param1:MouseEvent) : void
      {
         §_-M9§.§_-OJ§();
      }
      
      private function §_-i3§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §_-jC§;
         var _loc3_:Number = stage.stageHeight / §_-0-3§;
         if(_loc2_ < _loc3_)
         {
            §_-d3§.scaleX = §_-d3§.scaleY = _loc2_;
            §_-XR§.§_-8G§(§_-d3§.x,§_-d3§.y,stage.stageWidth,stage.stageWidth * (§_-0-3§ / §_-jC§));
         }
         else
         {
            §_-d3§.scaleX = §_-d3§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§_-jC§ / §_-0-3§);
            _loc5_ = stage.stageHeight;
            §_-XR§.§_-8G§(§_-d3§.x,§_-d3§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-gm§(param1:FullScreenEvent) : void
      {
         this.§_-i3§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-Vj§.§var §.§_-NN§();
         §_-Sa§.§_-Lk§(§_-XJ§.§_-NV§(this.§_-L4§.getFileAsString("Chapters.json")));
         this.§_-Ch§();
         try
         {
            §_-Dp§.§_-JB§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-Ch§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-e9§.§_-k§(§_-e9§.§_-kh§,_loc1_.toString(),_loc1_);
         §_-XR§.§_-54§(§_-JP§.§_-t5§(§_-Gx§),§_-JP§.§_-t5§(§_-qU§));
         §_-XR§.§_-qr§(this.§_-L4§.§_-xf§,§_-lM§.§_-CQ§(),this.§_-dh§);
      }
      
      private function §_-dh§(param1:Event) : void
      {
         §_-gp§(StateConnecting.§_-bg§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-XR§.§_-r4§ != null)
         {
            §_-XR§.§_-r4§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-Ki§().isGenericState())
         {
            if(_loc2_ == §_-eK§.STATE_STATUS_COMPLETED)
            {
               §_-tF§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-Ki§().mName + " New State = " + §_-Ki§().mNextState);
               §_-gp§(§_-Ki§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-jC§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-0-3§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-jO§;
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
      
      public function §_-wM§() : void
      {
         var _loc1_:§_-eK§ = §_-Ki§();
         if(_loc1_.mName == StateConnecting.§_-bg§)
         {
            §_-gp§(StateConnecting.§_-bg§);
         }
      }
   }
}
