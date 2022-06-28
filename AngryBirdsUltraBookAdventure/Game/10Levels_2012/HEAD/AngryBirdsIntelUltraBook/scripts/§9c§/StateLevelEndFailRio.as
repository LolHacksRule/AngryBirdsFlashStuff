package §9c§
{
   import §"!2§.UIButtonRovio;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import §^h§.§5!9§;
   
   public class StateLevelEndFailRio extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §@!A§:§5!9§;
      
      public function StateLevelEndFailRio(initState:Boolean = false, name:String = "LevelEndFailStateRio")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §3!5§.§4@§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var nextLevelId:String = LevelManager.§`l§();
         if(nextLevelId && !AngryBirdsFP11.sUserProgress.isLevelOpen(nextLevelId) || !AngryBirdsFP11.sUserProgress.§41§(LevelManager.§!=§))
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(true);
         }
         else if(LevelManager.§2! §())
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
         }
         else
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         (§^,§.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@!A§ = new §5!9§(0,0,0,0);
         §^,§.movieClip.addChildAt(this.§@!A§,§^,§.movieClip.numChildren - 1);
         this.showButtons();
         this.§@!A§.§89§(0.7);
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
            §4!T§.§1t§.clearLevel();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§@!A§)
         {
            if(§^,§.movieClip.contains(this.§@!A§))
            {
               §^,§.movieClip.removeChild(this.§@!A§);
            }
            this.§@!A§.clean();
            this.§@!A§ = null;
         }
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(state:String) : void
      {
         (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(state);
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
               StateLevelLoadClassic.§'8§();
               mNextState = this.§"!4§();
               break;
            case "REPLAY":
               StateLevelLoadClassic.§3`§();
               mNextState = this.§1!2§();
               break;
            case "MENU":
               SoundEngine.§=O§();
               mNextState = this.§9!A§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§8R§.§,!f§();
         }
      }
      
      protected function §1!2§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §9!A§() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
      
      protected function §"!4§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
