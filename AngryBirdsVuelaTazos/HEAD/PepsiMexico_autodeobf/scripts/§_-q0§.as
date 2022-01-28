package
{
   import §_-2F§.§_-B4§;
   import §_-4K§.§_-Av§;
   import §_-7x§.§_-4O§;
   import §_-9k§.§_-Cn§;
   import §_-9q§.§_-K-§;
   import §_-Ah§.§_-uT§;
   import §_-Di§.§_-ix§;
   import §_-QG§.§_-t6§;
   import §_-RV§.StateCutScene;
   import §_-RV§.StatePlay;
   import §_-RV§.§_-8Y§;
   import §_-RV§.§_-Go§;
   import §_-RV§.§_-Py§;
   import §_-RV§.§_-Ue§;
   import §_-RV§.§_-V9§;
   import §_-RV§.§_-Vq§;
   import §_-RV§.§_-jc§;
   import §_-RV§.§_-p§;
   import §_-RV§.§_-pU§;
   import §_-RV§.§_-yZ§;
   import §_-Rm§.§_-tv§;
   import §_-gM§.§_-NE§;
   import §_-gM§.§_-oq§;
   import §_-gM§.§_-yj§;
   import §_-pm§.§_-gb§;
   import §_-s-§.§_-hQ§;
   import §_-sB§.§_-BZ§;
   import §_-sO§.§_-a3§;
   import §_-wM§.§_-9a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §_-q0§ extends §_-a3§
   {
      
      private static var §_-bg§:Class = §_-Jh§;
      
      public static const VERSION:String = "1.0.0.14";
      
      public static var § null§:int = 760;
      
      public static var §_-aD§:int = 570;
      
      public static const §_-sS§:Boolean = false;
      
      public static const §_-kq§:int = 3000;
      
      public static const §_-Fa§:String = "../service";
      
      public static const §_-ho§:String = "../mail";
      
      private static var §_-Fk§:Class = §_-9E§;
      
      private static var §_-Ae§:Class = §_-5b§;
      
      private static var §_-LX§:Class = §_-9e§;
      
      private static var § for§:Class = §var§;
      
      private static var §_-F9§:Class = §_-tP§;
      
      public static var §_-AI§:§_-K-§ = null;
      
      public static var §_-Z7§:Boolean = true;
      
      public static var §use§:MovieClip = null;
      
      public static var §_-QM§:§_-q0§ = null;
      
      public static var §_-9p§:Sprite = null;
       
      
      private var §_-oj§:§_-uT§;
      
      public function §_-q0§(param1:CustomAngryBirdsCanvas)
      {
         this.§_-oj§ = new §_-uT§();
         Security.allowDomain("http://angrybirds-pepsicomx.appspot.com");
         §_-B4§.enabled = true;
         §_-B4§.§_-du§(§_-B4§.§_-os§);
         §_-DL§ = § null§;
         §_-s§ = §_-aD§;
         var _loc2_:Sprite = new §_-LX§();
         super(param1,_loc2_,§_-NE§.§_-wH§(§_-Fk§),§_-NE§.§_-wH§(§_-Ae§));
         §_-BZ§.init(§_-9a§.§_-sJ§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§_-oj§,this.§_-HU§);
         §_-QM§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-gb§.init(this,§ null§,§_-aD§);
         §_-gb§.§_-ls§ = new §_-ix§(stage);
         §_-gb§.§_-Rn§.visible = §_-sS§;
         §_-dK§(new §_-pU§(false));
         §_-dK§(new §_-p§(false));
         §_-dK§(new §_-Py§(false));
         §_-dK§(new §_-V9§(false));
         §_-dK§(new StatePlay(false));
         §_-dK§(new §_-yZ§(false));
         §_-dK§(new §_-8Y§(false));
         §_-dK§(new §_-Go§(false));
         §_-dK§(new §_-jc§(false));
         §_-dK§(new StateCutScene(false));
         §_-dK§(new §_-Vq§(false));
         §_-dK§(new §_-Ue§(false));
         §_-yj§.§_-sH§(§_-tV§);
         §_-yj§.§_-Tg§(true);
         var _loc3_:XMLList = §_-NE§.§_-wH§(§_-bg§).children();
         §_-Cn§.init(_loc3_);
         stage.showDefaultContextMenu = false;
         §if§(true);
         §_-Av§.§_-Zy§("CHANNEL_AMBIENT",1,1);
         §_-Av§.§_-Zy§("CHANNEL_THEME",1,1);
         §_-AI§ = new §_-K-§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-m4§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-y§);
         stage.addEventListener(Event.RESIZE,this.§_-fG§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-bJ§);
         if(stage.stageWidth != § null§ || stage.stageHeight != §_-aD§)
         {
            this.§_-fG§(null);
         }
      }
      
      public static function §if§(param1:Boolean) : void
      {
         §_-Z7§ = param1;
         §_-Av§.§_-fK§(§_-Z7§);
      }
      
      public static function §_-fT§() : Boolean
      {
         return §_-Z7§;
      }
      
      public static function §_-Qb§() : void
      {
         if(§_-Av§.§_-Qj§("Channel_Theme") == null || !§_-Av§.§_-Qj§("Channel_Theme").§_-jk§())
         {
            §_-Av§.§_-so§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-BN§() : void
      {
         §_-Av§.§_-nk§("Channel_Theme");
      }
      
      private function §_-HU§(param1:ByteArray) : void
      {
      }
      
      private function §_-m4§(param1:Event) : void
      {
         §_-oq§.§_-Z0§();
      }
      
      private function §_-y§(param1:MouseEvent) : void
      {
         §_-oq§.§_-Ln§();
      }
      
      private function §_-fG§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / § null§;
         var _loc3_:Number = stage.stageHeight / §_-aD§;
         if(_loc2_ < _loc3_)
         {
            §_-tV§.scaleX = §_-tV§.scaleY = _loc2_;
            §_-gb§.§_-Ek§(§_-tV§.x,§_-tV§.y,stage.stageWidth,stage.stageWidth * (§_-aD§ / § null§));
         }
         else
         {
            §_-tV§.scaleX = §_-tV§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§ null§ / §_-aD§);
            _loc5_ = stage.stageHeight;
            §_-gb§.§_-Ek§(§_-tV§.x,§_-tV§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-bJ§(param1:FullScreenEvent) : void
      {
         this.§_-fG§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-BZ§.packages = null;
         §_-4O§.§_-FW§(§_-hQ§.§_-sx§(this.§_-oj§.getFileAsString("Chapters.json")));
         this.§_-62§();
      }
      
      private function §_-62§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-B4§.§_-du§(§_-B4§.§_-zc§,_loc1_.toString(),_loc1_);
         §_-gb§.§_-KQ§(§_-NE§.§_-wH§(§ for§),§_-NE§.§_-wH§(§_-F9§));
         §_-gb§.§_-8V§(this.§_-oj§.§_-Zo§,§_-tv§.§_-L2§(),this.§_-hA§);
      }
      
      private function §_-hA§(param1:Event) : void
      {
         §_-5l§(§_-p§.§_-8r§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-gb§.§_-Rn§ != null)
         {
            §_-gb§.§_-Rn§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-eY§().isGenericState())
         {
            if(_loc2_ == §_-t6§.STATE_STATUS_COMPLETED)
            {
               §_-yj§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-eY§().mName + " New State = " + §_-eY§().mNextState);
               §_-5l§(§_-eY§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return § null§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-aD§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-kq§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
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
               _loc3_ = 0;
               while(_loc3_ < 5)
               {
                  _loc1_ = _loc1_.replace("-",".");
                  _loc3_++;
               }
               return _loc1_;
            }
         }
         return VERSION.replace("{svn_version}","local dev build");
      }
   }
}
