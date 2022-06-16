package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §'",§.§6#s§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§>"0§;
   import §@!M§.§!"p§;
   
   public class §;$+§ extends §@"S§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §"!7§:§6#s§;
      
      public function §;$+§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §1Q§.§5T§.Views.View_LevelEndFail[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = mLevelManager.getNextLevelId();
         if(_loc1_ && !AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !AngryBirdsBase.singleton.dataModel.userProgress.§,!§(mLevelManager.currentLevel))
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_MightyEagle") as §>"0§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(true);
         }
         else
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(false);
         }
      }
      
      protected function §;"f§() : void
      {
         (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(false);
         (§`!H§.getItemByName("Button_MightyEagle") as §>"0§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3#U§.pause();
         this.§"!7§ = new §6#s§(0,0,0,0);
         §`!H§.movieClip.addChildAt(this.§"!7§,§`!H§.movieClip.numChildren - 1);
         this.showButtons();
         this.§"!7§.§>$6§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §3#U§.§#$4§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§"!7§)
         {
            if(§`!H§.movieClip.contains(this.§"!7§))
            {
               §`!H§.movieClip.removeChild(this.§"!7§);
            }
            this.§"!7§.§,"I§();
            this.§"!7§ = null;
         }
         this.setButtonStates(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§;"f§();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§`!H§.getItemByName("Button_Menu") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_Replay") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_CutScene") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_MightyEagle") as §>"0§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §1"h§(this.getCutSceneState());
               break;
            case "REPLAY":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(this.getLevelLoadState());
               break;
            case "MENU":
               §!"p§.§>#p§();
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§5#p§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §8"o§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §1S§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
