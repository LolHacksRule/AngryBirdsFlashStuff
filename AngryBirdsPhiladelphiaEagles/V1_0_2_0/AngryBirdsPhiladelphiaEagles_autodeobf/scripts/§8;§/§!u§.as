package §8;§
{
   import §%!;§.§!L§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §7!!§.§,c§;
   import §9c§.§,x§;
   import §9c§.§6P§;
   import §<!F§.§5!+§;
   import §=!H§.§=<§;
   import §?!;§.§6H§;
   
   public class §!u§ extends §!L§
   {
      
      public static const §"Z§:String = "LevelEndFailStateRio";
       
      
      private var §=]§:§,c§;
      
      public function §!u§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §,!;§.§2o§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §6H§.§ O§();
         if(_loc1_ && !AngryBirdsFP11.§^O§.isLevelOpen(_loc1_) || !AngryBirdsFP11.§^O§.isLevelPassed(§6H§.§"Q§))
         {
            (§>2§.getItemByName("Button_NextLevel") as §=<§).setVisibility(false);
            (§>2§.getItemByName("Button_CutScene") as §=<§).setVisibility(false);
            (§>2§.getItemByName("Button_MightyEagle") as §=<§).setVisibility(true);
         }
         else if(§6H§.§'T§())
         {
            (§>2§.getItemByName("Button_NextLevel") as §=<§).setVisibility(false);
            (§>2§.getItemByName("Button_CutScene") as §=<§).setVisibility(true);
         }
         else
         {
            (§>2§.getItemByName("Button_NextLevel") as §=<§).setVisibility(true);
            (§>2§.getItemByName("Button_CutScene") as §=<§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§>2§.getItemByName("Button_CutScene") as §=<§).setVisibility(false);
         (§>2§.getItemByName("Button_MightyEagle") as §=<§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§=]§ = new §,c§(0,0,0,0);
         §>2§.movieClip.addChildAt(this.§=]§,§>2§.movieClip.numChildren - 1);
         this.showButtons();
         this.§=]§.fadeToAlpha(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §5!+§.§6!§.clearLevel();
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§=]§)
         {
            if(§>2§.movieClip.contains(this.§=]§))
            {
               §>2§.movieClip.removeChild(this.§=]§);
            }
            this.§=]§.clean();
            this.§=]§ = null;
         }
         this.setButtonStates(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§>2§.getItemByName("Button_Menu") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_Replay") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_NextLevel") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_CutScene") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_MightyEagle") as §=<§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8^§.§&!O§();
               mNextState = this.§9A§();
               break;
            case "REPLAY":
               §8^§.§1!"§();
               mNextState = this.§,<§();
               break;
            case "MENU":
               §3V§.§0x§();
               mNextState = this.§5o§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"Y§.§4%§();
         }
      }
      
      protected function §,<§() : String
      {
         return §8^§.§"Z§;
      }
      
      protected function §5o§() : String
      {
         return §!!6§.§"Z§;
      }
      
      protected function §9A§() : String
      {
         return StateCutScene.§"Z§;
      }
   }
}
