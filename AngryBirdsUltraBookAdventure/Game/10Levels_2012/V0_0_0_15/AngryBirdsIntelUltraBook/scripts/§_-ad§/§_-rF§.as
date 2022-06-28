package §_-ad§
{
   import §_-0Ar§.§_-0AO§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-Mu§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   
   public class §_-rF§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelEndFailStateRio";
       
      
      private var §_-ny§:§_-0AO§;
      
      public function §_-rF§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §_-vB§.§_-ky§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§_-xE§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§_-Z3§(LevelManager.§_-HM§))
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setVisibility(true);
         }
         else if(LevelManager.§_-z2§())
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(true);
         }
         else
         {
            (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(true);
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(false);
         (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-ny§ = new §_-0AO§(0,0,0,0);
         §_-s0§.movieClip.addChildAt(this.§_-ny§,§_-s0§.movieClip.numChildren - 1);
         this.showButtons();
         this.§_-ny§.§_-Zs§(0.7);
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
            § in§.§_-Dc§.clearLevel();
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§_-ny§)
         {
            if(§_-s0§.movieClip.contains(this.§_-ny§))
            {
               §_-s0§.movieClip.removeChild(this.§_-ny§);
            }
            this.§_-ny§.clean();
            this.§_-ny§ = null;
         }
         this.setButtonStates(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setComponentVisualState(param1);
         (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-MG§.§_-4t§();
               mNextState = this.§_-k§();
               break;
            case "REPLAY":
               §_-MG§.§_-0Eg§();
               mNextState = this.§_-03M§();
               break;
            case "MENU":
               §_-pX§.§_-j4§();
               mNextState = this.§_-tz§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§_-07§.§_-0De§();
         }
      }
      
      protected function §_-03M§() : String
      {
         return §_-MG§.§_-pk§;
      }
      
      protected function §_-tz§() : String
      {
         return §_-UO§.§_-pk§;
      }
      
      protected function §_-k§() : String
      {
         return StateCutScene.§_-pk§;
      }
   }
}
