package § true§
{
   import §"!B§.§+!9§;
   import §+[§.§%G§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§&P§;
   import §]!=§.§;!6§;
   import §`! §.§!!K§;
   
   public class §0!§ extends §,!?§
   {
      
      public static const §`W§:String = "LevelEndFailStateRio";
       
      
      private var § 5§:§!!K§;
      
      public function §0!§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §'p§.§ ,§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §`R§.§ 1§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§`R§.§7S§))
         {
            (§while§.getItemByName("Button_NextLevel") as §+!9§).setVisibility(false);
            (§while§.getItemByName("Button_CutScene") as §+!9§).setVisibility(false);
            (§while§.getItemByName("Button_MightyEagle") as §+!9§).setVisibility(true);
         }
         else if(§`R§.§5!B§())
         {
            (§while§.getItemByName("Button_NextLevel") as §+!9§).setVisibility(false);
            (§while§.getItemByName("Button_CutScene") as §+!9§).setVisibility(true);
         }
         else
         {
            (§while§.getItemByName("Button_NextLevel") as §+!9§).setVisibility(true);
            (§while§.getItemByName("Button_CutScene") as §+!9§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§while§.getItemByName("Button_CutScene") as §+!9§).setVisibility(false);
         (§while§.getItemByName("Button_MightyEagle") as §+!9§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§ 5§ = new §!!K§(0,0,0,0);
         §while§.movieClip.addChildAt(this.§ 5§,§while§.movieClip.numChildren - 1);
         this.showButtons();
         this.§ 5§.§3h§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §[+§.§,!&§.clearLevel();
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§ 5§)
         {
            if(§while§.movieClip.contains(this.§ 5§))
            {
               §while§.movieClip.removeChild(this.§ 5§);
            }
            this.§ 5§.clean();
            this.§ 5§ = null;
         }
         this.setButtonStates(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§while§.getItemByName("Button_Menu") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_Replay") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_NextLevel") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_CutScene") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_MightyEagle") as §+!9§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §0,§() : void
      {
         §case §.§-!5§();
         mNextState = this.§5p§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§0,§();
               break;
            case "REPLAY":
               §case §.§"n§();
               mNextState = this.§6F§();
               break;
            case "MENU":
               §%G§.§^R§();
               mNextState = this.§#d§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6Z§.§9#§();
         }
      }
      
      protected function §6F§() : String
      {
         return §case §.§`W§;
      }
      
      protected function §#d§() : String
      {
         return §&!F§.§`W§;
      }
      
      protected function §5p§() : String
      {
         return StateCutScene.§`W§;
      }
   }
}
