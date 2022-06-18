package §?7§
{
   import §"V§.§true§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§+;§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §?u§.§9&§;
   import §[V§.§1;§;
   
   public class §^K§ extends §true§
   {
      
      public static const §4!&§:String = "LevelEndFailStateRio";
       
      
      private var §@"§:§9&§;
      
      public function §^K§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §1!$§.§7e§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §!P§.§]y§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§!P§.§4R§))
         {
            (§6!$§.getItemByName("Button_NextLevel") as §1;§).setVisibility(false);
            (§6!$§.getItemByName("Button_CutScene") as §1;§).setVisibility(false);
            (§6!$§.getItemByName("Button_MightyEagle") as §1;§).setVisibility(true);
         }
         else if(§!P§.§1!§())
         {
            (§6!$§.getItemByName("Button_NextLevel") as §1;§).setVisibility(false);
            (§6!$§.getItemByName("Button_CutScene") as §1;§).setVisibility(true);
         }
         else
         {
            (§6!$§.getItemByName("Button_NextLevel") as §1;§).setVisibility(true);
            (§6!$§.getItemByName("Button_CutScene") as §1;§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§6!$§.getItemByName("Button_CutScene") as §1;§).setVisibility(false);
         (§6!$§.getItemByName("Button_MightyEagle") as §1;§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@"§ = new §9&§(0,0,0,0);
         §6!$§.movieClip.addChildAt(this.§@"§,§6!$§.movieClip.numChildren - 1);
         this.showButtons();
         this.§@"§.§%4§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §?'§.§5!§.clearLevel();
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§@"§)
         {
            if(§6!$§.movieClip.contains(this.§@"§))
            {
               §6!$§.movieClip.removeChild(this.§@"§);
            }
            this.§@"§.clean();
            this.§@"§ = null;
         }
         this.setButtonStates(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§6!$§.getItemByName("Button_Menu") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_Replay") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_NextLevel") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_CutScene") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_MightyEagle") as §1;§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'!6§.§'X§();
               mNextState = this.§,z§();
               break;
            case "REPLAY":
               §'!6§.§ !F§();
               mNextState = this.§+!5§();
               break;
            case "MENU":
               §;!>§.§&;§();
               mNextState = this.§%!"§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ for§.§>§();
         }
      }
      
      protected function §+!5§() : String
      {
         return §'!6§.§4!&§;
      }
      
      protected function §%!"§() : String
      {
         return §<!D§.§4!&§;
      }
      
      protected function §,z§() : String
      {
         return StateCutScene.§4!&§;
      }
   }
}
