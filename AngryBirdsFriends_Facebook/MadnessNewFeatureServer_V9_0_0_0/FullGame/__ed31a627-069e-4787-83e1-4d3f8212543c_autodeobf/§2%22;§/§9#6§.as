package §2";§
{
   import § !j§.§4#c§;
   import §#,§.§ !>§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §5"t§.§<#r§;
   import §8#K§.§3Z§;
   import §`#@§.§7n§;
   
   public class §9#6§ extends §7!z§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §4!§:§<#r§;
      
      public function §9#6§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §?l§.§3m§.Views.View_LevelEndFail[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = mLevelManager.getNextLevelId();
         if(_loc1_ && !AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !AngryBirdsBase.singleton.dataModel.userProgress.§6!b§(mLevelManager.currentLevel))
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_MightyEagle") as § !>§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(true);
         }
         else
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(false);
         }
      }
      
      protected function §!n§() : void
      {
         (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(false);
         (§[$5§.getItemByName("Button_MightyEagle") as § !>§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §7n§.pause();
         this.§4!§ = new §<#r§(0,0,0,0);
         §[$5§.movieClip.addChildAt(this.§4!§,§[$5§.movieClip.numChildren - 1);
         this.showButtons();
         this.§4!§.§>#0§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §7n§.§6#K§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§4!§)
         {
            if(§[$5§.movieClip.contains(this.§4!§))
            {
               §[$5§.movieClip.removeChild(this.§4!§);
            }
            this.§4!§.§"#%§();
            this.§4!§ = null;
         }
         this.setButtonStates(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§!n§();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§[$5§.getItemByName("Button_Menu") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_Replay") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_NextLevel") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_CutScene") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_MightyEagle") as § !>§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §1!L§(this.getCutSceneState());
               break;
            case "REPLAY":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(this.getLevelLoadState());
               break;
            case "MENU":
               §3Z§.§3j§();
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§1a§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §9!R§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §9#7§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
