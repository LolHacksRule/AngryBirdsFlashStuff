package §_-T-§
{
   import §_-0A-§.§_-08e§;
   import §_-0Ar§.§_-0F0§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-k6§;
   import §_-7§.§_-Ce§;
   import §_-7§.§_-EJ§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-Y8§.§_-05J§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.§_-08x§;
   import §_-eS§.§_-OY§;
   import §_-mh§.§_-09d§;
   import §_-qO§.§ in§;
   import §_-ry§.UserProgressEvent;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-ul§ extends §_-08x§
   {
       
      
      private var §_-tp§:§_-Ce§;
      
      private var §_-j-§:String;
      
      private var §_-gd§:String;
      
      protected var §_-Dl§:Boolean = false;
      
      private var §_-Py§:Boolean = false;
      
      public function §_-ul§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-02b§);
         § in§.§_-Dc§.background.§_-Ye§();
         if(LevelManager.§_-1a§().name == "1000")
         {
            §_-s0§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         if(this.§_-Dl§)
         {
            this.§_-Vu§();
         }
      }
      
      override public function deActivate() : void
      {
         §_-s0§.getItemByName("Button_Share_Default").setVisibility(false);
         §_-s0§.getItemByName("Button_Share_Crown").setVisibility(false);
         §_-s0§.getItemByName("Button_Share_Stars").setVisibility(false);
         this.§_-Py§ = false;
         super.deActivate();
      }
      
      protected function §_-Vu§() : void
      {
         §_-s0§.getItemByName("Button_Share_Default").setVisibility(false);
         §_-s0§.getItemByName("Button_Share_Crown").setVisibility(false);
         §_-s0§.getItemByName("Button_Share_Stars").setVisibility(false);
         §_-s0§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.onBadgeLanded();
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §_-09d§).§_-06N§(LevelManager.§_-HM§);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §_-09d§).getEagleScoreForLevel(LevelManager.§_-HM§);
         if(!this.§_-Dl§)
         {
            if(§_-Cm§ && _loc1_ == 1)
            {
               this.§_-gd§ = "crown";
               §_-s0§.getItemByName("Button_Share_Default").setVisibility(false);
               §_-s0§.getItemByName("Button_Share_Crown").setVisibility(true);
               §_-s0§.getItemByName("Button_Share_Stars").setVisibility(false);
               _loc3_ = §_-s0§.getItemByName("Button_Share_Crown").x + §_-s0§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §_-s0§.getItemByName("Button_Share_Crown").y + §_-s0§.getItemByName("Container_LevelEndStripe").y;
               §_-Oo§ = new §_-0F0§(AngryBirdsFP11.§_-Uj§,AngryBirdsFP11.§_-06d§,_loc3_,_loc4_,§_-0F0§.§_-J1§,20);
               §_-s0§.addChild(§_-Oo§);
               §_-0Bc§.push(§_-Oo§);
               §_-pX§.playSound("Hiscore_Star_Splash1",§_-6b§);
            }
            else if(§_-08Y§)
            {
               this.§_-gd§ = "stars";
               §_-s0§.getItemByName("Button_Share_Default").setVisibility(false);
               §_-s0§.getItemByName("Button_Share_Crown").setVisibility(false);
               §_-s0§.getItemByName("Button_Share_Stars").setVisibility(true);
               _loc3_ = §_-s0§.getItemByName("Button_Share_Stars").x + §_-s0§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §_-s0§.getItemByName("Button_Share_Stars").y + §_-s0§.getItemByName("Container_LevelEndStripe").y;
               §_-Oo§ = new §_-0F0§(AngryBirdsFP11.§_-Uj§,AngryBirdsFP11.§_-06d§,_loc3_,_loc4_,§_-0F0§.§_-J1§,20);
               §_-s0§.addChild(§_-Oo§);
               §_-0Bc§.push(§_-Oo§);
               §_-pX§.playSound("Hiscore_Star_Splash1",§_-6b§);
            }
            else
            {
               this.§_-gd§ = "";
               §_-s0§.getItemByName("Button_Share_Default").setVisibility(true);
               §_-s0§.getItemByName("Button_Share_Crown").setVisibility(false);
               §_-s0§.getItemByName("Button_Share_Stars").setVisibility(false);
            }
         }
         else
         {
            this.§_-Vu§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:int = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §_-09d§).§_-HO§ && _loc4_.indexOf(param2) != -1)
         {
            this.§_-tp§ = §_-EJ§.§_-9a§();
            this.§_-j-§ = param2;
            (AngryBirdsFP11.sUserProgress as §_-09d§).addEventListener(UserProgressEvent.§_-Wl§,this.§_-Yd§);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc5_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §_-OY§.§_-7i§(_loc5_);
               §_-rG§.§_-rY§.§_-DE§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            case "SHARE_CROWN":
               AngryBirdsFP11.§_-07§.§_-DE§();
               _loc7_ = (AngryBirdsFP11.sUserProgress as §_-09d§).§_-06N§(LevelManager.§_-HM§);
               §_-05J§.§_-0At§("shareCrown",LevelManager.§_-HM§,LevelManager.§_-1a§().writtenName + "-" + §_-08e§.§_-i8§(LevelManager.§_-HM§),_loc7_,§ in§.§_-03s§.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§_-07§.§_-DE§();
               §_-05J§.§_-0At§("shareThreeStars",LevelManager.§_-HM§,LevelManager.§_-1a§().writtenName + "-" + §_-08e§.§_-i8§(LevelManager.§_-HM§),§ in§.§_-03s§.getScore());
               break;
            case "SHARE_DEFAULT":
               §_-05J§.§_-0At§("shareDefault",LevelManager.§_-HM§,LevelManager.§_-1a§().writtenName + "-" + §_-08e§.§_-i8§(LevelManager.§_-HM§),§ in§.§_-03s§.getScore(),true);
               break;
            case "EMBED":
               §_-EJ§.§_-05y§(LevelManager.§_-HM§,LevelManager.§_-1a§().writtenName + "-" + §_-08e§.§_-i8§(LevelManager.§_-HM§),§ in§.§_-03s§.getScore(),this.§_-gd§);
         }
      }
      
      protected function §_-Yd§(param1:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §_-09d§).removeEventListener(UserProgressEvent.§_-Wl§,this.§_-Yd§);
         if(this.§_-tp§)
         {
            this.§_-tp§.close();
            this.§_-tp§ = null;
         }
         this.uiInteractionHandler(-1,this.§_-j-§,null);
         this.§_-j-§ = null;
      }
      
      protected function saveLevelProgress() : void
      {
         (§ in§.§_-HY§ as §_-rG§).newUserScore(LevelManager.§_-HM§);
         (AngryBirdsFP11.sUserProgress as §_-09d§).saveLevelProgress(LevelManager.§_-HM§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§_-HM§);
         var _loc3_:int = § in§.§_-03s§.getScore();
         §_-Cm§ = _loc3_ > _loc2_;
         §_-00K§(_loc3_,_loc2_);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§_-HM§,_loc3_);
         (§_-s0§.getItemByName("MovieClip_NewHighScoreBadge") as §_-k6§).setVisibility(false);
         (§_-s0§.getItemByName("MovieClip_StarLeft") as §_-k6§).mClip.gotoAndStop("UnLit");
         (§_-s0§.getItemByName("MovieClip_StarCenter") as §_-k6§).mClip.gotoAndStop("UnLit");
         (§_-s0§.getItemByName("MovieClip_StarRight") as §_-k6§).mClip.gotoAndStop("UnLit");
         if(§_-Cm§)
         {
            this.saveLevelProgress();
         }
         (§ in§.§_-HY§ as §_-rG§).§_-0C7§.§_-LA§ = false;
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setComponentVisualState(param1);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         §_-tl§.push((§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x);
         §_-tl§.push((§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x);
         §_-tl§.push((§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).x);
         §_-tl§.push((§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x);
      }
      
      override protected function getViewXML() : XML
      {
         return §_-vB§.§_-ky§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§_-Z3§(LevelManager.§_-HM§))
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = §_-tl§[0] + Math.abs(§_-tl§[1] - §_-tl§[0]) / 2;
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x = §_-tl§[1] + Math.abs(§_-tl§[2] - §_-tl§[1]) / 2;
         }
         else
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = §_-tl§[0];
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = §_-tl§[1];
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).x = §_-tl§[2];
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setVisibility(true);
         (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setVisibility(true);
         (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(false);
         if(LevelManager.§_-xE§())
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = §_-tl§[0];
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = §_-tl§[1];
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).x = §_-tl§[2];
         }
         else
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x = §_-tl§[0] + Math.abs(§_-tl§[1] - §_-tl§[0]) / 2;
            (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x = §_-tl§[1] + Math.abs(§_-tl§[2] - §_-tl§[1]) / 2;
         }
      }
   }
}
