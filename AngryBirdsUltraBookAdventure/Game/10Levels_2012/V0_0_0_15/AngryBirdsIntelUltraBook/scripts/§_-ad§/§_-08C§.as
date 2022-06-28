package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-TG§.§_-pR§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   
   public class §_-08C§ extends §_-nG§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §_-pk§:String = "PauseState";
       
      
      protected var §_-ox§:§_-dd§ = null;
      
      public function §_-08C§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         § in§.§_-Dc§.background.§_-Ye§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §_-s0§.getItemByName("Button_Help").setVisibility(false);
         §_-s0§.getItemByName("Button_Sound").setVisibility(false);
         §_-s0§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §_-8V§() : void
      {
         if(this.§_-ox§)
         {
            this.§_-ox§.stop();
            this.§_-ox§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§_-HM§ != null)
         {
            (§_-s0§.getItemByName("TextField_LevelName") as §_-0Eo§).§_-ab§.text = LevelManager.§_-HM§;
         }
         (§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§).x = OFFSCREEN_X;
         this.§_-zH§(false);
         § in§.pause();
         §_-s0§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§_-Lz§());
         this.§_-8V§();
         this.§_-ox§ = §_-cx§.§_-3S§.§_-Tc§(§_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§,{"x":0},null,0.25),§_-cx§.§_-3S§.§_-Wf§((§_-s0§.getItemByName("MovieClip_DarkBG") as §_-k6§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-ox§.onComplete = this.§_-09M§;
         this.§_-ox§.play();
      }
      
      protected function §_-09M§() : void
      {
         this.§_-zH§(true);
         this.§_-8V§();
      }
      
      protected function §_-zH§(param1:Boolean) : void
      {
         (§_-s0§.getItemByName("Button_Resume") as §_-Mu§).setEnabled(param1);
         (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setEnabled(param1);
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setEnabled(param1);
         (§_-s0§.getItemByName("Button_Help") as §_-Mu§).setEnabled(param1);
         (§_-s0§.getItemByName("Button_Sound") as §_-Mu§).setEnabled(param1);
      }
      
      protected function §_-Lw§(param1:String) : void
      {
         (§_-s0§.getItemByName("Button_Resume") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_Help") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_Sound") as §_-Mu§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§_-8V§();
         this.§_-ox§ = §_-cx§.§_-3S§.§_-Tc§(§_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§,{"x":OFFSCREEN_X},null,0.25),§_-cx§.§_-3S§.§_-Wf§((§_-s0§.getItemByName("MovieClip_DarkBG") as §_-k6§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-ox§.onComplete = this.§_-cl§;
         this.§_-ox§.play();
      }
      
      protected function §_-cl§() : void
      {
         mNextState = this.§_-012§();
         this.§_-8V§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-8V§();
         this.§_-Lw§(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-pR§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in § in§.§_-Dc§.slingshot.§_-j9§)
               {
                  AngryBirdsFP11.sUserProgress.§_-09L§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§_-03M§();
               §_-MG§.§_-0Eg§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §_-pX§.§_-j4§();
               mNextState = this.§_-tz§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§_-Lz§();
               AngryBirdsFP11.§_-mv§(_loc4_);
               §_-s0§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§ in§.§_-0-I§();
               § in§.§_-bN§(_loc5_);
               §_-s0§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§_-07§.§_-0De§();
         }
      }
      
      protected function §_-012§() : String
      {
         return StatePlay.§_-pk§;
      }
      
      protected function §_-03M§() : String
      {
         return §_-MG§.§_-pk§;
      }
      
      protected function §_-tz§() : String
      {
         return §_-UO§.§_-pk§;
      }
   }
}
