package §_-5M§
{
   import §_-0y§.§_-YK§;
   import §_-3P§.§_-dN§;
   import §_-B2§.§_-H4§;
   import §_-E-§.§_-Fy§;
   import §_-E-§.§_-RT§;
   import §_-E-§.§_-hw§;
   import §_-E-§.§_-mm§;
   import §_-I1§.§_-2N§;
   import §_-Je§.§_-RH§;
   import §_-Kj§.§_-8u§;
   import §_-LL§.HighscoreSidebar;
   import §_-PK§.§_-Jb§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   import §_-XK§.§_-tC§;
   import §_-hE§.§_-Rv§;
   import §in §.§_-tX§;
   
   public class §_-0j§ extends §_-7C§
   {
      
      private static const §_-Qq§:Number = -250;
      
      public static const §_-7J§:String = "PauseState";
       
      
      private var §_-S9§:§_-8u§ = null;
      
      public function §_-0j§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-6B§)
         {
            _loc1_ = §_-6B§.currentPage;
         }
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.start();
         }
         this.§_-J1§();
         if(_loc1_)
         {
            §_-6B§.choosePage(_loc1_);
         }
         §_-6B§.changeState(HighscoreSidebar.§_-uf§);
         §_-6B§.showHighscores(§_-dN§.§_-fy§);
         §_-wB§.getItemByName("Button_Help").setEnabled(§_-Rv§.§super§());
         §_-wB§.getItemByName("Button_Help").setVisibility(§_-Rv§.§super§());
      }
      
      private function §_-J1§() : void
      {
         var _loc1_:String = §_-dN§.§_-fy§;
         if(_loc1_.indexOf("1-") == 0)
         {
            _loc1_ = _loc1_.substring(2);
         }
         (§_-wB§.getItemByName("TextField_LevelName") as §_-mm§).§_-3U§.text = _loc1_;
         (§_-wB§.getItemByName("Container_PauseMenu") as §_-hw§).x = §_-Qq§;
         this.§_-FS§(false);
         §_-H4§.§_-5y§.§_-Jq§ = true;
         §_-wB§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-5e§.§_-eC§());
         if(this.§_-S9§ != null)
         {
            this.§_-S9§.stop();
         }
         this.§_-S9§ = §_-tX§.§_-oj§(§_-tX§.§finally§(§_-wB§.getItemByName("Container_PauseMenu") as §_-hw§,{"x":0},null,0.25),§_-tX§.§finally§((§_-wB§.getItemByName("MovieClip_DarkBG") as §_-RT§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-S9§.addEventListener(§_-tC§.COMPLETE,this.§_-WQ§);
         this.§_-S9§.play();
      }
      
      private function §_-WQ§(param1:§_-tC§) : void
      {
         this.§_-S9§.removeEventListener(§_-tC§.COMPLETE,this.§_-WQ§);
         this.§_-FS§(true);
      }
      
      private function §_-FS§(param1:Boolean) : void
      {
         (§_-wB§.getItemByName("Button_Resume") as §_-Fy§).setEnabled(param1);
         (§_-wB§.getItemByName("Button_Replay") as §_-Fy§).setEnabled(param1);
         (§_-wB§.getItemByName("Button_Menu") as §_-Fy§).setEnabled(param1);
         (§_-wB§.getItemByName("Button_Help") as §_-Fy§).setEnabled(param1);
         (§_-wB§.getItemByName("Button_Sound") as §_-Fy§).setEnabled(param1);
         §_-wB§.getItemByName("Button_Help").setEnabled(§_-Rv§.§super§());
      }
      
      private function §_-tl§() : void
      {
         if(this.§_-S9§ != null)
         {
            this.§_-S9§.stop();
         }
         this.§_-S9§ = §_-tX§.§_-oj§(§_-tX§.§finally§(§_-wB§.getItemByName("Container_PauseMenu") as §_-hw§,{"x":§_-Qq§},null,0.25),§_-tX§.§finally§((§_-wB§.getItemByName("MovieClip_DarkBG") as §_-RT§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-S9§.addEventListener(§_-tC§.COMPLETE,this.§_-6O§);
         this.§_-S9§.play();
      }
      
      private function §_-6O§(param1:§_-tC§) : void
      {
         this.§_-S9§.removeEventListener(§_-tC§.COMPLETE,this.§_-6O§);
         mNextState = StatePlay.§_-7J§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-H4§.§_-5y§.§_-Jq§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-YK§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-tl§();
               for each(_loc6_ in §_-2N§.§_-iP§.mLevelSlingshot.mBirds)
               {
                  §_-5e§.§_-Yn§.§_-cm§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = §_-G§.§_-7J§;
               §_-G§.§_-pN§();
               break;
            case "RESUME_LEVEL":
               this.§_-tl§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               mNextState = §_-Vn§.§_-7J§;
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-5e§.§_-eC§();
               §_-5e§.§_-4d§(_loc4_);
               §_-wB§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-2N§.§_-Ki§();
               §_-2N§.§_-oO§(_loc5_);
               §_-wB§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
         }
      }
   }
}
