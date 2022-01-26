package
{
   import §_-H2§.§_-Z§;
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-L5§.StateCutScene;
   import §_-L5§.StatePlay;
   import §_-L5§.§_-0G§;
   import §_-L5§.§_-0v§;
   import §_-L5§.§_-2u§;
   import §_-L5§.§_-35§;
   import §_-L5§.§_-8U§;
   import §_-L5§.§_-B0§;
   import §_-L5§.§_-Tm§;
   import §_-L5§.§_-Tq§;
   import §_-L5§.§_-pb§;
   import §_-L5§.§_-vk§;
   import §_-LM§.§_-Yf§;
   import §_-RG§.§_-HT§;
   import §_-RG§.§_-TC§;
   import §_-RG§.§_-gL§;
   import §_-Su§.§_-8v§;
   import §_-VX§.JSON;
   import §_-Xr§.§_-cF§;
   import §_-ZV§.§_-6k§;
   import §_-am§.§_-XJ§;
   import §_-bJ§.§_-0s§;
   import §_-kI§.§_-2m§;
   import §_-mK§.§_-lc§;
   import §_-rp§.§_-c5§;
   import §_-vA§.§_-sX§;
   import §_-w5§.§_-po§;
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
   
   public class §_-0Y§ extends §_-2m§
   {
      
      private static var §_-P§:Class = §_-PM§;
      
      public static const VERSION:String = "1.0.0.12";
      
      public static var §_-dN§:int = 760;
      
      public static var §_-mI§:int = 570;
      
      public static const §_-N2§:Boolean = false;
      
      public static const §_-6E§:int = 3000;
      
      public static const §_-YA§:String = "../service";
      
      public static const §_-n§:String = "../mail";
      
      private static var §_-tM§:Class = §_-3l§;
      
      private static var §_-9N§:Class = §_-lu§;
      
      private static var §_-S9§:Class = §_-Tt§;
      
      private static var §_-pD§:Class = §_-5G§;
      
      private static var §_-AD§:Class = §_-1Q§;
      
      public static var §_-rb§:§_-po§ = null;
      
      public static var §_-UH§:Boolean = true;
      
      public static var §_-PB§:MovieClip = null;
      
      public static var §_-Nj§:§_-0Y§ = null;
      
      public static var §_-94§:Sprite = null;
       
      
      public function §_-0Y§(param1:CustomAngryBirdsCanvas)
      {
         Security.allowDomain("http://angrybirds-pepsicomx.appspot.com");
         §_-cF§.enabled = true;
         §_-cF§.§_-Wt§(§_-cF§.§_-NE§);
         §_-Mg§ = §_-dN§;
         §_-PD§ = §_-mI§;
         var _loc2_:Sprite = new §_-S9§();
         super(param1,_loc2_,§_-gL§.§_-Bp§(§_-tM§),§_-gL§.§_-Bp§(§_-9N§));
         §_-Yf§.init(§_-6k§.§_-tx§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§_-0s§.§_-od§(),this.§_-mT§);
         §_-Nj§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-3C§.init(this,§_-dN§,§_-mI§);
         §_-3C§.§_-bz§ = new §_-c5§(stage);
         §_-3C§.§_-Sq§.visible = §_-N2§;
         §_-sS§(new §_-8U§(false));
         §_-sS§(new §_-pb§(false));
         §_-sS§(new §_-0v§(false));
         §_-sS§(new §_-Tm§(false));
         §_-sS§(new StatePlay(false));
         §_-sS§(new §_-2u§(false));
         §_-sS§(new §_-35§(false));
         §_-sS§(new §_-B0§(false));
         §_-sS§(new §_-Tq§(false));
         §_-sS§(new StateCutScene(false));
         §_-sS§(new §_-vk§(false));
         §_-sS§(new §_-0G§(false));
         §_-HT§.§_-5v§(§_-7M§);
         §_-HT§.§_-3H§(true);
         var _loc3_:XMLList = §_-gL§.§_-Bp§(§_-P§).children();
         §_-sX§.init(_loc3_);
         stage.showDefaultContextMenu = false;
         §_-01§(true);
         §_-XJ§.§_-d9§("CHANNEL_THEME",1,1);
         §_-rb§ = new §_-po§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-Go§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-V§);
         stage.addEventListener(Event.RESIZE,this.§_-2a§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-gs§);
         if(stage.stageWidth != §_-dN§ || stage.stageHeight != §_-mI§)
         {
            this.§_-2a§(null);
         }
      }
      
      public static function §_-01§(param1:Boolean) : void
      {
         §_-UH§ = param1;
         §_-XJ§.§_-kh§(§_-UH§);
      }
      
      public static function §_-kB§() : Boolean
      {
         return §_-UH§;
      }
      
      public static function §_-ku§() : void
      {
         if(§_-XJ§.§_-75§("Channel_Theme") == null || !§_-XJ§.§_-75§("Channel_Theme").get())
         {
            §_-XJ§.§_-aW§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-EA§() : void
      {
         if(§_-XJ§.§_-75§("Channel_Theme"))
         {
            §_-XJ§.§_-75§("Channel_Theme").§_-48§();
         }
      }
      
      private function §_-mT§(param1:ByteArray) : void
      {
      }
      
      private function §_-Go§(param1:Event) : void
      {
         if(§_-3C§ != null && §_-3C§.§_-bz§.mLevelSlingshot != null && §_-3C§.§_-bz§.mLevelSlingshot.mDragging)
         {
            §_-3C§.§_-bz§.mLevelSlingshot.cancelDragging();
         }
         §_-TC§.§_-e2§();
      }
      
      private function §_-V§(param1:MouseEvent) : void
      {
         §_-TC§.§_-TH§();
      }
      
      private function §_-2a§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §_-dN§;
         var _loc3_:Number = stage.stageHeight / §_-mI§;
         if(_loc2_ < _loc3_)
         {
            §_-7M§.scaleX = §_-7M§.scaleY = _loc2_;
            §_-3C§.§_-Hd§(§_-7M§.x,§_-7M§.y,stage.stageWidth,stage.stageWidth * (§_-mI§ / §_-dN§));
         }
         else
         {
            §_-7M§.scaleX = §_-7M§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§_-dN§ / §_-mI§);
            _loc5_ = stage.stageHeight;
            §_-3C§.§_-Hd§(§_-7M§.x,§_-7M§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-gs§(param1:FullScreenEvent) : void
      {
         this.§_-2a§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-Yf§.packages = null;
         §_-8v§.§_-Uz§(§_-VX§.JSON.§_-RN§(§_-0s§.§_-od§().getFileAsString("Chapters.json")));
         this.§_-S8§();
      }
      
      private function §_-S8§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-cF§.§_-Wt§(§_-cF§.§_-ci§,_loc1_.toString(),_loc1_);
         §_-3C§.§_-rN§(§_-pD§,§_-AD§);
         §_-3C§.§if§(new §_-lc§(),§_-Z§.§_-1j§(),this.§_-lv§);
      }
      
      private function §_-lv§(param1:Event) : void
      {
         §_-n0§(§_-pb§.§_-Mi§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-3C§.§_-Sq§ != null)
         {
            §_-3C§.§_-Sq§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-P4§().isGenericState())
         {
            if(_loc2_ == §_-Uw§.STATE_STATUS_COMPLETED)
            {
               §_-HT§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-P4§().mName + " New State = " + §_-P4§().mNextState);
               §_-n0§(§_-P4§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-dN§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-mI§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-6E§;
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
