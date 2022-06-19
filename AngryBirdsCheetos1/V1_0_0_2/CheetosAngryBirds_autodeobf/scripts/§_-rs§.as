package
{
   import §_-94§.§_-si§;
   import §_-Bi§.§_-p0§;
   import §_-Eq§.§_-DG§;
   import §_-M6§.§_-Qg§;
   import §_-MP§.§_-N5§;
   import §_-Me§.§_-3A§;
   import §_-TV§.§_-gb§;
   import §_-VH§.§_-X6§;
   import §_-Vr§.§_-HN§;
   import §_-aA§.§_-HE§;
   import §_-aA§.§_-I0§;
   import §_-aA§.§_-i7§;
   import §_-dd§.§_-k2§;
   import §_-fp§.§_-W9§;
   import §_-ob§.StateConnecting;
   import §_-ob§.StateCutScene;
   import §_-ob§.StatePlay;
   import §_-ob§.§_-0-n§;
   import §_-ob§.§_-4Z§;
   import §_-ob§.§_-7g§;
   import §_-ob§.§_-ZF§;
   import §_-ob§.§_-p6§;
   import §_-ob§.§_-qP§;
   import §_-r8§.§_-00D§;
   import §_-re§.static;
   import §_-rt§.§_-nm§;
   import §_-sj§.§_-qs§;
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
   
   public class §_-rs§ extends §_-00D§
   {
      
      private static var §_-ni§:Class = §_-9R§;
      
      public static const VERSION:String = "0.0.0.10";
      
      public static const §_-dI§:int = 750;
      
      public static const §_-0R§:int = 500;
      
      public static const §_-bg§:Boolean = false;
      
      public static const §_-zM§:int = 3000;
      
      public static var §_-kP§:String = "../service/";
      
      public static var §_-KV§:String = "http://dev-1.angrybirds-cheetos.appspot.com/";
      
      public static var §_-i6§:String = "/webservices/game/";
      
      public static const §_-QZ§:String = "../mail";
      
      public static var §_-tY§:String = "initialisesession";
      
      public static var §_-vl§:String = "levelstart";
      
      public static var §_-g§:String = "purchasepowerup";
      
      public static var §_-ED§:String = "levelcomplete";
      
      public static var §_-7S§:String = "updatespotprizewin";
      
      public static var §_-Yi§:String = "refreshsession";
      
      private static var §_-xX§:Class = §_-Bc§;
      
      private static var §_-Ub§:Class = §_-gO§;
      
      private static var §_-K0§:Class = §_-V7§;
      
      private static var §_-Y-§:Class = §_-aV§;
      
      public static var §_-Nr§:static = null;
      
      public static var §_-0§:Boolean = true;
      
      public static var §_-1§:MovieClip = null;
      
      public static var §_-hd§:§_-rs§ = null;
      
      public static var §_-RY§:Sprite = null;
       
      
      private var §_-mc§:§_-k2§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §_-g0§:SharedObject;
      
      private var callObject:Object;
      
      public function §_-rs§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§_-mc§ = new §_-k2§();
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §_-3A§.enabled = true;
         §_-3A§.§_-me§(§_-3A§.§_-2E§);
         try
         {
            this.§_-g0§ = SharedObject.getLocal("popupData");
            if(this.§_-g0§)
            {
               this.§_-g0§.data.mRememberMeToggled_Credit = this.§_-2D§;
               this.§_-g0§.data.mRememberMeToggled_CreditCheetosBag = this.§_-ZI§;
            }
         }
         catch(e:*)
         {
         }
         §_-je§ = §_-dI§;
         §_-pd§ = §_-0R§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§_-i7§.§_-Yj§(§_-xX§),§_-i7§.§_-Yj§(§_-Ub§));
         §_-HN§.§_-0H§.init(§_-p0§.§_-zI§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§_-mc§,this.§_-Qy§);
         §_-hd§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-si§.init(this,§_-dI§,§_-0R§);
         §_-si§.§_-HI§ = new §_-W9§(stage);
         §_-si§.§_-6N§.visible = §_-bg§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §_-kP§ = stage.loaderInfo.parameters.domain + §_-i6§;
         }
         §_-tY§ = §_-kP§ + §_-tY§;
         §_-vl§ = §_-kP§ + §_-vl§;
         §_-g§ = §_-kP§ + §_-g§;
         §_-ED§ = §_-kP§ + §_-ED§;
         §_-7S§ = §_-kP§ + §_-7S§;
         §_-Yi§ = §_-kP§ + §_-Yi§;
         §_-Kg§(new §_-0-n§(false));
         §_-Kg§(new §_-qP§(false));
         §_-Kg§(new StatePlay(false));
         §_-Kg§(new §_-ZF§(false));
         §_-Kg§(new §_-7g§(false));
         §_-Kg§(new §_-4Z§(false));
         §_-Kg§(new StateCutScene(false));
         §_-Kg§(new §_-p6§(false));
         §_-Kg§(new StateConnecting(false));
         §_-Qg§.addCallback("refreshSession",§_-qP§(§_-rs§.§_-hd§.§_-Nf§(§_-qP§.§_-jn§)).refreshSession);
         §_-I0§.§_-Ru§(§_-bk§);
         §_-I0§.§_-gr§(true);
         var textData:XMLList = §_-i7§.§_-Yj§(§_-ni§).children();
         §_-DG§.init(textData);
         stage.showDefaultContextMenu = false;
         §_-xt§(true);
         §_-X6§.§_-mq§("CHANNEL_THEME",1,1);
         §_-X6§.§_-mq§("CHANNEL_AMBIENT",1,1);
         §_-Nr§ = new static("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-7s§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-8b§);
         stage.addEventListener(Event.RESIZE,this.§_-p8§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-DV§);
         if(stage.stageWidth != §_-dI§ || stage.stageHeight != §_-0R§)
         {
            this.§_-p8§(null);
         }
      }
      
      public static function §_-xt§(param1:Boolean) : void
      {
         §_-0§ = param1;
         §_-X6§.§_-Xv§(§_-0§);
      }
      
      public static function §_-rQ§() : Boolean
      {
         return §_-0§;
      }
      
      public static function §_-Q3§() : void
      {
         if(§_-X6§.§_-c9§("Channel_Theme") == null || !§_-X6§.§_-c9§("Channel_Theme").§_-96§())
         {
            §_-X6§.playSound("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-Q0§() : void
      {
         if(§_-X6§.§_-c9§("Channel_Theme"))
         {
            §_-X6§.§_-c9§("Channel_Theme").§_-bm§();
         }
      }
      
      public function get §_-2D§() : Boolean
      {
         if(this.§_-g0§)
         {
            return this.§_-g0§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §_-2D§(param1:Boolean) : void
      {
         if(this.§_-g0§)
         {
            this.§_-g0§.data.mRememberMeToggled_Credit = param1;
            this.§_-g0§.flush();
         }
      }
      
      public function get §_-ZI§() : Boolean
      {
         if(this.§_-g0§)
         {
            return this.§_-g0§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §_-ZI§(param1:Boolean) : void
      {
         if(this.§_-g0§)
         {
            this.§_-g0§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§_-g0§.flush();
         }
      }
      
      protected function §_-Qy§(param1:ByteArray) : void
      {
      }
      
      private function §_-7s§(param1:Event) : void
      {
         if(§_-si§ != null && §_-si§.§_-HI§.slingshot != null && §_-si§.§_-HI§.slingshot.mDragging)
         {
            §_-si§.§_-HI§.slingshot.cancelDragging();
         }
         §_-HE§.§_-bq§();
      }
      
      private function §_-8b§(param1:MouseEvent) : void
      {
         §_-HE§.§_-LR§();
      }
      
      private function §_-p8§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §_-dI§;
         var _loc3_:Number = stage.stageHeight / §_-0R§;
         if(_loc2_ < _loc3_)
         {
            §_-bk§.scaleX = §_-bk§.scaleY = _loc2_;
            §_-si§.§_-6W§(§_-bk§.x,§_-bk§.y,stage.stageWidth,stage.stageWidth * (§_-0R§ / §_-dI§));
         }
         else
         {
            §_-bk§.scaleX = §_-bk§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§_-dI§ / §_-0R§);
            _loc5_ = stage.stageHeight;
            §_-si§.§_-6W§(§_-bk§.x,§_-bk§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-DV§(param1:FullScreenEvent) : void
      {
         this.§_-p8§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-HN§.§_-0H§.§set §();
         §_-N5§.§_-1u§(§_-nm§.§_-UM§(this.§_-mc§.getFileAsString("Chapters.json")));
         this.§_-47§();
         try
         {
            §_-Qg§.§_-No§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-47§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-3A§.§_-me§(§_-3A§.§_-cK§,_loc1_.toString(),_loc1_);
         §_-si§.§_-MD§(§_-i7§.§_-Yj§(§_-K0§),§_-i7§.§_-Yj§(§_-Y-§));
         §_-si§.§_-rX§(this.§_-mc§.§_-nx§,§_-gb§.§_-Q9§(),this.§_-68§);
      }
      
      private function §_-68§(param1:Event) : void
      {
         §_-MV§(StateConnecting.§_-jn§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-si§.§_-6N§ != null)
         {
            §_-si§.§_-6N§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-kl§().isGenericState())
         {
            if(_loc2_ == §_-qs§.STATE_STATUS_COMPLETED)
            {
               §_-I0§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-kl§().mName + " New State = " + §_-kl§().mNextState);
               §_-MV§(§_-kl§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-dI§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-0R§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-zM§;
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
      
      public function §_-wH§() : void
      {
         var _loc1_:§_-qs§ = §_-kl§();
         if(_loc1_.mName == StateConnecting.§_-jn§)
         {
            §_-MV§(StateConnecting.§_-jn§);
         }
      }
   }
}
