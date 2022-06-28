package
{
   import §_-01E§.§_-5b§;
   import §_-01E§.§_-9K§;
   import §_-0A-§.§_-08e§;
   import §_-0BH§.§_-ZE§;
   import §_-0EZ§.§_-48§;
   import §_-0EZ§.§_-7n§;
   import §_-7§.§_-EJ§;
   import §_-AZ§.§_-07C§;
   import §_-Ga§.LevelManager;
   import §_-T-§.§_-0Am§;
   import §_-T-§.§_-0Dp§;
   import §_-T-§.§_-0FA§;
   import §_-T-§.§_-C3§;
   import §_-T-§.§_-aa§;
   import §_-T-§.§_-cV§;
   import §_-T-§.§_-cg§;
   import §_-T-§.§_-e3§;
   import §_-T-§.§_-ss§;
   import §_-T-§.§_-tD§;
   import §_-T-§.§_-ul§;
   import §_-Y8§.§_-05J§;
   import §_-ad§.StateCutScene;
   import §_-ad§.StatePlay;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-Rp§;
   import §_-ad§.§_-UO§;
   import §_-dJ§.§_-xW§;
   import §_-eS§.§_-OY§;
   import §_-eS§.§_-Vn§;
   import §_-eS§.§_-Za§;
   import §_-hX§.§_-WC§;
   import §_-hX§.§_-bT§;
   import §_-jn§.§_-hS§;
   import §_-mh§.§_-09d§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-RM§;
   import §_-y7§.§_-zA§;
   import com.angrybirds.friendsbar.§_-ri§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §_-rG§ extends AngryBirdsFP11
   {
      
      public static const §_-0E-§:String = "0.0.0.15 r97255)";
      
      private static const §_-0Eh§:String = "AngryBirdsFacebookSettings";
      
      protected static var §_-3d§:Class = §_-1H§;
      
      protected static var §_-kW§:Class = §_-0y§;
      
      protected static var §_-9t§:Class = §_-G1§;
      
      protected static var §_-0-V§:Class = §_-3y§;
      
      public static var §_-kj§:§_-7n§;
      
      public static var §_-rY§:§_-rG§;
       
      
      protected var §_-A7§:§_-ri§;
      
      private var §_-rK§:String = null;
      
      private var §_-Fb§:String = "";
      
      private var §_-cC§:§_-Vn§;
      
      private var §_-sR§:Sprite;
      
      private var §_-kO§:Boolean = false;
      
      public function §_-rG§(param1:§_-hS§)
      {
         var _loc5_:Stage3D = null;
         §_-Za§.enabled = true;
         var _loc2_:int = 0;
         try
         {
            if(_loc5_ = param1.stage.stage3Ds[0])
            {
               _loc2_ = 1;
            }
         }
         catch(e:Error)
         {
         }
         if(_loc2_ == 0)
         {
            §_-OY§.§_-ff§("no-stage3d");
         }
         §_-3T§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §_-08Q§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§_-LI§ ? "http://head-dot-angrybirds-ultrabook.appspot.com" : "http://head-dot-angrybirds-ultrabook.appspot.com");
         super(param1);
         §_-rY§ = this;
         §_-OY§.§_-Ve§(§_-Za§.§_-R6§);
         var _loc3_:ContextMenu = new ContextMenu();
         _loc3_.hideBuiltInItems();
         param1.contextMenu = _loc3_;
         param1.stage.addChild(this.§_-sR§ = new Sprite());
         §_-EJ§.initialize(param1.stage);
         this.§_-cC§ = new §_-Vn§("");
         this.§_-cC§.start();
      }
      
      public static function §_-K0§() : String
      {
         if((sUserProgress as §_-09d§).§_-0x§)
         {
            return §_-0Eh§ + "-" + (sUserProgress as §_-09d§).§_-0x§;
         }
         return null;
      }
      
      public static function §_-1J§(param1:Object) : void
      {
         §_-kj§ = new §_-7n§(§_-08Q§,(AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§,(AngryBirdsFP11.sUserProgress as §_-09d§).userName);
         §_-kj§.§_-067§(param1);
         var _loc2_:int = §_-kj§.§_-wX§;
         if(_loc2_ >= 0)
         {
            §_-OY§.§_-Yx§(_loc2_);
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §_-05a§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
         }
      }
      
      private function §_-Jl§(param1:String) : void
      {
         if(!this.§_-kO§)
         {
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §_-ZE§.§_-ve§(§_-3d§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §_-ZE§.§_-ve§(§_-kW§);
         this.§_-04h§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §_-ZE§.§_-ve§(§_-0-V§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§_-04h§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §_-ZE§.§_-ve§(§_-9t§);
         this.§_-04h§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      protected function §_-sx§() : void
      {
         if(!§_-LI§)
         {
            if(!stage.loaderInfo.parameters.userId)
            {
               §_-OY§.§_-Sp§("userId");
            }
            if(!stage.loaderInfo.parameters.accessToken)
            {
               §_-OY§.§_-Sp§("accessToken");
            }
            if(!stage.loaderInfo.parameters.tokenExpiresIn)
            {
               §_-OY§.§_-Sp§("tokenExpiresIn");
            }
         }
         §_-9K§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      override protected function initialize() : void
      {
         var _loc2_:SharedObject = null;
         super.initialize();
         this.§_-rK§ = stage.loaderInfo.parameters.levelId;
         §_-Z§.addEventListener(Event.INIT,this.§_-0-W§);
         §_-Z§.addEventListener(Event.COMPLETE,this.§_-0Ey§);
         this.§_-sx§();
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§_-0Eh§);
            if(_loc2_.data.useSounds != undefined)
            {
               §§pop();
               §§pop();
            }
            else
            {
               §§pop();
               _loc2_.data.useSounds = true;
            }
            _loc1_ = _loc2_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §_-mv§(_loc1_);
         §_-05J§.addCallback("giftsSentToUsers",this.§_-05a§);
         §_-05J§.addCallback("onUrl",this.§_-Jl§);
      }
      
      protected function §_-Ft§() : void
      {
         this.§_-A7§ = new §_-ri§(§_-kj§,§_-08Q§,(sUserProgress as §_-09d§).§_-0x§);
         this.§_-sR§.addChild(this.§_-A7§);
         this.§_-A7§.height = stage.stageHeight;
         this.§_-A7§.x = stage.stageWidth - 180;
         this.§_-A7§.addEventListener(§_-07C§.§_-S1§,this.§_-4S§);
         this.§_-A7§.addEventListener(§_-07C§.§_-Yr§,this.§_-ch§);
         this.§_-A7§.addEventListener(§_-07C§.§_-H7§,this.§function§);
         this.§_-A7§.addEventListener(§_-07C§.§_-099§,this.§_-dE§);
         this.§_-A7§.addEventListener(§_-07C§.§_-K8§,this.§_-BV§);
         this.§_-A7§.addEventListener(§_-07C§.§_-zs§,this.§_-lr§);
         this.§_-A7§.addEventListener(§_-07C§.PLAY_LEVEL,this.§_-04D§);
         this.§_-A7§.§_-xK§();
      }
      
      protected function §_-0-W§(param1:Event) : void
      {
         §_-bT§.§_-03c§(false);
      }
      
      protected function §_-0Ey§(param1:Event) : void
      {
         §_-bT§.§_-03c§(true);
      }
      
      public function §_-Cw§(param1:String, param2:§_-48§ = null, param3:Boolean = false) : void
      {
         this.§_-A7§.§_-0-j§(!!param1 ? LevelManager.§_-N9§(param1).name : "",param1,param2,param3);
      }
      
      public function §_-KA§(param1:String) : void
      {
         this.§_-A7§.§_-RB§(param1);
      }
      
      override protected function initLevelMain() : void
      {
         § in§.§_-Dc§ = new §_-xW§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §_-09d§(§_-08Q§);
      }
      
      override protected function initStates() : void
      {
         §_-pP§(new §_-tD§(false));
         §_-pP§(new §_-cg§(false));
         §_-pP§(new §_-aa§(false));
         §_-pP§(new §_-0Am§(false));
         §_-pP§(new §_-e3§(false));
         §_-pP§(new §_-0Dp§(false));
         §_-pP§(new §_-ul§(false));
         §_-pP§(new §_-C3§(false));
         §_-pP§(new §_-ss§(false));
         §_-pP§(new §_-cV§(false));
      }
      
      override protected function initStateLoad() : §_-RM§
      {
         if(!§_-LI§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §_-OY§.§_-Sp§("assetsUrl");
            }
            if(stage.loaderInfo.parameters.buildNumber)
            {
            }
         }
         return new §_-0FA§(true,§_-RM§.§_-pk§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §_-pL§ = true;
         if(this.§_-rK§)
         {
            _loc2_ = LevelManager.§_-Hc§(this.§_-rK§);
            if(_loc2_ != this.§_-rK§)
            {
               §_-OY§.§_-03O§(this.§_-rK§);
            }
            this.§_-rK§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               this.§_-00P§(_loc2_);
               return;
            }
         }
         §_-Sk§(§_-Rp§.§_-pk§);
      }
      
      public function §_-00P§(param1:String) : void
      {
         param1 = LevelManager.§_-Hc§(param1);
         LevelManager.§_-s8§(param1);
         §_-Sk§(StateCutScene.§_-pk§);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §_-WC§.§_-ic§ = new §_-zA§();
         §_-WC§.§_-ic§.§_-wV§();
         this.§_-Ft§();
         if((sUserProgress as §_-09d§).hasTutorialBeenSeen(§_-09d§.§_-FR§) == false)
         {
            (sUserProgress as §_-09d§).saveTutorialSeen(§_-09d§.§_-FR§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §_-pO§;
            _loc3_ = §_-02I§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
            _loc2_ = Math.round(_loc3_ * (25 / 12));
         }
         var _loc6_:int = _loc2_ - (180 - 62);
         § in§.§_-82§(0,0,_loc6_,_loc3_);
         setViewSize(_loc6_,_loc3_);
         this.§_-Z2§(_loc2_,_loc3_);
         if(this.§_-A7§)
         {
            this.§_-A7§.x = _loc2_ - 180;
            this.§_-A7§.height = _loc3_;
         }
         §_-pO§ = _loc6_;
         §_-02I§ = _loc3_;
      }
      
      public function §_-Z2§(param1:Number, param2:Number) : void
      {
         §_-EJ§.setViewSize(param1,param2);
      }
      
      protected function §_-04h§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(var _loc9_ in param3)
         {
            _loc5_ = _loc9_;
            _loc9_;
            for each(var _loc11_ in param1[_loc5_].§*§)
            {
               _loc6_ = _loc11_;
               _loc11_;
               if(param4)
               {
                  delete param2[_loc5_][_loc6_.name()];
               }
               param2[_loc5_].appendChild(_loc6_);
            }
         }
      }
      
      protected function §_-4S§(param1:§_-07C§) : void
      {
         §_-DE§();
         if(param1.data != null)
         {
            §_-OY§.§_-sn§();
         }
         else
         {
            §_-OY§.§_-V4§();
         }
         §_-05J§.§_-0At§("flashInviteFriendsHandler",!!param1.data ? param1.data.userId : null);
      }
      
      protected function §_-ch§(param1:Event) : void
      {
         §_-0De§();
      }
      
      protected function §function§(param1:§_-07C§) : void
      {
         §§pop();
         §_-ot§.uiInteractionHandler(0,"showCredits",null);
      }
      
      protected function §_-dE§(param1:§_-07C§) : void
      {
         §_-ot§.uiInteractionHandler(0,"showTutorial",null);
      }
      
      protected function §_-lr§(param1:§_-07C§) : void
      {
         §_-DE§();
         var _loc2_:int = (param1.data as §_-5b§).§_-0Ef§ - 1;
         §_-OY§.§_-8t§(_loc2_.toString());
         §_-05J§.§_-0At§("flashBrag",param1.data.userId,LevelManager.§_-HM§,LevelManager.§_-1a§().writtenName + "-" + §_-08e§.§_-i8§(LevelManager.§_-HM§));
      }
      
      protected function §_-04D§(param1:§_-07C§) : void
      {
         var _loc2_:String = param1.target.data.lvl;
         var _loc3_:String = LevelManager.§_-Hc§(_loc2_);
         if(_loc3_ != _loc2_)
         {
            §_-OY§.§_-03O§(_loc2_);
         }
         if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
         {
            LevelManager.§_-s8§(_loc3_);
            §_-Sk§(StateCutScene.§_-pk§);
            return;
         }
      }
      
      protected function §_-BV§(param1:§_-07C§) : void
      {
         var mySO:SharedObject = null;
         var e:§_-07C§ = param1;
         §_-mv§(!§_-Lz§());
         if(§_-Lz§())
         {
            if(§_-vR§() == StatePlay.§_-pk§)
            {
               § in§.§_-Dc§.background.§_-7k§();
            }
            else if(§_-vR§() == §_-aa§.§_-pk§ || §_-vR§() == §_-UO§.§_-pk§ || §_-vR§() == §_-7A§.§_-pk§)
            {
               AngryBirdsFP11.playThemeMusic();
            }
         }
         try
         {
            mySO = SharedObject.getLocal(§_-0Eh§);
            mySO.data.useSounds = §_-gR§;
            mySO.flush();
            §§pop();
         }
         catch(e:Error)
         {
            §§pop();
         }
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         var _loc5_:int;
         if(_loc5_ = this.§_-VY§(_loc2_,_loc3_,_loc4_))
         {
            (AngryBirdsFP11.sUserProgress as §_-09d§).§_-00D§(param1,_loc5_);
         }
      }
      
      private function §_-VY§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc7_:§_-5b§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:int = this.§_-5I§.§_-R0§(LevelManager.§_-HM§,param1,param2,param3,_loc5_,param4);
         for each(var _loc11_ in _loc5_)
         {
            _loc7_ = _loc11_;
            _loc11_;
            _loc8_ = _loc7_.§_-0Ef§ - 1;
            §_-OY§.§_-0Dd§(_loc8_.toString());
         }
         return _loc6_;
      }
      
      public function get §_-5I§() : §_-ri§
      {
         return this.§_-A7§;
      }
      
      public function get §_-0C7§() : §_-Vn§
      {
         return this.§_-cC§;
      }
      
      public function §_-09i§() : void
      {
         if(this.§_-cC§)
         {
            this.§_-cC§.§_-Jz§();
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §_-0E-§.replace("{svn_version}","local dev build") + "Server: " + §_-3T§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §_-OY§.§_-Ve§(§_-Za§.§_-2N§,_loc1_.toString(),_loc1_);
         this.§_-kO§ = true;
         true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§_-Fb§)
         {
            this.§_-Fb§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§_-Fb§ = this.§_-Fb§ + String.fromCharCode(param1.keyCode);
         }
         this.§_-Fb§ = this.§_-Fb§.toLowerCase();
         if(this.§_-Fb§.length > 15)
         {
            this.§_-Fb§ = this.§_-Fb§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
         §_-OY§.§_-U3§();
      }
      
      override public function externalResume() : void
      {
         §_-OY§.§_-cQ§();
      }
   }
}
