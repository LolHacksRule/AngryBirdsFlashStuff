package §3=§
{
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>#O§.§]U§;
   
   public class §0K§ extends §-"4§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §>5§:§]U§;
      
      public function §0K§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §0"j§.§-i§.Views.View_LevelEndFail[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = mLevelManager.getNextLevelId();
         if(_loc1_ && !AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !AngryBirdsBase.singleton.dataModel.userProgress.§""3§(mLevelManager.currentLevel))
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_MightyEagle") as §"S§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(true);
         }
         else
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(false);
         }
      }
      
      protected function §=!K§() : void
      {
         (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(false);
         (§<"`§.getItemByName("Button_MightyEagle") as §"S§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §%"T§.pause();
         this.§>5§ = new §]U§(0,0,0,0);
         §<"`§.movieClip.addChildAt(this.§>5§,§<"`§.movieClip.numChildren - 1);
         this.showButtons();
         this.§>5§.§3#q§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §%"T§.§;`§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§>5§)
         {
            if(§<"`§.movieClip.contains(this.§>5§))
            {
               §<"`§.movieClip.removeChild(this.§>5§);
            }
            this.§>5§.§4#y§();
            this.§>5§ = null;
         }
         this.setButtonStates(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§=!K§();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§<"`§.getItemByName("Button_Menu") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_Replay") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_NextLevel") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_CutScene") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_MightyEagle") as §"S§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §%D§(this.getCutSceneState());
               break;
            case "REPLAY":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(this.getLevelLoadState());
               break;
            case "MENU":
               §[#%§.§^L§();
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§3'§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §#$@§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §8$8§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
