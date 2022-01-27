package §>Y§
{
   import §"^§.§9=§;
   import §3!%§.§-k§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §92§.§<'§;
   import §<!4§.§25§;
   import §=u§.§1r§;
   import §?!=§.§<!>§;
   
   public class §4l§ extends §<!>§
   {
      
      public static const §4!C§:String = "LevelEndFailStateRio";
       
      
      private var §0!G§:§<'§;
      
      public function §4l§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §^!$§.§"!9§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §-k§.§7#§();
         if(_loc1_ && !AngryBirdsFP11.§3!?§.isLevelOpen(_loc1_) || !AngryBirdsFP11.§3!?§.isLevelPassed(§-k§.§%D§))
         {
            (§3g§.getItemByName("Button_NextLevel") as §1r§).setVisibility(false);
            (§3g§.getItemByName("Button_CutScene") as §1r§).setVisibility(false);
            (§3g§.getItemByName("Button_MightyEagle") as §1r§).setVisibility(true);
         }
         else if(§-k§.§>!%§())
         {
            (§3g§.getItemByName("Button_NextLevel") as §1r§).setVisibility(false);
            (§3g§.getItemByName("Button_CutScene") as §1r§).setVisibility(true);
         }
         else
         {
            (§3g§.getItemByName("Button_NextLevel") as §1r§).setVisibility(true);
            (§3g§.getItemByName("Button_CutScene") as §1r§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§3g§.getItemByName("Button_CutScene") as §1r§).setVisibility(false);
         (§3g§.getItemByName("Button_MightyEagle") as §1r§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§0!G§ = new §<'§(0,0,0,0);
         §3g§.movieClip.addChildAt(this.§0!G§,§3g§.movieClip.numChildren - 1);
         this.showButtons();
         this.§0!G§.fadeToAlpha(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §9=§.§<!@§.clearLevel();
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§0!G§)
         {
            if(§3g§.movieClip.contains(this.§0!G§))
            {
               §3g§.movieClip.removeChild(this.§0!G§);
            }
            this.§0!G§.clean();
            this.§0!G§ = null;
         }
         this.setButtonStates(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§3g§.getItemByName("Button_Menu") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_Replay") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_NextLevel") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_CutScene") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_MightyEagle") as §1r§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §;O§.§ true§();
               mNextState = this.§1s§();
               break;
            case "REPLAY":
               §;O§.§%e§();
               mNextState = this.§8!!§();
               break;
            case "MENU":
               §25§.§=!7§();
               mNextState = this.§#;§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ j§.§@[§();
         }
      }
      
      protected function §8!!§() : String
      {
         return §;O§.§4!C§;
      }
      
      protected function §#;§() : String
      {
         return §8!F§.§4!C§;
      }
      
      protected function §1s§() : String
      {
         return StateCutScene.§4!C§;
      }
   }
}
