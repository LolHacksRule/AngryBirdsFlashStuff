package §;u§
{
   import §%i§.§7"0§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §]S§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §;!@§:§3"K§;
      
      public function §]S§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(this.§+!"§());
      }
      
      protected function §+!"§() : XML
      {
         return § "<§.§%I§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§8t§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§>!<§(LevelManager.§ T§))
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setVisibility(true);
         }
         else if(LevelManager.§%!8§())
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(true);
         }
         else
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
         }
      }
      
      protected function §[J§() : void
      {
         (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
         (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;!@§ = new §3"K§(0,0,0,0);
         §2"@§.movieClip.addChildAt(this.§;!@§,§2"@§.movieClip.numChildren - 1);
         this.showButtons();
         this.§;!@§.§!!4§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §?l§.§'h§.clearLevel();
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§;!@§)
         {
            if(§2"@§.movieClip.contains(this.§;!@§))
            {
               §2"@§.movieClip.removeChild(this.§;!@§);
            }
            this.§;!@§.clean();
            this.§;!@§ = null;
         }
         this.§-!$§(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§[J§();
      }
      
      protected function §-!$§(param1:String) : void
      {
         (§2"@§.getItemByName("Button_Menu") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_Replay") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_CutScene") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §-!v§.§>"@§();
         mNextState = this.getCutSceneState();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §-!v§.§^!$§();
               mNextState = this.getLevelLoadState();
               break;
            case "MENU":
               §@"M§.§3!s§();
               mNextState = this.getLevelSelectionState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§>m§.§=-§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §-!v§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §9"@§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
