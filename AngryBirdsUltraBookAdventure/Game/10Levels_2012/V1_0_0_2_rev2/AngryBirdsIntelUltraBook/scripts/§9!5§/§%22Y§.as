package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4L§.§,!_§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§5!I§;
   import §true§.§ _§;
   
   public class §"Y§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelEndFailStateRio";
       
      
      private var §#x§:§,!_§;
      
      public function §"Y§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §[!'§.§+@§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§9!j§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§%H§(LevelManager.§4Y§))
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setVisibility(true);
         }
         else if(LevelManager.§8!<§())
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
         }
         else
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
         (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#x§ = new §,!_§(0,0,0,0);
         §5!P§.movieClip.addChildAt(this.§#x§,§5!P§.movieClip.numChildren - 1);
         this.showButtons();
         this.§#x§.§7!+§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            § _§.§!6§.clearLevel();
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#x§)
         {
            if(§5!P§.movieClip.contains(this.§#x§))
            {
               §5!P§.movieClip.removeChild(this.§#x§);
            }
            this.§#x§.clean();
            this.§#x§ = null;
         }
         this.setButtonStates(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_CutScene") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §#!c§.§ !0§();
               mNextState = this.§>!_§();
               break;
            case "REPLAY":
               §#!c§.§6d§();
               mNextState = this.§[!Z§();
               break;
            case "MENU":
               § !Q§.§"!"§();
               mNextState = this.§&X§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3!a§.§8!d§();
         }
      }
      
      protected function §[!Z§() : String
      {
         return §#!c§.§?h§;
      }
      
      protected function §&X§() : String
      {
         return § B§.§?h§;
      }
      
      protected function §>!_§() : String
      {
         return StateCutScene.§?h§;
      }
   }
}
