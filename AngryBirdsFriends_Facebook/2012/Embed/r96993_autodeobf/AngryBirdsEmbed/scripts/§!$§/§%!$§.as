package §!$§
{
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §'N§.§^]§;
   import §,!$§.§8O§;
   import §-!'§.§;f§;
   import §-!C§.§#!G§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   
   public class §%!$§ extends §3!'§
   {
      
      public static const §9"§:String = "LevelEndFailStateRio";
       
      
      private var §,!>§:§8O§;
      
      public function §%!$§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §?O§.§@!<§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §#!G§.§5N§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§#!G§.§9C§))
         {
            (§+!2§.getItemByName("Button_NextLevel") as §;f§).setVisibility(false);
            (§+!2§.getItemByName("Button_CutScene") as §;f§).setVisibility(false);
            (§+!2§.getItemByName("Button_MightyEagle") as §;f§).setVisibility(true);
         }
         else if(§#!G§.§7V§())
         {
            (§+!2§.getItemByName("Button_NextLevel") as §;f§).setVisibility(false);
            (§+!2§.getItemByName("Button_CutScene") as §;f§).setVisibility(true);
         }
         else
         {
            (§+!2§.getItemByName("Button_NextLevel") as §;f§).setVisibility(true);
            (§+!2§.getItemByName("Button_CutScene") as §;f§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§+!2§.getItemByName("Button_CutScene") as §;f§).setVisibility(false);
         (§+!2§.getItemByName("Button_MightyEagle") as §;f§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§,!>§ = new §8O§(0,0,0,0);
         §+!2§.movieClip.addChildAt(this.§,!>§,§+!2§.movieClip.numChildren - 1);
         this.showButtons();
         this.§,!>§.§'l§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §]3§.§;v§.clearLevel();
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§,!>§)
         {
            if(§+!2§.movieClip.contains(this.§,!>§))
            {
               §+!2§.movieClip.removeChild(this.§,!>§);
            }
            this.§,!>§.clean();
            this.§,!>§ = null;
         }
         this.setButtonStates(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§+!2§.getItemByName("Button_Menu") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_Replay") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_NextLevel") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_CutScene") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_MightyEagle") as §;f§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § W§.§<m§();
               mNextState = this.§]-§();
               break;
            case "REPLAY":
               § W§.§ =§();
               mNextState = this.§]!0§();
               break;
            case "MENU":
               §^]§.§@n§();
               mNextState = this.§2`§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"h§.§>B§();
         }
      }
      
      protected function §]!0§() : String
      {
         return § W§.§9"§;
      }
      
      protected function §2`§() : String
      {
         return §#u§.§9"§;
      }
      
      protected function §]-§() : String
      {
         return StateCutScene.§9"§;
      }
   }
}
