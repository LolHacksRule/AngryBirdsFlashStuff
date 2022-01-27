package §=!0§
{
   import §!t§.§5b§;
   import §#@§.§,k§;
   import §,!1§.§]e§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §6!L§.§&u§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §^w§.§-!,§;
   
   public class §-!N§ extends §-!,§
   {
      
      public static const §@§:String = "LevelEndFailStateRio";
       
      
      private var §9!L§:§,k§;
      
      public function §-!N§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §`d§.§8?§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §&u§.§7E§();
         if(_loc1_ && !AngryBirdsFP11.§5@§.isLevelOpen(_loc1_) || !AngryBirdsFP11.§5@§.isLevelPassed(§&u§.§ !+§))
         {
            (§;I§.getItemByName("Button_NextLevel") as §5b§).setVisibility(false);
            (§;I§.getItemByName("Button_CutScene") as §5b§).setVisibility(false);
            (§;I§.getItemByName("Button_MightyEagle") as §5b§).setVisibility(true);
         }
         else if(§&u§.§0!@§())
         {
            (§;I§.getItemByName("Button_NextLevel") as §5b§).setVisibility(false);
            (§;I§.getItemByName("Button_CutScene") as §5b§).setVisibility(true);
         }
         else
         {
            (§;I§.getItemByName("Button_NextLevel") as §5b§).setVisibility(true);
            (§;I§.getItemByName("Button_CutScene") as §5b§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§;I§.getItemByName("Button_CutScene") as §5b§).setVisibility(false);
         (§;I§.getItemByName("Button_MightyEagle") as §5b§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§9!L§ = new §,k§(0,0,0,0);
         §;I§.movieClip.addChildAt(this.§9!L§,§;I§.movieClip.numChildren - 1);
         this.showButtons();
         this.§9!L§.fadeToAlpha(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §0!E§.§9!B§.clearLevel();
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§9!L§)
         {
            if(§;I§.movieClip.contains(this.§9!L§))
            {
               §;I§.movieClip.removeChild(this.§9!L§);
            }
            this.§9!L§.clean();
            this.§9!L§ = null;
         }
         this.setButtonStates(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§;I§.getItemByName("Button_Menu") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_Replay") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_NextLevel") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_CutScene") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_MightyEagle") as §5b§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §1!F§.§!<§();
               mNextState = this.§@Y§();
               break;
            case "REPLAY":
               §1!F§.§4W§();
               mNextState = this.§8U§();
               break;
            case "MENU":
               §]e§.§>$§();
               mNextState = this.§6R§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§;!@§.§8N§();
         }
      }
      
      protected function §8U§() : String
      {
         return §1!F§.§@§;
      }
      
      protected function §6R§() : String
      {
         return §?!G§.§@§;
      }
      
      protected function §@Y§() : String
      {
         return StateCutScene.§@§;
      }
   }
}
