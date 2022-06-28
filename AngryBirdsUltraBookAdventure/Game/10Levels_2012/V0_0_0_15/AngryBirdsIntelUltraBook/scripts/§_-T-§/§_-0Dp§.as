package §_-T-§
{
   import §_-0A-§.§_-08e§;
   import §_-0AB§.§_-cx§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.§_-08C§;
   import §_-eS§.§_-OY§;
   import §_-qO§.§ in§;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class §_-0Dp§ extends §_-08C§
   {
       
      
      public function §_-0Dp§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §_-I8§ = true;
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_FacebookLevelPause[0]);
         §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
         var _loc1_:§_-0Eo§ = §_-s0§.getItemByName("TextField_ChapterName") as §_-0Eo§;
         _loc1_.§_-ab§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-02b§);
      }
      
      protected function §_-SH§(param1:String) : String
      {
         return §_-08e§.§_-i8§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§_-0Eo§ = null;
         if(LevelManager.§_-HM§ != null)
         {
            _loc1_ = §_-s0§.getItemByName("TextField_ChapterName") as §_-0Eo§;
            _loc1_.§_-ab§.text = LevelManager.§_-1a§().writtenName;
            (§_-s0§.getItemByName("TextField_LevelName") as §_-0Eo§).§_-ab§.text = this.§_-SH§(LevelManager.§_-HM§);
         }
         (§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§).x = §_-08C§.OFFSCREEN_X;
         §_-zH§(false);
         § in§.pause();
         if(§_-ox§ != null)
         {
            §_-ox§.stop();
         }
         §_-ox§ = §_-cx§.§_-3S§.§_-Tc§(§_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§,{"x":0},null,0.25),§_-cx§.§_-3S§.§_-Wf§((§_-s0§.getItemByName("MovieClip_DarkBG") as §_-k6§).mClip,{"alpha":1},{"alpha":0},0.25));
         §_-ox§.onComplete = §_-09M§;
         §_-ox§.play();
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         §_-s0§.getItemByName("Button_Help").setVisibility(false);
         §_-s0§.getItemByName("Button_Sound").setVisibility(false);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§_-ox§ != null)
         {
            §_-ox§.stop();
         }
         §_-ox§ = §_-cx§.§_-3S§.§_-Tc§(§_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§,{"x":OFFSCREEN_X},null,0.25),§_-cx§.§_-3S§.§_-Wf§((§_-s0§.getItemByName("MovieClip_DarkBG") as §_-k6§).mClip,{"alpha":0},{"alpha":1},0.25));
         §_-ox§.onComplete = §_-cl§;
         §_-ox§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         switch(param2)
         {
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§_-Lz§();
               AngryBirdsFP11.§_-mv§(_loc4_);
               break;
            case "LEARN_MORE":
               _loc5_ = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
               §_-OY§.§_-7i§(_loc5_);
               §_-rG§.§_-rY§.§_-DE§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
