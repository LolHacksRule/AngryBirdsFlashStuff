package
{
   import §_-4R§.§_-dZ§;
   import §_-5J§.§_-Ab§;
   import §_-5x§.§_-8p§;
   import §_-Ah§.§_-b§;
   import §_-B7§.§_-cO§;
   import §_-Hq§.StateCutScene;
   import §_-Hq§.StatePlay;
   import §_-Hq§.§_-1F§;
   import §_-Hq§.§_-Ck§;
   import §_-Hq§.§_-Ft§;
   import §_-Hq§.§_-MV§;
   import §_-Hq§.§_-aN§;
   import §_-Hq§.§_-fR§;
   import §_-Hq§.§_-fY§;
   import §_-Hq§.§_-jI§;
   import §_-Hq§.§_-kZ§;
   import §_-Hq§.§_-mF§;
   import §_-Hv§.§_-x-§;
   import §_-TE§.§_-PN§;
   import §_-Xc§.§_-NB§;
   import §_-Y-§.§_-A5§;
   import §_-ZG§.§_-HK§;
   import §_-ZG§.§_-Ne§;
   import §_-ZG§.§_-eW§;
   import §_-ez§.§_-Ay§;
   import §_-nd§.§_-wz§;
   import §_-p4§.§_-rN§;
   import §_-p7§.§_-cv§;
   import §_-qT§.§_-5§;
   import §_-w0§.JSON;
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
   
   public class §_-I8§ extends §_-5§
   {
      
      private static var §_-Pr§:Class = §_-9d§;
      
      public static const VERSION:String = "1.0.0.10";
      
      public static var §_-iX§:int = 760;
      
      public static var §_-q§:int = 570;
      
      public static const §_-GD§:Boolean = false;
      
      public static const §_-Tz§:int = 3000;
      
      public static const §_-vQ§:String = "../service";
      
      public static const §_-cz§:String = "../mail";
      
      private static var §_-qG§:Class = §_-WC§;
      
      private static var §_-bn§:Class = §_-qX§;
      
      private static var §_-ct§:Class = §_-mN§;
      
      private static var §_-ax§:Class = §_-g2§;
      
      private static var §_-AF§:Class = §_-8I§;
      
      public static var §_-Gn§:§_-Ab§ = null;
      
      public static var §_-rJ§:Boolean = true;
      
      public static var §_-tl§:MovieClip = null;
      
      public static var §_-bs§:§_-I8§ = null;
      
      public static var §_-EQ§:Sprite = null;
       
      
      public function §_-I8§(param1:CustomAngryBirdsCanvas)
      {
         Security.allowDomain("http://angrybirds-pepsicomx.appspot.com");
         §_-dZ§.enabled = true;
         §_-dZ§.§_-H3§(§_-dZ§.§_-uF§);
         §_-jQ§ = §_-iX§;
         §_-Sl§ = §_-q§;
         var _loc2_:Sprite = new §_-ct§();
         super(param1,_loc2_,§_-eW§.§_-Qf§(§_-qG§),§_-eW§.§_-Qf§(§_-bn§));
         §_-rN§.init(§_-wz§.§_-XN§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§_-O4§);
         §_-bs§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-b§.init(this,§_-iX§,§_-q§);
         §_-b§.§_-cK§ = new §_-Ay§(stage);
         §_-b§.§_-v1§.visible = §_-GD§;
         §_-Ds§(new §_-jI§(false));
         §_-Ds§(new §_-fY§(false));
         §_-Ds§(new §_-mF§(false));
         §_-Ds§(new §_-fR§(false));
         §_-Ds§(new StatePlay(false));
         §_-Ds§(new §_-1F§(false));
         §_-Ds§(new §_-Ft§(false));
         §_-Ds§(new §_-Ck§(false));
         §_-Ds§(new §_-MV§(false));
         §_-Ds§(new StateCutScene(false));
         §_-Ds§(new §_-kZ§(false));
         §_-Ds§(new §_-aN§(false));
         §_-Ne§.§_-7x§(§_-Pv§);
         §_-Ne§.§_-uI§(true);
         var _loc3_:XMLList = §_-eW§.§_-Qf§(§_-Pr§).children();
         §_-cv§.init(_loc3_);
         stage.showDefaultContextMenu = false;
         §_-vR§(true);
         §_-8p§.§_-qQ§("CHANNEL_THEME",1,1);
         §_-Gn§ = new §_-Ab§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-3d§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§ true§);
         stage.addEventListener(Event.RESIZE,this.§_-8s§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-eX§);
         if(stage.stageWidth != §_-iX§ || stage.stageHeight != §_-q§)
         {
            this.§_-8s§(null);
         }
      }
      
      public static function §_-vR§(param1:Boolean) : void
      {
         §_-rJ§ = param1;
         §_-8p§.§_-63§(§_-rJ§);
      }
      
      public static function §_-rH§() : Boolean
      {
         return §_-rJ§;
      }
      
      public static function §_-NZ§() : void
      {
         if(§_-8p§.§_-jm§("Channel_Theme") == null || !§_-8p§.§_-jm§("Channel_Theme").§_-q3§())
         {
            §_-8p§.§_-rD§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-vW§() : void
      {
         if(§_-8p§.§_-jm§("Channel_Theme"))
         {
            §_-8p§.§_-jm§("Channel_Theme").§_-m-§();
         }
      }
      
      private function §_-O4§(param1:ByteArray) : void
      {
         §_-x-§.§_-45§().§_-He§(param1);
      }
      
      private function §_-3d§(param1:Event) : void
      {
         if(§_-b§ != null && §_-b§.§_-cK§.mLevelSlingshot != null && §_-b§.§_-cK§.mLevelSlingshot.mDragging)
         {
            §_-b§.§_-cK§.mLevelSlingshot.cancelDragging();
         }
         §_-HK§.§_-57§();
      }
      
      private function § true§(param1:MouseEvent) : void
      {
         §_-HK§.§_-mK§();
      }
      
      private function §_-8s§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §_-iX§;
         var _loc3_:Number = stage.stageHeight / §_-q§;
         if(_loc2_ < _loc3_)
         {
            §_-Pv§.scaleX = §_-Pv§.scaleY = _loc2_;
            §_-b§.§_-Ew§(§_-Pv§.x,§_-Pv§.y,stage.stageWidth,stage.stageWidth * (§_-q§ / §_-iX§));
         }
         else
         {
            §_-Pv§.scaleX = §_-Pv§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§_-iX§ / §_-q§);
            _loc5_ = stage.stageHeight;
            §_-b§.§_-Ew§(§_-Pv§.x,§_-Pv§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-eX§(param1:FullScreenEvent) : void
      {
         this.§_-8s§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-rN§.packages = null;
         §_-A5§.§_-ZT§(§_-w0§.JSON.§_-bW§(§_-x-§.§_-45§().getFileAsString("Chapters.json")));
         this.§_-rf§();
      }
      
      private function §_-rf§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-dZ§.§_-H3§(§_-dZ§.§_-vv§,_loc1_.toString(),_loc1_);
         §_-b§.§_-ua§(§_-ax§,§_-AF§);
         §_-b§.§_-rU§(new §_-NB§(),§_-cO§.§_-sf§(),this.§_-DJ§);
      }
      
      private function §_-DJ§(param1:Event) : void
      {
         override(§_-fY§.§_-dh§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-b§.§_-v1§ != null)
         {
            §_-b§.§_-v1§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-sD§().isGenericState())
         {
            if(_loc2_ == §_-PN§.STATE_STATUS_COMPLETED)
            {
               §_-Ne§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-sD§().mName + " New State = " + §_-sD§().mNextState);
               override(§_-sD§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-iX§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-q§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-Tz§;
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
