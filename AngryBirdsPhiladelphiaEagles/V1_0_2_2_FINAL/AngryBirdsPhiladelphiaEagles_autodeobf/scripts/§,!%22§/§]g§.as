package §,!"§
{
   import § !B§.§-#§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   
   public class §]g§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelEndFailStateRio";
       
      
      private var §!>§:§-#§;
      
      public function §]g§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §`Z§.§5c§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §`!K§.§6J§();
         if(_loc1_ && !AngryBirdsFP11.§`I§.isLevelOpen(_loc1_) || !AngryBirdsFP11.§`I§.isLevelPassed(§`!K§.§5g§))
         {
            (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_MightyEagle") as §^'§).setVisibility(true);
         }
         else if(§`!K§.§ !;§())
         {
            (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(true);
         }
         else
         {
            (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(true);
            (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(false);
         (§0q§.getItemByName("Button_MightyEagle") as §^'§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§!>§ = new §-#§(0,0,0,0);
         §0q§.movieClip.addChildAt(this.§!>§,§0q§.movieClip.numChildren - 1);
         this.showButtons();
         this.§!>§.fadeToAlpha(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §#! §.§`'§.clearLevel();
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§!>§)
         {
            if(§0q§.movieClip.contains(this.§!>§))
            {
               §0q§.movieClip.removeChild(this.§!>§);
            }
            this.§!>§.clean();
            this.§!>§ = null;
         }
         this.setButtonStates(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_NextLevel") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_CutScene") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §-O§.§ b§();
               mNextState = this.§5!>§();
               break;
            case "REPLAY":
               §-O§.§8!5§();
               mNextState = this.§5!'§();
               break;
            case "MENU":
               §[!7§.§=0§();
               mNextState = this.§@]§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`y§.§,,§();
         }
      }
      
      protected function §5!'§() : String
      {
         return §-O§.§-A§;
      }
      
      protected function §@]§() : String
      {
         return §0!5§.§-A§;
      }
      
      protected function §5!>§() : String
      {
         return StateCutScene.§-A§;
      }
   }
}
