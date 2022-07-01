package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §5!`§.§%!Y§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   
   public class §0x§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §7H§:§%!Y§;
      
      public function §0x§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §=!Z§.§;K§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §1^§.§`!L§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§1^§.§ ]§))
         {
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setVisibility(true);
         }
         else if(§1^§.§`!?§())
         {
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(true);
         }
         else
         {
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(false);
         (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§7H§ = new §%!Y§(0,0,0,0);
         §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
         this.showButtons();
         this.§7H§.§#[§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §'!V§.§1!2§.clearLevel();
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§7H§)
         {
            if(§+!$§.movieClip.contains(this.§7H§))
            {
               §+!$§.movieClip.removeChild(this.§7H§);
            }
            this.§7H§.clean();
            this.§7H§ = null;
         }
         this.setButtonStates(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_CutScene") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §26§.§=0§();
               mNextState = this.§54§();
               break;
            case "REPLAY":
               §26§.§!=§();
               mNextState = this.§0H§();
               break;
            case "MENU":
               §+!§.§'!Q§();
               mNextState = this.§ try§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
      
      protected function §0H§() : String
      {
         return §26§.STATE_NAME;
      }
      
      protected function § try§() : String
      {
         return §?&§.STATE_NAME;
      }
      
      protected function §54§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
