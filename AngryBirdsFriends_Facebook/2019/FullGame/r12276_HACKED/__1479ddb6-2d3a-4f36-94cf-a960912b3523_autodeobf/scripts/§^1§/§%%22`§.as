package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §+!n§.§+!p§;
   import §-"Y§.§"!1§;
   import §2$;§.§;!b§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   
   public class §%"`§ extends §';§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §#"?§:§"!1§;
      
      public function §%"`§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §&n§.§7a§.Views.View_LevelEndFail[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = mLevelManager.getNextLevelId();
         if(_loc1_ && !AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !AngryBirdsBase.singleton.dataModel.userProgress.§@"z§(mLevelManager.currentLevel))
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_MightyEagle") as §;!b§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(true);
         }
         else
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(false);
         }
      }
      
      protected function §8#9§() : void
      {
         (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(false);
         (§@!D§.getItemByName("Button_MightyEagle") as §;!b§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §+!p§.pause();
         this.§#"?§ = new §"!1§(0,0,0,0);
         §@!D§.movieClip.addChildAt(this.§#"?§,§@!D§.movieClip.numChildren - 1);
         this.showButtons();
         this.§#"?§.§5d§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §+!p§.§`?§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#"?§)
         {
            if(§@!D§.movieClip.contains(this.§#"?§))
            {
               §@!D§.movieClip.removeChild(this.§#"?§);
            }
            this.§#"?§.§ !1§();
            this.§#"?§ = null;
         }
         this.setButtonStates(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§8#9§();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§@!D§.getItemByName("Button_Menu") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_Replay") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_CutScene") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_MightyEagle") as §;!b§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §%!?§(this.getCutSceneState());
               break;
            case "REPLAY":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(this.getLevelLoadState());
               break;
            case "MENU":
               §4$4§.§?#l§();
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §2t§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §;O§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
