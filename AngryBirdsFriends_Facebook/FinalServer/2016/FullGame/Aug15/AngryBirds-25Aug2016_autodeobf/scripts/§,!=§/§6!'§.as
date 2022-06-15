package §,!=§
{
   import §#v§.§#!?§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'U§.§]#[§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §<!=§.§;§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   
   public class §6!'§ extends §7"S§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §"?§:§;#1§;
      
      public function §6!'§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §@#`§.§#!c§.Views.View_LevelEndFail[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = mLevelManager.getNextLevelId();
         if(_loc1_ && !AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !AngryBirdsBase.singleton.dataModel.userProgress.§4! §(mLevelManager.currentLevel))
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_MightyEagle") as §=O§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(true);
         }
         else
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(false);
         }
      }
      
      protected function §,b§() : void
      {
         (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(false);
         (§!$§.getItemByName("Button_MightyEagle") as §=O§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §>"$§.pause();
         this.§"?§ = new §;#1§(0,0,0,0);
         §!$§.movieClip.addChildAt(this.§"?§,§!$§.movieClip.numChildren - 1);
         this.showButtons();
         this.§"?§.§@!z§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §>"$§.§3#'§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§"?§)
         {
            if(§!$§.movieClip.contains(this.§"?§))
            {
               §!$§.movieClip.removeChild(this.§"?§);
            }
            this.§"?§.§4#1§();
            this.§"?§ = null;
         }
         this.§&"<§(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§,b§();
      }
      
      protected function §&"<§(param1:String) : void
      {
         (§!$§.getItemByName("Button_Menu") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_Replay") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_NextLevel") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_CutScene") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_MightyEagle") as §=O§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §7P§(this.getCutSceneState());
               break;
            case "REPLAY":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(this.getLevelLoadState());
               break;
            case "MENU":
               §#$+§.§#$-§();
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§&f§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §@#j§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §<!B§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
