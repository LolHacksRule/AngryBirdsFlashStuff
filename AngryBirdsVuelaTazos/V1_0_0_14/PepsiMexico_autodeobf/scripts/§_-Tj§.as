package
{
   import §_-2z§.§_-rz§;
   import §_-5Y§.§_-yw§;
   import §_-6b§.§_-8q§;
   import §_-6n§.§_-5z§;
   import §_-8§.StateCutScene;
   import §_-8§.StatePlay;
   import §_-8§.§_-1V§;
   import §_-8§.§_-2N§;
   import §_-8§.§_-3Z§;
   import §_-8§.§_-Cr§;
   import §_-8§.§_-D§;
   import §_-8§.§_-IL§;
   import §_-8§.§_-OU§;
   import §_-8§.§_-VD§;
   import §_-8§.§_-t1§;
   import §_-8§.§_-xH§;
   import §_-Eo§.§_-EX§;
   import §_-Eo§.§_-R4§;
   import §_-Eo§.§_-Wt§;
   import §_-M0§.§_-u4§;
   import §_-Mb§.§_-10§;
   import §_-W7§.§_-CY§;
   import §_-WH§.§_-0§;
   import §_-id§.§_-dj§;
   import §_-iq§.§_-jB§;
   import §_-mc§.§_-9j§;
   import §_-ox§.§_-1l§;
   import §_-qT§.§_-O5§;
   import §_-rD§.§_-0k§;
   import §_-uh§.§_-HB§;
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
   
   public class §_-Tj§ extends §_-jB§
   {
      
      private static var §_-RQ§:Class = §_-u6§;
      
      public static const VERSION:String = "1.0.0.14";
      
      public static var §_-4r§:int = 760;
      
      public static var §_-ho§:int = 570;
      
      public static const §_-35§:Boolean = false;
      
      public static const §_-Kh§:int = 3000;
      
      public static const §_-4w§:String = "../service";
      
      public static const §_-yy§:String = "../mail";
      
      private static var §_-4m§:Class = §_-CV§;
      
      private static var §_-uR§:Class = §_-4X§;
      
      private static var §_-B0§:Class = §_-MS§;
      
      private static var §_-th§:Class = §_-El§;
      
      private static var §_-yY§:Class = §_-ly§;
      
      public static var §_-7q§:§_-8q§ = null;
      
      public static var §_-uA§:Boolean = true;
      
      public static var §_-hc§:MovieClip = null;
      
      public static var §_-ww§:§_-Tj§ = null;
      
      public static var §_-HV§:Sprite = null;
       
      
      public function §_-Tj§(param1:CustomAngryBirdsCanvas)
      {
         Security.allowDomain("http://angrybirds-pepsicomx.appspot.com");
         §_-9j§.enabled = true;
         §_-9j§.§_-Ej§(§_-9j§.§_-Fe§);
         §_-SR§ = §_-4r§;
         §_-oB§ = §_-ho§;
         var _loc2_:Sprite = new §_-B0§();
         super(param1,_loc2_,§_-EX§.§_-e9§(§_-4m§),§_-EX§.§_-e9§(§_-uR§));
         §_-0k§.init(§_-1l§.§_-7g§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§_-10§.§_-Ic§(),this.§_-om§);
         §_-ww§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-u4§.init(this,§_-4r§,§_-ho§);
         §_-u4§.§_-40§ = new §_-yw§(stage);
         §_-u4§.§_-e1§.visible = §_-35§;
         §_-Uy§(new §_-t1§(false));
         §_-Uy§(new §_-D§(false));
         §_-Uy§(new §_-OU§(false));
         §_-Uy§(new §_-VD§(false));
         §_-Uy§(new StatePlay(false));
         §_-Uy§(new §_-1V§(false));
         §_-Uy§(new §_-xH§(false));
         §_-Uy§(new §_-2N§(false));
         §_-Uy§(new §_-Cr§(false));
         §_-Uy§(new StateCutScene(false));
         §_-Uy§(new §_-IL§(false));
         §_-Uy§(new §_-3Z§(false));
         §_-R4§.§_-DU§(§_-5S§);
         §_-R4§.§_-oz§(true);
         var _loc3_:XMLList = §_-EX§.§_-e9§(§_-RQ§).children();
         §_-CY§.init(_loc3_);
         stage.showDefaultContextMenu = false;
         §_-ZO§(true);
         §_-5z§.§_-9b§("CHANNEL_THEME",1,1);
         §_-7q§ = new §_-8q§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-cM§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-wO§);
         stage.addEventListener(Event.RESIZE,this.§_-Zj§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-Qf§);
         if(stage.stageWidth != §_-4r§ || stage.stageHeight != §_-ho§)
         {
            this.§_-Zj§(null);
         }
      }
      
      public static function §_-ZO§(param1:Boolean) : void
      {
         §_-uA§ = param1;
         §_-5z§.§_-rh§(§_-uA§);
      }
      
      public static function §_-E9§() : Boolean
      {
         return §_-uA§;
      }
      
      public static function §_-j4§() : void
      {
         if(§_-5z§.§_-Ol§("Channel_Theme") == null || !§_-5z§.§_-Ol§("Channel_Theme").§_-Os§())
         {
            §_-5z§.§_-rp§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-Kv§() : void
      {
         if(§_-5z§.§_-Ol§("Channel_Theme"))
         {
            §_-5z§.§_-Ol§("Channel_Theme").§_-i-§();
         }
      }
      
      private function §_-om§(param1:ByteArray) : void
      {
      }
      
      private function §_-cM§(param1:Event) : void
      {
         §_-Wt§.§_-xR§();
      }
      
      private function §_-wO§(param1:MouseEvent) : void
      {
         §_-Wt§.§_-vF§();
      }
      
      private function §_-Zj§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §_-4r§;
         var _loc3_:Number = stage.stageHeight / §_-ho§;
         if(_loc2_ < _loc3_)
         {
            §_-5S§.scaleX = §_-5S§.scaleY = _loc2_;
            §_-u4§.§_-7A§(§_-5S§.x,§_-5S§.y,stage.stageWidth,stage.stageWidth * (§_-ho§ / §_-4r§));
         }
         else
         {
            §_-5S§.scaleX = §_-5S§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§_-4r§ / §_-ho§);
            _loc5_ = stage.stageHeight;
            §_-u4§.§_-7A§(§_-5S§.x,§_-5S§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-Qf§(param1:FullScreenEvent) : void
      {
         this.§_-Zj§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-0k§.packages = null;
         §_-HB§.override(§_-rz§.§_-EM§(§_-10§.§_-Ic§().getFileAsString("Chapters.json")));
         this.§_-4J§();
      }
      
      private function §_-4J§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-9j§.§_-Ej§(§_-9j§.§_-Nk§,_loc1_.toString(),_loc1_);
         §_-u4§.§_-1w§(§_-th§,§_-yY§);
         §_-u4§.§_-Zt§(new §_-dj§(),§_-0§.§_-fp§(),this.§_-Lf§);
      }
      
      private function §_-Lf§(param1:Event) : void
      {
         §_-kW§(§_-D§.§_-7m§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-u4§.§_-e1§ != null)
         {
            §_-u4§.§_-e1§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-EZ§().isGenericState())
         {
            if(_loc2_ == §_-O5§.STATE_STATUS_COMPLETED)
            {
               §_-R4§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-EZ§().mName + " New State = " + §_-EZ§().mNextState);
               §_-kW§(§_-EZ§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-4r§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-ho§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-Kh§;
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
