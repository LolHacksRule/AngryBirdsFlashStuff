package §<!S§
{
   import § D§.§]!B§;
   import §"!@§.§!!8§;
   import §"L§.LevelManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.UIButtonRovio;
   
   public class StateLevelEndFailRio extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var § !A§:§!!8§;
      
      public function StateLevelEndFailRio(initState:Boolean = false, name:String = "LevelEndFailStateRio")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §>!^§.§8'§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var nextLevelId:String = LevelManager.§>!1§();
         if(nextLevelId && !AngryBirdsFP11.sUserProgress.isLevelOpen(nextLevelId) || !AngryBirdsFP11.sUserProgress.§7n§(LevelManager.§var§))
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(true);
         }
         else if(LevelManager.§>s§())
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
         }
         else
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§ !A§ = new §!!8§(0,0,0,0);
         §5!M§.movieClip.addChildAt(this.§ !A§,§5!M§.movieClip.numChildren - 1);
         this.showButtons();
         this.§ !A§.§6k§(0.7);
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
            §]!B§.§>F§.clearLevel();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§ !A§)
         {
            if(§5!M§.movieClip.contains(this.§ !A§))
            {
               §5!M§.movieClip.removeChild(this.§ !A§);
            }
            this.§ !A§.clean();
            this.§ !A§ = null;
         }
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(state:String) : void
      {
         (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(state);
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
               StateLevelLoadClassic.§[!6§();
               mNextState = this.§"!b§();
               break;
            case "REPLAY":
               StateLevelLoadClassic.§7!R§();
               mNextState = this.§%b§();
               break;
            case "MENU":
               SoundEngine.§;!8§();
               mNextState = this.§`!L§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5V§.§>J§();
         }
      }
      
      protected function §%b§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §`!L§() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
      
      protected function §"!b§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
