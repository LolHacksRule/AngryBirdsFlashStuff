package §7t§
{
   import §!!0§.SoundEngine;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §5!3§.§2!R§;
   import §6a§.UIButtonRovio;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   
   public class StateLevelEndFailRio extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §%!Q§:§2!R§;
      
      public function StateLevelEndFailRio(initState:Boolean = false, name:String = "LevelEndFailStateRio")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §+q§.§%M§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var nextLevelId:String = LevelManager.§8!I§();
         if(nextLevelId && !AngryBirdsFP11.sUserProgress.isLevelOpen(nextLevelId) || !AngryBirdsFP11.sUserProgress.§ R§(LevelManager.§1m§))
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(true);
         }
         else if(LevelManager.§%!M§())
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
         }
         else
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§%!Q§ = new §2!R§(0,0,0,0);
         §`=§.movieClip.addChildAt(this.§%!Q§,§`=§.movieClip.numChildren - 1);
         this.showButtons();
         this.§%!Q§.§`!]§(0.7);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(mNextState.length > 0)
         {
            §`S§.§[o§.clearLevel();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§%!Q§)
         {
            if(§`=§.movieClip.contains(this.§%!Q§))
            {
               §`=§.movieClip.removeChild(this.§%!Q§);
            }
            this.§%!Q§.clean();
            this.§%!Q§ = null;
         }
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(state:String) : void
      {
         (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(state);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "NEXT_LEVEL":
               StateLevelLoadClassic.§7^§();
               mNextState = this.§4!;§();
               break;
            case "REPLAY":
               StateLevelLoadClassic.§;!8§();
               mNextState = this.§4!6§();
               break;
            case "MENU":
               SoundEngine.§%!V§();
               mNextState = this.§@!W§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'t§.§0-§();
         }
      }
      
      protected function §4!6§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §@!W§() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
      
      protected function §4!;§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
