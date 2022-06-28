package §_-T-§
{
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-05d§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-gt§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.StateCutScene;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-Rp§;
   import §_-ad§.§_-UO§;
   import §_-eS§.§_-OY§;
   import §_-mh§.§_-09d§;
   import §_-qO§.§ in§;
   import §_-wA§.§_-IO§;
   import com.angrybirds.friendsbar.§_-ri§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-0Am§ extends §_-UO§
   {
      
      public static var §_-5D§:int = -1;
       
      
      private var §_-075§:Boolean = false;
      
      private var §_-0CO§:Number = 41.666666666666664;
      
      private var §_-cc§:int = 0;
      
      private var §_-XP§:§_-IO§;
      
      public function §_-0Am§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelSelection[0]);
         §_-g§ = §_-s0§.getItemByName("Container_LevelRepeaters") as §_-gt§;
         §_-gT§ = §_-s0§.getItemByName("Container_LevelSelection") as §_-gt§;
         this.§_-XP§ = new §_-IO§(§_-s0§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§_-0C5§ = LevelManager.§_-1a§();
         if(_loc1_ == null)
         {
            return;
         }
         §_-s0§.visible = true;
         (§ in§.§_-HY§ as §_-rG§).§_-0C7§.§_-LA§ = false;
         (§ in§.§_-HY§ as §_-rG§).§_-Cw§("");
         (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-f0§);
         if(§ in§.§_-Dc§.background)
         {
            § in§.§_-Dc§.background.§_-Ye§();
         }
         var _loc2_:String = LevelManager.§_-1a§().writtenName;
         §_-s0§.setText(_loc2_,"TextField_LevelName");
         §_-s0§.setText(AngryBirdsFP11.sUserProgress.§_-Zh§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§_-C§(_loc1_),"Textfield_CollectedStars");
         if(§_-5D§ != -1)
         {
            §_-Mx§(§_-5D§);
            §_-5D§ = -1;
         }
         if(§_-yr§ == §_-aa§.§_-pk§)
         {
            this.§_-075§ = true;
            §_-yr§ = "";
            §_-s0§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
            §_-s0§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         }
         else
         {
            this.§_-075§ = false;
            §_-s0§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§_-s0§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
            §_-s0§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§_-s0§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
         }
         this.§_-XP§.start();
      }
      
      override public function deActivate() : void
      {
         this.§_-XP§.stop();
         super.deActivate();
      }
      
      protected function §_-0Ez§(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc2_ >= param1.totalFrames)
         {
            _loc2_ = param1.totalFrames;
         }
         param1.gotoAndStop(_loc2_);
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§_-075§)
         {
            this.§_-cc§ += param1;
            if(this.§_-cc§ >= this.§_-0CO§)
            {
               this.§_-0Ez§(§_-s0§.getItemByName("MovieClip_RightCorner").mClip);
               this.§_-0Ez§(§_-s0§.getItemByName("MovieClip_LeftCorner").mClip);
               this.§_-cc§ = 0;
            }
         }
         this.§_-XP§.run(param1);
         return super.run(param1);
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc1_:Number = 0;
         §_-se§ = [];
         §_-t7§ = [];
         §_-oC§ = LevelManager.§_-h8§(LevelManager.§_-07s§).§_-h-§;
         §_-00N§ = §_-oC§;
         §_-TW§ = §_-oC§;
         var _loc2_:§_-0C5§ = LevelManager.§_-h8§(LevelManager.§_-07s§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§_-27§(_loc2_.pageIndexes[_loc3_]);
            §_-se§.push(_loc2_.§_-3k§(_loc3_));
            §_-t7§.push(_loc2_.§_-vx§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         §_-Bi§();
         if(§_-yr§ == StateCutScene.§_-pk§)
         {
            §_-yr§ = "";
            §_-Mx§(§_-TW§);
         }
         else
         {
            §_-Mx§(§_-oC§,true);
         }
      }
      
      override protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§_-0C5§) : Number
      {
         var _loc8_:XML = null;
         var _loc11_:String = null;
         var _loc12_:Boolean = false;
         var _loc13_:MovieClip = null;
         var _loc14_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §_-Fc§.§_-YE§(§_-t7§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc11_ = param1[_loc7_];
            _loc12_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc11_);
            _loc13_ = this.makeButtonForLevel(_loc11_,_loc12_,_loc6_,_loc7_,param2);
            (_loc14_ = <Button/>).@name = _loc11_;
            if(_loc12_ || AngryBirdsFP11.§_-LI§)
            {
               _loc14_.@MouseUp = _loc11_;
            }
            _loc14_.@scaleOnMouseOver = "True";
            _loc5_[0].push(new Array(_loc14_,null,_loc13_));
            if(_loc12_)
            {
               _loc13_.MovieClip_Stars.mouseEnabled = false;
            }
            _loc13_.TextField_LevelNum.text.mouseEnabled = false;
            _loc7_++;
         }
         _loc8_ = <Repeater/>;
         if(param1.length == 15)
         {
            _loc8_.@name = "Repeater_LevelSelection15";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = §_-t7§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:Number = param3;
         var _loc10_:§_-05d§;
         (_loc10_ = new §_-05d§(_loc8_,§_-g§,null,null)).§_-OR§ = 5;
         _loc10_.§_-UK§ = 0;
         _loc10_.§_-OQ§(_loc5_);
         _loc10_.setVisibility(true);
         _loc10_.x = param3;
         _loc10_.y = 50;
         §_-g§.addComponent(_loc10_);
         §_-0C§.push(_loc10_);
         return Number(_loc9_ + AngryBirdsFP11.§_-Uj§);
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §_-09d§).§_-06N§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §_-Fc§.§_-YE§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§_-N9§(param1).levelsPerPage;
         return _loc6_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §_-pX§.playSound("Menu_Back");
               §_-aa§.§_-yr§ = §_-pk§;
               mNextState = §_-Rp§.§_-pk§;
               break;
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §_-OY§.§_-7i§(_loc4_);
               §_-rG§.§_-rY§.§_-DE§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "showCredits":
               mNextState = §_-7A§.§_-pk§;
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§_-s0§.getItemByName("TextField_LevelNumberSmall") as §_-0Eo§).§_-ab§.text = (param1 + 1).toString();
      }
   }
}
