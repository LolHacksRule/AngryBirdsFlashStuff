package §?'§
{
   import §%S§.§%X§;
   import §2U§.§'0§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §`<§.§,!6§;
   import §in§.§%K§;
   import §in§.§9c§;
   
   public class §08§ extends §,!6§
   {
      
      public static const §`%§:String = "LevelEndFailStateRio";
       
      
      private var §30§:§'0§;
      
      public function §08§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §2-§.§+J§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §&#§.§6!§();
         if(_loc1_ && !AngryBirdsFP11.§[l§.isLevelOpen(_loc1_) || !AngryBirdsFP11.§[l§.isLevelPassed(§&#§.§<Y§))
         {
            (§<o§.getItemByName("Button_NextLevel") as §%X§).setVisibility(false);
            (§<o§.getItemByName("Button_CutScene") as §%X§).setVisibility(false);
            (§<o§.getItemByName("Button_MightyEagle") as §%X§).setVisibility(true);
         }
         else if(§&#§.§7!E§())
         {
            (§<o§.getItemByName("Button_NextLevel") as §%X§).setVisibility(false);
            (§<o§.getItemByName("Button_CutScene") as §%X§).setVisibility(true);
         }
         else
         {
            (§<o§.getItemByName("Button_NextLevel") as §%X§).setVisibility(true);
            (§<o§.getItemByName("Button_CutScene") as §%X§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§<o§.getItemByName("Button_CutScene") as §%X§).setVisibility(false);
         (§<o§.getItemByName("Button_MightyEagle") as §%X§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§30§ = new §'0§(0,0,0,0);
         §<o§.movieClip.addChildAt(this.§30§,§<o§.movieClip.numChildren - 1);
         this.showButtons();
         this.§30§.§!y§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §8[§.§import§.clearLevel();
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§30§)
         {
            if(§<o§.movieClip.contains(this.§30§))
            {
               §<o§.movieClip.removeChild(this.§30§);
            }
            this.§30§.clean();
            this.§30§ = null;
         }
         this.setButtonStates(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§<o§.getItemByName("Button_Menu") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_Replay") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_NextLevel") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_CutScene") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_MightyEagle") as §%X§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §`0§.§6p§();
               mNextState = this.§`9§();
               break;
            case "REPLAY":
               §`0§.§#T§();
               mNextState = this.§0,§();
               break;
            case "MENU":
               §2;§.§'T§();
               mNextState = this.§#F§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`H§.§>&§();
         }
      }
      
      protected function §0,§() : String
      {
         return §`0§.§`%§;
      }
      
      protected function §#F§() : String
      {
         return §8m§.§`%§;
      }
      
      protected function §`9§() : String
      {
         return StateCutScene.§`%§;
      }
   }
}
