package §`!%§
{
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §,K§.§-!$§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§]P§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   
   public class §^J§ extends §9[§
   {
      
      public static const §0!7§:String = "LevelEndFailStateRio";
       
      
      private var §>!;§:§-!$§;
      
      public function §^J§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#!4§ = new §!!1§(this);
         §#!4§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §0!&§.§'^§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §6M§.§1$§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§6M§.§[z§))
         {
            (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(false);
            (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(false);
            (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setVisibility(true);
         }
         else if(§6M§.§"p§())
         {
            (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(false);
            (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(true);
         }
         else
         {
            (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(true);
            (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(false);
         (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§>!;§ = new §-!$§(0,0,0,0);
         §#!4§.movieClip.addChildAt(this.§>!;§,§#!4§.movieClip.numChildren - 1);
         this.showButtons();
         this.§>!;§.§0C§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §,!!§.§;4§.clearLevel();
            return §9[§.STATE_STATUS_COMPLETED;
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§>!;§)
         {
            if(§#!4§.movieClip.contains(this.§>!;§))
            {
               §#!4§.movieClip.removeChild(this.§>!;§);
            }
            this.§>!;§.clean();
            this.§>!;§ = null;
         }
         this.setButtonStates(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§#!4§.getItemByName("Button_Menu") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_Replay") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_NextLevel") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_CutScene") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § @§.§-!-§();
               mNextState = this.§;i§();
               break;
            case "REPLAY":
               § @§.§'d§();
               mNextState = this.§,7§();
               break;
            case "MENU":
               §3!E§.§#'§();
               mNextState = this.§&N§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
      
      protected function §,7§() : String
      {
         return § @§.§0!7§;
      }
      
      protected function §&N§() : String
      {
         return §!,§.§0!7§;
      }
      
      protected function §;i§() : String
      {
         return StateCutScene.§0!7§;
      }
   }
}
