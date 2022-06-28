package §;m§
{
   import §#h§.§ !H§;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§6<§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   
   public class §2i§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelEndFailStateRio";
       
      
      private var §=@§:§`K§;
      
      public function §2i§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §06§.§-`§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §59§.§+-§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§59§.§%j§))
         {
            (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
            (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(false);
            (§-f§.getItemByName("Button_MightyEagle") as §6<§).setVisibility(true);
         }
         else if(§59§.§^G§())
         {
            (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
            (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(true);
         }
         else
         {
            (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(true);
            (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(false);
         (§-f§.getItemByName("Button_MightyEagle") as §6<§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§=@§ = new §`K§(0,0,0,0);
         §-f§.movieClip.addChildAt(this.§=@§,§-f§.movieClip.numChildren - 1);
         this.showButtons();
         this.§=@§.§?`§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §"h§.§1C§.clearLevel();
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§=@§)
         {
            if(§-f§.movieClip.contains(this.§=@§))
            {
               §-f§.movieClip.removeChild(this.§=@§);
            }
            this.§=@§.clean();
            this.§=@§ = null;
         }
         this.setButtonStates(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§-f§.getItemByName("Button_Menu") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_Replay") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_NextLevel") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_CutScene") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §3'§.§+^§();
               mNextState = this.§]y§();
               break;
            case "REPLAY":
               §3'§.§;3§();
               mNextState = this.§2J§();
               break;
            case "MENU":
               § !H§.§[!<§();
               mNextState = this.§<r§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§0P§.§<h§();
         }
      }
      
      protected function §2J§() : String
      {
         return §3'§.§-!A§;
      }
      
      protected function §<r§() : String
      {
         return §>!B§.§-!A§;
      }
      
      protected function §]y§() : String
      {
         return StateCutScene.§-!A§;
      }
   }
}
