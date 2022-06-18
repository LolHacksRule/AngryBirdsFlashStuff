package §@!%§
{
   import § "§.§8!3§;
   import §"!F§.§^$§;
   import §0m§.§1!,§;
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §4-§.§%+§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   
   public class §!!'§ extends §1!,§
   {
      
      public static const §5%§:String = "LevelEndFailStateRio";
       
      
      private var §2!C§:§^$§;
      
      public function §!!'§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §1W§.§&!G§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §8!3§.§9!$§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§8!3§.§-[§))
         {
            (§`k§.getItemByName("Button_NextLevel") as §%+§).setVisibility(false);
            (§`k§.getItemByName("Button_CutScene") as §%+§).setVisibility(false);
            (§`k§.getItemByName("Button_MightyEagle") as §%+§).setVisibility(true);
         }
         else if(§8!3§.§3!?§())
         {
            (§`k§.getItemByName("Button_NextLevel") as §%+§).setVisibility(false);
            (§`k§.getItemByName("Button_CutScene") as §%+§).setVisibility(true);
         }
         else
         {
            (§`k§.getItemByName("Button_NextLevel") as §%+§).setVisibility(true);
            (§`k§.getItemByName("Button_CutScene") as §%+§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§`k§.getItemByName("Button_CutScene") as §%+§).setVisibility(false);
         (§`k§.getItemByName("Button_MightyEagle") as §%+§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2!C§ = new §^$§(0,0,0,0);
         §`k§.mMovieClip.addChildAt(this.§2!C§,§`k§.mMovieClip.numChildren - 1);
         this.showButtons();
         this.§2!C§.§3t§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §#!4§.§^Y§.clearLevel();
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§2!C§)
         {
            if(§`k§.mMovieClip.contains(this.§2!C§))
            {
               §`k§.mMovieClip.removeChild(this.§2!C§);
            }
            this.§2!C§.clean();
            this.§2!C§ = null;
         }
         this.setButtonStates(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§`k§.getItemByName("Button_Menu") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_Replay") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_NextLevel") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_CutScene") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_MightyEagle") as §%+§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §2!"§.§6!9§();
               mNextState = this.§9v§();
               break;
            case "REPLAY":
               §2!"§.§`!B§();
               mNextState = this.§1!#§();
               break;
            case "MENU":
               §7_§.§@l§();
               mNextState = this.§-E§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?,§.§do§();
         }
      }
      
      protected function §1!#§() : String
      {
         return §2!"§.§5%§;
      }
      
      protected function §-E§() : String
      {
         return §]V§.§5%§;
      }
      
      protected function §9v§() : String
      {
         return StateCutScene.§5%§;
      }
   }
}
