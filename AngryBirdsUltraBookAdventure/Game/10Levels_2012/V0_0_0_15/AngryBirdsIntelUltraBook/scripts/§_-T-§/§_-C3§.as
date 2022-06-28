package §_-T-§
{
   import §_-0A-§.§_-08e§;
   import §_-6C§.§_-Mu§;
   import §_-7§.§_-EJ§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-Y8§.§_-05J§;
   import §_-ad§.§_-rF§;
   import §_-eS§.§_-OY§;
   import §_-qO§.§ in§;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-C3§ extends §_-rF§
   {
       
      
      private var §_-tl§:Array;
      
      public function §_-C3§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         this.§_-tl§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§_-tl§.push((§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x);
         this.§_-tl§.push((§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x);
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
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setComponentVisualState(param1);
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§_-xE§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§_-Z3§(LevelManager.§_-HM§))
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
         }
         else if(LevelManager.§_-z2§())
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
         }
         else
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(true);
         }
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §_-OY§.§_-7i§(_loc4_);
               §_-rG§.§_-rY§.§_-DE§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "SHARE_DEFAULT":
               §_-05J§.§_-0At§("shareDefault",LevelManager.§_-HM§,LevelManager.§_-1a§().writtenName + "-" + §_-08e§.§_-i8§(LevelManager.§_-HM§),0,false);
               break;
            case "EMBED":
               §_-EJ§.§_-05y§(LevelManager.§_-HM§,LevelManager.§_-1a§().writtenName + "-" + §_-08e§.§_-i8§(LevelManager.§_-HM§),§ in§.§_-03s§.getScore(),"");
         }
      }
   }
}
