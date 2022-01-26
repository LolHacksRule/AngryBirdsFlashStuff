package
{
   import § get§.§_-pD§;
   import §_-6j§.§_-P4§;
   import §_-7§.§_-ph§;
   import §_-Ay§.§_-Z1§;
   import §_-Eq§.JSON;
   import §_-FQ§.§_-7W§;
   import §_-JB§.StateCutScene;
   import §_-JB§.StatePlay;
   import §_-JB§.§_-1z§;
   import §_-JB§.§_-6F§;
   import §_-JB§.§_-LD§;
   import §_-JB§.§_-QV§;
   import §_-JB§.§_-Sp§;
   import §_-JB§.§_-Xx§;
   import §_-JB§.§_-gc§;
   import §_-JB§.§_-pl§;
   import §_-JB§.§_-qZ§;
   import §_-JB§.§_-sH§;
   import §_-PS§.§_-Xz§;
   import §_-XI§.§_-mk§;
   import §_-cu§.§_-UO§;
   import §_-di§.§_-XF§;
   import §_-ef§.§_-mL§;
   import §_-ex§.§_-MA§;
   import §_-ex§.§_-Mh§;
   import §_-ex§.§_-mR§;
   import §_-gl§.§_-Fu§;
   import §_-pn§.§_-Kb§;
   import §_-qJ§.§_-Vi§;
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
   import §with§.§_-O2§;
   
   public class §_-2U§ extends §_-Vi§
   {
      
      private static var §_-V9§:Class = §_-e1§;
      
      public static const VERSION:String = "1.0.0.14";
      
      public static var §_-EK§:int = 760;
      
      public static var §_-UU§:int = 570;
      
      public static const §_-H7§:Boolean = false;
      
      public static const §_-Ue§:int = 3000;
      
      public static const §_-i1§:String = "../service";
      
      public static const §_-id§:String = "../mail";
      
      private static var §_-NT§:Class = §_-t5§;
      
      private static var §_-PK§:Class = §_-Hf§;
      
      private static var §_-hF§:Class = §_-D2§;
      
      private static var §_-3N§:Class = §_-jn§;
      
      private static var §_-80§:Class = §_-bo§;
      
      public static var §_-T1§:§_-mL§ = null;
      
      public static var §_-VL§:Boolean = true;
      
      public static var §_-a9§:MovieClip = null;
      
      public static var §_-Ec§:§_-2U§ = null;
      
      public static var §_-cv§:Sprite = null;
       
      
      public function §_-2U§(param1:CustomAngryBirdsCanvas)
      {
         Security.allowDomain("http://angrybirds-pepsicomx.appspot.com");
         §_-mk§.enabled = true;
         §_-mk§.§_-6h§(§_-mk§.§_-XL§);
         §_-da§ = §_-EK§;
         §_-Ib§ = §_-UU§;
         var _loc2_:Sprite = new §_-hF§();
         super(param1,_loc2_,§_-MA§.§_-lC§(§_-NT§),§_-MA§.§_-lC§(§_-PK§));
         §_-Fu§.init(§_-Kb§.§_-CG§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§_-P4§.§_-Tn§(),this.§_-DT§);
         §_-Ec§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §_-ph§.init(this,§_-EK§,§_-UU§);
         §_-ph§.§_-Tw§ = new §_-7W§(stage);
         §_-ph§.§_-rA§.visible = §_-H7§;
         §_-u§(new §_-1z§(false));
         §_-u§(new §_-QV§(false));
         §_-u§(new §_-gc§(false));
         §_-u§(new §_-Sp§(false));
         §_-u§(new StatePlay(false));
         §_-u§(new §_-sH§(false));
         §_-u§(new §_-Xx§(false));
         §_-u§(new §_-LD§(false));
         §_-u§(new §_-6F§(false));
         §_-u§(new StateCutScene(false));
         §_-u§(new §_-qZ§(false));
         §_-u§(new §_-pl§(false));
         §_-mR§.§_-yA§(§_-Ro§);
         §_-mR§.§_-pL§(true);
         var _loc3_:XMLList = §_-MA§.§_-lC§(§_-V9§).children();
         §_-Z1§.init(_loc3_);
         stage.showDefaultContextMenu = false;
         §_-wm§(true);
         §_-pD§.§_-xr§("CHANNEL_THEME",1,1);
         §_-T1§ = new §_-mL§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§_-Us§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-42§);
         stage.addEventListener(Event.RESIZE,this.§_-k0§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-a3§);
         if(stage.stageWidth != §_-EK§ || stage.stageHeight != §_-UU§)
         {
            this.§_-k0§(null);
         }
      }
      
      public static function §_-wm§(param1:Boolean) : void
      {
         §_-VL§ = param1;
         §_-pD§.§_-Qy§(§_-VL§);
      }
      
      public static function §_-AU§() : Boolean
      {
         return §_-VL§;
      }
      
      public static function §_-DK§() : void
      {
         if(§_-pD§.§_-8t§("Channel_Theme") == null || !§_-pD§.§_-8t§("Channel_Theme").§_-54§())
         {
            §_-pD§.playSound("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §_-x4§() : void
      {
         if(§_-pD§.§_-8t§("Channel_Theme"))
         {
            §_-pD§.§_-8t§("Channel_Theme").§_-6Y§();
         }
      }
      
      private function §_-DT§(param1:ByteArray) : void
      {
      }
      
      private function §_-Us§(param1:Event) : void
      {
         if(§_-ph§ != null && §_-ph§.§_-Tw§.mLevelSlingshot != null && §_-ph§.§_-Tw§.mLevelSlingshot.mDragging)
         {
            §_-ph§.§_-Tw§.mLevelSlingshot.cancelDragging();
         }
         §_-Mh§.§_-wb§();
      }
      
      private function §_-42§(param1:MouseEvent) : void
      {
         §_-Mh§.§_-Wg§();
      }
      
      private function §_-k0§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §_-EK§;
         var _loc3_:Number = stage.stageHeight / §_-UU§;
         if(_loc2_ < _loc3_)
         {
            §_-Ro§.scaleX = §_-Ro§.scaleY = _loc2_;
            §_-ph§.§_-S5§(§_-Ro§.x,§_-Ro§.y,stage.stageWidth,stage.stageWidth * (§_-UU§ / §_-EK§));
         }
         else
         {
            §_-Ro§.scaleX = §_-Ro§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§_-EK§ / §_-UU§);
            _loc5_ = stage.stageHeight;
            §_-ph§.§_-S5§(§_-Ro§.x,§_-Ro§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §_-a3§(param1:FullScreenEvent) : void
      {
         this.§_-k0§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-Fu§.packages = null;
         §_-Xz§.§_-bW§(§_-Eq§.JSON.§_-SR§(§_-P4§.§_-Tn§().getFileAsString("Chapters.json")));
         this.§_-HG§();
      }
      
      private function §_-HG§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-mk§.§_-6h§(§_-mk§.§_-V-§,_loc1_.toString(),_loc1_);
         §_-ph§.§_-gY§(§_-3N§,§_-80§);
         §_-ph§.§_-N5§(new §_-XF§(),§_-O2§.§_-Lx§(),this.§_-zA§);
      }
      
      private function §_-zA§(param1:Event) : void
      {
         §_-rY§(§_-QV§.§_-1h§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§_-ph§.§_-rA§ != null)
         {
            §_-ph§.§_-rA§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§_-xn§().isGenericState())
         {
            if(_loc2_ == §_-UO§.STATE_STATUS_COMPLETED)
            {
               §_-mR§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §_-xn§().mName + " New State = " + §_-xn§().mNextState);
               §_-rY§(§_-xn§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §_-EK§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-UU§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-Ue§;
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
