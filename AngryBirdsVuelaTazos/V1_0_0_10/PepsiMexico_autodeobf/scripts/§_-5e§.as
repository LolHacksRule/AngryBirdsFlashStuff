package
{
   import §_-0y§.§_-B3§;
   import §_-3P§.§_-dN§;
   import §_-5M§.StateCutScene;
   import §_-5M§.StatePlay;
   import §_-5M§.§_-0j§;
   import §_-5M§.§_-B7§;
   import §_-5M§.§_-G§;
   import §_-5M§.§_-Hq§;
   import §_-5M§.§_-QB§;
   import §_-5M§.§_-TK§;
   import §_-5M§.§_-Vn§;
   import §_-5M§.§_-mr§;
   import §_-5M§.§_-u0§;
   import §_-5M§.§_-v7§;
   import §_-D0§.§_-0V§;
   import §_-HJ§.§_-cL§;
   import §_-I1§.§_-2N§;
   import §_-I4§.§_-g6§;
   import §_-Je§.§_-RH§;
   import §_-Y§.§_-39§;
   import §_-Y7§.JSON;
   import §_-Yc§.§_-e9§;
   import §_-ec§.§_-pL§;
   import §_-hR§.§_-bJ§;
   import §_-oZ§.§_-JH§;
   import §_-ot§.§_-TP§;
   import §_-ot§.§_-UQ§;
   import §_-ot§.§_-o6§;
   import §_-rh§.§_-EN§;
   import §_-sq§.§_-rB§;
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
   
   public class §_-5e§ extends §_-e9§
   {
      
      private static var §_-qS§:Class = §_-To§;
      
      public static const VERSION:String = "1.0.0.10";
      
      public static var §_-ZL§:int = 760;
      
      public static var §_-Uw§:int = 570;
      
      public static const §_-25§:Boolean = false;
      
      public static const §_-gR§:int = 3000;
      
      public static const §_-QQ§:String = "../service";
      
      public static const §_-uw§:String = "../mail";
      
      private static var §_-CA§:Class = §_-cv§;
      
      private static var §_-EQ§:Class = §_-0i§;
      
      private static var §_-5Y§:Class = §import§;
      
      private static var §_-aZ§:Class = §_-Pe§;
      
      private static var §_-qE§:Class = §_-Fe§;
      
      public static var §_-Yn§:§_-rB§ = null;
      
      public static var §_-JA§:Boolean = true;
      
      public static var §_-BV§:MovieClip = null;
      
      public static var §_-sj§:§_-5e§ = null;
      
      public static var §_-tS§:Sprite = null;
       
      
      public function §_-5e§(param1:CustomAngryBirdsCanvas)
      {
         Security.allowDomain("http://angrybirds-pepsicomx.appspot.com");
         §_-cL§.enabled = true;
         §_-cL§.§_-JT§(§_-cL§.§_-a8§);
         §_-mb§ = §_-ZL§;
         §_-gG§ = §_-Uw§;
         var _loc2_:Sprite = new §_-5Y§();
         super(param1,_loc2_,§_-TP§.§_-bz§(§_-CA§),§_-TP§.§_-bz§(§_-EQ§));
         §_-39§.init(§_-EN§.§_-Sl§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§_-L2§);
         §_-sj§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-2N§.init(this,§_-ZL§,§_-Uw§);
         §_-2N§.§_-iP§ = new §_-B3§(stage);
         §_-2N§.§_-OU§.visible = §_-25§;
         §_-fd§(new §_-B7§(false));
         §_-fd§(new §_-Hq§(false));
         §_-fd§(new §_-G§(false));
         §_-fd§(new §_-Vn§(false));
         §_-fd§(new StatePlay(false));
         §_-fd§(new §_-0j§(false));
         §_-fd§(new §_-mr§(false));
         §_-fd§(new §_-u0§(false));
         §_-fd§(new §_-TK§(false));
         §_-fd§(new StateCutScene(false));
         §_-fd§(new §_-QB§(false));
         §_-fd§(new §_-v7§(false));
         §_-o6§.§_-gQ§(§_-8X§);
         §_-o6§.§_-91§(true);
         var _loc3_:XMLList = §_-TP§.§_-bz§(§_-qS§).children();
         §_-pL§.init(_loc3_);
         stage.showDefaultContextMenu = false;
         §_-4d§(true);
         §_-JH§.§_-IT§("CHANNEL_THEME",1,1);
         §_-Yn§ = new §_-rB§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-75§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-dL§);
         stage.addEventListener(Event.RESIZE,this.§_-vP§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-T0§);
         if(stage.stageWidth != §_-ZL§ || stage.stageHeight != §_-Uw§)
         {
            this.§_-vP§(null);
         }
      }
      
      public static function §_-4d§(param1:Boolean) : void
      {
         §_-JA§ = param1;
         §_-JH§.§_-0T§(§_-JA§);
      }
      
      public static function §_-eC§() : Boolean
      {
         return §_-JA§;
      }
      
      public static function §_-YO§() : void
      {
         if(§_-JH§.§_-AJ§("Channel_Theme") == null || !§_-JH§.§_-AJ§("Channel_Theme").§_-sE§())
         {
            §_-JH§.§_-A3§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-O9§() : void
      {
         if(§_-JH§.§_-AJ§("Channel_Theme"))
         {
            §_-JH§.§_-AJ§("Channel_Theme").§_-YQ§();
         }
      }
      
      private function §_-L2§(param1:ByteArray) : void
      {
         §_-0V§.§_-KU§().§_-Db§(param1);
      }
      
      private function §_-75§(param1:Event) : void
      {
         if(§_-2N§ != null && §_-2N§.§_-iP§.mLevelSlingshot != null && §_-2N§.§_-iP§.mLevelSlingshot.mDragging)
         {
            §_-2N§.§_-iP§.mLevelSlingshot.cancelDragging();
         }
         §_-UQ§.§_-s2§();
      }
      
      private function §_-dL§(param1:MouseEvent) : void
      {
         §_-UQ§.§_-XN§();
      }
      
      private function §_-vP§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §_-ZL§;
         var _loc3_:Number = stage.stageHeight / §_-Uw§;
         if(_loc2_ < _loc3_)
         {
            §_-8X§.scaleX = §_-8X§.scaleY = _loc2_;
            §_-2N§.§_-UO§(§_-8X§.x,§_-8X§.y,stage.stageWidth,stage.stageWidth * (§_-Uw§ / §_-ZL§));
         }
         else
         {
            §_-8X§.scaleX = §_-8X§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§_-ZL§ / §_-Uw§);
            _loc5_ = stage.stageHeight;
            §_-2N§.§_-UO§(§_-8X§.x,§_-8X§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-T0§(param1:FullScreenEvent) : void
      {
         this.§_-vP§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-39§.packages = null;
         §_-dN§.§_-uN§(§_-Y7§.JSON.§_-YM§(§_-0V§.§_-KU§().getFileAsString("Chapters.json")));
         this.§_-3p§();
      }
      
      private function §_-3p§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-cL§.§_-JT§(§_-cL§.§_-QL§,_loc1_.toString(),_loc1_);
         §_-2N§.§_-BU§(§_-aZ§,§_-qE§);
         §_-2N§.§_-Z-§(new §_-g6§(),§_-bJ§.§_-iR§(),this.§_-rv§);
      }
      
      private function §_-rv§(param1:Event) : void
      {
         §_-wI§(§_-Hq§.§_-7J§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-2N§.§_-OU§ != null)
         {
            §_-2N§.§_-OU§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-OG§().isGenericState())
         {
            if(_loc2_ == §_-RH§.STATE_STATUS_COMPLETED)
            {
               §_-o6§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-OG§().mName + " New State = " + §_-OG§().mNextState);
               §_-wI§(§_-OG§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-ZL§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-Uw§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-gR§;
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
