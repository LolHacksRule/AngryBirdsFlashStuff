package §`@§
{
   import §"!5§.§,!!§;
   import §,K§.§-!$§;
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§ use§;
   import §1h§.§@s§;
   import §2!<§.§?!?§;
   import §>!C§.§6M§;
   import §^@§.§=^§;
   
   public class §`!%§ extends §0!5§
   {
      
      public static const §0!7§:String = "LevelEndFailStateRio";
       
      
      private var §>!;§:§-!$§;
      
      public function §`!%§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#Z§ = new §!!1§(this);
         §#Z§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §0!&§.§'^§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §6M§.§"p§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§6M§.§[z§))
         {
            (§#Z§.getItemByName("Button_NextLevel") as §=^§).setVisibility(false);
            (§#Z§.getItemByName("Button_CutScene") as §=^§).setVisibility(false);
            (§#Z§.getItemByName("Button_MightyEagle") as §=^§).setVisibility(true);
         }
         else if(§6M§.§9i§())
         {
            (§#Z§.getItemByName("Button_NextLevel") as §=^§).setVisibility(false);
            (§#Z§.getItemByName("Button_CutScene") as §=^§).setVisibility(true);
         }
         else
         {
            (§#Z§.getItemByName("Button_NextLevel") as §=^§).setVisibility(true);
            (§#Z§.getItemByName("Button_CutScene") as §=^§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§#Z§.getItemByName("Button_CutScene") as §=^§).setVisibility(false);
         (§#Z§.getItemByName("Button_MightyEagle") as §=^§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§>!;§ = new §-!$§(0,0,0,0);
         §#Z§.movieClip.addChildAt(this.§>!;§,§#Z§.movieClip.numChildren - 1);
         this.showButtons();
         this.§>!;§.§0C§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §,!!§.§;4§.clearLevel();
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§>!;§)
         {
            if(§#Z§.movieClip.contains(this.§>!;§))
            {
               §#Z§.movieClip.removeChild(this.§>!;§);
            }
            this.§>!;§.clean();
            this.§>!;§ = null;
         }
         this.setButtonStates(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§#Z§.getItemByName("Button_Menu") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_Replay") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_NextLevel") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_CutScene") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_MightyEagle") as §=^§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § @§.§-!-§();
               mNextState = this.§&N§();
               break;
            case "REPLAY":
               § @§.§'d§();
               mNextState = this.§^J§();
               break;
            case "MENU":
               §?!?§.§%!%§();
               mNextState = this.§,7§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
      
      protected function §^J§() : String
      {
         return § @§.§0!7§;
      }
      
      protected function §,7§() : String
      {
         return §!,§.§0!7§;
      }
      
      protected function §&N§() : String
      {
         return StateCutScene.§0!7§;
      }
   }
}
