package §]§
{
   import § "L§.§1"r§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §+`§.§%"q§;
   import §-#;§.§5#J§;
   import §3"V§.§ b§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   
   public class §>"d§ extends §1$?§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §##h§:§5#J§;
      
      public function §>"d§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §false§.§4#;§.Views.View_LevelEndFail[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = mLevelManager.getNextLevelId();
         if(_loc1_ && !AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !AngryBirdsBase.singleton.dataModel.userProgress.§&#2§(mLevelManager.currentLevel))
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_MightyEagle") as §1"r§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(true);
         }
         else
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(false);
         }
      }
      
      protected function §3"7§() : void
      {
         (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(false);
         (§;!w§.getItemByName("Button_MightyEagle") as §1"r§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]$?§.pause();
         this.§##h§ = new §5#J§(0,0,0,0);
         §;!w§.movieClip.addChildAt(this.§##h§,§;!w§.movieClip.numChildren - 1);
         this.showButtons();
         this.§##h§.§?!4§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §]$?§.§2#§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§##h§)
         {
            if(§;!w§.movieClip.contains(this.§##h§))
            {
               §;!w§.movieClip.removeChild(this.§##h§);
            }
            this.§##h§.§<![§();
            this.§##h§ = null;
         }
         this.setButtonStates(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§3"7§();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§;!w§.getItemByName("Button_Menu") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_Replay") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_CutScene") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_MightyEagle") as §1"r§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §3#§(this.getCutSceneState());
               break;
            case "REPLAY":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(this.getLevelLoadState());
               break;
            case "MENU":
               § b§.§#! §();
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§`<§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §8$C§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §#!$§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
