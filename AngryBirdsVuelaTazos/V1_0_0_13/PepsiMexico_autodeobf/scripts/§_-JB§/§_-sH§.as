package §_-JB§
{
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-58§.§_-8c§;
   import §_-58§.§_-Bu§;
   import §_-58§.§_-WC§;
   import §_-58§.§_-sg§;
   import §_-7§.§_-ph§;
   import §_-De§.§_-a2§;
   import §_-FQ§.§_-ym§;
   import §_-He§.§_-05§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-LP§.§_-PH§;
   import §_-NB§.§_-mj§;
   import §_-PS§.§_-Xz§;
   import §_-cu§.§_-UO§;
   import §_-m7§.HighscoreSidebar;
   
   public class §_-sH§ extends §_-bH§
   {
      
      private static const §_-K4§:Number = -250;
      
      public static const §_-1h§:String = "PauseState";
       
      
      private var §_-Ka§:§_-PH§ = null;
      
      public function §_-sH§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-dM§)
         {
            _loc1_ = §_-dM§.currentPage;
         }
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.start();
         }
         this.§_-jc§();
         if(_loc1_)
         {
            §_-dM§.choosePage(_loc1_);
         }
         §_-dM§.changeState(HighscoreSidebar.§_-Zk§);
         §_-dM§.showHighscores(§_-Xz§.§_-AP§);
         §_-kl§.getItemByName("Button_Help").setEnabled(§_-a2§.§_-hd§());
         §_-kl§.getItemByName("Button_Help").setVisibility(§_-a2§.§_-hd§());
      }
      
      private function §_-jc§() : void
      {
         var _loc1_:String = §_-Xz§.§_-AP§;
         if(_loc1_.indexOf("1-") == 0)
         {
            _loc1_ = _loc1_.substring(2);
         }
         (§_-kl§.getItemByName("TextField_LevelName") as §_-sg§).§_-Ak§.text = _loc1_;
         (§_-kl§.getItemByName("Container_PauseMenu") as §_-WC§).x = §_-K4§;
         this.§_-3x§(false);
         §_-yh§.§_-hY§.§_-xg§ = true;
         §_-kl§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-2U§.§_-AU§());
         if(this.§_-Ka§ != null)
         {
            this.§_-Ka§.stop();
         }
         this.§_-Ka§ = §_-05§.§_-5y§(§_-05§.§_-Yr§(§_-kl§.getItemByName("Container_PauseMenu") as §_-WC§,{"x":0},null,0.25),§_-05§.§_-Yr§((§_-kl§.getItemByName("MovieClip_DarkBG") as §_-Bu§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-Ka§.addEventListener(§_-mj§.COMPLETE,this.§_-qp§);
         this.§_-Ka§.play();
      }
      
      private function §_-qp§(param1:§_-mj§) : void
      {
         this.§_-Ka§.removeEventListener(§_-mj§.COMPLETE,this.§_-qp§);
         this.§_-3x§(true);
      }
      
      private function §_-3x§(param1:Boolean) : void
      {
         (§_-kl§.getItemByName("Button_Resume") as §_-8c§).setEnabled(param1);
         (§_-kl§.getItemByName("Button_Replay") as §_-8c§).setEnabled(param1);
         (§_-kl§.getItemByName("Button_Menu") as §_-8c§).setEnabled(param1);
         (§_-kl§.getItemByName("Button_Help") as §_-8c§).setEnabled(param1);
         (§_-kl§.getItemByName("Button_Sound") as §_-8c§).setEnabled(param1);
         §_-kl§.getItemByName("Button_Help").setEnabled(§_-a2§.§_-hd§());
      }
      
      private function §_-s3§() : void
      {
         if(this.§_-Ka§ != null)
         {
            this.§_-Ka§.stop();
         }
         this.§_-Ka§ = §_-05§.§_-5y§(§_-05§.§_-Yr§(§_-kl§.getItemByName("Container_PauseMenu") as §_-WC§,{"x":§_-K4§},null,0.25),§_-05§.§_-Yr§((§_-kl§.getItemByName("MovieClip_DarkBG") as §_-Bu§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-Ka§.addEventListener(§_-mj§.COMPLETE,this.§_-Zm§);
         this.§_-Ka§.play();
      }
      
      private function §_-Zm§(param1:§_-mj§) : void
      {
         this.§_-Ka§.removeEventListener(§_-mj§.COMPLETE,this.§_-Zm§);
         mNextState = StatePlay.§_-1h§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-yh§.§_-hY§.§_-xg§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-ym§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-s3§();
               for each(_loc6_ in §_-ph§.§_-Tw§.mLevelSlingshot.§_-KC§)
               {
                  §_-2U§.§_-T1§.§_-Zt§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = §_-gc§.§_-1h§;
               §_-gc§.§_-hG§();
               break;
            case "RESUME_LEVEL":
               this.§_-s3§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               mNextState = §_-Sp§.§_-1h§;
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-2U§.§_-AU§();
               §_-2U§.§_-wm§(_loc4_);
               §_-kl§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-ph§.§_-B-§();
               §_-ph§.§_-J§(_loc5_);
               §_-kl§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
         }
      }
   }
}
