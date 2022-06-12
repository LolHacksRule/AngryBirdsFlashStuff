package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §-B§.§]!<§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import §@!4§.§^C§;
   import §`!n§.LevelManager;
   
   public class §9!M§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §!F§:§^C§;
      
      public function §9!M§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(this.§;!7§());
      }
      
      protected function §;!7§() : XML
      {
         return §%^§.§?>§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§&4§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§=!W§(LevelManager.§`-§))
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_MightyEagle") as §]!<§).setVisibility(true);
         }
         else if(LevelManager.§;"@§())
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(true);
         }
         else
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(false);
         }
      }
      
      protected function §#"7§() : void
      {
         (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(false);
         (§2!K§.getItemByName("Button_MightyEagle") as §]!<§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§!F§ = new §^C§(0,0,0,0);
         §2!K§.movieClip.addChildAt(this.§!F§,§2!K§.movieClip.numChildren - 1);
         this.showButtons();
         this.§!F§.§%"K§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §&2§.§],§.clearLevel();
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§!F§)
         {
            if(§2!K§.movieClip.contains(this.§!F§))
            {
               §2!K§.movieClip.removeChild(this.§!F§);
            }
            this.§!F§.clean();
            this.§!F§ = null;
         }
         this.§9"4§(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§#"7§();
      }
      
      protected function §9"4§(param1:String) : void
      {
         (§2!K§.getItemByName("Button_Menu") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_Replay") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_CutScene") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_MightyEagle") as §]!<§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §'!N§.§7!Z§();
         mNextState = this.getCutSceneState();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §'!N§.§^R§();
               mNextState = this.getLevelLoadState();
               break;
            case "MENU":
               §+m§.§2!2§();
               mNextState = this.getLevelSelectionState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§#!4§.§-"F§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §'!N§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §[2§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
