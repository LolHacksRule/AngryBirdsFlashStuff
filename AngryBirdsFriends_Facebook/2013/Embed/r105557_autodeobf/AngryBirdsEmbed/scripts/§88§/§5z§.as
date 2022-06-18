package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §"?§.§]A§;
   import §#]§.§'5§;
   import §&U§.§^!@§;
   import §1t§.§-!M§;
   import §1t§.§`!B§;
   import §8T§.§@o§;
   import §<!M§.§[i§;
   
   public class §5z§ extends §2q§
   {
      
      public static const §&! §:String = "LevelEndFailStateRio";
       
      
      private var §@v§:§]A§;
      
      public function §5z§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §while§.§ v§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §[i§.§ §();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§[i§.§0A§))
         {
            (§=V§.getItemByName("Button_NextLevel") as §^!@§).setVisibility(false);
            (§=V§.getItemByName("Button_CutScene") as §^!@§).setVisibility(false);
            (§=V§.getItemByName("Button_MightyEagle") as §^!@§).setVisibility(true);
         }
         else if(§[i§.§-!J§())
         {
            (§=V§.getItemByName("Button_NextLevel") as §^!@§).setVisibility(false);
            (§=V§.getItemByName("Button_CutScene") as §^!@§).setVisibility(true);
         }
         else
         {
            (§=V§.getItemByName("Button_NextLevel") as §^!@§).setVisibility(true);
            (§=V§.getItemByName("Button_CutScene") as §^!@§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§=V§.getItemByName("Button_CutScene") as §^!@§).setVisibility(false);
         (§=V§.getItemByName("Button_MightyEagle") as §^!@§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@v§ = new §]A§(0,0,0,0);
         §=V§.movieClip.addChildAt(this.§@v§,§=V§.movieClip.numChildren - 1);
         this.showButtons();
         this.§@v§.§%H§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §'5§.§^;§.clearLevel();
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§@v§)
         {
            if(§=V§.movieClip.contains(this.§@v§))
            {
               §=V§.movieClip.removeChild(this.§@v§);
            }
            this.§@v§.clean();
            this.§@v§ = null;
         }
         this.setButtonStates(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§=V§.getItemByName("Button_Menu") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_Replay") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_NextLevel") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_CutScene") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_MightyEagle") as §^!@§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §for§() : void
      {
         §`!J§.§[[§();
         mNextState = this.§6"§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§for§();
               break;
            case "REPLAY":
               §`!J§.§@J§();
               mNextState = this.static();
               break;
            case "MENU":
               §@o§.§#!;§();
               mNextState = this.§'V§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^!<§.§;3§();
         }
      }
      
      protected function static() : String
      {
         return §`!J§.§&! §;
      }
      
      protected function §'V§() : String
      {
         return §!G§.§&! §;
      }
      
      protected function §6"§() : String
      {
         return StateCutScene.§&! §;
      }
   }
}
