package §_-RV§
{
   import § do§.§_-WQ§;
   import §_-7V§.§_-Gs§;
   import §_-7x§.§_-4O§;
   import §_-Di§.§_-aX§;
   import §_-Ku§.§_-Ha§;
   import §_-Ll§.§_-4G§;
   import §_-Ll§.§_-FU§;
   import §_-Ll§.§_-JL§;
   import §_-Ll§.§_-iE§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-cJ§.§_-WM§;
   import §_-cJ§.§_-xx§;
   import §_-iZ§.HighscoreSidebar;
   import §_-pm§.§_-gb§;
   
   public class §_-yZ§ extends §_-oI§
   {
      
      private static const §_-Qh§:Number = -250;
      
      public static const §_-8r§:String = "PauseState";
       
      
      private var §_-rH§:§_-WM§ = null;
      
      public function §_-yZ§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-e0§)
         {
            _loc1_ = §_-e0§.currentPage;
         }
         super.activate();
         §_-gb§.§_-ls§.§_-2L§(true);
         this.§_-fh§();
         if(_loc1_)
         {
            §_-e0§.choosePage(_loc1_);
         }
         §_-e0§.changeState(HighscoreSidebar.§_-LI§);
         §_-e0§.showHighscores(§_-4O§.§_-FH§);
         §_-MF§.getItemByName("Button_Help").setEnabled(§_-WQ§.§_-RI§());
         §_-MF§.getItemByName("Button_Help").setVisibility(§_-WQ§.§_-RI§());
      }
      
      private function §_-fh§() : void
      {
         var _loc1_:String = §_-4O§.§_-FH§;
         if(_loc1_.indexOf("1-") == 0)
         {
            _loc1_ = _loc1_.substring(2);
         }
         (§_-MF§.getItemByName("TextField_LevelName") as §_-JL§).§_-ML§.text = _loc1_;
         (§_-MF§.getItemByName("Container_PauseMenu") as §_-4G§).x = §_-Qh§;
         this.§_-Le§(false);
         §_-Ha§.§for §.§_-vd§ = true;
         §_-MF§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-q0§.§_-fT§());
         if(this.§_-rH§ != null)
         {
            this.§_-rH§.stop();
         }
         this.§_-rH§ = §_-xx§.§_-uP§.§_-vU§(§_-xx§.§_-uP§.§_-Vb§(§_-MF§.getItemByName("Container_PauseMenu") as §_-4G§,{"x":0},null,0.25),§_-xx§.§_-uP§.§_-Vb§((§_-MF§.getItemByName("MovieClip_DarkBG") as §_-iE§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-rH§.onComplete = this.§_-E4§;
         this.§_-rH§.play();
      }
      
      private function §_-E4§() : void
      {
         this.§_-Le§(true);
      }
      
      private function §_-Le§(param1:Boolean) : void
      {
         (§_-MF§.getItemByName("Button_Resume") as §_-FU§).setEnabled(param1);
         (§_-MF§.getItemByName("Button_Replay") as §_-FU§).setEnabled(param1);
         (§_-MF§.getItemByName("Button_Menu") as §_-FU§).setEnabled(param1);
         (§_-MF§.getItemByName("Button_Help") as §_-FU§).setEnabled(param1);
         (§_-MF§.getItemByName("Button_Sound") as §_-FU§).setEnabled(param1);
         §_-MF§.getItemByName("Button_Help").setEnabled(§_-WQ§.§_-RI§());
      }
      
      private function §_-JN§() : void
      {
         if(this.§_-rH§ != null)
         {
            this.§_-rH§.stop();
         }
         this.§_-rH§ = §_-xx§.§_-uP§.§_-vU§(§_-xx§.§_-uP§.§_-Vb§(§_-MF§.getItemByName("Container_PauseMenu") as §_-4G§,{"x":§_-Qh§},null,0.25),§_-xx§.§_-uP§.§_-Vb§((§_-MF§.getItemByName("MovieClip_DarkBG") as §_-iE§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-rH§.onComplete = this.§_-Tc§;
         this.§_-rH§.play();
      }
      
      private function §_-Tc§() : void
      {
         mNextState = StatePlay.§_-8r§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-Ha§.§for §.§_-vd§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-aX§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-JN§();
               for each(_loc6_ in §_-gb§.§_-ls§.slingshot.§_-TO§)
               {
                  §_-q0§.§_-AI§.§_-U3§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = §_-Py§.§_-8r§;
               §_-Py§.§_-vF§();
               break;
            case "RESUME_LEVEL":
               this.§_-JN§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               mNextState = §_-V9§.§_-8r§;
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-q0§.§_-fT§();
               §_-q0§.§if§(_loc4_);
               §_-MF§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-gb§.§_-kS§();
               §_-gb§.§_-ki§(_loc5_);
               §_-MF§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
         }
      }
   }
}
