package §##§
{
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §3p§.§4;§;
   import §5=§.§^n§;
   import §=8§.dynamic;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   
   public class §="§ extends §6!M§
   {
      
      public static const §=,§:String = "LevelEndFailStateRio";
       
      
      private var §3!6§:§4;§;
      
      public function §="§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §;Q§.static.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §^n§.§<_§();
         if(_loc1_ && !AngryBirdsFP11.§ ;§.isLevelOpen(_loc1_) || !AngryBirdsFP11.§ ;§.isLevelPassed(§^n§.§-7§))
         {
            (§ §.getItemByName("Button_NextLevel") as dynamic).setVisibility(false);
            (§ §.getItemByName("Button_CutScene") as dynamic).setVisibility(false);
            (§ §.getItemByName("Button_MightyEagle") as dynamic).setVisibility(true);
         }
         else if(§^n§.§[@§())
         {
            (§ §.getItemByName("Button_NextLevel") as dynamic).setVisibility(false);
            (§ §.getItemByName("Button_CutScene") as dynamic).setVisibility(true);
         }
         else
         {
            (§ §.getItemByName("Button_NextLevel") as dynamic).setVisibility(true);
            (§ §.getItemByName("Button_CutScene") as dynamic).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§ §.getItemByName("Button_CutScene") as dynamic).setVisibility(false);
         (§ §.getItemByName("Button_MightyEagle") as dynamic).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3!6§ = new §4;§(0,0,0,0);
         § §.movieClip.addChildAt(this.§3!6§,§ §.movieClip.numChildren - 1);
         this.showButtons();
         this.§3!6§.fadeToAlpha(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §2G§.§7!,§.clearLevel();
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§3!6§)
         {
            if(§ §.movieClip.contains(this.§3!6§))
            {
               § §.movieClip.removeChild(this.§3!6§);
            }
            this.§3!6§.clean();
            this.§3!6§ = null;
         }
         this.setButtonStates(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§ §.getItemByName("Button_Menu") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_Replay") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_NextLevel") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_CutScene") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_MightyEagle") as dynamic).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §6l§.§'! §();
               mNextState = this.§<w§();
               break;
            case "REPLAY":
               §6l§.§"w§();
               mNextState = this.§2!>§();
               break;
            case "MENU":
               §9k§.§return§();
               mNextState = this.§3a§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§<2§.§ !J§();
         }
      }
      
      protected function §2!>§() : String
      {
         return §6l§.§=,§;
      }
      
      protected function §3a§() : String
      {
         return §5!E§.§=,§;
      }
      
      protected function §<w§() : String
      {
         return StateCutScene.§=,§;
      }
   }
}
