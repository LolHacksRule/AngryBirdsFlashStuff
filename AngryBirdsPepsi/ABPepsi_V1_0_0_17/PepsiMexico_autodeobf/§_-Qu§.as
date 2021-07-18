package
{
   import §_-0S§.§_-hP§;
   import §_-2J§.§_-3T§;
   import §_-9§.§_-JR§;
   import §_-Aw§.§_-BS§;
   import §_-HU§.§_-yP§;
   import §_-IV§.§_-qW§;
   import §_-OJ§.§_-tL§;
   import §_-Qx§.§_-Sf§;
   import §_-bz§.§_-uC§;
   import §_-e3§.§_-54§;
   import §_-e3§.§_-9Y§;
   import §_-e3§.§_-JN§;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-l1§.§_-YO§;
   import §_-rQ§.§_-Ou§;
   import §_-wt§.§_-TQ§;
   import §_-y7§.§_-VA§;
   import §else§.StateCutScene;
   import §else§.StatePlay;
   import §else§.§_-1j§;
   import §else§.§_-D4§;
   import §else§.§_-Jw§;
   import §else§.§_-PC§;
   import §else§.§_-Rk§;
   import §else§.§_-mk§;
   import §else§.§_-nZ§;
   import §else§.§_-pX§;
   import §else§.§_-xb§;
   import §else§.§_-z0§;
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
   
   public class §_-Qu§ extends §_-JR§
   {
      
      private static var §_-R9§:Class = §_-5P§;
      
      public static const VERSION:String = "1.0.0.14";
      
      public static var §_-1q§:int = 760;
      
      public static var §_-SP§:int = 570;
      
      public static const §_-49§:Boolean = false;
      
      public static const §_-30§:int = 3000;
      
      public static const §_-BK§:String = "../service";
      
      public static const §_-p2§:String = "../mail";
      
      private static var §_-N5§:Class = §_-r7§;
      
      private static var §_-2p§:Class = §_-Pb§;
      
      private static var §_-Pw§:Class = §_-SG§;
      
      private static var §_-K4§:Class = §_-VY§;
      
      private static var §_-40§:Class = §_-YN§;
      
      public static var §_-di§:§_-YO§ = null;
      
      public static var §_-55§:Boolean = true;
      
      public static var §_-v§:MovieClip = null;
      
      public static var §_-UB§:§_-Qu§ = null;
      
      public static var §_-FD§:Sprite = null;
       
      
      public function §_-Qu§(param1:CustomAngryBirdsCanvas)
      {
         Security.allowDomain("http://angrybirds-pepsicomx.appspot.com");
         §_-qW§.enabled = true;
         §_-qW§.§_-6h§(§_-qW§.§_-cZ§);
         §_-j1§ = §_-1q§;
         §_-iZ§ = §_-SP§;
         var _loc2_:Sprite = new §_-Pw§();
         super(param1,_loc2_,§_-JN§.§_-Yd§(§_-N5§),§_-JN§.§_-Yd§(§_-2p§));
         §_-TQ§.init(§_-uC§.§_-V9§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§_-BS§.§_-BF§(),this.§_-zj§);
         §_-UB§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-MB§.init(this,§_-1q§,§_-SP§);
         §_-MB§.§_-A7§ = new §_-tL§(stage);
         §_-MB§.§_-Dg§.visible = §_-49§;
         §_-13§(new §_-z0§(false));
         §_-13§(new §_-mk§(false));
         §_-13§(new §_-Jw§(false));
         §_-13§(new §_-pX§(false));
         §_-13§(new StatePlay(false));
         §_-13§(new §_-xb§(false));
         §_-13§(new §_-Rk§(false));
         §_-13§(new §_-D4§(false));
         §_-13§(new §_-nZ§(false));
         §_-13§(new StateCutScene(false));
         §_-13§(new §_-1j§(false));
         §_-13§(new §_-PC§(false));
         §_-54§.§_-H7§(§_-XX§);
         §_-54§.§_-WT§(true);
         var _loc3_:XMLList = §_-JN§.§_-Yd§(§_-R9§).children();
         §_-hP§.init(_loc3_);
         stage.showDefaultContextMenu = false;
         §_-vM§(true);
         §_-Ou§.§_-Rz§("CHANNEL_THEME",1,1);
         §_-di§ = new §_-YO§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-o1§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-tj§);
         stage.addEventListener(Event.RESIZE,this.§_-TU§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-mo§);
         if(stage.stageWidth != §_-1q§ || stage.stageHeight != §_-SP§)
         {
            this.§_-TU§(null);
         }
      }
      
      public static function §_-vM§(param1:Boolean) : void
      {
         §_-55§ = param1;
         §_-Ou§.§_-m1§(§_-55§);
      }
      
      public static function §_-E§() : Boolean
      {
         return §_-55§;
      }
      
      public static function §_-os§() : void
      {
         if(§_-Ou§.§_-g9§("Channel_Theme") == null || !§_-Ou§.§_-g9§("Channel_Theme").§_-Z§())
         {
            §_-Ou§.playSound("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-SQ§() : void
      {
         if(§_-Ou§.§_-g9§("Channel_Theme"))
         {
            §_-Ou§.§_-g9§("Channel_Theme").§_-yO§();
         }
      }
      
      private function §_-zj§(param1:ByteArray) : void
      {
      }
      
      private function §_-o1§(param1:Event) : void
      {
         §_-9Y§.§_-i8§();
      }
      
      private function §_-tj§(param1:MouseEvent) : void
      {
         §_-9Y§.§_-Ud§();
      }
      
      private function §_-TU§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §_-1q§;
         var _loc3_:Number = stage.stageHeight / §_-SP§;
         if(_loc2_ < _loc3_)
         {
            §_-XX§.scaleX = §_-XX§.scaleY = _loc2_;
            §_-MB§.§_-ze§(§_-XX§.x,§_-XX§.y,stage.stageWidth,stage.stageWidth * (§_-SP§ / §_-1q§));
         }
         else
         {
            §_-XX§.scaleX = §_-XX§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§_-1q§ / §_-SP§);
            _loc5_ = stage.stageHeight;
            §_-MB§.§_-ze§(§_-XX§.x,§_-XX§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-mo§(param1:FullScreenEvent) : void
      {
         this.§_-TU§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-TQ§.packages = null;
         §_-Sf§.§_-Do§(§_-AD§.§_-Ae§(§_-BS§.§_-BF§().getFileAsString("Chapters.json")));
         this.§_-OA§();
      }
      
      private function §_-OA§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-qW§.§_-6h§(§_-qW§.§_-wV§,_loc1_.toString(),_loc1_);
         §_-MB§.§_-Zd§(§_-K4§,§_-40§);
         §_-MB§.§_-Et§(new §_-3T§(),§_-yP§.§_-7Y§(),this.§_-li§);
      }
      
      private function §_-li§(param1:Event) : void
      {
         §_-Ld§(§_-mk§.§_-Az§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-MB§.§_-Dg§ != null)
         {
            §_-MB§.§_-Dg§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-cO§().isGenericState())
         {
            if(_loc2_ == §_-VA§.STATE_STATUS_COMPLETED)
            {
               §_-54§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-cO§().mName + " New State = " + §_-cO§().mNextState);
               §_-Ld§(§_-cO§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-1q§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-SP§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-30§;
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
