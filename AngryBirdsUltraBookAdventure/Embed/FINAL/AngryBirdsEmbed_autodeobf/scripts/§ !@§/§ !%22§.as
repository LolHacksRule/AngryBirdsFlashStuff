package § !@§
{
   import §#X§.§,!F§;
   import §%4§.§7-§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0,§.§4V§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   
   public class § !"§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelEndFailStateRio";
       
      
      private var §+f§:§4V§;
      
      public function § !"§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §5A§.§;L§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §[4§.§4E§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§[4§.§"!>§))
         {
            (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
            (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(false);
            (§]F§.getItemByName("Button_MightyEagle") as §7-§).setVisibility(true);
         }
         else if(§[4§.§`v§())
         {
            (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
            (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(true);
         }
         else
         {
            (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(true);
            (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(false);
         (§]F§.getItemByName("Button_MightyEagle") as §7-§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§+f§ = new §4V§(0,0,0,0);
         §]F§.movieClip.addChildAt(this.§+f§,§]F§.movieClip.numChildren - 1);
         this.showButtons();
         this.§+f§.§[!'§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §=w§.§ o§.clearLevel();
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§+f§)
         {
            if(§]F§.movieClip.contains(this.§+f§))
            {
               §]F§.movieClip.removeChild(this.§+f§);
            }
            this.§+f§.clean();
            this.§+f§ = null;
         }
         this.setButtonStates(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§]F§.getItemByName("Button_Menu") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_NextLevel") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_CutScene") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §@a§() : void
      {
         §^!K§.§+!4§();
         mNextState = this.§`!A§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§@a§();
               break;
            case "REPLAY":
               §^!K§.§@!<§();
               mNextState = this.§]!-§();
               break;
            case "MENU":
               §,!F§.§?X§();
               mNextState = this.§[A§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ y§.§-!$§();
         }
      }
      
      protected function §]!-§() : String
      {
         return §^!K§.§>9§;
      }
      
      protected function §[A§() : String
      {
         return §6!@§.§>9§;
      }
      
      protected function §`!A§() : String
      {
         return StateCutScene.§>9§;
      }
   }
}
